<?php

	$faqs = $pages->get('/faqs/');

?>

<div class="addButton paddingBottom">
	<a class="btn btn-default" href="<?php echo $config->urls->root; ?>processwire/page/add/?parent_id=1032" ><span class="glyphicon glyphicon-plus-sign"></span> Add a new FAQ</a>
</div>

<div class="description">This is the list of existing FAQ in the system. To edit this list, you have to go to the "Pages" tab (on the main navigation bar), then click on "FAQs". Click on the item you want to update, then click on "Edit"</div>
<div class="description paddingBottom"> Please find the FAQ list below:</div>

<table class="table">
	<thead>
		<th>Question</th>
		<th>Answer</th>
		<th>Answer (Complementary)</th>
		<th> </th>
	</thead>
	<tbody>
<?php 
	if (!empty($faqs) && $faqs->numChildren > 0) {


		foreach($faqs->children as $child) {
			echo '<tr>';
			echo '<td>' . $child->get('faq_question') . '</td>';
			echo '<td>' . $child->get('faq_answer') .  '</td>';
			echo '<td>' . $child->get('faq_complementary_answer') . '</td>';
			echo '<td><a href="' . $config->urls->root . 'processwire/page/edit/?id=' . $child->id . '"><i class="glyphicon glyphicon-pencil"></i></a></td>';

			echo '</tr>';
		}
	}

 ?>


</table>