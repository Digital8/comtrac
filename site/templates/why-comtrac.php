<?php 

/**
 * Page template
 *
 */

include("./head.inc"); 
?>

<div class="emphasised section" data-image="tablet-hands">
    <div class="clear contained">
      <div class="seven inline columns">
        <p class="introduction">
         <?php echo $page->get('left_title'); ?> 
        </p>
        <?php echo $page->get('left_content'); ?>
      </div>
      <div class="five inline columns">
        <h2 class="heading list"><?php echo $page->get('right_title'); ?></h2>
        <?php echo $page->get('right_content'); ?>
      </div>
    </div>
</div>

<div class="section">
    <div class="clear narrow contained">
      <h2 class="heading"><?php echo $page->get('second_head'); ?></h2>
      <p class="introduction">
        <?php echo $page->get('second_subtitle'); ?>
      </p>
    </div>
    <div class="clear contained">
   		<div class="divider"></div>
	    <div class="six inline columns">
    	    <?php echo $page->get('second_left_content'); ?>
      	</div>
      <div class="six inline columns">
        <?php echo $page->get('second_right_content'); ?>
      </div>
    </div>
  </div>

  <div class="emphasised benefits section" data-image="circles">
    <div class="clear contained">
      <h2 class="heading"><?php echo $page->get('third_header'); ?></h2> 
      <div class="clear benefits">
        <div class="benefit three inline columns">
          <h3 class="heading"><?php echo $page->get('col1_title'); ?></h3>
          <p><?php echo $page->get('col1_content'); ?></p>
        </div>
        <div class="benefit three inline columns">
          <h3 class="heading"><?php echo $page->get('col2_title'); ?></h3>
          <p><?php echo $page->get('col2_content'); ?></p>
        </div>
        <div class="benefit three inline columns">
          <h3 class="heading"><span><?php echo $page->get('col3_title'); ?></span></h3>
          <p><?php echo $page->get('col3_content'); ?></p>
        </div>
        <div class="benefit three inline columns">
          <h3 class="heading"><span><?php echo $page->get('col4_title'); ?></span></h3>
          <p><?php echo $page->get('col4_content'); ?></p>
        </div>
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

