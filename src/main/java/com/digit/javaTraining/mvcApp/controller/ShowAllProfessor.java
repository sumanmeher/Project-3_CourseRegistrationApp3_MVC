package com.digit.javaTraining.mvcApp.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digit.javaTraining.mvcApp.model.ProfessorModel;

@WebServlet("/showAllProfessor")
public class ShowAllProfessor extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session=req.getSession();
		
		ProfessorModel prof = new ProfessorModel();

		
		ArrayList<ArrayList<String>> arrList = prof.showAllProfessor();
		
		if(arrList.size()>0) {
			session.setAttribute("allProfessor", arrList);
			res.sendRedirect("showAllProfessor.jsp");
		}else {
			session.setAttribute("failed_name", "No Professor");
			session.setAttribute("failed_message", "Professor not available!");
			res.sendRedirect("failed.jsp");
		}
	}
}
