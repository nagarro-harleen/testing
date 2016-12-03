<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HC Sizzling Diary | Upload Recipe</title>
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/form.css">
<link rel="stylesheet" href="css/custom.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/sForm.js"></script>
<script src="js/Forms.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/custom.js"></script>
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
						<li class="current"><a href="${uploadRecipeUrl}">Upload
								Recipe</a></li>
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
				<div class="grid_6"></div>
				<div class="grid_5 prefix_1">
					<h2>Upload Recipe</h2>
					<form:form method="post" commandName="foodRecipeForm"
						action="${uploadRecipeUrl}" enctype="multipart/form-data">
						<ul class="upl-rep">
							<li><form:input path="foodName" placeholder="Recipe Name*" /></li>
							<li><form:input path="foodCuisine"
									placeholder="Recipe Cuisine*" /></li>
							<li class="desc"><form:textarea path="foodDescription"
									placeholder="Recipe Description*" /></li>
							<li><form:input path="foodBestPlace"
									placeholder="Best Served At*" /></li>
							<li><input type="file" name="foodImage" /><br /></li>
							<li><input type="submit" value="Submit" /></li>
							<li><c:if test="${uploadStatus eq true}">
									<p class="success-msg">Recipe added successfully!</p>
								</c:if> <c:if test="${uploadStatus eq false}">
									<p class="failure-msg">Oops! Please try again after few
										minutes.</p>
								</c:if></li>
						</ul>
					</form:form>
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
</body>
</html>