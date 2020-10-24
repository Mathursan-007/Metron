package com.service;

import java.util.ArrayList;
import com.model.MealPlan;
import com.model.Venue;
import com.model.EventReservation;

public interface IEvent {

/* MealPlan */
	
	public void addMealPlan(MealPlan mealplan);
	
	public ArrayList <MealPlan> listMeals();
	
	public MealPlan getMealPlan(int packageId);
	
	public void updateMealPlan(MealPlan mealplan);
	
	public void deleteMealPlan(int packageId);
	
	public float getMealPrice(int id);
	
/* Venue */
	
	public void addVenue(Venue venue);
	
	public ArrayList <Venue> listVenues();
	
	public Venue getVenue(int venueId);
	
	public void updateVenue(Venue venue);
	
	public void deleteVenue(int venueId);  
	
	public ArrayList <Venue> listAvailableHalls(int type, String Date);
	
	public float getVenuePrice(int id);   
	
	public float getVenueCost(String VenueType);   
	

	
	
/*Event Reservation */
	
	public void addEventReservation(EventReservation eventreservation);
	
	public int generateEventReservationid();

	public ArrayList <EventReservation> listEventReservations();
	
	public EventReservation getEventReservation(int reservationId);
	
	public void updateEventReservation(EventReservation eventreservation);
	
	public void deleteEventReservation(int reservationId);
	  
	
}
