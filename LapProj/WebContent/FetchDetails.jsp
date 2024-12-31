<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    a {
        display: inline-block;
        margin: 10px;
        text-decoration: none;
        color: #333;
        font-weight: bold;
    }

    h3 {
        text-align: center;
        color: #333;
        margin-top: 20px;
    }

    table {
        margin: 30px auto;
        border-collapse: collapse;
        width: 80%;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    th, td {
        padding: 10px;
        border-bottom: 1px solid #ddd;
        text-align: left;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    td {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    td a {
        background-color: #4CAF50;
        color: white;
        padding: 5px 10px;
        text-decoration: none;
        border-radius: 4px;
    }

    td a:hover {
        background-color: #45a049;
    }

    .center {
        text-align: center;
    }

    .message {
        margin: 10px auto;
        width: 80%;
        color: #333;
        text-align: center;
        font-weight: bold;
    }
</style>
</head>
<body>
	<a href="Menu.jsp">Menu</a>

	<!-- Status messages for update or delete actions -->
	<div class="message">
		<%=request.getAttribute("updateStatus")!=null?request.getAttribute("updateStatus"):"" %>
		<%=request.getAttribute("deletestatus")!=null?request.getAttribute("deletestatus"):"" %>
	</div>

	<%ArrayList<ProductDetails> productList = (ArrayList<ProductDetails>)request.getAttribute("productList");%>
	<table border="1" align="center">
		<tr>
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Category</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<% for(ProductDetails product:productList) { %>
		<tr>
			<td><%= product.getProId() %></td>
			<td><%= product.getProName() %></td>
			<td><%= product.getPrice() %></td>
			<td><%= product.getQuantity() %></td>
			<td><%= product.getCategory() %></td>
			<td><a href="MainController?actionVal=updateFetch&proId=<%=product.getProId()%>&proName=<%=product.getProName()%>&price=<%=product.getPrice()%>&quantity=<%=product.getQuantity()%>&category=<%=product.getCategory()%>">Edit</a></td>
			<td><a href="MainController?actionVal=delete&proId=<%=product.getProId()%>">Delete</a></td>
		</tr>
		<% } %>
	</table>
</body>
</html>