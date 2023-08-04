package com.digit.javaTraining.mvcApp.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digit.javaTraining.mvcApp.model.StudentModel;

@WebServlet("/studentScoreCard")
public class StudentScoreCard extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String s_username = (String) session.getAttribute("student_username");
		System.out.println(s_username);
		
		session = req.getSession();

		StudentModel sm = new StudentModel();
		sm.setUsername(s_username);
		ResultSet rs = sm.getScoreCard();
		if (rs != null) {
			try {
				session.setAttribute("s_name", rs.getString("s_name"));
				session.setAttribute("s_marks", rs.getString("s_marks"));
				session.setAttribute("c_name", rs.getString("c_name"));
				session.setAttribute("duration", rs.getString("duration"));
				session.setAttribute("description", rs.getString("description"));
				session.setAttribute("p_name", rs.getString("p_name"));
			} catch (SQLException e) {
				e.printStackTrace();
			}
			resp.sendRedirect("studentScoreCard.jsp");
		} else {
			session.setAttribute("failed_name", "Error in fetching Score Cards");
			session.setAttribute("failed_message", "Something went wrong");
			resp.sendRedirect("failed.jsp");
		}

	}

}
