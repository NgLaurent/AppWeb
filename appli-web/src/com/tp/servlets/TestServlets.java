package com.tp.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestServlets extends HttpServlet {
	private int i;
	
	public void init() {
		this.i = 0;
	}
	public void doGet( HttpServletRequest request, HttpServletResponse response )	throws ServletException, IOException {
		PrintWriter out = response.getWriter(); 
		if (this.i == 0) {
			out.println("La valeur i est initialisée par init et i = "+i);
			i++;
		} else if (this.i == 5) {
			out.println("La valeur i a atteint 5 on appele destroy()");
			this.destroy();
			
		} else if (this.i < 5) {
			out.println("La valeur i s'incremente par doGet i = "+i);
			i++;
		}
	}
	
	public void destroy() {
		this.i = 0;
	}
	

}
