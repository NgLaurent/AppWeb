<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="savename.jsp">
    <div>
        <label for="name">Nom : </label>
        <input type="text" name="username">
    </div>
    <div>
        <label for="Prenom ">Prenom : </label>
        <input type="text" name="name">
    </div>
    <div>
        <label for="Adresse">Adresse : </label>
        <input type="text" name="adresse">
    </div>
    <div>
        <label for="age">Age : </label>
        <input type="text" name="age">
    </div>
    <div>
        <label for="situation">Situation : </label>
        <input type="text" name="situation">
    </div>
	<input type="submit" value="Submit"><br/> 
</form>
<br>
<a href="Jsp.html">Retour à la fiche JSP</a>
</body>
</html>