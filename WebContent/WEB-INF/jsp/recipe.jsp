<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HC Sizzling Diary | ${foodItem.foodName}</title>
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/prettyPhoto.css">
<link rel="stylesheet" href="css/custom.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/sForm.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
</head>
<body>
	<c:url value='/welcome' var="homeUrl" />
	<c:url value='/uploadRecipe' var="uploadRecipeUrl" />
	<c:url value='/portfolio' var="portfolioUrl" />
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
						<li><a href="${homeUrl}">Home</a></li>
						<li><a href="${portfolioUrl}">Gallery</a></li>
						<li class="current"><a href="#">Diary</a></li>
						<li><a href="${uploadRecipeUrl}">Upload Recipe</a></li>
					</ul>
					</nav>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		</header>
		<div class="content">
			<div class="container_12">
				<div class="grid_7">
					<h2 class="head2">${foodItem.foodName}</h2>
					<div class="news">
						<img src="${foodItem.foodImagePath}" alt=""
							class="img_inner fleft" />
					</div>
					<div class="description">
						<p class="heading">
							<strong>Cuisine</strong>
						</p>
						<p class="text-wrp">${foodItem.foodCuisine}</p>
						<br />
						<p class="heading">
							<strong>Must try at</strong>
						</p>
						<p class="text-wrp">${foodItem.foodBestPlace}</p>
						<br />
						<p class="heading">
							<strong>Description</strong>
						</p>
						<p class="text-wrp">${foodItem.foodDescription}</p>
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