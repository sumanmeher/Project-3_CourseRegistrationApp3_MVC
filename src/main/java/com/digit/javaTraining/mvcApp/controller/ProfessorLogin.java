package com.digit.javaTraining.mvcApp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digit.javaTraining.mvcApp.model.ProfessorModel;

@WebServlet("/professorLogin")
public class ProfessorLogin extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String username= req.getParameter("username");
	    String password= req.getParameter("password");
	    ProfessorModel professor = new ProfessorModel();
	    professor.setUsername(username);
	    professor.setPassword(password);
	    boolean isLogin = professor.login(); 
	    if(isLogin) {
	    	session.setAttribute("professor_username", professor.getUsername());
	    	res.sendRedirect("setStudent");
	    }else { 
	    	session.setAttribute("failed_name", "Professor Login Failed");
			session.setAttribute("failed_message", "Username and Password does not match");
			res.sendRedirect("failed.jsp");
	    }
	}
} 
