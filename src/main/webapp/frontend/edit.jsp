<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Page</title>
<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-color: #B4B4B4;
}

.form-container {
	padding: 20px;
	background-color: #ffffff;
	border: 1px solid #cccccc;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 300px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	gap: 10px;
}

.form-container label {
	margin-bottom: 10px;
}

.form-container input {
	padding: 10px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-bottom: 15px;
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
</style>
</head>
<body>
	<div class="form-container">
		<form action="edit" method="post">
			<input type="hidden" name="id" value="${data2.id}" required><br>
			
			<label>Name</label> 
			<input type="text" name="name" value="${data2.name}" required>

			<label>Mobile </label> 
			<input type="tel" name="mobile" value="${data2.mobile}" required>

			<label>Domain</label> 
			<input type="text" name="domain" value="${data2.domain}" required>

			<label>Email </label> 
			<input type="email" name="email" value="${data2.email}" required>

			<label>Salary </label> 
			<input type="number" name="salary" value="${data2.salary}" required>

			<button type="submit">Edit Madi</button>
		</form>
		<a href="/springMVC_CRUD"><button>Home</button></a>
	</div>
</body>
</html>