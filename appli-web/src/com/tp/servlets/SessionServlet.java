package com.tp.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SessionServlet extends HttpServlet{
	public void doGet( HttpServletRequest request, HttpServletResponse response )	throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		if (request.getSession().isNew()) {
			out.println("une nouvelle session a été créé");
		}else {
			out.println("La session existe deja");
		}
	}
}
