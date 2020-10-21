package com.model;

public class RoomBill {
	private int Bill_ID;
	private String Bill_Type;
	private float Amount;
	private int Room_RID;
	
	
	public int getBill_ID() {
		return Bill_ID;
	}
	public void setBill_ID(int bill_ID) {
		Bill_ID = bill_ID;
	}
	public String getBill_Type() {
		return Bill_Type;
	}
	public void setBill_Type(String bill_Type) {
		Bill_Type = bill_Type;
	}
	
	public float getAmount() {
		return Amount;
	}
	public void setAmount(float amount) {
		Amount = amount;
	}
	public int getRoom_RID() {
		return Room_RID;
	}
	public void setRoom_RID(int room_RID) {
		Room_RID = room_RID;
	}
	
	
}
