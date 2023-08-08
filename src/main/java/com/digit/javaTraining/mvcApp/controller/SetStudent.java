package com.digit.javaTraining.mvcApp.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digit.javaTraining.mvcApp.model.CourseModel;

@WebServlet("/setStudent")
public class SetStudent extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
//		String s_username = session.getAttribute("");
		
		CourseModel course = new CourseModel();
		//course.setName(s_username);
		ArrayList<ArrayList<String>> arrList = course.setStudent();
		if(arrList.size()>0) {
			session.setAttribute("setStudent", arrList);
			res.sendRedirect("addMarks.jsp");
		}else {
			session.setAttribute("failed_name", "Student unavailable");
			session.setAttribute("failed_message", "No Student found.");
			res.sendRedirect("failed.jsp");
		}
	}

}
