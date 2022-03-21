<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>RealEstate App</title>
</head>
<style>
body {
	background-image:
		url("https://assets-news.housing.com/news/wp-content/uploads/2021/01/13112645/Maharashtra%E2%80%99s-real-estate-premium-cut-may-boost-under-construction-projects-and-new-launches-FB-1200x700-compressed.jpg");
	background-repeat: repeat;
	background-attachment: fixed;
	background-position: center;
}

#welcome-div {
	height: fit-content;
	padding: 20px 20px;
}

img {
	width: 700px;
	height: 600px;
}

.btn {
	border: 1px solid #129;
}

.btn:hover {
	background-color: #129;
}
</style>
<body>
	<div class="container-fluid">
		<div id="welcome-div" class="col-6 mt-5 bg-light shadow-lg m-auto">
			<h1 style="color: #128" class="text-center">Welcome to 99 Accer.com</h1>
			<h5 style="color: #569" class="text-center">Buy your dream land here</h5>
			<div id="btn-div" class="text-center row mt-5">

				<div class=" col-6">


					<a href="userLogin"
						class="text-uppercase btn btn-lg btn-outline-dark">User Login</a>

				</div>
				<div class="col-5">
					<a href="adminLogin"
						class="text-uppercase btn btn-lg btn-outline-dark">Admin Login</a>
				</div>

			</div>


		</div>
</html>