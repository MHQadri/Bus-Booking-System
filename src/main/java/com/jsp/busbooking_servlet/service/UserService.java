package com.jsp.busbooking_servlet.service;

import com.jsp.busbooking_servlet.dao.UserDao;
import com.jsp.busbooking_servlet.dto.User;

public class UserService {
	UserDao userDao=new UserDao();
	/*
	 * User Insert Method
	 */
	public User insertUser(User user) {
		
		return userDao.insertUser(user);
	}
}
