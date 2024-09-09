<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Employee Details</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>

<div class="container mt-5">
	<div class="card">
		<div class="card-header bg-primary text-white text-center">
			<h2>Employee Details</h2>
		</div>
		<c:choose>
			<c:when test="${not empty EmployeeData}">
				<c:forEach var="employee" items="${EmployeeData}">
					<div class="card-body">
						<table class="table table-bordered">
							<tr>
								<th>Employee ID</th>
								<td>${employee.id}</td>
							</tr>
							<tr>
								<th>Employee Name</th>
								<td>${employee.name}</td>
							</tr>
							<tr>
								<th>Email</th>
								<td>${employee.email}</td>
							</tr>
							<tr>
								<th>Contact</th>
								<td>${employee.contact}</td>
							</tr>
							<tr>
								<th>Department</th>
								<td>${employee.department}</td>
							</tr>
						</table>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<div class="card-body text-center">
					<p>No data found</p>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</div>

<!-- Bootstrap JS and dependencies -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoJAnKqQjcRE6GIonCmgpWZOn5RGRM6JvvZr4PaTrpK1IBs"
	crossorigin="anonymous"></script>
</body>
</html>
