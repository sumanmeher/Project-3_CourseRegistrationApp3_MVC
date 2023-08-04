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
	
	 
}
