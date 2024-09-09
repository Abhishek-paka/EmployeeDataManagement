<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Data</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Data Present In The Database</h2>

    <table class="table table-hover table-bordered">
        <thead class="table-dark">
            <tr>
                <th>Employee ID</th>
                <th>Employee Name</th>
                <th>Email</th>
                <th>Contact</th>
                <th>Department</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach var="eachValue" items="${EmployeeData}">
                <tr>
                    <td>${eachValue.id}</td>
                    <td>${eachValue.name}</td>
                    <td>${eachValue.email}</td>
                    <td>${eachValue.contact}</td>
                    <td>${eachValue.department}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoJAnKqQjcRE6GIonCmgpWZOn5RGRM6JvvZr4PaTrpK1IBs"
        crossorigin="anonymous"></script>
</body>
</html>

























<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

</head>
<body>
<div>
	<h2 class="m-5">Data Present In The DataBase</h2>

	
	<table class="table table-hover m-3">
		<thead>
			<tr>
				<th>Employee_ID</th>
				<th>Employee_NAME</th>
				<th>EMAIL</th>
				<th>CONTACT</th>
				<th>DEPARTMENT</th>
			</tr>

		</thead>
		<c:forEach var="eachValue" items="${EmployeeData }">



			<tbody>
				<tr>
					<td>${eachValue.id}</td>
					<td>${eachValue.name}</td>
					<td>${eachValue.email}</td>
					<td>${eachValue.contact}</td>
					<td>${eachValue.department}</td>
				</tr>
			</tbody>


		</c:forEach>
	</table>

</div>
</body>

</html> --%>