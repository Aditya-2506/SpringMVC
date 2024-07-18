<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%--If we use ModelMap, then we have to write <%@page isELIgnored="false"%>--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>
<style>
body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-color: #B4B4B4;
}
div {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    width: 300px;
    height: 300px;
    background-color: #ffffff;
    border: 1px solid #cccccc;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
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
	<div>
		<a href="add"><button >Add</button></a> 
		<a href="fetch"><button >Fetch</button></a>
	</div>
	<!-- Expression Language -->
	<!-- <h1 style="color: green">${msg1}</h1> -->
	<!-- <h1 style="color: green">${msg2}</h1> -->
	
	
	<script type="text/javascript">
	    
        window.onload = function() {
            var popupMessage = "${popup}";
            if (popupMessage) {
                alert(popupMessage);
            }
        };
    </script>
</body>
</html>