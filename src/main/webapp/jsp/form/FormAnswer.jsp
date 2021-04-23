<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.formation.bean.UserBean" %>
<!DOCTYPE html>
<html>
   <head>
      <title>Using GET Method to Read Form Data</title>
   </head>
   
   <body>
      <h1>Using GET Method to Read Form Data</h1>
      <ul>
         <li><p><b>First Name:</b>
            <%= request.getParameter("first_name")%>
         </p></li>
         <li><p><b>Last  Name:</b>
            <%= request.getParameter("last_name")%>
         </p></li>
      </ul>
      <jsp:useBean id="user" scope="page" class="org.formation.bean.UserBean"/>	
      <jsp:setProperty name="user" property="firstName" value="<%=request.getParameter(\"first_name\")%>"/>
      <jsp:setProperty name="user" property="lastName" value="<%=request.getParameter(\"last_name\")%>"/>
      <p><%= user.getGreeting() %></p>
   </body>
</html>