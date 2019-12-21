<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String connectionURL = "jdbc:mysql://sql7.freemysqlhosting.net:3306/sql7312211";
	Connection connection = null;
	Class.forName("com.mysql.jdbc.Driver");
	connection = DriverManager.getConnection(connectionURL, "sql7312211", "wCDwvgyIjP");
	if (connection.isClosed()) {%><h3>Unable to connect to database.</h3>
	<% } else { 
	String name = request.getParameter("name");
	String author = request.getParameter("author");
	PreparedStatement pstatement = null;
	String queryString = "INSERT INTO details_livre(nom_livre, auteur) values(?, ?)";
	pstatement = connection.prepareStatement(queryString);
	pstatement.setString(1, name);
	pstatement.setString(2, author);
	pstatement.executeUpdate();
	%>
	<p> <%= name %> from <%= author %> added !<p>
	<a href="DisplayUsers.jsp">Display the library</a>
	<a href="Beans.html">Retour à la fiche Beans</a>
	<%} %>
</body>
</html>