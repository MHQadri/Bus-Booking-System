package com.jsp.busbooking_servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.busbooking_servlet.connection.BusConnection;

@WebServlet("/userlogin")
public class UserLoginController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Connection connection = BusConnection.getBusConnection();
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			HttpSession session = req.getSession();
			String sqlQuery = "select * from reg_user where userEmail=? and userPassword=?";
			PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			ResultSet resultSet = preparedStatement.executeQuery();
			PrintWriter writer = resp.getWriter();

			writer.write("<html><body>");
			while (resultSet.next()) {
				if (email.equalsIgnoreCase(resultSet.getString("userEmail"))
						&& (password.equalsIgnoreCase(resultSet.getString("userPassword")))) {
					RequestDispatcher requestDispatcher = req.getRequestDispatcher("userloginhome.jsp");
					requestDispatcher.forward(req, resp);
				} else {
					writer.write("<h1>Invalid UserName Password</h1>");
					RequestDispatcher requestDispatcher = req.getRequestDispatcher("userlogin.jsp");
					requestDispatcher.include(req, resp);
				}
			}
			writer.write("<html><body>");
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
