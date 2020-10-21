package com.model;

public class GuestReservation {
	private int Room_RID;
	private int CID;
	private int No_Of_Rooms;
	private int No_Of_Guests;
	private String CheckIn;
	private String CheckOut_Date;
	private int HGuest_ID;
	private String fullName;
	private float bill;
	
	
	public float getBill() {
		return bill;
	}
	public void setBill(float bill) {
		this.bill = bill;
	}
	public int getCID() {
		return CID;
	}
	public void setCID(int cID) {
		CID = cID;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public int getRoom_RID() {
		return Room_RID;
	}
	public void setRoom_RID(int room_RID) {
		Room_RID = room_RID;
	}
	public int getNo_Of_Rooms() {
		return No_Of_Rooms;
	}
	public void setNo_Of_Rooms(int no_Of_Rooms) {
		No_Of_Rooms = no_Of_Rooms;
	}
	public int getNo_Of_Guests() {
		return No_Of_Guests;
	}
	public void setNo_Of_Guests(int no_Of_Guests) {
		No_Of_Guests = no_Of_Guests;
	}
	public String getCheckIn() {
		return CheckIn;
	}
	public void setCheckIn(String checkIn) {
		CheckIn = checkIn;
	}
	public String getCheckOut_Date() {
		return CheckOut_Date;
	}
	public void setCheckOut_Date(String checkOut_Date) {
		CheckOut_Date = checkOut_Date;
	}
	public int getHGuest_ID() {
		return HGuest_ID;
	}
	public void setHGuest_ID(int hGuest_ID) {
		HGuest_ID = hGuest_ID;
	}
	
	
}
