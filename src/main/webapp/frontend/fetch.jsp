<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fetch Page</title>
<style>
body{
    background-color: #B4B4B4;
}
.table-container {
	width: 80%; /* Adjust the container width */
	margin: 0 auto; /* Center the table */
}
table {
	width: 100%; /* Make table take full width of the container */
	border-collapse: collapse;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	background-color: white;
}
table, th, td {
	border: 1px solid #ccc;
}
th, td {
	padding: 8px;
	text-align: left;
}
th {
	background-color: black;
	color:white;
	font-size: 20px;
}
button {
	padding: 10px 20px;
    font-size: 16px;
    border: none;
    margin: 10px;
}
button:hover {
	background-color: black;
	color: white;
}
a{
    align: center;
}
</style>
</head>
<body>
	<div class="table-container">
		<h2>Employee List</h2>
		<!-- to check if data is being received -->
		<c:out value="${data1 != null ? 'Data received' : 'No data'}" />
		<table>
			<thead>
				<tr>
				    <th>ID</th>
					<th>Name</th>
					<th>Mobile</th>
					<th>Domain</th>
					<th>Email</th>
					<th>Salary</th>
					<th></th> 
					<th></th> 
				</tr>
			</thead>
			<tbody>
				<c:forEach var="employee" items="${data1}">
					<tr>
					    <td>${employee.id}</td>
						<td>${employee.name}</td>
						<td>${employee.mobile}</td>
						<td>${employee.domain}</td>
						<td>${employee.email}</td>
						<td>${employee.salary}</td>
						<td>
						    <!-- URL Re-writing -->
							<a href="edit?id=${employee.id}"><button>Edit</button></a>
						</td> 
						<td>
							<a href="delete?id=${employee.id}"><button>Delete</button></a>
						</td> 
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/springMVC_CRUD"><button>Home</button></a>
	</div>
</body>
</html>