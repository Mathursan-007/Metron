package com.util;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import com.service.RoomImpl;

class Testing {
	RoomImpl roomImpl;

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
	
	

}
