<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details Updation</title>
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

    input[readonly] {
        background-color: #e9e9e9;
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

    td[colspan="2"] {
        text-align: center;
    }
</style>
</head>
<body>
	<a href="Menu.jsp">Menu</a>
	<h3>Product Details Updation</h3>
	<%=request.getAttribute("status")!=null?request.getAttribute("status"):"" %>
	<form action="<%=request.getContextPath()%>/MainController?actionVal=updateConfirm" method="post">
		<table>
			<tr>
				<td>Product ID</td>
				<td><input name="proId" type="text" value="<%=(String) request.getAttribute("proId")%>" readonly></td>
			</tr>
				
			<tr>
				<td>Product Name</td>
				<td><input name="proName" type="text" value="<%=(String) request.getAttribute("proName")%>"></td>
			</tr>
			
			<tr>
				<td>Price</td>
				<td><input name="price" type="text" value="<%=(String) request.getAttribute("price")%>"></td>
			</tr>
			
			
			<tr>
				<td>Quantity</td>
				<td><input name="quantity" type="text" value="<%=(String) request.getAttribute("quantity")%>"></td>
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
				<td colspan="2"><input type="submit" value="Save"></td>
			</tr>
			
		</table>
	</form>
</body>
</html>