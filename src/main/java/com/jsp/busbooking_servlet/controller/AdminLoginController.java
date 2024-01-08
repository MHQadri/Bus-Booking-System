package com.jsp.busbooking_servlet.controller;

import java.io.IOException;

import javax.print.attribute.standard.RequestingUserName;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminLogin")
public class AdminLoginController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession=req.getSession();
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		if ((email.equalsIgnoreCase("admin@gmail.com"))&&(password.equalsIgnoreCase("admin123"))) {
			
			httpSession.setAttribute("myPassword", password);
			
			RequestDispatcher dispatcher=req.getRequestDispatcher("adminhome.jsp");
			
			dispatcher.forward(req, resp);
		}else {
			
			RequestDispatcher dispatcher=req.getRequestDispatcher("adminLogin.jsp");
			
			dispatcher.forward(req, resp);
		}
		
	}
}
