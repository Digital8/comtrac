<?php 

	$tokenName = $this->session->CSRF->getTokenName();
	$tokenValue = $this->session->CSRF->getTokenValue();

	// get all FAQs
	$branches = $pages->get('/branches/');

	if (!empty($branches) && $branches->numChildren > 0) {

		$contentDisplay = "";

		foreach($branches->children as $branch) {

			$title = $branch->title;
			$phoneNumber = $branch->get('branch_number');
			$place = $branch->get('branch_place');
			$address = $branch->get('branch_address');
			$city_state_postcode = $branch->get('branch_city_state_postcode');

				
			if (!empty($title)) {
				$contentDisplay .= '<div class="clear contained city">';
				$contentDisplay .= '	<div class="four inline columns">';
				$contentDisplay .= '		<h2 class="list heading">' . $title . "</h2>";
				$contentDisplay .= '	</div>';
				$contentDisplay .= '	<div class="eight inline columns">';

				if (!empty($phoneNumber) || !empty($place) || !empty($address) || !empty($city_state_postcode)) {
				
					if (!empty($phoneNumber)) {
						$contentDisplay .= '		<p>' . $phoneNumber . "</p>";
					}

					if (!empty($place) || !empty($address) || !empty($city_state_postcode)) {
						$contentDisplay .= '<p>';
					}

					if (!empty($place)) {
						$contentDisplay .= $place . '<br />';	
					}

					if (!empty($address)) {
						$contentDisplay .= $address . '<br />';	
					}

					if (!empty($city_state_postcode)) {
						$contentDisplay .= $city_state_postcode;	
					}


					if (!empty($place) || !empty($address) || !empty($city_state_postcode)) {
						$contentDisplay .= '</p>';
					}
				}

				$contentDisplay .= '	</div>';
				$contentDisplay .= '</div>';
			}
		}

	} 


include("./head.inc"); 
?>

<div class="emphasised solutions contact section" data-image="building">
    <div class="clear narrow contained">
      <h2 class="heading"><?php echo $page->get('first_title'); ?></h2>
    </div>

    <div class="clear contained">
      <div class="divider"></div>
    </div>

    <div class="clear contained">
        <div class="six inline columns">
        	<?php echo $contentDisplay; ?>
        </div>


        <div class="six inline columns">

        	<h2 class="list heading">Quick Enquiry</h2>
        	<form id="quickEnquiry" name="quickEnquiry" method="post" action="./" novalidate>
        		<input type="hidden" id="_post_token" name="formSubmitted" value="enquiryForm"/>
        		<input type="hidden" id="_post_token" name="<?php echo $tokenName ?>" value="<?php echo $tokenValue ?>"/>
		        <fieldset>
		          <div class="clear row">
		            <div class="six inline columns">
		              <div class="short field required">
		                <label for="name">Name</label>
		                <input id="name" name="name" data-required data-type="text" type="text">
		              </div>
		            </div>
		            <div class="six inline columns">
		              <div class="short field required">
		                <label for="company">Company</label>
		                <input id="company" name="company" data-required data-type="text" type="text">
		              </div>
		            </div>
		          </div>

		          <div class="clear row">
		            <div class="six inline columns">
		              <div class="short field required">
		                <label for="email">Email</label>
		                <input id="email" name="email" data-validate="email" data-type="text" type="email">
		              </div>
		            </div>
		            <div class="six inline columns">
		              <div class="short field required">
		                <label for="phone">Phone</label>
		                <input id="phone" name="phone" data-validate="phone" data-type="text" type="tel">
		              </div>
		            </div>
		          </div>

		          <div class="clear row">
		            <div class="twelve columns">
		              <div class="field required">
		                <label for="enquiry">Enquiry</label>
		                <textarea id="enquiry" name="enquiry" data-required data-type="text"></textarea>
		              </div>
		            </div>
		          </div>

		        </fieldset>

		        <div class="clear row">
		          <div class="twelve inline columns">
		            <input id="submitEnquiry"  type="submit" name="submitEnquiry" class="button" value="Send Enquiry" />
		          </div>
		        </div>
		    </form>

      	</div>
    </div>
</div>

<?php
include("./foot.inc"); 
