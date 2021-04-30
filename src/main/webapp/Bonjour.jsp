<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Bonjour</title>
  </head>
  <body>
	<%--  #Exercice n 1
Dans un cas très simple comme celui-ci, on peut se passer de définir
un controleur.
 --%>
	<% String prenom = (String)request.getAttribute("prenom"); %>
	<% String nom = (String)request.getAttribute("nom"); %>

	Bonjour <%=prenom%> <%=nom%> !
  </body>
</html>