package org.formation.servlet;

import static java.nio.charset.StandardCharsets.UTF_8;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.PushBuilder;

/* #Exercice n 1
 * 
 * Ce controlleur sert just à renvoyer le jsp
 */
@WebServlet("/Bonjour")
public class BonjourServlet extends HttpServlet {
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws IOException,ServletException {    	
		request.setAttribute("prenom", request.getParameter("prenom"));
		request.setAttribute("nom", request.getParameter("nom"));
		
		request.getRequestDispatcher("/Bonjour.jsp").forward(request, resp);
	}
}