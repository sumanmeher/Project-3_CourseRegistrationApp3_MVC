package com.digit.javaTraining.mvcApp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.digit.javaTraining.mvcApp.model.ProfessorModel;

@WebServlet("/addProfessor")
public class AddProfessor extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name = req.getParameter("name");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		int age = Integer.parseInt(req.getParameter("age"));
		
		ProfessorModel professor = new ProfessorModel();
		professor.setName(name);
		professor.setUsername(username);
		professor.setPassword(password);
		professor.setAge(age);
		boolean isRegisterd = professor.register();
		
	}
}
