package com.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.model.EventReservation;
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
			pt=connection.prepareStatement("insert into Venue (VenueID, VenueType, Price, Capacity, [Availability]) values (?,?,?,?,?)");
			pt.setInt(1, venue.getVenueID());
			pt.setString(2, venue.getVenueType());
			pt.setFloat(3, venue.getPrice());
			pt.setInt(4, venue.getCapacity());  
			pt.setString(5, venue.getAvailability());
	
			
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
			pt=connection.prepareStatement("update Venue set VenueID=?, VenueType=?, Price=?, Capacity=?, Availability=? where VenueID=?"); 
			pt.setInt(1, venue.getVenueID());  
			pt.setString(2, venue.getVenueType());  
			pt.setFloat(3, venue.getPrice());  
			pt.setInt(4, venue.getCapacity());  
			pt.setString(5, venue.getAvailability()); 
			pt.setInt(6, venue.getVenueID()); 
			
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



	@Override
	public void addEventReservation(EventReservation eventreservation) {
		
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into EventReservation (EventReservation_ID, FullName, NIC, TelephoneNumber, EventName, Venue, Price, NoOfGuests, Date, Time, Hall_Id, PaymentMethod) values(?,?,?,?,?,?,?,?,?,?,?,?)"); 
			pt.setInt(1, eventreservation.getEventReservation_ID());  
			pt.setString(2, eventreservation.getFullName());
			pt.setString(3, eventreservation.getNIC());
			pt.setString(4, eventreservation.getPhoneNo());
			pt.setString(5, eventreservation.getEventName());
			pt.setString(6, eventreservation.getVenue());
			pt.setFloat(7, eventreservation.getPrice());  
			pt.setInt(8, eventreservation.getNo_of_Guests());
			pt.setString(9, eventreservation.getDate());
			pt.setString(10, eventreservation.getTime());
			pt.setInt(11, eventreservation.getHallID()); 
			pt.setString(12, eventreservation.getPaymentMethod());   
		
				
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
	public int generateEventReservationid() {

	// select EventReservation_ID from EventReservation
		
		int value = 0;
		
		try {
			connection=DBConnection.initializedb();
			pt = connection.prepareCall("select EventReservation_ID from EventReservation ");
			
			ResultSet result = pt.executeQuery();
			
			while(result.next()) {
				
				value = result.getInt(1)+1;
			}
			
			if(value==0) {
				value=1;
				
			}
			
		}catch(Exception e ) {
			e.printStackTrace();
		}
		
		return value;

	}


	@Override
	public ArrayList<EventReservation> listEventReservations() {

			ArrayList <EventReservation> ereserves = new ArrayList(); 
			
			
				try {
					connection=DBConnection.initializedb();
					pt = connection.prepareStatement("Select * from EventReservation");
					ResultSet result = pt.executeQuery();
				
					while(result.next()) {
						
						EventReservation eventreservation = new EventReservation();
						
						eventreservation.setEventReservation_ID(result.getInt(1));  
						eventreservation.setFullName(result.getString(2));    
						eventreservation.setNIC(result.getString(3));
						eventreservation.setPhoneNo(result.getString(4));
						eventreservation.setEventName(result.getString(5));
						eventreservation.setVenue(result.getString(6));
						eventreservation.setPrice(result.getFloat(7));   
						eventreservation.setNo_of_Guests(result.getInt(8));
						eventreservation.setDate(result.getString(9));  
						eventreservation.setTime(result.getString(10)); 
						eventreservation.setHallID(result.getInt(11));  
						eventreservation.setPaymentMethod(result.getString(12));     
			
				
						ereserves.add(eventreservation);
					}
						
					
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			
			return ereserves;
		}
		
	

	@Override
	public EventReservation getEventReservation(int reservationId) {
	
		
		EventReservation eventreservation = new EventReservation();
		
		try {
			connection=DBConnection.initializedb();
			pt= connection.prepareStatement(" select * from EventReservation where EventReservation_ID= ?");
			pt.setInt(1, reservationId);  
			
			
			ResultSet result= pt.executeQuery();
			
			while(result.next()) {
				
				eventreservation.setEventReservation_ID(result.getInt(1));  
				eventreservation.setFullName(result.getString(2));    
				eventreservation.setNIC(result.getString(3));
				eventreservation.setPhoneNo(result.getString(4));
				eventreservation.setEventName(result.getString(5));
				eventreservation.setVenue(result.getString(6));
				eventreservation.setPrice(result.getFloat(7));   
				eventreservation.setNo_of_Guests(result.getInt(8));
				eventreservation.setDate(result.getString(9));  
				eventreservation.setTime(result.getString(10)); 
				eventreservation.setHallID(result.getInt(11));  
				eventreservation.setPaymentMethod(result.getString(12));   
				
			}
				
				
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return eventreservation;
	}


	@Override
	public void updateEventReservation(EventReservation eventreservation) {
	

		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update EventReservation set EventReservation_ID=?, FullName=?, NIC=?, TelephoneNumber=?, EventName=?, Venue=?, Price=?, NoOfGuests=?, Date=?, Time=?, Hall_Id=?, PaymentMethod=? where EventReservation_ID=?");
			pt.setInt(1, eventreservation.getEventReservation_ID());  
			pt.setString(2, eventreservation.getFullName());
			pt.setString(3, eventreservation.getNIC());
			pt.setString(4, eventreservation.getPhoneNo());    
			pt.setString(5, eventreservation.getEventName());
			pt.setString(6, eventreservation.getVenue());
			pt.setFloat(7, eventreservation.getPrice());
			pt.setInt(8, eventreservation.getNo_of_Guests());
			pt.setString(9, eventreservation.getDate());  
			pt.setString(10, eventreservation.getTime()); 
			pt.setInt(11, eventreservation.getHallID());  
			pt.setString(12, eventreservation.getPaymentMethod());    
			pt.setInt(13, eventreservation.getEventReservation_ID());  
			
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
	public void deleteEventReservation(int reservationId) {

		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from EventReservation where EventReservation_ID=?");
			pt.setInt(1, reservationId);
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
	public ArrayList<Venue> listAvailableHalls(int type, String Date) {
		// TODO Auto-generated method stub
		
		ArrayList <Venue> Halls  = new ArrayList();
		
		try {
			connection=DBConnection.initializedb();
			pt = connection.prepareStatement  ("select HallId from Hall where (Venue_ID = ? OR Venue_ID = ? OR Venue_ID = ?) AND HallId NOT IN (select Hall_Id from  EventReservation where Date = ?)");
			
			if (type == 1)  {
				pt.setInt(1, 1);
				pt.setInt(2, 2);
				pt.setInt(3, 3);
				
			}
			
			else {
				pt.setInt(1, 4);
				pt.setInt(2, 5);
				pt.setInt(3, 6);
					
			}
			
			pt.setString(4, Date);
			ResultSet result = pt.executeQuery();
			

			while(result.next()) {
				
			Venue hall = new Venue();
			
			hall.setHallID(result.getInt(1));  
			Halls.add(hall);		
			
			}
		
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
		
		return Halls;
	}


	@Override
	public float getMealPrice(int id) {
		// TODO Auto-generated method stub
		
		float price = 0;
		
		
		try {
			connection=DBConnection.initializedb();
			pt= connection.prepareStatement("select Price from MealPlan where PackageID =?");
			pt.setInt(1, id);
			
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				  
				price = result.getFloat(1);
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return price;
		
		
		
		
	}


	@Override
	public float getVenuePrice(int id) {
		// TODO Auto-generated method stub
		
		float price = 0;
		
		
		try {
			connection=DBConnection.initializedb();
			pt= connection.prepareStatement("select Price from Venue where VenueID = ?");
			pt.setInt(1, id);
			
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				  
				price = result.getFloat(1);
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return price;
	
		
	}


	@Override
	public float getVenueCost(String VenueType) {
		// TODO Auto-generated method stub
		
		
		float price = 0;
		
		try {
			connection=DBConnection.initializedb();
			pt= connection.prepareStatement("select Price from Venue where VenueType = ?");
			pt.setString(1, VenueType);
			
			
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				  
				price = result.getFloat(1);
				
			}
				
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return price;
		
	}

	   
	

}


