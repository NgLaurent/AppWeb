package com.tp.questionnaire;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Fail extends HttpServlet{
	public void doGet( HttpServletRequest request, HttpServletResponse response )	throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.println("Mauvaise réponse !");
	}
}
