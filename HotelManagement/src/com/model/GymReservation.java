package com.model;

public class GymReservation extends Reservation {

	private String GpackageID;
	private String Gpackagename;
	public String getGpackageID() {
		return GpackageID;
	}
	public void setGpackageID(String gpackageID) {
		GpackageID = gpackageID;
	}
	public String getGpackagename() {
		return Gpackagename;
	}
	public void setGpackagename(String gpackagename) {
		Gpackagename = gpackagename;
	}
	
	public String getRID() {
		return RID;
	}
	public void setRID(String rID) {
		RID = rID;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public String getCusName() {
		return cusName;
	}
	public void setCusName(String cusName) {
		this.cusName = cusName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	
	
}
