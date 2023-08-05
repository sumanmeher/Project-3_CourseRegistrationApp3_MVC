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

@WebServlet("/setCoursesStudent")
public class SetCoursesStudent extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		CourseModel course = new CourseModel();
		ArrayList<ArrayList<String>> arrList = course.setCoursesStudent();
		if(arrList.size()>0) {
			session.setAttribute("set_courses", arrList);
			res.sendRedirect("addStudent.jsp");
		}else {
			session.setAttribute("failed_name", "Come back later");
			session.setAttribute("failed_message", "No Course Available.");
			res.sendRedirect("failed.jsp");
		}
		
	}

}
