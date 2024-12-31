package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.ProductDetails;
import com.beans.UserDetails;
import com.service.ProductService;
import com.service.UserService;


@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public CustomerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("actVal");
		UserService userservice= new UserService();
		ProductService proservice= new ProductService();
		if(action.equals("insert")) {
			int userid= Integer.parseInt(request.getParameter("userid"));
			String username= request.getParameter("username");
			String email= request.getParameter("email");
			String password= request.getParameter("password");
			
			UserDetails user=new UserDetails(userid,username,email,password);
			int rowsAffected= (userservice.addusers(user));
			if(rowsAffected!=0) {
				request.setAttribute("regstatus","<font color=green>Insert Successfully>");
			}
			else{
				request.setAttribute("regstatus","<font color=red>Insert UnSuccessfully>");
			}
			
			RequestDispatcher rd=request.getRequestDispatcher("UserLogin.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("fetchAll"))
		{
			ArrayList<UserDetails> userList = userservice.fetchAllUsers();
			request.setAttribute("userList", userList);
			RequestDispatcher rd = request.getRequestDispatcher("FetchUserDetails.jsp");
			rd.forward(request, response);
		}else if(action.equals("validate")) {
			ArrayList<UserDetails> userList = userservice.fetchAllUsers();
			String name=request.getParameter("username");
			String pass=request.getParameter("password");
			for(UserDetails u: userList) {
				if(name.equals(u.getUsername()) && pass.equals(u.getPassword())) {
					request.setAttribute("status", "<font color=green align=center>Login Successfully!</font>");
					request.getRequestDispatcher("UserMenu.jsp").forward(request, response);
				}
			}
			response.sendRedirect("UserError.jsp?error=true");
		}else if(action.equals("fetchProduct")) {
			ArrayList<ProductDetails> productList = proservice.fetchAllProducts();
			request.setAttribute("productList", productList);
			RequestDispatcher rd = request.getRequestDispatcher("ProductFetch.jsp");
			rd.forward(request, response);
		}
	}

}
