package com.util;

import static org.junit.jupiter.api.Assertions.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.jupiter.api.Test;

import com.service.RestaurantImpl;
import com.service.RoomImpl;

class Testing {
	RoomImpl roomImpl;
	RestaurantImpl restaurantimpl;

	@Test
	void testCostOfRooms() {
		//Returns the cost of rooms when the check-in date,check-out date,type of room and number of rooms as parameters
		roomImpl = new RoomImpl();
		float output = roomImpl.getRoomCost("2020-10-2", "2020-10-4", 1,2);
		assertEquals(30000, output);
	}
	
	@Test
	void testConvertDate() {
		//Returns the date in yyyy-mm-dd format when the date is input as mm/dd/yyyy 
		roomImpl = new RoomImpl();
		String output = roomImpl.convertDate("10/03/2020");
		assertEquals("2020-10-03", output);
	}
	
	@Test
	void testCheckTime() {
		//to test whether the given time is between 9am and 9pm
		restaurantimpl=new RestaurantImpl();
		String time="22:30:59";
		Date date;
		try {
			date = new SimpleDateFormat("HH:mm:ss").parse(time);
			boolean output=restaurantimpl.checktime(date); 
			assertEquals(false, output);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	}
	
	@Test
	void testgetItemPrice() {
		//to test whether the method return correct price for given item number
		restaurantimpl=new RestaurantImpl();
		float output=restaurantimpl.getItemPrice(12);
		assertEquals(350, output);
		
	}
	
	
	

}
