<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Bonjour</title>
  </head>
  <body>
	<!--  #Correction exercice n 2
Dans un cas très simple comme celui-ci, on peut se passer de définir
un controleur.
 -->
	<% String prenom = request.getParameter("prenom"); %>
	<% String nom = request.getParameter("nom"); %>

	Bonjour <%=prenom%> <%=nom%> !
  </body>
</html>