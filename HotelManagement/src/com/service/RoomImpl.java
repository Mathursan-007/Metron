package com.service;

import java.util.ArrayList;
import java.sql.*;

import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.model.GuestReservation;
import com.model.Room;
import com.model.RoomGuest;
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
			e.printStackTrace();
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
			e.printStackTrace();
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
			e.printStackTrace();
		}
		
	}

	@Override
	public int deleteRoom(String roomNo) {
		// TODO Auto-generated method stub
		int i=0;
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from Room where Room_no=?"); 
			pt.setString(1,roomNo);
			pt.execute();
			i=1;
		} catch (SQLServerException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return i;
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
			e.printStackTrace();
		}
		
		return room;
	}

	@Override
	public ArrayList<Room> getAvailableRooms(String checkIn, String checkOut,int roomType) {
		// TODO Auto-generated method stub
		ArrayList<Room> rooms=new ArrayList<>();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareCall("SELECT Room_no From Room where Room_type_no=? AND Room_no NOT IN (SELECT b.Room_no FROM Room_Reservation_View b where (CheckIn_Date BETWEEN ? AND ?) OR (CheckOut_Date BETWEEN ? AND ?))");
			pt.setInt(1, roomType);
			pt.setString(2, checkIn);
			pt.setString(3, checkOut);
			pt.setString(4, checkIn);
			pt.setString(5, checkOut);
			ResultSet result=pt.executeQuery();
			
			while(result.next()) {
				Room room = new Room();
				
				room.setRoomNo(result.getString(1));
				rooms.add(room);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return rooms;
	}

	@Override
	public int setRoomAvailabilityCount(String checkIn, String checkOut,int typeNo) {
		// TODO Auto-generated method stub
		int count=0;
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareCall("SELECT COUNT(*) From Room where Room_type_no=? AND Room_no NOT IN (SELECT b.Room_no FROM Room_Reservation_View b where (CheckIn_Date BETWEEN ? AND ?) OR (CheckOut_Date BETWEEN ? AND ?))");
			pt.setInt(1, typeNo);
			pt.setString(2, checkIn);
			pt.setString(3, checkOut);
			pt.setString(4, checkIn);
			pt.setString(5, checkOut);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				count=result.getInt(1);
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}



	@Override
	public int generateGuestID() {
		// TODO Auto-generated method stub
		int count=0;
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareCall("SELECT COUNT(*) From Hotel_Guest");
			
			
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				count=result.getInt(1)+1;
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}



	@Override
	public int generateReservationID() {
		// TODO Auto-generated method stub
		int count=0;
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareCall("SELECT COUNT(*) From Room_Reservation");
			
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				count=result.getInt(1)+1;
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}



	@Override
	public void addGuest(RoomGuest roomGuest) {
		// TODO Auto-generated method stub
		try {
			
			 connection=DBConnection.initializedb();
				pt=connection.prepareStatement("INSERT INTO Hotel_Guest(HGuest_ID,NIC,Full_Name,Email,Contact_no) VALUES(?,?,?,?,?)");
				
				pt.setInt(1, roomGuest.getHGuest_ID());
				pt.setString(2, roomGuest.getNIC());
				pt.setString(3, roomGuest.getFull_Name());
				pt.setString(4, roomGuest.getEmail());
				pt.setString(5, roomGuest.getContact());
				
				
				pt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}



	@Override
	public void addReservation(GuestReservation guestReservation) {
		// TODO Auto-generated method stub
		try {
			
			 connection=DBConnection.initializedb();
				pt=connection.prepareStatement("INSERT INTO Room_Reservation(Room_RID,No_Of_Rooms,No_Of_Guests,CheckIn_Date,CheckOut_Date,HGuest_ID) VALUES (?,?,?,?,?,?)");
				pt.setInt(1, guestReservation.getRoom_RID());
				pt.setInt(2, guestReservation.getNo_Of_Rooms());
				pt.setInt(3, guestReservation.getNo_Of_Guests());
				pt.setString(4, guestReservation.getCheckIn());
				pt.setString(5, guestReservation.getCheckOut_Date());
				pt.setInt(6, guestReservation.getHGuest_ID());
				
				
				pt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}



	@Override
	public void addReservedRooms(int Room_RID, String Room_no) {
		// TODO Auto-generated method stub
		
		//Availability status insertion
		try {
			
			 connection=DBConnection.initializedb();
				pt=connection.prepareStatement("INSERT INTO Reserved_Rooms (Room_RID,Room_no,Availability_Status) VALUES (?,?,?)");
				
				String availability="Unavailable";
				
				pt.setInt(1, Room_RID);
				pt.setString(2, Room_no);
				pt.setString(3, availability);
				
				
				
				pt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
}
