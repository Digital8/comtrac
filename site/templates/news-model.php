<?php

include("./head.inc"); 

?>
<div class="emphasised news post section" data-image="bridge">
    <div class="clear narrow contained">
      <h2 class="heading"><?php echo $page->get('news_title'); ?></h2>
      <p class="date"><?php echo $page->get('news_datetime'); ?></p>
    </div>
</div>

<div class="features section" data-image="circles">
	<div class="pull-right paddingRight">
		<a href="<?php echo $pages->get('/company/blog/')->url ?>" class="btn btn-default">BACK TO THE BLOG</a>
	</div>

    <div class="clear narrow contained">
    	<?php
    			// Display image from post
    			if(count($page->get('post_image'))) {
    				echo '<div class="six inline columns">';
					$image = $page->get('post_image'); 
					echo "<img id='photo' src='{$image->url}' alt='{$image->description}' />";
					echo '</div>';
					echo '<div class="six inline columns">';
				} else {
					echo '<div class="twelve inline columns">';
				}
    	?>
      		<p><?php echo $page->get('news_description'); ?></p>
   		</div>
    </div>
    <?php if(count($page->get('blog_file'))) { ?>
    <div class="clear narrow contained">
    	<h2 class="heading">Document attached: </h2>
    	<ul class="circle list">
    		<?php 
    			$files = $page->get('blog_file');
    			if (count($files) > 1) {
	    			foreach ($files as $file) {
	    				echo '<li><a href="'. $file->url . $file . '" target="_blank">' . $file. '</a></li>';	
	    			}
	    		} else {
	    			echo '<li><a href="'. $files->url . $files . '" target="_blank">' . $files . '</a></li>';
	    		}
    		?>
        </ul>    			
    </div>
    <?php } ?>
</div>


<div class="highlighted section" data-image="demo">
    <div class="clear contained">
      <h2 class="heading"><span>Organise a live demo</span><a href="<?php echo $pages->get("/company/contact/")->url ?>" class="alternate button">Enquire Now</a></h2> 
    </div>
</div>


<?php
include("./foot.inc"); 