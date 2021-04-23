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

@WebServlet("/HelloWorldJSP")
public class HelloWorldJSPServlet extends HttpServlet {
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws IOException,ServletException {
		String name = "Lord Vetinari";
		if(request.getAttribute("truc") != null)
		{
			name = (String)request.getAttribute("truc");
		}
		request.setAttribute("name", name);
		
		request.getRequestDispatcher("/jsp/HelloWorldJSP.jsp").forward(request, resp);
	}
}
