package com.digit.javaTraining.mvcApp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digit.javaTraining.mvcApp.model.CourseApp;

public class AdminLogin extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	HttpSession session = req.getSession(true);
	String username= req.getParameter("username");
	String password= req.getParameter("password");
	
	CourseApp c=new CourseApp();
	if(username.equals("admin") && password.equals("Admin")) {
		res.sendRedirect("/Project-3_CourseRegistrationApp3_MVC/AdminMenu.jsp");
	}else {
		session.setAttribute("failed_name", "Login Failed");
		session.setAttribute("failed_message", "Username and Password does not match");
		res.sendRedirect("/Project-3_CourseRegistrationApp3_MVC/Failed.jsp");
	}
}
}
