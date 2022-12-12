<!DOCTYPE html>
<html>
<head>
<title>FURNITURE STORE MANAGEMENT SYSTEM</title>
<!-- for-mobile-apps -->
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
				<input type="submit" name="user_query" value="Search" />
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
							<li><a href="Store.html">Store</a></li>
							
							<li><a href="contact.html">Contact Us</a></li>
						</ul>
						
					</div><!-- /.navbar-collapse -->	
				</nav>
			</div>
	</body>
</html>

<?php
include 'dbConfig.php';

	
	//$search_query = isset($_GET['search']) ? $_GET['user_query'] : ' ' ;
	if(isset($_POST['user_query']))
	{
		$searchq= $_POST['qury'];
	
	$get_pro = "select name, description, price, image from products where name Like '%$searchq%' ";
	
	$run_pro = mysqli_query($db,$get_pro);
	
	while($row_pro=mysqli_fetch_array($run_pro)){
		
			$pro_name=$row_pro['name'];
			$pro_dec=$row_pro['description'];
			$pro_price=$row_pro['price'];
			$pro_image=$row_pro['image'];
			
			echo"
					<div>
						<img src='images/$pro_image' width='200' height='150' />
					</div>
					
					<p>Price: $pro_price</p>
					
					";
	
	}
	}
?>