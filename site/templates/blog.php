<?php

// get all datas from the database (so all pages News, Features, Blog, All)

$displayResult = array();
$finalResult = "";
$firstNews = "";

$categories = $pages->get("/blog-categories/");

if ($categories->numChildren > 0) {

	foreach ($categories->children("include=hidden") as $cat) {
		// check if there is some articles
		if ($cat->numChildren > 0) {
			$articles = $cat->children;
			$currentStyleClass = $cat->name;

			foreach ($articles as $article) {
				$title = $article->title;
				$description = $article->get('news_description');
				$datetime = $article->get('news_datetime');
				$id = $article->id;
				$url = $article->url;


				// check if fields are filled (be sure it's a blog article)
				if(!empty($title) && !empty($datetime)) {
					$current = array('title' => $title, 'description' => $description, 'datetime' => $datetime, 'styleClass' => $currentStyleClass, 'id' => $id, 'url' => $url );
					$displayResult[] = $current;
				}
			}
		} 
	}
}

if (sizeof($displayResult) > 0) {
	// sort result DESC 
	usort($displayResult, function($a, $b) {
		return strtotime($a['datetime'])<strtotime($b['datetime'])? 1 : -1;
	});

	$firstNews = $displayResult[0];
	unset($displayResult[0]);

} else {
	$finalResult = "No result";
}

// start display page
include("./head.inc"); 

?>

<div id="mainBlock" class="emphasised news section" data-image="bridge">
    <div class="clear contained">

<?php if (!empty($displayResult) && sizeof($displayResult) > 0) { ?>
	
	<a href="<?php echo $firstNews['url'];?>">
		<div class="six inline columns newsbox <?php echo $firstNews['styleClass']; ?>">
	        <div class="content">
	          <h2 class="heading"><?php echo $firstNews['title'] ?></h2>
	          <p><?php echo $firstNews['datetime'] ?></p>
	        </div>
	    </div>
	</a>

  	<?php foreach($displayResult as $result) { ?>

		<div class="three inline columns newsbox <?php echo $result['styleClass']; ?>">
			<a href="<?php echo $result['url'];?>">
	        	<div class="content">
	        	  	<h2 class="heading"><?php echo $result['title'] ?></h2>
	          		<p><?php echo $result['datetime'] ?></p>
	        	</div>
	        </a>
      	</div>

	<?php } ?>

<?php } else { ?>

	<div><?php echo $finalResult; ?></div>

<?php } ?>

    </div>
</div>

<div class="highlighted section" data-image="demo">
    <div class="clear contained">
      <h2 class="heading"><span>Organise a live demo</span><a href="<?php echo $pages->get("/company/contact/")->url ?>" class="alternate button">Enquire Now</a></h2> 
    </div>
 </div>

<?php

include("./foot.inc"); 
