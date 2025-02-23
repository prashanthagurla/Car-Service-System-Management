package com.gqt.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AdminCustomer {
	private String name;
	private String username;
	private String password;
	private String email;
	private String date;
	Connection con = null;
	public AdminCustomer(String name, String username, String password, String email, String date) {
		super();
		this.name = name;
		this.username = username;
		this.password = password;
		this.email = email;
		this.date = date;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public AdminCustomer() {
		super();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "AdminCustomer [name=" + name + ", username=" + username + ", password=" + password + ", email=" + email
				+ "]";
	}
	
	{
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gqt_november","root","Prashanth@201");
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	public int addCustomer() throws SQLException {
		try {
			String s = "insert into admin_customer values (?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(s);
			pstmt.setString(1, name);
			pstmt.setString(2, username);
			pstmt.setString(3, password);
			pstmt.setString(4, email);
			pstmt.setString(5, date);
			
			int rows = pstmt.executeUpdate();
			return rows;

			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	public int deleteCustomer() throws SQLException {
		try {
			String s = "delete from admin_customer where username = ?";
			PreparedStatement pstmt = con.prepareStatement(s);
			pstmt.setString(1, username);
			
			int rows = pstmt.executeUpdate();
			return rows;
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
		return 0;
	}
	
	
	
	public int updateCustomer() {
		try {
			String s = "update admin_customer set name = ?, password=?, email=? where username= ?";
			PreparedStatement pstmt = con.prepareStatement(s);
			pstmt.setString(1, name);
			pstmt.setString(2, password);
			pstmt.setString(3, email);
			pstmt.setString(4, username);
			
			int rows = pstmt.executeUpdate();
			return rows;


			
			
		}
		catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Failed to edit the car details", e);

		}
		
		
	}
	
	
	
	

}
