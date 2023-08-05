package com.digit.javaTraining.mvcApp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digit.javaTraining.mvcApp.model.ProfessorModel;
import com.digit.javaTraining.mvcApp.model.StudentModel;

@WebServlet("/addMarks")
public class AddMarks extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		HttpSession session = req.getSession();
		String s_username = (String) session.getAttribute("s_username");
		int marks = Integer.parseInt(req.getParameter("marks"));
		
		//StudentModel sm = new StudentModel();
		//sm.setUsername(s_username);
		//sm.setGrade(marks);

		session = req.getSession();
		ProfessorModel pm = new ProfessorModel();
		
		boolean addMarks = pm.addMarks();
		if(addMarks) {
			
			res.sendRedirect("success.jsp");
		}else {
			session.setAttribute("failed_name", "Student marks can not be added");
			session.setAttribute("failed_message", "something went wrong");
			res.sendRedirect("failed.jsp");
		}

		
	}

}