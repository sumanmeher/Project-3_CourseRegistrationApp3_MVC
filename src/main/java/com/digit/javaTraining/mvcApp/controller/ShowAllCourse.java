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

@WebServlet("/showAllCourse")
public class ShowAllCourse extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session=req.getSession();
//		String cname=(String) session.getAttribute("c_name");
//		String duration= (String) session.getAttribute("duration");
//		String description = (String) session.getAttribute("description");
//		
		CourseModel course = new CourseModel();
//		course.setName(cname);
//		course.setDuration(duration);
//		course.setDescription(description);
		
		ArrayList<ArrayList<String>> arrList = course.showAllCourses();
		
		if(arrList.size()>0) {
			session.setAttribute("allCourses", arrList);
			res.sendRedirect("showAllCourse.jsp");
		}else {
			session.setAttribute("failed_name", "No Courses");
			session.setAttribute("failed_message", "Courses not available!");
			res.sendRedirect("failed.jsp");
		}
	}

}
