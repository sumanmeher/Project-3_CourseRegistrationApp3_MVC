package com.digit.javaTraining.mvcApp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

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
		con = DatabaseModel.con;
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
					"insert into professor (p_username, p_name, p_password, p_age, course_id) values(?,?,?,?,?)");
			pstmt.setString(1, this.username);
			pstmt.setString(2, this.name);
			pstmt.setString(3, this.password);
			pstmt.setInt(4, this.age);
			pstmt.setString(5, this.course_id);
			int x = pstmt.executeUpdate();
			if (x > 0) {
				pstmt = con.prepareStatement("update course set professor_username = ? where c_id = ?");
				pstmt.setString(1, this.username);
				pstmt.setString(2, course_id);
				x = pstmt.executeUpdate();
				if (x > 0)
					return true;
				else
					return false;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean giveMarks() {

		return false;
	}

	public boolean addMarks(String student_username, int marks) {
		try {
			
			
			PreparedStatement pstmt = con.prepareStatement("update student set s_marks = ? where s_username = ?");
			pstmt.setInt(1, marks);
			pstmt.setString(2, student_username);

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
	
	public ArrayList<ArrayList<String>> showAllProfessor() {
		ArrayList<ArrayList<String>> arrList = new ArrayList<ArrayList<String>>();
		String sql = "select p.p_name as p_name, c.c_name as c_name from professor p left join course c on p.course_id=c.c_id";
		try {
			Statement stmt = con.createStatement();
			ResultSet result = stmt.executeQuery(sql);
			while(result.next()) {
				String pname = result.getString("p_name");
				String cName = result.getString("c_name");
				
				ArrayList<String> tempArr =new ArrayList<String>();
				tempArr.add(pname);
				tempArr.add(cName);
				//				tempArr.add(courseName);
//				tempArr.add(duration);
//				tempArr.add(description);
				arrList.add(tempArr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arrList;
	}
}
