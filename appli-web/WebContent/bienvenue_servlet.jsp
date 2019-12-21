<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Bienvenue au cours d'application web 
<hr>
Le servlet a été appelé :<%=response.getHeader("call") %> fois
</body>

<a href="Servlets.html">Retour à la fiche Servlet</a>
</html>