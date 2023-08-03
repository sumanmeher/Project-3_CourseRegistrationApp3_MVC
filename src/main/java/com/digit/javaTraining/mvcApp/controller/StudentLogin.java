package com.digit.javaTraining.mvcApp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digit.javaTraining.mvcApp.model.StudentModel;

@WebServlet("/studentLogin")
public class StudentLogin extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String username= req.getParameter("username");
	    String password= req.getParameter("password");
	    StudentModel student = new StudentModel();
	    student.setUsername(username);
	    student.setPassword(password);
	    boolean isLogin = student.login(); 
	    if(isLogin) {
	    	System.out.println(username);
	    	session.setAttribute("student_username", student.getUsername());
	    	res.sendRedirect("studentMenu.jsp");
	    }else { 
	    	session.setAttribute("failed_name", "Student Login Failed");
			session.setAttribute("failed_message", "Username and Password does not match");
			res.sendRedirect("failed.jsp");
	    }
	}
}
