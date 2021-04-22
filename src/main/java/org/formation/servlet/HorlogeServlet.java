package org.formation.servlet;

import java.awt.Label;
import java.io.IOException;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Horloge")
public class HorlogeServlet extends HttpServlet {
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException,ServletException {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm:ss");
		String timeLabel = new Label(LocalTime.now().format(dtf)).getText();
		
		req.setAttribute("date", timeLabel);
		
		req.getRequestDispatcher("/jsp/Horloge.jsp").forward(req, resp);
	}
}
