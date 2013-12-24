<?php

include("./head.inc"); 
?>

<div class="emphasised solutions ethos section" data-image="building">
    <div class="clear narrow contained">
      <h2 class="heading"><?php echo $page->get('first_title'); ?></h2>
      <p class="introduction">
        <?php echo $page->get('first_content'); ?>
      </p>
    </div>

    <div class="clear contained">
      <div class="divider"></div>
    </div>
      <div class="clear contained">
      <div class="six inline columns">
        <h2 class="list heading"><?php echo $page->get('second_head'); ?></h2>
        <?php echo $page->get('second_content'); ?>
      </div>
      <div class="six inline columns">
        <h2 class="list heading"><?php echo $page->get('third_header'); ?></h2>
        <?php echo $page->get('third_content'); ?>
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
