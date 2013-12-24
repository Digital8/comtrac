<?php 

	// get all FAQs
	$faqs = $pages->get('/faqs/');

	if (!empty($faqs) && $faqs->numChildren > 0) {

		$contentDisplay = "";

		foreach($faqs->children as $child) {
			$contentDisplay .= '<div class="clear contained">';
			$contentDisplay .= '	<div class="four inline columns">';
			$contentDisplay .= '		<h2 class="heading question">' . $child->get('faq_question') . "</h2>";
			$contentDisplay .= '	</div>';
			$contentDisplay .= '	<div class="eight inline columns">';
			$contentDisplay .= '		<p class="answer">' . $child->get('faq_answer') . "</p>";
			$contentDisplay .= $child->get('faq_complementary_answer');
			$contentDisplay .= '	</div>';
			$contentDisplay .= '</div>';
		}

	} 


include("./head.inc"); 
?>
<div class="emphasised faq section" data-image="laptop">
	<?php echo $contentDisplay; ?>
</div>

<div class="highlighted section" data-image="demo">
    <div class="clear contained">
      <h2 class="heading"><span>Still looking for answers or simply want to know more?</span><a href="<?php echo $pages->get("/company/contact/")->url ?>" class="alternate button">Contact Us</button></a> 
    </div>
</div>

<?php
include("./foot.inc"); 
