<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="user.UserData" scope="session"/>
<jsp:setProperty name="user" property="username"/>
<jsp:setProperty name="user" property="adresse"/>
<jsp:setProperty name="user" property="age"/>
<a href="nextpage-form.jsp"> Regarder les valeurs du bean </a>
</body>
</html>