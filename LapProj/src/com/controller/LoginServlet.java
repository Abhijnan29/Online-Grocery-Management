package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String username = request.getParameter("username");
	     String password = request.getParameter("password");

	        // Simple admin authentication (for demonstration purposes)
	        if ("admin".equals(username) && "admin".equals(password)) {
	            request.setAttribute("logstatus", "<font color=green align=center>Login Successfully!</font>");
	            request.getRequestDispatcher("Menu.jsp").forward(request, response);
	        } else {
	            response.sendRedirect("Error.jsp?error=true");
	        }
	}

}
