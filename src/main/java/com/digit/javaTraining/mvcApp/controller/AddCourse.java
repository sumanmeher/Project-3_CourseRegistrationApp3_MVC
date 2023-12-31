package com.digit.javaTraining.mvcApp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digit.javaTraining.mvcApp.model.CourseModel;

@WebServlet("/addCourse")
public class AddCourse extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession(true);
		
		String courseId = req.getParameter("course_id");
		String courseName = req.getParameter("course_name");
		String duration = req.getParameter("duration");
		String description = req.getParameter("description");
		int price = Integer.parseInt(req.getParameter("price"));
		 
		CourseModel course = new CourseModel();
		course.setCid(courseId);
		course.setName(courseName);
		course.setDuration(duration);
		course.setDescription(description);
		course.setPrice(price);
		boolean isAdded = course.addCourse();
		if(isAdded) {
			session.setAttribute("success_name", "Course Added");
			session.setAttribute("success_message", "Course added Successfully!");
			res.sendRedirect("success.jsp");
		}else {
			session.setAttribute("failed_name", "Course cannot be added");
			session.setAttribute("failed_message", "Something went wrong!");
			res.sendRedirect("failed.jsp");
		}
		
	}
}
