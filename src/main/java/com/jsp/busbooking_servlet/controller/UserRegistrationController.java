package com.jsp.busbooking_servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.busbooking_servlet.dto.User;
import com.jsp.busbooking_servlet.service.UserService;

@WebServlet("/register")
public class UserRegistrationController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			String name=req.getParameter("name");
			String email=req.getParameter("email");
			long phone=Long.parseLong(req.getParameter("phone"));
			String password=req.getParameter("password");
			
			PrintWriter printWriter=resp.getWriter();
			
			User user=new User();
			
			user.setName(name);
			user.setEmail(email);
			user.setPhone(phone);
			user.setPassword(password);
			
			UserService userService=new UserService();
			
			userService.insertUser(user);
			printWriter.write("<html><body>");
			printWriter.write("<h3 style='color:green'>Register Successfully</h3>");

			RequestDispatcher requestDispatcher = req.getRequestDispatcher("userlogin.jsp");
			requestDispatcher.include(req, resp);
			printWriter.write("</body></html>");
	}
}
