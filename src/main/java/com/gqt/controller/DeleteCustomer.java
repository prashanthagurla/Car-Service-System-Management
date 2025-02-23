package com.gqt.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gqt.model.AdminCustomer;
import com.gqt.model.Customer;


public class DeleteCustomer extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String username	=  request.getParameter("username");
	
	Customer  c = new Customer();
	c.setUsername(username);
	int status = -1;
	try {
		 status = c.deleteCustomer();
	} 
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	
	 if(status == 1) {
	    	response.sendRedirect("/car-service-system/delete-customer-success.jsp");
			
	    	
	    }
	    else {
	    	response.sendRedirect("/car-service-system/delete-customer-failure.jsp");
			
	    }
	}

	

}
