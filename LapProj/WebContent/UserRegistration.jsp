<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<style>
.option{
	display:flex;
	justify-content:space-between;
	
	
}

a{
	text-decoration:none;
	color:white;
}

</style>
<body>
    <div class="container">
        <h3>User Registration</h3>
        <form action="<%=request.getContextPath()%>/CustomerController?actVal=insert" method="post">
        
        	<div class="mb-3">
                <label for="userid" class="form-label">User ID</label>
                <input type="text" name="userid" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="username" class="form-label">User name</label>
                <input type="text" id="username" name="username" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>
            
            <div class="option">
            <button type="submit" class="btn btn-primary">Register</button>
           
            <button class="btn btn-success" ><a href="UserLogin.jsp">Login</a></button>

            </div>
            
        </form>
    </div>
</body>
</html>