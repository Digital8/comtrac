<?php

include("./head.inc"); 

$services_intro = $page->get('services_intro');

$quote = $page->get('services_quote'); 
$author = $page->get('services_quote_author');
$left2 = $page->get('solution_left2');
$left3 = $page->get('solution_left3'); 
$right2 = $page->get('solution_right2');
$right3 = $page->get('solution_right3'); 
$lastContent =  $page->get('services_lastcontent');
$dataImage = $page->name;

?>

<div class="emphasised solutions section" data-image="<?php echo $dataImage; ?>">
    <div class="clear narrow contained">
      <p class="introduction">
      	<?php echo $page->get('services_title'); ?>
      </p>
    </div>

    <div class="clear contained">
      <div class="divider"></div>
    </div>
    <div class="clear narrow contained">
        <?php echo $page->get('services_subtitle'); ?>
    </div>
</div>

<?php if ($dataImage == "investigation-management") {?>
  <div class="solutions section">
      <?php if (!empty($services_intro)) { ?>    
      <div class="clear narrow contained">
        <p class="introduction">
          <?php echo $page->get('services_intro'); ?>
        </p>
      </div>
      <div class="clear contained">
        <div class="divider"></div>
      <?php } else { ?>
      <div class="clear contained">
      <?php } ?>
        <div class="four inline columns">
          <?php echo $page->get('services_leftcontent'); ?>
        </div>
        <div class="six inline columns">
          <?php echo $page->get('services_rightcontent'); ?>
        </div>
      </div>

      <?php if (!empty($lastContent)) { ?>
  		<div class="twelve inline columns">
  			<div class="divider"></div>
  		</div>
  		<div class="clear narrow contained">
  			<p class="conclusion">
  		  		<?php echo $lastContent; ?>
  			</p>
  		</div>
  	<?php } ?>
  </div>
<?php } else { ?>
  <div class="solutions features section">
      <?php if (!empty($services_intro)) { ?>    
      <div class="clear narrow contained">
        <p class="introduction">
          <?php echo $page->get('services_intro'); ?>
        </p>
      </div>
      <div class="clear contained">
        <div class="divider"></div>
      <?php } else { ?>
      <div class="clear contained">
      <?php } ?>
        <div class="six inline columns">
          <?php echo $page->get('services_leftcontent'); ?>
        </div>
        <div class="six inline columns">
          <?php echo $page->get('services_rightcontent'); ?>
        </div>

        <?php if (!empty($lastContent)) { ?>
        <div class="twelve inline columns">
          <div class="divider"></div>
        </div>
        <div class="clear narrow contained">
          <p class="conclusion">
              <?php echo $lastContent; ?>
          </p>
        </div>
        <?php } ?>
      </div>

      
  </div>
<?php } ?>

<?php if ((!empty($left2) && !empty($right2)) || (!empty($left3) && !empty($right3))) { ?>
	<div class="emphasised courses section">
      <?php if ((!empty($left2) && !empty($right2))) { ?>	    
        <div class="section emphasised course">
          <div class="clear contained">
            <div class="four inline columns course-name">
              <?php echo $left2; ?>
            </div>

            <div class="eight inline columns course-details">
              <?php echo $right2; ?>
            </div>
          </div>
        </div>
      <?php } ?>


      <?php if (!empty($left3) && !empty($right3)) { ?>     
        <div class="section emphasised course">
          <div class="clear contained">
            <div class="four inline columns course-name">
              <?php echo $left3; ?>
            </div>

            <div class="eight inline columns course-details">
              <?php echo $right3; ?>
            </div>
          </div>
        </div>
      <?php } ?>

	</div>
<?php } ?>

<?php if ((!empty($quote) && !empty($author))) { ?>
<div class="emphasised quote section">
      <?php if (!empty($quote) && !empty($author)) { ?>
      <div class="clear contained">
        <h2 class="heading"><?php echo $quote; ?><span></span></h2>
        <p class="attribution"><?php echo $author; ?></p>
      </div>
      <?php } ?>
  </div>
  <?php } ?>


<div class="highlighted section" data-image="demo">
    <div class="clear contained">
      <h2 class="heading"><span><?php echo $page->get('bottom_linkenquiry'); ?></span><a href="<?php echo $pages->get("/company/contact/")->url ?>" class="alternate button">Enquire Now</a></h2> 
    </div>
</div>

<?php

include("./foot.inc"); 

?>