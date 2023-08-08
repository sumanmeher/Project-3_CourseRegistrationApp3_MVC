package com.digit.javaTraining.mvcApp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class StudentModel {
	public static Connection con;

	String username;
	String password;
	String name;
	int age;
	String courseId;
	int grade;

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

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public StudentModel() {
		DatabaseModel db = new DatabaseModel();
		con = DatabaseModel.con;
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
				} else {
					return false;
				}
			} else {
				return false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean register() {
		try {
			PreparedStatement pstmt = con.prepareStatement(
					"insert into student (s_username, s_name, s_password, s_age, course_id) values(?,?,?,?,?)");
			pstmt.setString(1, this.username);
			pstmt.setString(2, this.name);
			pstmt.setString(3, this.password);
			pstmt.setInt(4, this.age);
			pstmt.setString(5, this.courseId);
			int x = pstmt.executeUpdate();
			if (x > 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public ResultSet getScoreCard() {
		try {
			String sql = "select s.s_name, s_marks, c.c_name, c_id, c.duration, c.description,c.professor_username, p.p_name from student s inner join course c on s.course_id= c.c_id inner join professor as p on p.p_username=c.professor_username where s.s_username=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, this.username);
			ResultSet result = pstmt.executeQuery();
			if (result.next()) {
				return result;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public ArrayList<ArrayList<String>> showAllStudent() {
		ArrayList<ArrayList<String>> arrList = new ArrayList<ArrayList<String>>();
		String sql = "select * from student";
		try {
			Statement stmt = con.createStatement();
			ResultSet result = stmt.executeQuery(sql);
			while(result.next()) {
				String sname = result.getString("s_name");
				
				ArrayList<String> tempArr =new ArrayList<String>();
				tempArr.add(sname);
				
				arrList.add(tempArr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arrList;
	}
}
