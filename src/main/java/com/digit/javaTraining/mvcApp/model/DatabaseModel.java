package com.digit.javaTraining.mvcApp.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseModel {
	public static Connection con;
	public DatabaseModel() {
		String url = "jdbc:mysql://localhost:3306/crs";
		String user = "root";
		String pwd = "admin@12345";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
