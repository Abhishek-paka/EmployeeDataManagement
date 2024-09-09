<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Home Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous">
</head>
<body>

<div class="container mt-5">
    <div class="jumbotron text-center">
        <h1 class="display-4">Welcome, Admin</h1>
        <p class="lead">Manage Employee Data Efficiently</p>
    </div>

    <div class="row text-center">
        <div class="col-md-6 mb-4">
            <a href="register" class="btn btn-primary btn-lg btn-block">Add Employee Data</a>
        </div>
        <div class="col-md-6 mb-4">
            <a href="viewData" class="btn btn-info btn-lg btn-block">View Employee Data</a>
        </div>
    </div>

    <div class="row text-center">
        <div class="col-md-6 mb-4">
            <a href="update" class="btn btn-warning btn-lg btn-block">Update Employee Data</a>
        </div>
        <div class="col-md-6 mb-4">
            <a href="delete" class="btn btn-danger btn-lg btn-block">Delete Employee Data</a>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoJAnKqQjcRE6GIonCmgpWZOn5RGRM6JvvZr4PaTrpK1IBs"
        crossorigin="anonymous"></script>
</body>
</html>
