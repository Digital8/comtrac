<?php 

/**
 * Home template
 *
 */

$tokenName = $this->session->CSRF->getTokenName();
$tokenValue = $this->session->CSRF->getTokenValue();

// blog part
$articlePages = $pages->get('/blog-categories/home/');
$displayResult = array();

// check if there is some articles
if ($articlePages->numChildren > 0) {
	$articles = $articlePages->children;


	foreach ($articles as $article) {
		$title = $article->title;
		$description = $article->get('news_description');
		$datetime = $article->get('news_datetime');
		$url = $article->url;

		$dateFormat = date_create_from_format("d.m.Y", $datetime);

		if (!empty($dateFormat)) 
			$datetime = date_format($dateFormat, "j F Y");

		// check if fields are filled (be sure it's a blog article)
		if(!empty($title) && !empty($datetime)) {
			$current = array('title' => $title, 'description' => $description, 'datetime' => $datetime, 'url' => $url);
			$displayResult[] = $current;
		}
	}
} 

if (sizeof($displayResult) > 0) {
	// sort result DESC 
	usort($displayResult, function($a, $b) {
		return strtotime($a['datetime'])<strtotime($b['datetime'])? 1 : -1;
	});

	$firstNews = $displayResult[0];
		
	if (sizeof($displayResult) > 1) {
		$secondNews = $displayResult[1];
	} else {
		$secondNews = array('title' => 'No result', 'description' => '', 'datetime' => '', 'url' => '#');
	}

	if (sizeof($displayResult) > 2) {
		$thirdNews = $displayResult[2];
	} else {
		$thirdNews = array('title' => 'No result', 'description' => '', 'datetime' => '', 'url' => '#' );
	}

	if (sizeof($displayResult) > 3) {
		$fourthNews = $displayResult[3];
	} else {
		$fourthNews = array('title' => 'No result', 'description' => '', 'datetime' => '', 'url' => '#');
	}

} else {
	$firstNews = array('title' => 'No result', 'description' => '', 'datetime' => '', 'url' => '#');
	$secondNews = array('title' => 'No result', 'description' => '', 'datetime' => '', 'url' => '#');
	$thirdNews = array('title' => 'No result', 'description' => '', 'datetime' => '', 'url' => '#');
	$fourthNews = array('title' => 'No result', 'description' => '', 'datetime' => '', 'url' => '#');
}


include("./head.inc"); 
?>

<?php 
$displayFeatures = $page->get('display_keyfeatures');

if (!empty($displayFeatures))  { 
	$featurePage = $pages->get("/how-it-works/features/");
?>
<div class="key features section">
	<div class="clear contained">
      	<h2 class="heading">Key Features</h2>
      	<div class="clear features">
      		<div class="feature three inline columns">
          		<h3 class="heading"><span><?php echo $page->get('col1_title'); ?></span></h3>
          		<?php echo $page->get('col1_content'); ?>
        	</div>

        	<div class="feature three inline columns">
          		<h3 class="heading"><span><?php echo $page->get('col2_title'); ?></span></h3>
          		<?php echo $page->get('col2_content'); ?>
        	</div>

        	<div class="feature three inline columns">
          		<h3 class="heading"><span><?php echo $page->get('col3_title'); ?></span></h3>
          		<?php echo $page->get('col3_content'); ?>
        	</div>

        	<div class="feature three inline columns">
          		<h3 class="heading"><span><?php echo $page->get('col4_title'); ?></span></h3>
          		<?php echo $page->get('col4_content'); ?>
        	</div>
      </div>

      <a class="button" href="<?php echo $featurePage->url ?>">All features</a>

    </div>
</div>
<?php } ?>

<div class="section enquiry">
    <div class="clear contained">
      <div class="six inline columns">
        <h2 class="heading"><?php echo $page->get('home_sectiontitle'); ?></h2>
        <p class="introduction"><?php echo $page->get('home_sectionintro'); ?></p>
        <p><?php echo $page->get('home_sectioncontent'); ?></p>

        <?php 
        	$companProfilePage = $pages->get('/company/company-profile/');
        	$servicesPage = $pages->get('/solutions/');
        ?>

        <a class="button inline" href="<?php echo $companProfilePage->url ?>">Company Profile</a>
        <a class="alternate button" href="<?php echo $servicesPage->url ?>">Solutions</a>
      </div>

      <div class="six inline columns">
        <h2 class="heading">Quick Enquiry</h2>

        <form id="quickEnquiry" name="quickEnquiry" method="post" action="./" novalidate>
        	<input type="hidden" id="_post_token" name="<?php echo $tokenName ?>" value="<?php echo $tokenValue ?>"/>
        	<input type="hidden" id="_post_token" name="formSubmitted" value="enquiryForm"/>
	        <fieldset>
	          <div class="clear row">
	            <div class="six inline columns">
	              <div class="short field required">
	                <label for="name">Name</label>
	                <input id="name" name="name" data-required data-type="text" type="text" required>
	              </div>
	            </div>
	            <div class="six inline columns">
	              <div class="short field required">
	                <label for="company">Company</label>
	                <input id="company" name="company" data-required data-type="text" type="text" required>
	              </div>
	            </div>
	          </div>

	          <div class="clear row">
	            <div class="six inline columns">
	              <div class="short field required">
	                <label for="email">Email</label>
	                <input id="email" name="email" data-validate="email" data-type="text" type="email" required>
	              </div>
	            </div>
	            <div class="six inline columns">
	              <div class="short field required">
	                <label for="phone">Phone</label>
	                <input id="phone" name="phone" data-validate="phone" data-type="text" type="tel" required>
	              </div>
	            </div>
	          </div>

	          <div class="clear row">
	            <div class="twelve columns">
	              <div class="field required">
	                <label for="enquiry">Enquiry</label>
	                <textarea id="enquiry" name="enquiry" data-required data-type="text" required></textarea>
	              </div>
	            </div>
	          </div>

	        </fieldset>

	    	<div class="clear row">
	    		<div class="twelve inline columns">
		            <input id="submitEnquiry"  type="submit" name="submitEnquiry" class="button" />
	    		</div>
	    	</div>
	    </form>

      </div>
    </div>
  </div>


  <div class="clear recent news section">  
    <div class="clear twelve columns">
      <h2 class="inline heading pull-left">Recent News</h2>
      <a class="button pull-right" href="<?php echo $pages->get("/company/blog/")->url ?>">View all</a>
    </div>

    <ul class="clear plain list">
      <li class="emphasised item" data-image="parliament">
        <a href="<?php echo $firstNews['url']; ?>">
          <h3 class="heading"><?php echo $firstNews['title']; ?></h3>
          <span class="date"><?php echo $firstNews['datetime']; ?></span>
          <?php echo $firstNews['description']; ?>
        </a>
      </li>

      <li class="emphasised item" data-image="agreement">
        <a href="<?php echo $secondNews['url']; ?>">
          <h3 class="heading"><?php echo $secondNews['title']; ?></h3>
          <span class="date"><?php echo $secondNews['datetime']; ?></span>
          <?php echo $secondNews['description']; ?>
        </a>
      </li>

      <li class="emphasised item" data-image="white-sheet">
        <a href="<?php echo $thirdNews['url']; ?>">
          <h3 class="heading"><?php echo $thirdNews['title']; ?></h3>
          <span class="date"><?php echo $thirdNews['datetime']; ?></span>
          <?php echo $thirdNews['description']; ?>
        </a>
      </li>

      <li class="emphasised item" data-image="crime-scene">
        <a href="<?php echo $fourthNews['url']; ?>">
          <h3 class="heading"><?php echo $fourthNews['title']; ?></h3>
          <span class="date"><?php echo $fourthNews['datetime']; ?></span>
          <?php echo $fourthNews['description']; ?>
        </a>
      </li>
    </ul>

  </div>

<?php
include("./foot.inc"); 

