<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> Affichage des cookies </h3>
<% 
Cookie cookie = null;
Cookie[] cookies = null;

cookies = request.getCookies();
for (int i = 1; i < cookies.length; i++) {
       cookie = cookies[i];
       out.print(cookie.getName( ) + ":  " + cookie.getValue( )+" <br/>");
    }

%> 
<br>
<a href="Jsp.html">Retour à la fiche JSP</a>

</body>
</html>