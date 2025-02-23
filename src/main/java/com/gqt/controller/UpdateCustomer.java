package com.gqt.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gqt.model.AdminCustomer;
import com.gqt.model.Customer;


public class UpdateCustomer extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String username = request.getParameter("username");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		
		Customer c = new Customer();
		c.setUsername(username);
		c.setName(name);
		c.setPassword(password);
		c.setEmail(email);
		
		int status = c.updateCustomer();
		if(status == 1) {
			response.sendRedirect("/car-service-system/customer-update-success.jsp");
			
		}
		else {
			response.sendRedirect("/car-service-system/customer-update-failure.jsp");
			
		}
		
		
	}
	

}
