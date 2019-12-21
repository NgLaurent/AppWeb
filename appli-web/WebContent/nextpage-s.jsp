<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form result</title>
</head>
<body>
<p> 
Name : <%= request.getParameter("username") %> 
</br>
Mdp : <%= request.getParameter("mdp") %>
</p>
</body>
</html>