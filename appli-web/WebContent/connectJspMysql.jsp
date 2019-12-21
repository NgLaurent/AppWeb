<%@ page import="java.util.*,java.sql.*" %>
<% 
try {
/*here mysqltest is the database name. you have to give the database name you have created and 3306 is the default sql port */
String connectionURL = "jdbc:mysql://sql7.freemysqlhosting.net:3306/sql7312214"; 
 
Connection connection = null; 
 
Class.forName("com.mysql.jdbc.Driver"); 
 
/* "root" and "root" are the mysql username and password . if you have a different user name and password you have to change that in code */
 
connection = DriverManager.getConnection(connectionURL, "sql7312214", "IeTxghNExs");
 
if(!connection.isClosed())
%>
<% 
out.println("Successfully connected to " + "MySQL server using TCP/IP...");
connection.close();
}
catch(Exception ex){
%>
<%
out.println("Unable to connect to database.");
}
%>