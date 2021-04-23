<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.formation.bean.UserBean" %>
<!DOCTYPE html>
<html>
   <head>
      <title>Using GET Method to Read Form Data</title>
   </head>
   
   <body>
      <h1>Using GET Method to Read Form Data</h1>
      <jsp:useBean id="formationList" scope="application" class="org.formation.bean.FormationList"/>
      <jsp:useBean id="formation" scope="page" class="org.formation.bean.Formation"/>	
      
      <jsp:setProperty name="formation" property="dateDebut" value="<%=request.getParameter(\"dateDebut\")%>"/>
      <jsp:setProperty name="formation" property="dateFin" value="<%=request.getParameter(\"dateFin\")%>"/>
      <jsp:setProperty name="formation" property="formateur" value="<%=request.getParameter(\"formateur\")%>"/>
      <jsp:setProperty name="formation" property="sujet" value="<%=request.getParameter(\"sujet\")%>"/>
      
      <p><% formationList.add(formation); %></p>
   </body>
</html>