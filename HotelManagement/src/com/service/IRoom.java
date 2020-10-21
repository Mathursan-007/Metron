package com.service;

import java.text.ParseException;
import java.util.ArrayList;

import com.model.GuestReservation;
import com.model.Room;
import com.model.RoomBill;
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
	
	public void addResrvationInfo(GuestReservation guestReservation,RoomGuest roomGuest);
	
	public ArrayList<GuestReservation> listGuestReservationInfo();
	
	public void addBill(RoomBill roomBill);
	
	public int generateBillId();
	
	public void cancelReservation(int RRID);
	
	public void addCheckedInDetails(GuestReservation guestReservation);
	
	public int generateCID();
	
	public GuestReservation getReservation(int RRID);
	
	public float getCustomerBill(int RRID);
	
	public ArrayList<GuestReservation> listCheckInDetails();
	
	public void setReportDetails(Room room,GuestReservation guestReservation,int RRID);
	
	public ArrayList<RoomBill> getBillDetails(int RRID);
	
	public void deleteCheckIn(int RRID);
	
	public float getRoomCost(String checkIn,String checkOut,int type,int noOfRooms);
	
	public String convertDate(String inputDate);
}
