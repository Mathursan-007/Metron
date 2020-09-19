package com.model;

public class Venue {

	private int VenueID;
	private String VenueType;
	private float Price;
	private int Capacity;
	private String Availability;
	private int EReservationID;
	
	
	public int getVenueID() {
		return VenueID;
	}
	public void setVenueID(int venueID) {
		VenueID = venueID;
	}
	public String getVenueType() {
		return VenueType;
	}
	public void setVenueType(String venueType) {
		VenueType = venueType;
	}
	public float getPrice() {
		return Price;
	}
	public void setPrice(float price) {
		Price = price;
	}
	public int getCapacity() {
		return Capacity;
	}
	public void setCapacity(int capacity) {
		Capacity = capacity;
	}
	public String getAvailability() {
		return Availability;
	}
	public void setAvailability(String availability) {
		Availability = availability;
	}
	public int getEReservationID() {
		return EReservationID;
	}
	public void setEReservationID(int eReservationID) {
		EReservationID = eReservationID;
	}
	
	
	
}
