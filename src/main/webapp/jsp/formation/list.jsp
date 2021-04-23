<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="formationList" scope="application" class="org.formation.bean.FormationList"/>
	<%= formationList.size() %>
	<% for(org.formation.bean.Formation formation: formationList) { %>
		<%= formation %>
		</br>
	<% } %>
</body>
</html>