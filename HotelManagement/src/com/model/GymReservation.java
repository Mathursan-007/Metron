package com.model;

public class GymReservation extends Reservation {

	private String GpackageID;
	private String Gpackagename;
	private float Amount;
	private int PID;
	public int getPID() {
		return PID;
	}
	public void setPID(int pID) {
		PID = pID;
	}
	public float getAmount() {
		return Amount;
	}
	public void setAmount(float amount) {
		Amount = amount;
	}
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
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
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
	public String getStime() {
		return Stime;
	}
	public void setStime(String stime) {
		Stime = stime;
	}
	public String getEtime() {
		return Etime;
	}
	public void setEtime(String etime) {
		Etime = etime;
	}
	
	
	
}
