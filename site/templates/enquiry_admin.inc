<?php

	$enquiries = $pages->get('/enquiries/');

?>

<div class="addButton paddingBottom">
	&nbsp;
</div>

<div class="description paddingBottom"> Please find the Enquiries list below:</div>

<table class="table">
	<thead>
		<th>Name</th>
		<th>Company</th>
		<th>Phone</th>
		<th>Email</th>
		<th>Enquiry</th>
		<th style="text-align:center;">Answered?</th>
		<th> </th>
	</thead>
	<tbody>
<?php 
	if (!empty($enquiries) && $enquiries->numChildren > 0) {


		foreach($enquiries->children as $child) {
			echo '<tr>';
			echo '<td>' . $child->get('enquiry_name') . '</td>';
			echo '<td>' . $child->get('enquiry_company') .  '</td>';
			echo '<td>' . $child->get('enquiry_phone') . '</td>';
			echo '<td>' . $child->get('enquiry_email') .  '</td>';
			echo '<td>' . $child->get('enquiry_content') . '</td>';
			if ($child->get('enquiry_answered')) {
				echo '<td style="text-align:center;"><i class="glyphicon glyphicon-ok"></i></td>';
			} else {
				echo '<td> </td>';
			}

			echo '<td><a href="' . $config->urls->root . 'processwire/page/edit/?id=' . $child->id . '"><i class="glyphicon glyphicon-pencil"></i></a></td>';

			echo '</tr>';
		}
	}

 ?>


</table>