<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register Page</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center mb-4">
        This is ${pageName} Page
    </h2>

    <form action="entry">
        <div class="form-group row">
            <label for="id" class="col-sm-2 col-form-label">Employee ID:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="id" name="id" placeholder="Enter Employee ID" required>
            </div>
        </div>

        <div class="form-group row">
            <label for="name" class="col-sm-2 col-form-label">Employee Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter Employee Name" required>
            </div>
        </div>

        <div class="form-group row">
            <label for="email" class="col-sm-2 col-form-label">Email:</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" required>
            </div>
        </div>

        <div class="form-group row">
            <label for="contact" class="col-sm-2 col-form-label">Contact:</label>
            <div class="col-sm-10">
                <input type="tel" class="form-control" id="contact" name="contact" placeholder="Enter Contact" required>
            </div>
        </div>

        <div class="form-group row">
            <label for="department" class="col-sm-2 col-form-label">Department:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="department" name="department" placeholder="Enter Department" required>
            </div>
        </div>

        <div class="form-group row">
            <div class="col-sm-10 offset-sm-2">
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </div>
        </div>
    </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>







<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ include file="home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
</head>
<body>

	<h2>
		This is ${pageName} Page
	</h2>
	
	<form action="entry">
		<div>
			<label for="id">Employee Id : </label> <input type="text" name="id"/> <br/>
			<label for="name">Employee Name : </label> <input type="text" name="name"/> <br/>
			<label for="email">Email : </label> <input type="email" name="email"/> <br/>
			<label for="contact">Contact : </label> <input type="tel" name="contact"/> <br/>
			<label for="department">Department : </label> <input type="text" name="department"/> <br/>
			<button type="submit" class="btn btn-primary">Register</button>
		</div>
	</form>



</body>
</html> --%>