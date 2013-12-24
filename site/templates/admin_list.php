<?php

/**
 * ProcessWire 2.x Elegance Theme Admin Markup Template
 *
 * Copyright 2012 by Ryan Cramer / Copyright 2012 by Niek Bosch
 *
 *
 */

$searchForm = $user->hasPermission('page-edit') ? $modules->get('ProcessPageSearch')->renderSearchForm() : '';
$bodyClass = $input->get->modal ? 'modal' : '';
if(!isset($content)) $content = '';

$config->styles->prepend($config->urls->adminTemplates . 'styles/main.css?v=2');
$config->styles->append($config->urls->adminTemplates . 'styles/inputfields.css');
$config->styles->append($config->urls->adminTemplates . 'styles/ui.css?v=2');
$config->scripts->append($config->urls->adminTemplates . 'scripts/inputfields.js');
$config->scripts->append($config->urls->adminTemplates . 'scripts/main.js?v=2');

$browserTitle = wire('processBrowserTitle');
if(!$browserTitle) $browserTitle = __(strip_tags($page->get('title|name')), __FILE__) . ' &bull; ProcessWire';

/*
 * Dynamic phrases that we want to be automatically translated
 *
 * These are in a comment so that they register with the parser, in place of the dynamic __() function calls with page titles.
 *
 * __("Pages");
 * __("Setup");
 * __("Modules");
 * __("Access");
 * __("Admin");
 * __("Site");
 *
 */

?>
<!DOCTYPE html>
<html lang="<?php echo __('en', __FILE__); // HTML tag lang attribute
	/* this intentionally on a separate line */ ?>">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="robots" content="noindex, nofollow" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<title><?php echo $browserTitle; ?></title>

	<script type="text/javascript">
		<?php

		$jsConfig = $config->js();
		$jsConfig['debug'] = $config->debug;
		$jsConfig['urls'] = array(
			'root' => $config->urls->root,
			'admin' => $config->urls->admin,
			'modules' => $config->urls->modules,
			'core' => $config->urls->core,
			'files' => $config->urls->files,
			'templates' => $config->urls->templates,
			'adminTemplates' => $config->urls->adminTemplates,
			);
		?>

		var config = <?php echo json_encode($jsConfig); ?>;
	</script>

	<?php foreach($config->styles->unique() as $file) echo "\n\t<link type='text/css' href='$file' rel='stylesheet' />"; ?>

	<!--[if IE]>
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->adminTemplates; ?>styles/ie.css" />
	<![endif]-->

	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->adminTemplates; ?>styles/ie7.css" />
	<![endif]-->

	<?php foreach($config->scripts->unique() as $file) echo "\n\t<script type='text/javascript' src='$file'></script>"; ?>

	<script type="text/javascript">
		// Overwrite TinyMCE skin setting
		if (typeof InputfieldTinyMCEConfigDefaults != 'undefined') {
			InputfieldTinyMCEConfigDefaults.skin = 'o2k7';
			InputfieldTinyMCEConfigDefaults.skin_variant = 'silver';
		}
	</script>
</head>

<?php if($user->isGuest()): ?>

<body class="login">

	<div id="loginBox">

		<div class="header">
			<div class="logo">ProcessWire</div>
		</div>

		<?php echo $content?>

		<?php if(count($notices)) include($config->paths->adminTemplates . 'notices.inc'); ?>

	</div>

	<script type="text/javascript">

		var nameInput = $('#login_name'),
			passInput = $('#login_pass');

		if ( ! nameInput.val()) {
			nameInput.focus();
		} else {
			passInput.focus();
		}

	</script>

</body>

<?php else: ?>

<body<?php if($bodyClass) echo " class='$bodyClass'"; ?>>

	LOL

</body>

<?php endif; ?>

</html>