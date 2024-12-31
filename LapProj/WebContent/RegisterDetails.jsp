<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding Product By Admin</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
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
        color: #4CAF50;
    }

    table {
        margin: 20px auto;
        border-collapse: collapse;
        width: 400px;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    td {
        padding: 10px;
        text-align: left;
    }

    input[type="text"], select {
        width: 50%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
	<a href="Menu.jsp">Menu</a>
	<h3>Add Product</h3>
	<%= request.getAttribute("regstatus")!=null?request.getAttribute("regstatus"):""  %>
	<form action="<%= request.getContextPath() %>/MainController?actionVal=insert" method="post">
		<table>
			<tr>
				<td>Product ID</td>
				<td><input name="proId" type="text"></td>
			</tr>
				
			<tr>
				<td>Product Name</td>
				<td><input name="proName" type="text"></td>
			</tr>
			
			<tr>
				<td>Price</td>
				<td><input name="price" type="text"></td>
			</tr>
			
			
			<tr>
				<td>Quantity</td>
				<td><input name="quantity" type="text"></td>
			</tr>
			
			
			<tr>
				<td>Category</td>
				<td>
					<select name="category">
						<option value="fruits">Fruits</option>
						<option value="vegetables">Vegetables</option>
						<option value="protein">Protein</option>
					</select>
				</td>
			</tr>	
			
				
			<tr></tr>
			
			<tr>
				<td colspan=2 align="center"><input type="submit" value="Save"></td>
			</tr>
			
			
		</table>
	</form>
</body>
</html>