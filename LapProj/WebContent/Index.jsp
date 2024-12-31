<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<!-- Bootstrap CDN for basic card layout -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome CDN for icons -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }
    
    h1{
     text-align:center;
    }

    .card-container {
        display: flex;
        justify-content: space-around;
        margin:200px;
        position:center;
        
    }

    .card {
        width: 250px;
        padding: 20px;
        border-radius: 10px;
        text-align: center;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s;
    }

    .card:hover {
        transform: scale(1.05);
    }

    .card-icon {
        font-size: 50px;
        margin-bottom: 20px;
    }

    .admin-card {
        background-color: #4CAF50;
        color: white;
    }

    .customer-card {
        background-color: #2196F3;
        color: white;
    }

    .card a {
        display: block;
        text-decoration: none;
        color: white;
        font-size: 18px;
        font-weight: bold;
        margin-top: 10px;
    }

    .card a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<h1>Online Grocery Management</h1>
<div class="card-container">
    <!-- Admin Card -->
    <div class="card admin-card">
        <i class="fas fa-user-shield card-icon"></i>
        <h3>Admin</h3>
        <a href="Login.jsp">Go to Admin Login</a>
    </div>

    <!-- Customer Card -->
    <div class="card customer-card">
        <i class="fas fa-user card-icon"></i>
        <h3>Customer</h3>
        <a href="UserLogin.jsp">Go to Customer Login</a>
    </div>
</div>

</body>
</html>