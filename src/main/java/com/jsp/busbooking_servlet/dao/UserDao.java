package com.jsp.busbooking_servlet.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;

import com.jsp.busbooking_servlet.connection.BusConnection;
import com.jsp.busbooking_servlet.dto.User;

public class UserDao {

	/*
	 * User Insert Method
	 */
	public User insertUser(User user) {
		
		Connection connection=BusConnection.getBusConnection();
		
		String insertQuery="insert into reg_user values(?,?,?,?,?)";
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(insertQuery);
			
			preparedStatement.setInt(1, user.getId());
			preparedStatement.setString(2, user.getName());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setLong(4, user.getPhone());
			preparedStatement.setString(5, user.getPassword());
			
			preparedStatement.execute();
			System.out.println("user inserted..");
			return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}
