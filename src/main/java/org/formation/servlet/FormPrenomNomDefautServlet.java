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

/* #Exercice n 2
 * 
 * Ce controlleur sert just à renvoyer le jsp
 */
@WebServlet("/FormPrenomNomDefault")
public class FormPrenomNomDefautServlet extends HttpServlet {
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws IOException,ServletException {
		request.setAttribute("action", "FormPrenomNomDefault");
		request.setAttribute("method", "POST");
		request.getRequestDispatcher("/FormPrenomNom.jsp").forward(request, resp);
	}
	
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws IOException,ServletException {
		Map<String, String[]> paramMap = request.getParameterMap();
		
		request.setAttribute("method", "POST");
		request.getRequestDispatcher("/Bonjour.jsp").forward(request, resp);
	}
}