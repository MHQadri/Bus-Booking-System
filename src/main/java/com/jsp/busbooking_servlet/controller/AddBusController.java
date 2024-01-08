package com.jsp.busbooking_servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.busbooking_servlet.dto.Bus;
import com.jsp.busbooking_servlet.service.BusService;

@WebServlet("/addbus")
public class AddBusController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int busNo = Integer.parseInt(req.getParameter("busNo"));
		String busName = req.getParameter("busName");
		String fromCity = req.getParameter("fromCity");
		String toCity = req.getParameter("toCity");
		String travelDestination = req.getParameter("travelDestination");
		String date = req.getParameter("date");
		String time = req.getParameter("time");
		double ticketPrice = Double.parseDouble(req.getParameter("ticketPrice"));

		PrintWriter printWriter = resp.getWriter();

		Bus bus = new Bus();

		bus.setBusNo(busNo);
		bus.setBusName(busName);
		bus.setFromCity(fromCity);
		bus.setToCity(toCity);
		bus.setDestination(travelDestination);
		bus.setDate(date);
		bus.setTime(time);
		bus.setTicketPrice(ticketPrice);

		BusService busService = new BusService();

		busService.insertBus(bus);

		printWriter.write("<html><body>");
		printWriter.write("<h3 style='color:green'>Bus Add Successfully</h3>");

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("addbus.jsp");
		requestDispatcher.include(req, resp);
		printWriter.write("</body></html>");
	}
}
