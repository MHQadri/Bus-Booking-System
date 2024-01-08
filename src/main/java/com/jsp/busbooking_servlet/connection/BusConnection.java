package com.jsp.busbooking_servlet.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BusConnection {

	public static Connection getBusConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/bus";
			String user="root";
			String pass="root";
			
			Connection connection=DriverManager.getConnection(url, user, pass);
			
			return connection;
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
			
	}
}
