package com.hospital.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.login.LoginService;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet 
{
	private LoginService service = new LoginService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		boolean isValidUser = service.validateUser(name, password);

		if (isValidUser) {
			request.setAttribute("name", name);
			request.getRequestDispatcher("SecondPage.jsp").forward(request, response);
		} else {
			request.setAttribute("errorMessage", "Invalid Credentials");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
