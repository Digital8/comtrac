<!DOCTYPE html>
<!--[if IE]>  <html lang="en" class="ie"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>COMtrac - <?php echo $page->get("headline|title"); ?></title>

	<meta name="description" content="<?php echo $page->summary; ?>" />

	<meta name="author" content="<?php echo $page->get("author"); ?>">

	<meta name="keywords" content="incident report form, incident report template, incident report template, incident report, incident management, incident investigation, incident reporting, incident reporting procedure, surveillance, audit, investigator jobs, investigating, investigation courses, detective, root cause analysis, root cause analysis template, audit report template, audit, audit report template, detective, incident investigation, incident management, incident report, incident report form, incident report template, incident reporting, incident reporting procedure, investigating, investigation courses, investigator jobs, root cause analysis, root cause analysis template, surveillance">

	<meta name="generator" content="ProcessWire <?php echo $config->version; ?>" />

	<script type="text/javascript" src="http://use.typekit.net/sid7bzs.js"></script>
	<script type="text/javascript">try{Typekit.load();}catch(e){}</script>

	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>styles/alertify.core.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>styles/alertify.default.css" />

	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>styles/all.css" />
	
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>styles/colorbox.css" />

</head>
<body>
	<div class="header">
    	<div class="contained clear">
        	<div class="four inline columns">
        		<a class="logo" href='<?php echo $config->urls->root; ?>'>
            		<img src="<?php echo $config->urls->templates?>images/logo@2x.png" alt="COMtrac Logo" title="Go to the homepage">
          		</a>
        	</div>

        	<div class="three inline columns">
	        	<span class="tagline">The future of investigations - <b>today</b></span>
	        </div>

	        <div class="five columns pull-right">
	        	<a class="toggleMenu" href="#"><span class="text">Menu</span></a>
	        	<ul class="primary navigation list plain">
		        	<?php

						$homepage = $pages->get("/"); 
						$children = $homepage->children;
						$children->prepend($homepage); 
				
						foreach($children as $child) {
							$class = '';

							// if homepage, not apply it 
							if ($child->id === $homepage->id) {
								$class = $child === $page->rootParent ? " class='current'" : '';
								echo "<li $class><a href='{$child->url}'>{$child->title}</a></li>";
							} else {

								if ($child->numChildren > 0) {
									
									$children = $child->children;
									$firstOfChild = $children->first();

									$parent = $child;
									// add the child in dropdown

									$dropDownMenu = "<div class='dropdown'>";
									$dropDownMenu .= "	<ul class='plain list'>";
												
									foreach($child->children as $subChild) {
										if ($page->rootParent === $parent || $page === $parent) {
											$class = true;
										}
										$subclass = $subChild === $page ? " class='current'" : '';

										$dropDownMenu .= "		<li{$subclass}><a href='{$subChild->url}'>{$subChild->title}</a></li>";
									}

									$dropDownMenu .= "	</ul>";
									$dropDownMenu .= "</div>";

									if ($class) {
										$class = " class='current' ";
									} else {
										$class = "";
									}

									echo "<li $class data-has-dropdown><a href='{$firstOfChild->url}'>{$child->title}</a>";
									echo $dropDownMenu;
									echo "</li>";

								} else {
									$class = $child === $page->rootParent ? " class='current'" : '';
									echo "<li $class><a href='{$child->url}'>{$child->title}</a></li>";
								}
							}
						}

					?>
				</ul>
			</div>
    	</div>
    </div>

    <?php if ($page->path == '/') { ?>
		<?php 
    		$homeVideoLink = $page->get('home_video_link');
    		$homeVideoTitle =  $page->get('home_video_title');

    		if (empty($homeVideoTitle) && empty($homeVideoTitle)) {
    			$homeVideoTitle = "COMtrac - The Experience";
    			$homeVideoLink = "http://player.vimeo.com/video/82532790";
    		}
    	?>
	
	    <div class="hero emphasised section" data-image="seats">
	      <div class="clear contained">
	        <div class="item" data-image="scales">
	        	<div class="content">
		          <h2 class="heading">
		            Inspection, Investigation and Brief Management System.
		          </h2>
		          <a class="play button vimeo cboxElement" title="<?php echo $homeVideoTitle; ?>" href="<?php echo $homeVideoLink; ?>"><span>Play Video</span></a>
		          <a class="alternate button" href="<?php echo $pages->get("/company/contact/")->url ?>">Organise A Demo</a>
		        </div>
	        </div>
	      </div>
	  	</div>
	<?php } ?>

	<?php 
		if ($page->path != '/') { 
			$parentPage = $page->parent();
			$parentUrl = $parentPage->url;
			$parentTitle = $parentPage->title;

			if ($page->path != '/company/blog/') {
				echo '<div class="breadcrumb section">';
				echo '	<div class="clear contained">';
				echo '		<a class="parent" href="' . $parentUrl . '">' . $parentTitle . '</a>';
				echo '     	<h1 class="inline heading">' . $page->title . '</h1>';  
				echo '  </div>';
				echo '</div>';	
			} else {

				// get categories
				$categoryPage = $pages->get('/blog-categories/');
				$categories = $categoryPage->children('include=hidden');

				$selectedCategory = $input->get->category;

				echo '<div class="breadcrumb news section">';
				echo '	<div class="clear contained">';
				echo '		<div class="six inline columns left">';
				echo '			<a class="parent" href="' . $parentUrl . '">' . $parentTitle . '</a>';
				echo '     		<h1 class="inline heading">' . $page->title . '</h1>';  
				echo '  	</div>';	
				echo '									';
				echo '		<div class="three inline columns">';
				echo '			<div class="short field required" data-placeholdified>';
				echo '				<select id="category" name="category" data-type="text">';
				echo '     				<option value="all">Category: All</option>';  
				foreach ($categories as $category) {
					$selected = "";

					if (!empty($selectedCategory) && $selectedCategory == $category->name) {
						$selected = "selected='selected' ";
					}

					echo ' 					<option value="' . $category->name . '" ' . $selected . '>' . $category->title . '</option>';
				}	
				echo '				</select>';
				echo '			</div>';
				echo '  	</div>';
				echo '									';
				echo '		<div class="three inline columns">';
				echo '			<form id="search_form" action="'. $config->urls->root . 'company/blog/search/" method="get">';
				echo '				<div class="short field required" data-placeholdified>';
				echo '					<label for="search_query">Search</label>';
				echo '     				<input id="search_query" name="q" data-type="text" value="' . htmlentities($input->whitelist('q'), ENT_QUOTES, 'UTF-8') . '" type="search">';
				echo '  			</div>';
				echo '			</form>';
				echo '		</div>';
				echo '	</div>';
				echo '</div>';

			}
		
		} 
	?>
