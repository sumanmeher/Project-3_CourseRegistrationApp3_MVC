package com.digit.javaTraining.mvcApp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class StudentModel {
	public static Connection con;
	
	String username;
	String password;
	String name;
	int age;
	int grade;
	
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
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
	
	public StudentModel() {
		DatabaseModel db = new DatabaseModel();
		con=DatabaseModel.con;
	}
	public boolean login() {
		try {
			String sql = "select * from student where s_username = ?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, this.username);
			ResultSet result = pstmt.executeQuery();
			if (result.next()) {
				if (this.password.equals(result.getString("s_password"))) {
					this.setName(result.getString("s_name"));
					this.setAge(result.getInt("s_age"));
					this.setGrade(result.getInt("s_marks"));
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
