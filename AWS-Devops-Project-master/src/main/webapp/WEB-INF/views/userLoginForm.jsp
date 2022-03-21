<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>User Login</title>
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

	<div id="main" class="container">
		<a href="/" class="btn btn-default"><i class="material-icons">home</i></a>

		<p style="color: green" class=" text-center">${succsess_Register }</p>
		<p id="msg" style="color: red" class="msg text-center">${login_error }</p>
		<form action="processUserLoginForm" method="post" class="m-auto"
			id="form-container">
			<h3 class="text-center mt-2">User Login</h3>
			<div class="mb-3">
				<label for="email" class="form-label">E-mail</label> <input
					type="text" class="form-control" id="email" name="email"
					aria-describedby="emailHelp" placeholder="Enter registered E-mail"
					required oninput="inputFunction()">

			</div>


			<div class="mb-3">
				<label for="password" class="form-label">Password</label> <input
					type="password" class="form-control" id="password" name="password"
					aria-describedby="emailHelp" placeholder="Enter password" required>

			</div>
			<div class="container text-center">
				<button type="submit" class="w-50 btn btn-success">Login</button>
				<p class="mt-2">
					Not a registered User? <strong><a href="userRegister">Register
							here</a></strong>
				</p>
				<p>Or</p>
			</div>
			<div class="text-center">
				<a href="#" class="fb btn btn-primary"> <i
					class="fa fa-facebook fa-fw"></i> Login with Facebook

				</a> <a href="#" class="google btn btn-danger"><i
					class="fa fa-google fa-fw"> </i> Login with Google+ </a>
			</div>

		</form>

	</div>

</body>

</html>

<script>
	function inputFunction() {
		var msg = document.getElementById('msg');
		msg.style.display = "none";

	}
</script>