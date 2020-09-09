package com.service;

import java.util.ArrayList;
import java.sql.*;
import com.model.Room;
import com.util.DBConnection;


public class RoomImpl implements IRoom {
		
	private static Connection connection;
	private static PreparedStatement pt;
	private static Statement st;
	private static CallableStatement ct;
	
	@Override
	public void addRoom(Room room) {
		// TODO Auto-generated method stub
		
		try {
			
			 connection=DBConnection.initializedb();
				pt=connection.prepareStatement("insert into Room (Room_no,Availability_Status,Room_size,Max_guests,Room_type_no) values(?,?,?,?,?)");
				pt.setString(1, room.getRoomNo());
				pt.setString(2, room.getAvailability());
				pt.setString(3, room.getRoomSize());
				pt.setInt(4, room.getMaxGuests());
				pt.setInt(5, room.getRoomTypeNo());
				
				
				pt.execute();
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}

	@Override
	public ArrayList<Room> listRooms() {
		// TODO Auto-generated method stub
		ArrayList<Room> rooms=new ArrayList<>();
		try {
			connection=DBConnection.initializedb();
			ct=connection.prepareCall("Select * from Room_Details");
			ResultSet result=ct.executeQuery();
			
			while(result.next()) {
				Room room = new Room();
				
				room.setRoomNo(result.getString(1));
				room.setRoomTypeName(result.getString(2));
				room.setRoomSize(result.getString(3));
				room.setMaxGuests(result.getInt(4));
				room.setCostPerDay(result.getDouble(5));
				
				rooms.add(room);
			}
			
		} catch (Exception e) {
			
		}
		
		return rooms;
	}

	@Override
	public void updateRoom(Room room) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("UPDATE Room SET Room_size=?, Room_type_no=?, Max_guests=? WHERE Room_no=?");
			pt.setString(1, room.getRoomSize());
			pt.setInt(2, room.getRoomTypeNo());
			pt.setInt(3, room.getMaxGuests());
			pt.setString(4, room.getRoomNo());
			pt.executeUpdate();
			
		} catch (Exception e) {
			
		}
		
	}

	@Override
	public void deleteRoom(String roomNo) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from Room where Room_no=?"); 
			pt.setString(1,roomNo);
			pt.execute();
		} catch (Exception e) {
			
			e.printStackTrace();
		} 
		
	}

	@Override
	public Room getRoom(String roomNo) {
		// TODO Auto-generated method stub
		Room room=new Room();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select Room_no,Room_type_no,Room_size,Max_guests from Room where Room_no=?");
			pt.setString(1, roomNo);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				room.setRoomNo(result.getString(1));
				room.setRoomTypeNo(result.getInt(2));
				room.setRoomSize(result.getString(3));
				room.setMaxGuests(result.getInt(4));
				
			}
		} catch (Exception e) {
			
		}
		
		return room;
	}
	
	
	
}
