package com.tp.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Multiform extends HttpServlet {
	public void doGet( HttpServletRequest request, HttpServletResponse response )	throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher( "/multi-form-s.jsp" ).forward( request, response );
	}
}