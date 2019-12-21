package com.tp.questionnaire;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.Questionnaire;

public class Form extends HttpServlet{
	public void doGet( HttpServletRequest request, HttpServletResponse response )	throws ServletException, IOException {
		HttpSession session = request.getSession();
		Questionnaire quest = (Questionnaire)session.getAttribute("questionnaire");
		if (quest.getQuestion().equals("reponse")) {
			this.getServletContext().getRequestDispatcher( "/success" ).forward( request, response );
		}else {
			this.getServletContext().getRequestDispatcher( "/fail" ).forward( request, response );
		}
	}
}
