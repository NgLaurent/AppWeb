<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Choix des joueurs : 
<%
Map<String, String[]> parameters = request.getParameterMap();
for(String parameter : parameters.keySet()) {
        out.print(parameter+',');
}
%>
</body>
</html>