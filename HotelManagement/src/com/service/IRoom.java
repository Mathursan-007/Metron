package com.service;

import java.util.ArrayList;

import com.model.GuestReservation;
import com.model.Room;
import com.model.RoomGuest;

public interface IRoom {
	
	public void addRoom(Room room);
	
	public void addGuest(RoomGuest roomGuest);
	
	public void addReservation(GuestReservation guestReservation);
	
	public void addReservedRooms(int Room_RID,String Room_no);
	
	public ArrayList<Room> listRooms();
	
	public void updateRoom(Room room);
	
	public int deleteRoom(String roomNo);
	
	public Room getRoom(String roomNo);
	
	public ArrayList<Room> getAvailableRooms(String checkIn,String checkOut,int roomType);
	
	public int setRoomAvailabilityCount(String checkIn,String checkOut,int typeNo);
	
	public int generateGuestID();
	
	public int generateReservationID();
}
