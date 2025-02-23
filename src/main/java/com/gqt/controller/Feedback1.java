package com.gqt.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gqt.model.Feedback;


public class Feedback1 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  HttpSession session = request.getSession();
		  String username = (String)session.getAttribute("susername");
		  String feedback = request.getParameter("feedback");
		  String star = request.getParameter("star");
		  
		  Feedback f = new Feedback();
		  f.setUsername(username);
		  f.setFeedback(feedback);
		  f.setStar(star);
		  
		  int status = f.addFeedback();
		  if(status == 1) {
			  response.sendRedirect("/car-service-system/feedback-success.jsp");
		  }
		  else {
			  response.sendRedirect("/car-service-system/feedback-failure.jsp");
			  
		  }
		  
		
	
	}


}
