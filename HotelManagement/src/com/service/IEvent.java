package com.service;

import java.util.ArrayList;
import com.model.MealPlan;
import com.model.Venue;

public interface IEvent {

	/* MealPlan */
	
	public void addMealPlan(MealPlan mealplan);
	
	public ArrayList <MealPlan> listMeals();
	
	public MealPlan getMealPlan(int packageId);
	
	public void updateMealPlan(MealPlan mealplan);
	
	public void deleteMealPlan(int packageId);
	
	public void addVenue(Venue venue);
	
	public ArrayList <Venue> listVenues();
	
	public Venue getVenue(int venueId);
	
	public void updateVenue(Venue venue);
	
	public void deleteVenue(int venueId);  
	

	
	
	
}
