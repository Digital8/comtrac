<?php 

/**
 * Admin template just loads the admin application controller, 
 * and admin is just an application built on top of ProcessWire. 
 *
 * This demonstrates how you can use ProcessWire as a front-end to another application. 
 *
 * Leave this file as-is, do not remove. 
 * 
 */
if($page->template->id !== 2) $page->process = "ProcessAdminCustomPages";

require($config->paths->adminTemplates . 'controller.php'); 

