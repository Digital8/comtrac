<?php 

include("./head.inc"); 
?>

<div class="emphasised for section">
  	<div class="for item" data-image="investigators">
    	<h2 class="list heading"><?php echo $page->get('col1_title'); ?></h2>
    	<?php echo $page->get('col1_content'); ?>
	</div>

	<div class="for item" data-image="inspectors">
    	<h2 class="list heading"><?php echo $page->get('col2_title'); ?></h2>
    	<?php echo $page->get('col2_content'); ?>
	</div>

	<div class="for item" data-image="management">
    	<h2 class="list heading"><?php echo $page->get('col3_title'); ?></h2>
    	<?php echo $page->get('col3_content'); ?>
	</div>

	<div class="for item" data-image="prosecutors">
    	<h2 class="list heading"><?php echo $page->get('col4_title'); ?></h2>
    	<?php echo $page->get('col4_content'); ?>
	</div>
</div>

<div class="section">
	<div class="clear contained">
		<div class="features six inline columns">
			<h2 class="list heading"><?php echo $page->get('left_title'); ?></h2>
				<?php echo $page->get('left_content'); ?>
		</div>
		<div class="six inline columns">
			<img class="extend" src="<?php echo $page->get('right_image')->url; ?>" />
		</div>
	</div>
</div>

<div class="emphasised app section" data-image="mobile-app">
	<div class="clear contained">
	  <div class="clear">
	    <div class="six inline columns">
	      <img class="extend" src="<?php echo $page->get('left_image')->url; ?>" />
	    </div>
	    <div class="six inline columns">
	      <h2 class="list heading"><?php echo $page->get('right_title'); ?></h2>
	      <?php echo $page->get('right_content'); ?>
	    </div>
	  </div>
	</div>
</div>

<div class="emphasised app section">
    <div class="clear contained">
      <div class="five inline columns">
        <p class="introduction"><?php echo $page->get('second_left_content'); ?></p>
      </div>
      <div class="seven inline columns">
        <?php echo $page->get('second_right_content'); ?>
      </div>
    </div>
  </div>


<div class="integration section">
	<div class="clear narrow contained">
	  <h2 class="heading"><?php echo $page->get('second_head'); ?></h2>
	</div>
	<div class="clear contained">
	  <div class="three inline columns">
	    <div class="icon-circle" data-image="inspection"></div>
	    <p><?php echo $page->get('second_col1_content'); ?></p>
	  </div>
	  <div class="three inline columns">
	    <div class="icon-circle" data-image="web"></div>
	    <p><?php echo $page->get('second_col2_content'); ?></p>
	  </div>
	  <div class="three inline columns">
	    <div class="icon-circle" data-image="cloud"></div>
	    <p><?php echo $page->get('second_col3_content'); ?></p>
	  </div>
	  <div class="three inline columns">
	    <div class="icon-circle" data-image="database"></div>
	    <p><?php echo $page->get('second_col4_content'); ?></p>
	  </div>

	</div>
</div>

<div class="features section">
    <div class="clear narrow contained">
      <h2 class="heading"><?php echo $page->get('third_header'); ?></h2>
      <p class="introduction">
        <?php echo $page->get('second_subtitle'); ?>
      </p>
    </div>
    <div class="clear contained">
      <div class="divider"></div>
      <div class="six inline columns">
        <?php echo $page->get('services_leftcontent'); ?>
      </div>
      <div class="six inline columns">
         <?php echo $page->get('services_rightcontent'); ?>
      </div>
    </div>
  </div>

  <div class="highlighted section" data-image="demo">
    <div class="clear contained">
      <h2 class="heading"><span><?php echo $page->get('bottom_linkenquiry'); ?></span><a href="<?php echo $pages->get("/company/contact/")->url ?>" class="alternate button">Enquire Now</a></h2> 
    </div>
  </div>

<?php

include("./foot.inc"); 

