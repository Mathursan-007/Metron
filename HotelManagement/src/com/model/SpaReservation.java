package com.model;

 
public class SpaReservation extends Reservation {

	private String SpackageID;
	private String Spackagename;
	private int Sparoom;
	private float Amount;
	private int PID;
	private int sid;
	private String status;
	 
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
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
	public int getSparoom() {
		return Sparoom;
	}
	public void setSparoom(int sparoom) {
		Sparoom = sparoom;
	}
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
