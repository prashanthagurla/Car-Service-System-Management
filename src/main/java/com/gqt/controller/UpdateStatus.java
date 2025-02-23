package com.gqt.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gqt.model.Car;

public class UpdateStatus extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String carRegistrationNumber = request.getParameter("carRegistrationNumber");
		String serviceStatus = request.getParameter("status");
		
		Car c = new Car();
		c.setUsername(username);
		c.setCarRegistrationNumber(carRegistrationNumber);
		c.setServiceStatus(serviceStatus);
		int rows = c.updateStatus();
		
		
		if(rows == 1) {
			response.sendRedirect("/car-service-system/update-status-success.jsp");
		}
			
		
		else {
			response.sendRedirect("/car-service-system/update-status-failure.jsp");
		}
		
		
		
	}
}
