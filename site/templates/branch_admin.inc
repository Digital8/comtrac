<?php

	$branches = $pages->get('/branches/');

?>

<div class="addButton paddingBottom">
	<a class="btn btn-default" href="<?php echo $config->urls->root; ?>processwire/page/add/?parent_id=1061" ><span class="glyphicon glyphicon-plus-sign"></span> Add a new Branch</a>
</div>

<div class="description paddingBottom"> Please find the Branch list below:</div>

<table class="table">
	<thead>
		<th>City</th>
		<th>Phone number</th>
		<th>Place</th>
		<th>Address</th>
		<th>City / State / Postcode</th>
		<th> </th>
	</thead>
	<tbody>
<?php 
	if (!empty($branches) && $branches->numChildren > 0) {


		foreach($branches->children as $child) {
			echo '<tr>';
			echo '<td>' . $child->title . '</td>';
			echo '<td>' . $child->get('branch_number') .  '</td>';
			echo '<td>' . $child->get('branch_place') . '</td>';
			echo '<td>' . $child->get('branch_address') .  '</td>';
			echo '<td>' . $child->get('branch_city_state_postcode') . '</td>';
			echo '<td><a href="' . $config->urls->root . 'processwire/page/edit/?id=' . $child->id . '"><i class="glyphicon glyphicon-pencil"></i></a></td>';

			echo '</tr>';
		}
	}

 ?>


</table>