<?php

	$displayResult = array();
	$finalResult = "";

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

					// check if fields are filled (be sure it's a blog article)
					if(!empty($title) && !empty($datetime)) {
						$current = array('title' => $title, 'description' => $description, 'datetime' => $datetime, 'type' => $currentStyleClass, 'id' => $id );
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

	} else {
		$finalResult = "No result";
	}



?>

<div class="addButton paddingBottom">
	<a class="btn btn-default" href="<?php echo $config->urls->root; ?>processwire/page/add/?parent_id=1093" ><span class="glyphicon glyphicon-plus-sign"></span> Add a new category</a>&nbsp;
	<a class="btn btn-default" href="<?php echo $config->urls->root; ?>processwire/page/list/?open=1093" ><span class="glyphicon glyphicon-plus-sign"></span> Add an article</a>
</div>

<div class="description">This is the list of existing news and articles in the system. To edit this list, you have to go to the "Pages" tab (on the main navigation bar), then click "News" or "Articles". Click on the item you want to update, then click on "Edit"</div>
<div class="description paddingBottom"> Please find the news and articles list below:</div>
<table class="table">
	<thead>
		<th>Date</th>
		<th>Type</th>
		<th>Name</th>
		<th>Description</th>
		<th> </th>
	</thead>
	<tbody>
		<?php 
			foreach ($displayResult as $row) {
				echo '<tr>';

				echo '<td>' . $row['datetime'] . '</td>';
				echo '<td>' . $row['type'] . '</td>';
				echo '<td>' . $row['title'] . '</td>';
				echo '<td>' . $row['description'] . '</td>';
				echo '<td><a href="' . $config->urls->root . 'processwire/page/edit/?id=' . $row['id'] . '"><i class="glyphicon glyphicon-pencil"></i></a></td>';


				echo '</tr>';
			}
		?>
	</tbody>
</table>