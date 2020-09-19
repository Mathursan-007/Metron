package com.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.model.MealPlan;
import com.model.Venue;
import com.util.DBConnection;

public class EventImpl implements IEvent {
	
	
	private static Connection connection;
	private static PreparedStatement pt;
	private static CallableStatement ct;
	private static Statement st;
	
	/* Implementation for MealPlan */

	@Override
	public void addMealPlan(MealPlan mealplan) {
	
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into MealPlan ( PackageID, PackageName, Price, Specifications) values (?,?,?,?)");
			pt.setInt(1, mealplan.getPackageId());
			pt.setString(2, mealplan.getPackageName());
			pt.setFloat(3, mealplan.getPrice());
			pt.setString(4, mealplan.getSpecifications());
			
			pt.execute();
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
	}
	
	
	@Override
	public ArrayList<MealPlan> listMeals() { 

		ArrayList<MealPlan> meals = new ArrayList();
		
		try {
			connection=DBConnection.initializedb();
			pt = connection.prepareStatement("Select * from MealPlan");
			ResultSet result = pt.executeQuery();
			 
			while(result.next()) {
				
				MealPlan mealplan = new MealPlan();
				
				mealplan.setPackageId(result.getInt(1)); 
				mealplan.setPackageName(result.getString(2));  
				mealplan.setPrice(result.getFloat(3));  
				mealplan.setSpecifications(result.getString(4));  
				
				meals.add(mealplan);  
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		return meals; 
	
	}
	
	

	@Override
	public MealPlan getMealPlan(int packageId) {
		
		MealPlan mealplan = new MealPlan();
		
		try {
			connection=DBConnection.initializedb();
			pt= connection.prepareStatement("select * from MealPlan where PackageId= ?");
			pt.setInt(1, packageId);
			
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				  
				mealplan.setPackageId(result.getInt(1));
				mealplan.setPackageName(result.getString(2));  
				mealplan.setPrice(result.getFloat(3));  
				mealplan.setSpecifications(result.getString(4));  
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mealplan;
		
	}
	
	  

	@Override
	public void updateMealPlan(MealPlan mealplan) {
		
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update MealPlan set PackageID=?, PackageName=?, Price=?, Specifications=? where PackageID=?"); 
			pt.setInt(1, mealplan.getPackageId());  
			pt.setString(2, mealplan.getPackageName());  
			pt.setFloat(3, mealplan.getPrice());  
			pt.setString(4, mealplan.getSpecifications());  
			pt.setInt(5, mealplan.getPackageId());
			
			pt.executeUpdate();
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	

	@Override
	public void deleteMealPlan(int packageId) {
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from MealPlan where PackageID=?");
			pt.setInt(1,packageId); 
			pt.execute(); 
			 
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	
	/* Implementation for Venue */

	@Override
	public void addVenue(Venue venue) {
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into Venue (VenueID, VenueType, Price, Capacity, [Availability], EReservation_ID) values (?,?,?,?,?,?)");
			pt.setInt(1, venue.getVenueID());
			pt.setString(2, venue.getVenueType());
			pt.setFloat(3, venue.getPrice());
			pt.setInt(4, venue.getCapacity());  
			pt.setString(5, venue.getAvailability());
			pt.setInt(6, venue.getEReservationID()); 
			
			pt.execute();      
			  
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


	@Override
	public ArrayList<Venue> listVenues() {
		
		ArrayList <Venue> venues = new ArrayList(); 
		
		
		try {
			connection=DBConnection.initializedb();
			pt = connection.prepareStatement("Select * from Venue");
			ResultSet result = pt.executeQuery();
			 
			while(result.next()) {
				
			Venue venue = new Venue();
			
			venue.setVenueID(result.getInt(1));  
			venue.setVenueType(result.getString(2)); 
			venue.setPrice(result.getFloat(3));  
			venue.setCapacity(result.getInt(4));
			venue.setAvailability(result.getString(5));  
			venue.setEReservationID(result.getInt(6));  
			
			venues.add(venue);    		
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return venues;  
	}


	@Override
	public Venue getVenue(int venueId) {

		Venue venue = new Venue();   
		
		
		try {
			connection=DBConnection.initializedb();
			pt= connection.prepareStatement("select * from Venue where VenueID= ?");
			pt.setInt(1, venueId);
			
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				venue.setVenueID(result.getInt(1));  
				venue.setVenueType(result.getString(2)); 
				venue.setPrice(result.getFloat(3));  
				venue.setCapacity(result.getInt(4));
				venue.setAvailability(result.getString(5));  
				venue.setEReservationID(result.getInt(6));     
				
			}
				  
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return venue;    
	}


	@Override
	public void updateVenue(Venue venue) {
	
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update Venue set VenueID=?, VenueType=?, Price=?, Capacity=?, Availability=?, EReservation_ID=? where VenueID=?"); 
			pt.setInt(1, venue.getVenueID());  
			pt.setString(2, venue.getVenueType());  
			pt.setFloat(3, venue.getPrice());  
			pt.setInt(4, venue.getCapacity());  
			pt.setString(5, venue.getAvailability());  
			pt.setInt(6, venue.getEReservationID()); 
			pt.setInt(7, venue.getVenueID()); 
			
			pt.executeUpdate();
				 
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

  
	@Override
	public void deleteVenue(int venueId) {   

		try {
			
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from Venue where VenueID=?");
			pt.setInt(1,venueId); 
			pt.execute(); 
			   
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();   
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
