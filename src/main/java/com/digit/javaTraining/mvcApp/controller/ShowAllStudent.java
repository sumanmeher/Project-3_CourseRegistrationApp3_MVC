package com.digit.javaTraining.mvcApp.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digit.javaTraining.mvcApp.model.StudentModel;

@WebServlet("/showAllStudent")
public class ShowAllStudent extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session=req.getSession();
		
		StudentModel course = new StudentModel();

		ArrayList<ArrayList<String>> arrList = course.showAllStudent();
		
		if(arrList.size()>0) {
			session.setAttribute("allStudent", arrList);
			res.sendRedirect("showAllStudent.jsp");
		}else {
			session.setAttribute("failed_name", "No Student");
			session.setAttribute("failed_message", "Students not available!");
			res.sendRedirect("failed.jsp");
		}
	}

}
