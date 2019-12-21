<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DisplayUsers</title>
</head>
<body>
	<%
	String connectionURL = "jdbc:mysql://sql7.freemysqlhosting.net:3306/sql7312211";
	Connection connection = null;
	Class.forName("com.mysql.jdbc.Driver");
	connection = DriverManager.getConnection(connectionURL, "sql7312211", "wCDwvgyIjP");
	if (connection.isClosed()) {%><h3>Unable to connect to database.</h3>
	<% } 
	else { 
	Statement statement = connection.createStatement();
	String sql = "SELECT * FROM details_livre";
	ResultSet resultSet = statement.executeQuery(sql);
	%>
	<h3>Library</h3>
	<table>
	    <thead>
	        <tr>
	            <th>Id</th>
	            <th>Name</th>
	            <th>Author</th>
	        </tr>
	    </thead>
	    <tbody>
	        <% while (resultSet.next()) { %>
				<tr>
					<td><%=resultSet.getString("id")%></td>
					<td><%=resultSet.getString("nom_livre")%></td>
					<td><%=resultSet.getString("auteur")%></td>
				</tr>
			<% } %>
	    </tbody>
	</table>
	
	<h3>Add a new user:</h3>
	<form method="post" action="InsertUsers.jsp">
		<label for="name">Name :</label>
		<input type="text" name="name" required>
		<br>
		<label for="author">author :</label>
		<input type="text" name=author required>
		<button type="submit">Add</button>
	</form>
	<% } %>
<br>
<a href="Beans.html">Retour à la fiche Beans</a>
</body>
</html>