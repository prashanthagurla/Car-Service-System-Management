package com.gqt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gqt.model.Car;


public class ViewService extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Car c = new Car();
		List<Car> serviceRequestList = c.viewServiceRequest();
		if(serviceRequestList != null) {
			HttpSession session = request.getSession();
			session.setAttribute("sserviceRequestList", serviceRequestList);
			
			response.sendRedirect("/car-service-system/view-service-request-success.jsp");
			
			
		}else {
			 response.sendRedirect("/car-service-system/view-service-request-failure.jsp");
		       
		}
		
		
	}
	
}
