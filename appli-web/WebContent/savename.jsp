<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.*, java.text.*" %>
<% 
Date timestamp = new Date();
String uname=request.getParameter("username"); 
String name=request.getParameter("name");
String adresse=request.getParameter("adresse");
String age=request.getParameter("age");
String situation=request.getParameter("situation");

Cookie username = new Cookie("username", uname);
Cookie nam = new Cookie("name", name);
Cookie ad = new Cookie("adresse", adresse);
Cookie ag = new Cookie("age", age);
Cookie situa = new Cookie("situation", situation);

username.setMaxAge(60 * 60);
nam.setMaxAge(60 * 60);
ad.setMaxAge(60 * 60);
ag.setMaxAge(60 * 60);
situa.setMaxAge(60 * 60);

response.addCookie(username); 
response.addCookie(nam); 
response.addCookie(ad); 
response.addCookie(ag); 
response.addCookie(situa); 
%>
<a href="nextpage.jsp"> Regarder les valeurs du cookie </a>
</body>
</html>