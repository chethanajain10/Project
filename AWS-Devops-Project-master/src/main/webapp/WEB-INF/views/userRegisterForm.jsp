<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<title>User Registration</title>
</head>
<!-- Styling  -->
<style>
body {
	height: 100vh;
	background-size: cover;
	background-repeat: no-repeat;
	background-image:
		url("https://public-assets.typeform.com/public/mega-menu/helpcenter.png")
}

#form-container {
	max-width: 500px;
	max-height: fit-content;
	box-shadow: 0px 5px 10px gray;
	padding: 30px 30px;
	background: white;
}

label {
	font-weight: 500;
}
</style>

<body>
	<div class="container">
		<p style="color: red" class="text-center">${error_register}</p>
		<form action="userRegister" method="post" id="form-container"
			class="m-auto">
			<h1 class="text-center">Registration Form</h1>
			<div class="mb-3">
				<label for="username" class="form-label">Name</label> <input
					type="text" class="form-control" id="username" name="name"
					aria-describedby="emailHelp"
					placeholder="Enter First and Last name" required="required">

			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email Address</label> <input
					type="email" class="form-control" id="email" name="email"
					aria-describedby="emailHelp" placeholder="Enter Email address"
					required="required">
			</div>

			<div class="mb-3">
				<label for="contact" class="form-label">Contact</label> <input
					type="text" class="form-control" id="contact" name="contact"
					aria-describedby="emailHelp" placeholder="Enter contact number"
					required="required">

			</div>

			<div class="mb-3">
				<label for="password" class="form-label">Password</label> <input
					type="password" class="form-control" id="password" name="password"
					aria-describedby="emailHelp" placeholder="Set your password"
					required="required">

			</div>
			<div class="container text-center">
				<button type="submit" class="w-50 btn btn-primary">Register</button>
				<p class="mt-2">
					Already register? <strong><a href="userLogin">Login
							here</a></strong>
				</p>
			</div>

		</form>

	</div>
</body>
</html>