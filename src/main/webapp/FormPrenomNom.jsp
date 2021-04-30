<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>
  <body>
<!--  #Exercice n 2
On reste sur un cas simple.
A noter que le chemin de l'action est relatif (car il ne commence pas par un /). 
 -->
    <form action = "<%= request.getAttribute("action") %>" 
          method = "<%= request.getAttribute("method") %>">
	  Prenom: <input type = "text" name = "prenom">
      <br />
      Nom: <input type = "text" name = "nom" />
      <input type = "submit" value = "Submit" />
    </form>
  </body>
</html>