package com.gqt.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class Feedback {
	private String username;
	private String feedback;
	private String star;
	
	Connection con = null;

	public Feedback(String username, String feedback, String star) {
		super();
		this.username = username;
		this.feedback = feedback;
		this.star = star;
	}

	public Feedback() {
		super();
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}
	
	{
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gqt_november", "root", "Prashanth@201");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

	public int addFeedback() {
		try {
			String s = "insert into feedback values(?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(s);
			
			pstmt.setString(1, username);
			pstmt.setString(2, feedback);
			pstmt.setString(3, star);
			
			int rows = pstmt.executeUpdate();
			return rows;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public List<Feedback> viewFeedback() {
		try {
			ArrayList<Feedback> feedbackList = new ArrayList<>();
			String s = "select * from feedback";
			Statement stmt = con.createStatement();
			ResultSet res = stmt.executeQuery(s);
			while(res.next()) {
				username = res.getString(1);
				feedback = res.getString(2);
				star = res.getString(3);
				
				Feedback f = new Feedback(username, feedback, star);
				feedbackList.add(f);
				
				
			}
			return feedbackList;
			
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	

}
