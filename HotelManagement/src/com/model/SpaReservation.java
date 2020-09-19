package com.model;

 
public class SpaReservation extends Reservation {

	private String SpackageID;
	private String Spackagename;
	
	 
	public String getSpackageID() {
		return SpackageID;
	}
	public void setSpackageID(String spackageID) {
		SpackageID = spackageID;
	}
	public String getGpackagename() {
		return Spackagename;
	}
	public void setSpackagename(String spackagename) {
		Spackagename = spackagename;
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
