<?php

// Production TBD
// $fromMail = "info@comtrac.com.au";
// $managerTo = "info@comtrac.com.au";

// Development
$fromMail = "info@comtrac.com.au";
$managerTo = 'info@comtrac.com.au';

$response = array();


if ($input->get->exportCSV) {
	// Prepare the newsletter email list for the csv export.
	$fileName = 'email-list.csv';
 
	header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
	header('Content-Description: File Transfer');
	header("Content-type: text/csv");
	header("Content-Disposition: attachment; filename={$fileName}");
	header("Expires: 0");
	header("Pragma: public");
	 
	$fh = @fopen( 'php://output', 'w' );
	
	$emails = $pages->get('/newsletter-subscription/');

	fputcsv($fh,array('Email List'));

	foreach ( $emails as $data ) { 
	    // Put the data into the stream
	    fputcsv($fh, $data->get('email_field'));
	}
	// Close the file
	fclose($fh);
	// Make sure nothing else is sent, our file is done
	return true;
}

if ($input->get->categoryList) {
	$id_news_template = 60;

	$displayResult = array();
	$finalResult = "";

	$categories = $pages->get("/blog-categories/");

	if ($categories->numChildren > 0) {

		foreach ($categories->children("include=hidden") as $cat) {

			$categoryName = $cat->title;
			$categoryId = $cat->id;

			$current = array('categoryId' => $categoryId, 'categoryName' => $categoryName, "template_id" => $id_news_template);
			$displayResult[] = $current;

		}
	}

	if (sizeof($displayResult) == 0) {
		$finalResult = "No result";
	} else {
		$finalResult = "Please find the available categories below";
	}

	$response['success'] = true;
	$response['message'] = $finalResult;
	$response['categoryList'] = $displayResult;

	echo json_encode($response);
}


// admin form so no token test (?)
$formSubmitted = $input->post->formSubmitted;

if (!empty($formSubmitted) && $formSubmitted == "newCategoryForm") {
	// Save in the ProcessWire page tree; map submission to the template fields
	$np = new Page(); // create new page object
	$np->template = $templates->get("category_model"); 
	$np->parent = $pages->get("/blog-categories/");

	$title = $sanitizer->text($input->post->category);

	if (!empty($title)) {

		// Match up the sanitized inputs we just got with the template fields
		$np->of(false);
		$np->title = $title;

		// Save/create the page
		$np->save();	

		$response['success'] = true;
		$response['message'] = "Your category was created with success.";

	} else {
		$response['success'] = false;
		$response['message'] = 'The category was not created, please try again.';
	}

	echo json_encode($response);
}


// First, confirm that a submission has been made
if ($session->CSRF->validate())
{
	$formSubmitted = $input->post->formSubmitted;

	if ($formSubmitted == "enquiryForm") {
		// Save in the ProcessWire page tree; map submission to the template fields
		$np = new Page(); // create new page object
		$np->template = $templates->get("enquiry_form"); 
		$np->parent = $pages->get("/enquiries/");

		// Send all form submissions through ProcessWire sanitization
		$title = $sanitizer->text($input->post->name) . " " . $sanitizer->text($input->post->company) ;
		$name = $sanitizer->text($input->post->name);
		$company = $sanitizer->text($input->post->company);
		$email = $sanitizer->email($input->post->email);
		$phone = $sanitizer->text($input->post->phone);
		$enquiry = $sanitizer->textarea($input->post->enquiry);

		if (!empty($email)) {

			// Match up the sanitized inputs we just got with the template fields
			$np->of(false);
			$np->title = $title;
			$np->enquiry_name = $name;
			$np->enquiry_company = $company;
			$np->enquiry_phone = $phone;
			$np->enquiry_email = $email;
			$np->enquiry_content = $enquiry;

			// Save/create the page
			$np->save();	

			// send a mail to the admin / acknowledgement to the guest
			$startMail = "<html><body>";
			$endMail = "</body></html>";

			$subject = 'COMTrac - New Enquiry Reqest';

			$headers = "From: " . strip_tags($fromMail) . "\r\n";
			$headers .= "Reply-To: ". strip_tags($fromMail) . "\r\n";
			$headers .= "MIME-Version: 1.0\r\n";
			$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";


			$managerContent = "<div>Dear manager,</div>";
			$managerContent .= "<div>Please find the details of the new enquiry: </div>";
			$managerContent .= "<div>Name: " . $name . "</div>";
			$managerContent .= "<div>Company: " . $company . " </div>";
			$managerContent .= "<div>Email: " . $email .  " </div>";
			$managerContent .= "<div>Phone: " . $phone . " </div>";
			$managerContent .= "<div>Enquiry: </div>";
			$managerContent .= "<div>" . $enquiry . "</div>";
			$managerContent .= "<div>&nbsp;</div>";
			$managerContent .= "<div>Kind regards,</div>";
			$managerContent .= "<div>COMTrac website</div>";

			$guestContent = "<div>Dear " . $name . ",</div>";
			$guestContent .= "<div>Your enquiry was taken in account. We will go back to you as soon as possible.</div>";
			$guestContent .= "<div>Please find the details of the your enquiry: </div>";
			$guestContent .= "<div>Name: " . $name . "</div>";
			$guestContent .= "<div>Company: " . $company . " </div>";
			$guestContent .= "<div>Email: " . $email .  " </div>";
			$guestContent .= "<div>Phone: " . $phone . " </div>";
			$guestContent .= "<div>Enquiry: </div>";
			$guestContent .= "<div>" . $enquiry . "</div>";
			$guestContent .= "<div>&nbsp;</div>";
			$guestContent .= "<div>Kind regards,</div>";
			$guestContent .= "<div>COMTrac website</div>";


			$managerMessage = $startMail . $managerContent . $endMail;
			$guestMessage = $startMail . $guestContent . $endMail;

			mail($managerTo, $subject,$managerMessage,$headers);
			mail($email,$subject,$guestMessage,$headers);

			$response['success'] = true;
			$response['message'] = "Your enquiry was taken in account.";

		} else {
			$response['success'] = false;
			$response['message'] = 'The email format is incorrect, please try again.';
		}
	}

	if ($formSubmitted == "newsletterForm") {
		// Save in the ProcessWire page tree; map submission to the template fields
		$np = new Page(); // create new page object
		$np->template = $templates->get("newsletter_form");
		$np->parent = $pages->get("/newsletter-subscription/");

		$email = $sanitizer->email($input->post->newsEmail);

		if (!empty($email)) {

			// check if the mail is not already saved
			$newsletterEmails = $pages->get('/newsletter-subscription/');
			$alreadyExist = false;

			if (!empty($newsletterEmails) && $newsletterEmails->numChildren > 0) {

				foreach ($newsletterEmails->children as $mail) {

					if	($email == $mail->get('email_field')) {
						$alreadyExist = true;
					}
				}

				if ($alreadyExist) {
					$response['success'] = true;
					$response['message'] = 'The email was already in our database, thank you.';
				} else {
					$np->of(false);
					$np->title = $email;
					$np->email_field = $email;

					// Save/create the page
					$np->save();	

					$response['success'] = true;
					$response['message'] = "Your email was saved with success. Thank you";
				}
			} else {
				$np->of(false);
				$np->title = $email;
				$np->email_field = $email;

				// Save/create the page
				$np->save();	

				$response['success'] = true;
				$response['message'] = "Your email was saved with success. Thank you";
			}

		} else {
			$response['success'] = false;
			$response['message'] = 'The email format is incorrect, please try again.';
		}
	}

	echo json_encode($response);
}
