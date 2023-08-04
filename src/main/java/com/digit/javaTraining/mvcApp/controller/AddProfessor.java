package com.digit.javaTraining.mvcApp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digit.javaTraining.mvcApp.model.ProfessorModel;

@WebServlet("/addProfessor")
public class AddProfessor extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		String name = req.getParameter("name");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		int age = Integer.parseInt(req.getParameter("age"));
		String coourseId = req.getParameter("course");
		
		ProfessorModel professor = new ProfessorModel();
		professor.setName(name);
		professor.setUsername(username);
		professor.setPassword(password);
		professor.setAge(age);
		professor.setCourse_id(coourseId);
		boolean isRegisterd = professor.register();
		if(isRegisterd) {
			res.sendRedirect("success.jsp");
		}else {
			session.setAttribute("failed_name", "Professor can not be added");
			session.setAttribute("failed_message", "something went wrong");
			res.sendRedirect("failed.jsp");
		}
	}
}
