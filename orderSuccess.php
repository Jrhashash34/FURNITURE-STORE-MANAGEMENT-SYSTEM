<?php
if(!isset($_REQUEST['id'])){
    header("Location: index.php");
}
?>
<!DOCTYPE html>
<html>
<head>
<title>FURNITURE STORE MANAGEMENT SYSTEM</title>
<!-- for-mobile-apps -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- FlexSlider -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script defer src="js/jquery.flexslider.js"></script>
<script type="text/javascript">
						$(window).load(function(){
						  $('.flexslider').flexslider({
							animation: "slide",
							start: function(slider){
							  $('body').removeClass('loading');
							}
						  });
						});
					  </script>
<!-- //FlexSlider -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- banner -->
	<div class="banner">
		<div class="container">
		<div class="search-bar">
				<form action="search.php" method="post">
				<input type="text">
				<input type="submit" name="user_query"" value="Search" />
				</form>
			</div>
			<div class="header-nav">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="logo">
							<a class="navbar-brand" href="index.html">Welcome to<span>Modern Home</span></a>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav cl-effect-14">
							<li class="active"><a href="index.html" class="active">Home</a></li>
                            <li><a href="index.php">Sign In</a></li>
							<li><a href="about.html">About</a></li>
							<li><a href="store.html">Store</a></li>
							<li><a href="contact.html">Contact Us</a></li>
						</ul>
						
					</div><!-- /.navbar-collapse -->	
				</nav>
			</div>
			<br><br>
			<div class="container">
			<h1>Order Status</h1>
			<p>Your order has submitted successfully.<?php echo $_GET['id']; ?></p>
			</div>
			<div class="banner-info-grids">
				<div class="col-md-6 banner-info">
					<h1>We Provide high quality <span>wooden furnitures</span></h1>
				</div>
				<div class="col-md-6 banner-info-left">
					<ul class="social-icons">
						<li><a href="https://mail.google.com/mail/" class="g"></a></li>
						<li><a href="https://in.linkedin.com/in/govind-patidar-2b636b112" class="in"></a></li>
						<li><a href="https://twitter.com/" class="t"></a></li>
						<li><a href="http://www.facebook.com/" class="facebook"></a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
				<div class="banner-info-pos">
					<a href="#timings" class="scroll"></a>
				</div>
			</div>
		</div>
	</div>
  <!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="events">
				<h3><span>News</span> & Events</h3>
				<div class="events-grids">
					<div class="wmuSlider example1">
						<div class="wmuSliderWrapper">
							<article style="position: absolute; width: 100%; opacity: 0;"> 
								<div class="banner-wrap">
									<div class="col-md-6 events-grid">
										<img src="images/9.jpg" alt=" " class="img-responsive" />
										<div class="event-grid-bottom">
											<div class="col-xs-3 event-grid-bottom-left">
												<h4>11th <span>November</span></h4>
											</div>
											<div class="col-xs-9 event-grid-bottom-right">
												<h4><a href="#">Marrying an old bachelor is like buying second-hand furniture.</a></h4>
												<p>Welcome all</p>
											</div>
											<div class="clearfix"> </div>
										</div>
									</div>
									<div class="col-md-6 events-grid">
										<img src="images/10.jpg" alt=" " class="img-responsive" />
										<div class="event-grid-bottom">
											<div class="col-xs-3 event-grid-bottom-left">
												<h4>12th <span>November</span></h4>
											</div>
											<div class="col-xs-9 event-grid-bottom-right">
												<h4><a href="#">Marrying an old bachelor is like buying second-hand furniture.</a></h4>
												<p>Welcome all</p>
												
											</div>
											<div class="clearfix"> </div>
										</div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;"> 
								<div class="banner-wrap">
									<div class="col-md-6 events-grid">
										<img src="images/10.jpg" alt=" " class="img-responsive" />
										<div class="event-grid-bottom">
											<div class="col-xs-3 event-grid-bottom-left">
												<h4>11th <span>October</span></h4>
											</div>
											<div class="col-xs-9 event-grid-bottom-right">
												<h4><a href="#">Marrying an old bachelor is like buying second-hand furniture.</a></h4>
												<p>Welcome all</p>
												<div class="m2">
													<a href="#"></a>
												</div>
											</div>
											<div class="clearfix"> </div>
										</div>
									</div>
									<div class="col-md-6 events-grid">
										<img src="images/11.jpg" alt=" " class="img-responsive" />
										<div class="event-grid-bottom">
											<div class="col-xs-3 event-grid-bottom-left">
												<h4>7th <span>Decemberr</span></h4>
											</div>
											<div class="col-xs-9 event-grid-bottom-right">
												<h4><a href="#">Marrying an old bachelor is like buying second-hand furniture.</a></h4>
												<p>Welcome all</p>
												
											</div>
											<div class="clearfix"> </div>
										</div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;"> 
								<div class="banner-wrap">
									<div class="col-md-6 events-grid">
										<img src="images/11.jpg" alt=" " class="img-responsive" />
										<div class="event-grid-bottom">
											<div class="col-xs-3 event-grid-bottom-left">
												<h4>11th <span>October</span></h4>
											</div>
											<div class="col-xs-9 event-grid-bottom-right">
												<h4><a href="#">Marrying an old bachelor is like buying second-hand furniture.</a></h4>
												<p>Welcome all</p>
												<div class="m2">
													<a href="#"></a>
												</div>
											</div>
											<div class="clearfix"> </div>
										</div>
									</div>
									<div class="col-md-6 events-grid">
										<img src="images/9.jpg" alt=" " class="img-responsive" />
										<div class="event-grid-bottom">
											<div class="col-xs-3 event-grid-bottom-left">
												<h4>7th <span>Decemberr</span></h4>
											</div>
											<div class="col-xs-9 event-grid-bottom-right">
												<h4><a href="#">Marrying an old bachelor is like buying second-hand furniture.</a></h4>
												<p>Welcome all</p>
												
											</div>
											<div class="clearfix"> </div>
										</div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</article>
										<script src="js/jquery.wmuSlider.js"></script> 
											<script>
											$('.example1').wmuSlider();         
											</script> 	 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- //newsletter -->
<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-row">
				<div class="col-md-4 footer-grids">
					<h4><a href="index.html">Welcome to<span>Modern Home</span></a></h4>
					<ul class="social-icons">
						<li><a href="https://mail.google.com/mail/" class="g"></a></li>
						<li><a href="https://in.linkedin.com/in/govind-patidar-2b636b112" class="in"></a></li>
						<li><a href="https://twitter.com/" class="t"></a></li>
						<li><a href="http://www.facebook.com/" class="facebook"></a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grids">
					<h3>Navigation</h3>					
					<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="about.html">About us</a></li>
						<li><a href="Store.html">Store</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grids">
					<h3>Support</h3>
					<ul>
						<li><a href="#">Mobile No:0765386679</a></li>
						<li><a href="#">Help Center</a></li>
						<li><a href="#">Address</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grids">
					<h3>Contact us</h3>
					<ul>
						<li>Nairobi</li>
						<li><a href="gmail.com">abdi@gmail.com</a></li>
						<li>Mombasa Road</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="container">		
			<p>© 2022 www.abdi.com <a href="#"></a></p>					
		</div>
	</div>
<!--//footer-->	
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>