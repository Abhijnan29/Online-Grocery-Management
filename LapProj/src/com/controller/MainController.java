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
import com.service.ProductService;




@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public MainController() {
        super();
       
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("actionVal");
		ProductService productservice= new ProductService(); 
		if(action.equals("insert")) {
			int proid= Integer.parseInt(request.getParameter("proId"));
			String proName= request.getParameter("proName");
			int price= Integer.parseInt(request.getParameter("price"));
			int quantity= Integer.parseInt(request.getParameter("quantity"));
			String category=request.getParameter("category");
			
			ProductDetails product=new ProductDetails(proid,proName,price,quantity,category);
			int rowsAffected= productservice.addproducts(product);
			if(rowsAffected!=0) {
				request.setAttribute("regstatus","<font color=green>Insert Successfully>");
			}
			else{
				request.setAttribute("regstatus","<font color=red>Insert UnSuccessfully>");
			}
			
			RequestDispatcher rd=request.getRequestDispatcher("RegisterDetails.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("fetchAll"))
		{
			ArrayList<ProductDetails> productList = productservice.fetchAllProducts();
			request.setAttribute("productList", productList);
			RequestDispatcher rd = request.getRequestDispatcher("FetchDetails.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("updateFetch"))
        {
            request.setAttribute("proId", request.getParameter("proId"));
            request.setAttribute("proName", request.getParameter("proName"));
            request.setAttribute("price", request.getParameter("price"));
            request.setAttribute("quantity", request.getParameter("quantity"));
            request.setAttribute("category", request.getParameter("category"));
            
            RequestDispatcher rd = request.getRequestDispatcher("UpdateDetails.jsp");
            rd.forward(request, response);
        }
        else if(action.equals("updateConfirm"))
        {
            int proid= Integer.parseInt(request.getParameter("proId"));
            String proName= request.getParameter("proName");
            int price= Integer.parseInt(request.getParameter("price"));
            int quantity= Integer.parseInt(request.getParameter("quantity"));
            String category=request.getParameter("category");
            
            ProductDetails product = new ProductDetails(proid, proName, price, quantity, category);
            int rowsAffected = productservice.updateProductBypId(product);
            if(rowsAffected!=0)
            {
                request.setAttribute("status", "<font color=blue>Update Successful</font>");
            }
            else
            {
                request.setAttribute("status", "<font color=red>Update Unsuccessful</font>");
            }
            
            ArrayList<ProductDetails> productList = productservice.fetchAllProducts();
            request.setAttribute("productList", productList);
            RequestDispatcher rd = request.getRequestDispatcher("FetchDetails.jsp");
            rd.forward(request, response);
            
        }
        else if(action.equals("delete"))
        {
            int pid = Integer.parseInt(request.getParameter("proId"));
            int rowsAffected = productservice.deleteproductBypid(pid);
            if(rowsAffected!=0)
            {
                request.setAttribute("deletestatus", "<font color=blue>Delete Successful</font>");
            }
            else
            {
                request.setAttribute("deletestatus", "<font color=red>Delete Unsuccessful</font>");
            }
            ArrayList<ProductDetails> productList = productservice.fetchAllProducts();
            request.setAttribute("productList", productList);
            RequestDispatcher rd = request.getRequestDispatcher("FetchDetails.jsp");
            rd.forward(request, response);
        }
    }

}

