package com.jsp.busbooking_servlet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.busbooking_servlet.dao.BusDao;

@WebServlet("/delete")
public class BusDeleteController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		
		BusDao busDao=new BusDao();
		
		int id1=busDao.deleteBus(id);
		
		if (id1!=0) {
			req.getRequestDispatcher("adminbusdisplay.jsp").forward(req, resp);
		}else {
			req.getRequestDispatcher("adminbusdisplay.jsp").forward(req, resp);
		}
	}
}
