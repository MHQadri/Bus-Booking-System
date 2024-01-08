package com.jsp.busbooking_servlet.controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class AdminLogoutController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession=req.getSession();
		
		PrintWriter printWriter=resp.getWriter();
		
		if (httpSession.getAttribute("myPassword")!=null) {
			
			httpSession.invalidate();
			
			RequestDispatcher requestDispatcher=req.getRequestDispatcher("adminLogin.jsp");
			
			requestDispatcher.include(req, resp);
			
		}
	}
}
