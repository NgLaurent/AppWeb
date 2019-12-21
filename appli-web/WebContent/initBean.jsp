<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="questionnaire" class="user.Questionnaire" scope="session"/>
<jsp:setProperty name="questionnaire" property="username"/>
<jsp:setProperty name="questionnaire" property="age"/>
<jsp:setProperty name="questionnaire" property="question"/>
<jsp:forward page="formtreatment" />
</body>
</html>