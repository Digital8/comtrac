<?php
$howitworks = $pages->get("/how-it-works/"); 
$services = $pages->get("/solutions/"); 
$company = $pages->get("/company/"); 
$howitworksChildren = $howitworks->children;
$servicesChildren = $services->children;
$companyChildren = $company->children;

$tokenName = $this->session->CSRF->getTokenName();
$tokenValue = $this->session->CSRF->getTokenValue();

?>

	<div class="footer emphasised" data-image="circles">
	    <div class="secondary navigation contained clear">
	      <div class="three inline columns">
	        <h3 class="heading">How It Works</h3>
	        <ul class="plain list">
	        	<?php
		        	foreach($howitworksChildren as $howitworksChild) {
						echo "	<li><a href='{$howitworksChild->url}'>{$howitworksChild->title}</a></li>";
					}
	        	?>
	        </ul>
	      </div>

	      <div class="three inline columns">
	        <h3 class="heading">Services</h3>
	        <ul class="plain list">
	         	<?php
		        	foreach($servicesChildren as $servicesChild) {
						echo "	<li><a href='{$servicesChild->url}'>{$servicesChild->title}</a></li>";
					}
	        	?>
	        </ul>
	      </div>

	      <div class="three inline columns">
	        <h3 class="heading">Company</h3>
	        <ul class="plain list">
	          	<?php
		        	foreach($companyChildren as $companyChild) {
						echo "	<li><a href='{$companyChild->url}'>{$companyChild->title}</a></li>";
					}
	        	?>
	        </ul>
	      </div>

	      <div class="three inline columns">
	        <h3 class="heading">Subscribe</h3>
	        <p>Get COMtrack updates in your email.</p>
	        <form method="post" id="newsletterForm" action="./" novalidate>
	          <fieldset>
	          	<input type="hidden" id="_post_token" name="<?php echo $tokenName ?>" value="<?php echo $tokenValue ?>"/>
	          	<input type="hidden" id="_post_token" name="formSubmitted" value="newsletterForm"/>
	            <div class="field required" data-placeholdified>
	              <label for="subscribe-email">Email address</label>
	              <input id="subscribe-email" name="newsEmail" data-validate="email" data-type="text" type="email" required>
	              <input type="submit" class="button" id="newsletterSubmit" value="Subscribe">
	            </div>
	          </fieldset>
	        </form>
	      </div>
	    </div>

	    <p class="tertiary navigation contained">
	      <span>&copy; 2013 <a href="/">COMtrac</a></span>
	      <span><a data-social="facebook" href="https://www.facebook.com/pages/Investigation-Management-Australia/520133354685640" target="_blank">Like us</a></span>
	      <span><a data-social="twitter" href="https://twitter.com/COMtrac_" target="_blank">Follow us</a></span>
	      <span><a data-social="google-plus" href="https://plus.google.com/104342209944279037153/posts" target="_blank">+1 us</a></span>
	      <span><a data-social="truelocal" href="http://www.linkedin.com/company/comtrac/" target="_blank">Find us</a></span>

	      <span class="agency">Site by <a href="http://digital8.com.au">Digital8</a></span>
	    </p>
  	</div>

  	<?php 

		// If the page is editable, then output a link that takes us straight to the page edit screen:
		if($page->editable()) {
			echo "<a class='nav' id='editpage' href='{$config->urls->admin}page/edit/?id={$page->id}'>Edit</a>"; 
		}

	?>

	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/lib/jquery-1.9.1.min.js"></script>

	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/lib/placeholdify.js"></script>

	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/lib/jquery.validate.min.js"></script>

	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/lib/alertify.min.js"></script>

	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/lib/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/lib/jquery.colorbox-min.js"></script>

	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/index.js"></script>

	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/utils.js"></script>

	<script type="text/javascript">
		$(function() {
			var pull 		= $('#pull');
				menu 		= $('nav ul');
				menuHeight	= menu.height();

			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});

			$(window).resize(function(){
        		var w = $(window).width();
        		if(w > 320 && menu.is(':hidden')) {
        			menu.removeAttr('style');
        		}
    		});
		});
		
		$(document).ready(function(){
			$(".vimeo").colorbox({iframe:true, innerWidth:960, innerHeight:540});
		});

	</script>

	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-46676829-1', 'comtrac.com.au');
	  ga('send', 'pageview');

	</script>

</body>
</html>
