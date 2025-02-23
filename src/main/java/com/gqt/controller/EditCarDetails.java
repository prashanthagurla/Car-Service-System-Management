package com.gqt.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gqt.model.Car;

public class EditCarDetails extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String username	=(String)session.getAttribute("susername");
		String carRegistrationNumber =request.getParameter("carRegistrationNumber");
		String newCarModel	=request.getParameter("carModel");
		String newCarType	=request.getParameter("carType");
		System.out.println(newCarModel);
		System.out.println(carRegistrationNumber);
		System.out.println(newCarType);
		System.out.println(username);
	
	Car c = new Car();
	
	c.setCarRegistrationNumber(carRegistrationNumber);
	c.setUsername(username);
	
	
	int status = c.editCarDetails(newCarModel,newCarType);
	if(status == 1) {
		response.sendRedirect("/car-service-system/edit-car-details-success.jsp");
	}
	else {
		response.sendRedirect("/car-service-system/edit-car-details-failure.jsp");
		
		
	}
		
	}
	

	
	

}
