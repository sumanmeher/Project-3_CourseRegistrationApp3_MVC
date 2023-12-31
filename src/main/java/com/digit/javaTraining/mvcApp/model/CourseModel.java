package com.digit.javaTraining.mvcApp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class CourseModel {
	
	public static Connection con;
	
	String cid;
	String name;
	int price;
	String duration;
	String description;
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	public CourseModel() {
		DatabaseModel db = new DatabaseModel();
		con=DatabaseModel.con;
	}
	public boolean addCourse() {
		String sql = "insert into course (c_id, c_name, price, duration, description) values(?,?,?,?,?)";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, cid);
			pstmt.setString(2, name);
			pstmt.setInt(3, price);
			pstmt.setString(4, duration);
			pstmt.setString(5, description);

			int x = pstmt.executeUpdate();
			if(x>0) {
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public ArrayList<ArrayList<String>> setUnassignedCourse() {
		String sql = "select C_id, C_name from course where professor_username is null";
		ArrayList<ArrayList<String>> arrList = new ArrayList<ArrayList<String>>();
		
		try {
			Statement stmt = con.createStatement();
			ResultSet result = stmt.executeQuery(sql);
			
			while(result.next()) {
				String  courseId = result.getString("c_id");
				String courseName = result.getString("c_name");
				ArrayList<String> tempArr =new ArrayList<String>();
				tempArr.add(courseId);
				tempArr.add(courseName);
				arrList.add(tempArr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arrList;
	}
	
	public ArrayList<ArrayList<String>> setCoursesStudent(){
		String sql = "select C_id, C_name from course where professor_username is not null";
		ArrayList<ArrayList<String>> arrList2 = new ArrayList<ArrayList<String>>();
		
		try {
			Statement stmt = con.createStatement();
			ResultSet res = stmt.executeQuery(sql);
			
			while(res.next()) {
				String  courseId = res.getString("c_id");
				String courseName = res.getString("c_name");
				ArrayList<String> tempArr =new ArrayList<String>();
				tempArr.add(courseId);
				tempArr.add(courseName);
				arrList2.add(tempArr);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return arrList2;
		
	}
	public ArrayList<ArrayList<String>> setStudent() {
		String sql = "select * from student";
		ArrayList<ArrayList<String>> arrList = new ArrayList<ArrayList<String>>();
		
		try {
			Statement pstmt = con.createStatement();
//			pstmt.setString(1, this.cid);
			ResultSet result = pstmt.executeQuery(sql);
			
			while(result.next()) {
				String coureName = result.getString("s_username");
				String studentName = result.getString("s_name");
				ArrayList<String> tempArr =new ArrayList<String>();
				tempArr.add(coureName);
				tempArr.add(studentName);
				arrList.add(tempArr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arrList;
	}
	
	public ArrayList<ArrayList<String>> showAllCourses() {
		ArrayList<ArrayList<String>> arrList = new ArrayList<ArrayList<String>>();
		String sql = "select c.c_id as c_id, c.c_name as c_name, c.duration as duration, c.description as description, p.p_name as p_name from course c join professor p on c.c_id=p.course_id";
		try {
			Statement stmt = con.createStatement();
			ResultSet result = stmt.executeQuery(sql);
			while(result.next()) {
				String courseId = result.getString("c_id");
				String courseName = result.getString("c_name");
				String duration = result.getString("duration");
				String description = result.getString("description");
				String professorName = result.getString("p_name");
				
				ArrayList<String> tempArr =new ArrayList<String>();
				tempArr.add(courseId);
				tempArr.add(courseName);
				tempArr.add(duration);
				tempArr.add(description);
				tempArr.add(professorName);
				arrList.add(tempArr);
			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arrList;
	}
	 
}
