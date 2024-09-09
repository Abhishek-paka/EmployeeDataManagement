<html>
<head>
<title>Login Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<style>
/* Custom CSS to center the form */
.login-container {
	margin-top: 100px;
	max-width: 400px;
}

.login-form {
	background-color: #f7f7f7;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.login-form h3 {
	text-align: center;
	margin-bottom: 20px;
}

.message {
	margin-top: 20px;
	font-size: 18px;
	color: green;
	text-align: center;
	width: 100%;
}
</style>

</head>
<body>

	<div class="container login-container">
		<div class="login-form">
			<h3>Login</h3>
			<form action="login" method="post">
				<div class="form-group mb-3">
					<label for="username">Username</label> <input type="text"
						class="form-control" id="username" name="username"
						placeholder="Enter your username" required>
				</div>
				<div class="form-group mb-3">
					<label for="password">Password</label> <input type="password"
						class="form-control" id="password" name="password"
						placeholder="Enter your password" required>
				</div>
				<div class="form-group form-check float-end">
					<input type="checkbox" class="form-check-input" id="rememberMe">
					<label class="form-check-label" for="rememberMe">Remember
						me</label>
				</div>
				<button type="submit" class="btn btn-primary btn-block mb-3">Login</button>
				<div class="invalid-login mt-3 text-center fs-4">
					<%
					String message = (String) request.getAttribute("message");
					if (message != null) {
					%>
					<p><%=message%></p>
					<%
					}
					%>
				</div>
			</form>
		</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
		integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
		crossorigin="anonymous">
		
	</script>
</body>
</html>
