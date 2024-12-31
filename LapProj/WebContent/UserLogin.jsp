<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login</title>
<!-- Bootstrap and Font Awesome for design -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .login-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align:center;
    }
    .login-container h3,a {
        text-align: center;
        margin-bottom: 20px;
    }
    .login-container input {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border-radius: 4px;
        border: 1px solid #ccc;
    }
    .login-container input[type="submit"] {
        background-color: #28a745;
        color: white;
        border: none;
    }
    .login-container input[type="submit"]:hover {
        background-color: #218838;
    }
    .error-message {
        color: red;
        text-align: center;
    }
    
</style>

</head>
<body>

<div class="login-container">
<a href="Index.jsp">Back To Main Page</a>
    <h3>Customer Login</h3>
    <form action="<%=request.getContextPath()%>/CustomerController?actVal=validate" method="post">
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" id="username" name="username" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" id="password" name="password" class="form-control" required>
        </div>
        <div class="text-center">
            <input type="submit" value="Login" class="btn btn-success">
        </div>
        
         <a href="UserRegistration.jsp">REGISTER</a>
      
    </form>
</div>

</body>
</html>