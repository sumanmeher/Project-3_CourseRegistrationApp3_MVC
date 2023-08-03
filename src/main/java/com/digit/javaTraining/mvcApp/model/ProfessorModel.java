package com.digit.javaTraining.mvcApp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProfessorModel {
	public static Connection con;
	
	String username;
	String password;
	String name;
	int age;
	String course_id;
	
	public String getCourse_id() {
		return course_id;
	}
	public void setCourse_id(String course_id) {
		this.course_id = course_id;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	public ProfessorModel() {
		DatabaseModel db = new DatabaseModel();
		con=DatabaseModel.con;
	}
	
	public boolean login() {
		try {
			String sql = "select * from professor where p_username = ?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, this.username);
			ResultSet result = pstmt.executeQuery();
			if (result.next()) {
				if (result.getString("p_password").equals(this.password)) {
					this.setName(result.getString("P_name"));
					this.setAge(result.getInt("p_age"));
					this.setCourse_id(result.getString("course_id"));
					return true;
				}else { 
					return false;
				}
			}else {
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
