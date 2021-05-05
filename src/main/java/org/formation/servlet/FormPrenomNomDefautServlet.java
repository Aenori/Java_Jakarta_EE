package org.formation.servlet;

import static java.nio.charset.StandardCharsets.UTF_8;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.PushBuilder;

/* #Exercice n 3
 * 
 * Ce controlleur gère le formulaire FormPrenomNom avec les deux methodes
 * HTTP :
 * 	 - GET pour renvoyer le formulaire au format HTML
 *   - POST pour recevoir les données du formulaire
 */
@WebServlet("/FormPrenomNomDefault")
public class FormPrenomNomDefautServlet extends HttpServlet {
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws IOException,ServletException {
		request.setAttribute("action", "");
		request.setAttribute("method", "POST");
		
		request.getRequestDispatcher("/FormPrenomNom.jsp").forward(request, resp);
	}
	
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws IOException,ServletException {		
		setAttributeDefaultValue(request, "prenom", "John");
		setAttributeDefaultValue(request, "nom", "Doe");
		
		request.getRequestDispatcher("/Bonjour.jsp").forward(request, resp);
	}

	private void setAttributeDefaultValue(HttpServletRequest request, String paramName, String defaultValue) {
		String currentValue = request.getParameter(paramName);
		
		if( (currentValue == null) || currentValue.isEmpty())
		{
			currentValue = defaultValue;
		}
		
		request.setAttribute(paramName, currentValue);
	}
}