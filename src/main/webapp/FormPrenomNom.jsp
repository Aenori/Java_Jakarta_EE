<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>
  <body>
<!--  #Correction exercice n 3
On reste sur un cas simple, on definit donc une jsp sans controlleur.
A noter que le chemin de l'action est relatif (car il ne commence pas par un
/). 
 -->
    <form action = "Bonjour.jsp" method = "POST">
	  Prenom: <input type = "text" name = "prenom">
      <br />
      Nom: <input type = "text" name = "nom" />
      <input type = "submit" value = "Submit" />
    </form>
  </body>
</html>