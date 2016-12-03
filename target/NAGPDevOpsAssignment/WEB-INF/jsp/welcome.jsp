<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HC Sizzling Diary</title>
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">
<link rel="stylesheet" href="css/custom.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/sForm.js"></script>
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script>
	$(window).load(function() {
		$('.slider')._TMS({
			show : 0,
			pauseOnHover : false,
			prevBu : '.prev',
			nextBu : '.next',
			playBu : false,
			duration : 800,
			preset : 'fade',
			pagination : true, //'.pagination',true,'<ul></ul>'
			pagNums : false,
			slideshow : 8000,
			numStatus : false,
			banners : false,
			waitBannerAnimation : false,
			progressBar : false
		})
	});
	$(window).load(function() {
		$('.carousel1').carouFredSel({
			auto : false,
			prev : '.prev',
			next : '.next',
			width : 960,
			items : {
				visible : {
					min : 1,
					max : 4
				},
				height : 'auto',
				width : 240,
			},
			responsive : false,
			scroll : 1,
			mousewheel : false,
			swipe : {
				onMouse : false,
				onTouch : false
			}
		});
	});
</script>

</head>
<body>
	<c:url value='/welcome' var="homeUrl" />
	<c:url value='/uploadRecipe' var="homeUrl" />
	<c:url value='/portfolio' var="homeUrl" />
	<div class="main">
		<header>
		<div class="container_12">
			<div class="grid_12">
				<h1>
					<a href="${homeUrl}"><img src="images/logo.png" alt=""></a>
				</h1>
				<div class="menu_block">
					<nav>
					<ul class="sf-menu">
						<li class="current"><a href="${homeUrl}">Home</a></li>
						<li><a href="${portfolioUrl}">Gallery</a></li>
						<li><a href="${uploadRecipeUrl}">Upload Recipe</a></li>
					</ul>
					</nav>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		</header>
		<div class="slider-relative">
			<div class="slider-block">
				<div class="slider">
					<ul class="items">
						<li><img src="images/slide.jpg" alt=""></li>
						<li><img src="images/slide1.jpg" alt=""></li>
						<li class="mb0"><img src="images/slide2.jpg" alt=""></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="content page1">
			<div class="container_12">
				<div class="grid_7">
					<h2>Welcome</h2>
					<div class="page1_block col1">
						<img src="images/cutmypic.png" alt="">
						<div class="extra_wrapper">
							Eat whatever you want, and if anyone tries to lecture you about
							your weight, eat them too. <br /> - Harleen Chadha
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="grid_5">
					<h2>Sizzling Diary</h2>
					<ul class="list">
						<li><a href="#">This blog is for all those
								who love <strong>FOOD</strong>!
						</a></li>
						<li><a href="#">Explore different food
								cuisine <strong>HERE</strong>!
						</a></li>
						<li><a href="#">Find out some best food places in <strong>DELHI</strong>!
						</a></li>
						<li><a href="#">Upload your signature
								recipe <strong>NOW</strong>!
						</a></li>
					</ul>
				</div>
				<div class="clear"></div>
				<div class="grid_12">
					<div class="hor_separator"></div>
				</div>
				<div class="grid_12">
					<div class="car_wrap">
						<h2>Best Choice</h2>
						<a href="#" class="prev"></a><a href="#" class="next"></a>
						<ul class="carousel1">
							<c:forEach items="${foodItems}" var="food">
								<c:url value='/fetchFoodData?code=${food.foodCode}'
									var="foodUrl" />
								<li>
									<div>
										<img src="${food.foodImagePath}" alt="${food.foodImagePath}">
										<div class="col1 upp">
											<p class="txt-center">
												<strong>${food.foodName}</strong>
											</p>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="clear"></div>
				<div class="bottom_block">
					<div class="grid_6"></div>
					<div class="grid_6"></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<footer>
	<div class="container_12">
		<div class="grid_12">
			HC Sizzling Diary &copy; 2016 | <a href="#">Privacy Policy</a> |
			Design by: Harleen Chadha
		</div>
		<div class="clear"></div>
	</div>
	</footer>
</body>
</html>