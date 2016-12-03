<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HC Sizzling Diary | Gallery</title>
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
<script>
	$(document).ready(function() {
		$("a[data-gal^='prettyPhoto']").prettyPhoto({
			theme : 'facebook'
		});
	});
</script>
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
						<li class="current"><a href="${portfolioUrl}">Gallery</a></li>
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
				<div class="grid_12">
					<h2>Gallery</h2>
				</div>
				<div class="clear"></div>
				<div class="portfolio">
					<c:forEach items="${foodItems}" var="foodImage">
						<div class="grid_6">
							<a href="${foodImage}" data-gal="prettyPhoto[1]"><span></span><img
								src="${foodImage}" alt=""></a>
						</div>
					</c:forEach>
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