package com.gqt.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gqt.model.AdminCustomer;
import com.gqt.model.Customer;


public class AddCustomer extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String name	=request.getParameter("name");
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    String email = request.getParameter("email");
	    String date = request.getParameter("date");
	    
	    Customer c = new Customer(name, username, password, email);
	    int status = -1;
		try {
			status = c.addCustomer();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	    if(status == 1) {
	    	response.sendRedirect("/car-service-system/add-customer-success.jsp");
			
	    	
	    }
	    else {
	    	response.sendRedirect("/car-service-system/add-customer-failure.jsp");
			
	    }
	}
	

}
