package org.Hp3;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String page=request.getParameter("page").toLowerCase();
	switch (page) {
	case "home": 
		request.getRequestDispatcher("index.jsp").forward(request, response);
		break;
	case "login":
		request.getRequestDispatcher("login.jsp").forward(request, response);
		break;
	case "about":
		request.getRequestDispatcher("About.jsp").forward(request, response);
		break;
	case "signup":
	request.getRequestDispatcher("signup.jsp").forward(request, response);
		
		break;
	default:
	        request.getRequestDispatcher("error.jsp").forward(request, response);	
	}
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
