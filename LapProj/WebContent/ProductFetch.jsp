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
        padding: 20px;
    }

    a {
        text-decoration: none;
        color: #333;
        font-weight: bold;
        display: inline-block;
        margin-bottom: 20px;
    }

    .container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px; /* Space between cards */
    }

    .card {
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
        width: 200px; /* Width of each card */
        text-align: center;
    }

    .card h4 {
        margin: 10px 0;
        color: #333;
    }

    .card p {
        margin: 5px 0;
        color: #555;
    }
</style>
</head>
<body>
<a href="UserMenu.jsp">User Menu</a>

<div class="container">
    <% ArrayList<ProductDetails> productList = (ArrayList<ProductDetails>)request.getAttribute("productList"); %>
    <% for(ProductDetails product : productList) { %>
        <div class="card">
            <h4><%= product.getProName() %></h4>
            <p>Product Id: <%= product.getProId() %></p>
            <p>Price: <%= product.getPrice() %></p>
            <p>Quantity(pcs/gram): <%= product.getQuantity() %></p>
            <p>Category: <%= product.getCategory() %></p>
            <button>Add to Cart</button>
            <button>Add to Wishlist</button>
        </div>
    <% } %>
</div>
</body>
</html>
