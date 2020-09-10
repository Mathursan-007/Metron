package com.model;

public class Room {
	private String RoomNo;
	private String Availability;
	private int RoomTypeNo;
	private int maxGuests;
	private String RoomSize;
	private String RoomTypeName;
	private double CostPerDay;
	private int dashboardVal;
	
	
	
	public int getDashboardVal() {
		return dashboardVal;
	}
	
	public void setDashboardVal(int dash) {
		this.dashboardVal=dash;;
	}

	public String getRoomTypeName() {
		return RoomTypeName;
	}
	public void setRoomTypeName(String roomTypeName) {
		RoomTypeName = roomTypeName;
	}
	public double getCostPerDay() {
		return CostPerDay;
	}
	public void setCostPerDay(double costPerDay) {
		CostPerDay = costPerDay;
	}
	public int getMaxGuests() {
		return maxGuests;
	}
	public void setMaxGuests(int maxGuests) {
		this.maxGuests = maxGuests;
	}
	public String getRoomSize() {
		return RoomSize;
	}
	public void setRoomSize(String roomSize) {
		RoomSize = roomSize;
	}
	public String getRoomNo() {
		return RoomNo;
	}
	public void setRoomNo(String roomNo) {
		RoomNo = roomNo;
	}
	public String getAvailability() {
		return Availability;
	}
	public void setAvailability(String availability) {
		Availability = availability;
	}
	public int getRoomTypeNo() {
		return RoomTypeNo;
	}
	public void setRoomTypeNo(int roomTypeNo) {
		RoomTypeNo = roomTypeNo;
	}
	
}
