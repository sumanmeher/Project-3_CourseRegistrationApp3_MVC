package com.digit.javaTraining.mvcApp.model;

import java.sql.Connection;

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
}
