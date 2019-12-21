package com.tp.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormServlet extends HttpServlet {
	public void doGet( HttpServletRequest request, HttpServletResponse response )	throws ServletException, IOException {
		PrintWriter out = response.getWriter(); 
		if (request.getParameter("username")== "mohamed" && request.getParameter("mdp") == "memet") {
			this.getServletContext().getRequestDispatcher( "/bienvenue.jsp" ).forward( request, response );
		}else {
			out.println("Mot de passe incorrect");
		}
	}
}

