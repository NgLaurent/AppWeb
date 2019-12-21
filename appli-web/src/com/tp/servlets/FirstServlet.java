package com.tp.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstServlet extends HttpServlet {
	private int called = 0;
	/**
	 * 
	 */
	private static final long serialVersionUID = -7706090089024402575L;
	
	public void doGet( HttpServletRequest request, HttpServletResponse response )	throws ServletException, IOException {
		called++;
		response.addIntHeader("call", called);
		this.getServletContext().getRequestDispatcher( "/bienvenue_servlet.jsp" ).forward( request, response );
	}
}
