package com.digit.javaTraining.mvcApp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.digit.javaTraining.mvcApp.model.ProfessorModel;

@WebServlet("/professorLogin")
public class ProfessorLogin extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String username= req.getParameter("username");
	    String password= req.getParameter("password");
	    ProfessorModel professor = new ProfessorModel();
	    professor.setUsername(username);
	    professor.setPassword(password);
	    professor.login();
	}
}
