package com.service;

import java.util.ArrayList;

import com.model.Room;

public interface IRoom {
	
	public void addRoom(Room room);
	
	public ArrayList<Room> listRooms();
	
	public void updateRoom(Room room);
	
	public void deleteRoom(String roomNo);
	
	public Room getRoom(String roomNo);
}
