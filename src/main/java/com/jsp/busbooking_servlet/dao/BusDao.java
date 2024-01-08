package com.jsp.busbooking_servlet.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jsp.busbooking_servlet.connection.BusConnection;
import com.jsp.busbooking_servlet.dto.Bus;

public class BusDao {

	/*
	 * Insert Bus Method
	 */
	public Bus insertBus(Bus bus) {

		Connection connection = BusConnection.getBusConnection();
		String insertQuery = "insert into addbus values(?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);

			preparedStatement.setInt(1, bus.getId());
			preparedStatement.setInt(2, bus.getBusNo());
			preparedStatement.setString(3, bus.getBusName());
			preparedStatement.setString(4, bus.getFromCity());
			preparedStatement.setString(5, bus.getToCity());
			preparedStatement.setString(6, bus.getDestination());
			preparedStatement.setString(7, bus.getDate());
			preparedStatement.setString(8, bus.getTime());
			preparedStatement.setDouble(9, bus.getTicketPrice());

			preparedStatement.execute();
			System.out.println("Bus Added....");
			return bus;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

	/*
	 * Display Bus Method
	 */

	public List<Bus> displayBus() {

		Connection connection = BusConnection.getBusConnection();

		String displayBusQuery = "select * from addbus";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(displayBusQuery);

			List<Bus> bus = new ArrayList<Bus>();

			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Bus bus2 = new Bus();
				bus2.setId(resultSet.getInt("id"));
				bus2.setBusNo(resultSet.getInt("busNo"));
				bus2.setBusName(resultSet.getString("busName"));
				bus2.setFromCity(resultSet.getString("fromCity"));
				bus2.setToCity(resultSet.getString("toCity"));
				bus2.setDestination(resultSet.getString("destination"));
				bus2.setDate(resultSet.getString("date"));
				bus2.setTime(resultSet.getString("time"));
				bus2.setTicketPrice(resultSet.getDouble("ticketPrice"));

				bus.add(bus2);
			}

			return bus;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	/*
	 * Delete Bus Method
	 */

	public int deleteBus(int id) {
		Connection connection = BusConnection.getBusConnection();

		String deleteBusQuery = "delete from addbus where id=?";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(deleteBusQuery);

			preparedStatement.setInt(1, id);

			return preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
}
