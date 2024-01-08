package com.jsp.busbooking_servlet.service;

import com.jsp.busbooking_servlet.dao.BusDao;
import com.jsp.busbooking_servlet.dto.Bus;

public class BusService {
	
	BusDao busDao=new BusDao();
	/*
	 * Insert Bus Method
	 */
	public Bus insertBus(Bus bus) {
		return busDao.insertBus(bus);
	}

}
