<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
    }
    h1 {
        color: #333;
        text-align:center;
    }
    a {
        margin: 0 15px;
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
    }
    a:hover {
        text-decoration: underline;
    }
    .log-status {
        font-size: 16px;
        color: #555;
       	position:center;
       	display:flex;
       	justify-content:center;
       	
    }
    .logoff{
    	float:right;
    }
</style>
</head>
<body>
	<a class="logoff" href="logout">Logout</a>
    <h1>ADMIN DASHBOARD</h1>
   	<div class="log-status">
        <%=request.getAttribute("logstatus") != null ? request.getAttribute("logstatus") : "" %>
    </div>
   
    <a href="RegisterDetails.jsp">Add Product</a>
    <a href="MainController?actionVal=fetchAll">View Product</a>
    
    <a href="CustomerController?actVal=fetchAll">View User</a>
</body>
</html>
