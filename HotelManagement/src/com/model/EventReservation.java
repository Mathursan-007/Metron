package com.model;

public class EventReservation {
	
	private int EventReservation_ID;
	private String FullName;
	private String NIC;
    private String PhoneNo;
	private String EventName;
	private String Venue;
	private float Price;
	private int No_of_Guests;
	private String Date;
	private String Time;
	private int HallID;
	private String PaymentMethod;
	
	
	public int getEventReservation_ID() {
		return EventReservation_ID;
	}
	public void setEventReservation_ID(int eventReservation_ID) {
		EventReservation_ID = eventReservation_ID;
	}
	public String getFullName() {
		return FullName;
	}
	public void setFullName(String fullName) {
		FullName = fullName;
	}
	public String getNIC() {
		return NIC;
	}
	public void setNIC(String nIC) {
		NIC = nIC;
	}
	public String getPhoneNo() {
		return PhoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		PhoneNo = phoneNo;
	}
	public String getEventName() {
		return EventName;
	}
	public void setEventName(String eventName) {
		EventName = eventName;
	}
	public String getVenue() {
		return Venue;
	}
	public void setVenue(String venue) {
		Venue = venue;
	}
	
	public float getPrice() {
		return Price;
	}
	public void setPrice(float price) {
		Price = price;
	}
	public int getNo_of_Guests() {
		return No_of_Guests;
	}
	public void setNo_of_Guests(int no_of_Guests) {
		No_of_Guests = no_of_Guests;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getTime() {
		return Time;
	}
	public void setTime(String time) {
		Time = time;
	}
	public int getHallID() {
		return HallID;
	}
	public void setHallID(int hallID) {
		HallID = hallID;
	}
	public String getPaymentMethod() {
		return PaymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		PaymentMethod = paymentMethod;
	}
	
	

}
