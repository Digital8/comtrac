<?php

	$emails = $pages->get('/newsletter-subscription/');

?>

<div class="addButton paddingBottom">
	<a class="btn btn-default" href="<?php echo $config->urls->root; ?>processwire/page/add/?parent_id=1035" ><span class="glyphicon glyphicon-plus-sign"></span> Add a new email address</a>

	<!--a class="btn btn-default" href="#" onClick="exportToCSV();" ><span class="glyphicon glyphicon-export"></span> Export to CSV file</a-->
</div>

<div class="description paddingBottom"> Please find the email list below:</div>

<table class="table">
	<thead>
		<th>Email</th>
		<th>Action</th>
	</thead>
	<tbody>
<?php 
	if (!empty($emails) && $emails->numChildren > 0) {


		foreach($emails->children as $child) {
			echo '<tr>';
			echo '<td>' . $child->get('email_field') . '</td>';
			echo '<td><a href="' . $config->urls->root . 'processwire/page/edit/?id=' . $child->id . '"><i class="glyphicon glyphicon-pencil"></i></a></td>';

			echo '</tr>';
		}
	}

 ?>

</table>

<script type="text/javascript">

function exportToCSV() {
	// call the CSV export
	$.get('<?php echo $config->urls->root; ?>mailer/', {exportCSV: true});

}


</script>