package com.gqt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gqt.model.Feedback;


public class ViewFeedback extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Feedback f = new Feedback();
		List<Feedback> feedbackList = f.viewFeedback();
		HttpSession session = request.getSession();
		session.setAttribute("sfeedbackList", feedbackList);
		
		response.sendRedirect("/car-service-system/view-feedback.jsp");
	}
	
}
