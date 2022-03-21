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
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<title>Admin Login</title>
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
		<a href="/" class="btn btn-default"><i class="material-icons">home</i></a>

		<p style="color: red" class="text-center">${admin_error }</p>
		<form class="m-auto" id="form-container"
			action="processAdminLoginForm" method="post">
			<h3 class="text-center mt-2">Admin Login</h3>
			<div class="mb-3">
				<label for="adminEmail" class="form-label">Admin Name</label> <input
					type="text" class="form-control" id="adminEmail" name="admin_name"
					aria-describedby="emailHelp" placeholder="Enter admin name"
					required>

			</div>


			<div class="mb-3">
				<label for="adminPassword" class="form-label">Password</label> <input
					type="password" class="form-control" id="admin_password"
					name="admin_password" aria-describedby="emailHelp"
					placeholder="Enter password" required>

			</div>
			<div class="container text-center">
				<button type="submit" class="w-50 btn btn-primary">Login</button>
				<p class="mt-2">
					Not an Admin? <strong><a href="userLogin">Login as
							User</a></strong>
				</p>
			</div>

		</form>

	</div>

</body>
</html>