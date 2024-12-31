<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,com.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%=request.getAttribute("status") != null ? request.getAttribute("status") : "" %>
	<a class="logoff" href="userlogout">Logout</a>
	<h1 align="center">User DashBoard</h1>
	<a href="CustomerController?actVal=fetchProduct">Buy Product</a><br>
	<a href="UserLogin.jsp">Back to User Login</a>
</body>
</html>