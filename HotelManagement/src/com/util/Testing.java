package com.util;

import static org.junit.jupiter.api.Assertions.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.jupiter.api.Test;

import com.model.Driver;
import com.model.Expense;
import com.model.Gym;
import com.model.Income;
import com.model.Inventory;
import com.model.InventoryTransaction;
import com.model.Salary;
import com.model.Spa;
import com.model.Vehicle;
import com.model.Venue;
import com.service.EmployeeImpl;
import com.service.EventImpl;
import com.service.ExtraServiceImp;
import com.service.FinanceImpl;
import com.service.InventoryImpl;
import com.service.RestaurantImpl;
import com.service.RoomImpl;
import com.service.TransportImpl;

class Testing {
	RoomImpl roomImpl;
	RestaurantImpl restaurantimpl;
	EventImpl eventimpl;
	ExtraServiceImp extraServiceImpl;
	EmployeeImpl employeeImpl;
	FinanceImpl financeImpl;
	InventoryImpl inventoryImpl;
	TransportImpl transportImpl;

	
	//id-1
	@Test
	void testCostOfRooms() {
		//Returns the cost of rooms when the check-in date,check-out date,type of room and number of rooms as parameters
		roomImpl = new RoomImpl();
		float output = roomImpl.getRoomCost("2020-10-2", "2020-10-4", 1,2);
		assertEquals(30000, output);
	}
	
	//id-2
	@Test
	void testConvertDate() {
		//Returns the date in yyyy-mm-dd format when the date is input as mm/dd/yyyy 
		roomImpl = new RoomImpl();
		String output = roomImpl.convertDate("10/03/2020");
		assertEquals("2020-10-03", output);
	}
	
	//id-3
	@Test
	void testCheckTime() {
		//to test whether the given time is between 9am and 9pm
		restaurantimpl=new RestaurantImpl();
		String time="22:30:59";
		Date date;
		try {
			date = new SimpleDateFormat("HH:mm:ss").parse(time);
			boolean output=restaurantimpl.checktime(date); 
			assertEquals(false, output);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	}
	
	//id-4
	@Test
	void testgetItemPrice() {
		//to test whether the method return correct price for given item number
		restaurantimpl=new RestaurantImpl();
		float output=restaurantimpl.getItemPrice(12);
		assertEquals(350, output);
		
	}
	
	
	//id-5
	@Test
    void testPriceMealPlan() {
       
        eventimpl = new EventImpl();
        float output = eventimpl.getMealPrice(111);
        assertEquals(3000.0,output);                   
    }
   
   
	//id-6
    @Test
    void testVenueType() {
       
        eventimpl = new EventImpl();   
        Venue venue1 = new Venue();
        venue1 = eventimpl.getVenue(3);
        String output = venue1.getVenueType();
        assertEquals("Rainbow BallRoom",output);
       
    }
	
    
    //id-7
	@Test
	void testGetExpenseDetails() {
		
		financeImpl = new FinanceImpl();
		Expense expense = new Expense();
		expense = financeImpl.GetExpense(8);
		
		String output = expense.getCategory();
		assertEquals("Rental",output);
				
	}
	
	//id-8
	@Test
	void testGetIncomeDetails() {
		
		financeImpl = new FinanceImpl();
		Income income = new Income();
		income = financeImpl.GetIncome(4);
		
		float output = income.getAmount();
		assertEquals(225000.0,output);
	}
	

	//id-9
	
	 @Test
	    void testAttendanceOfEmployee() {
	        //Returns the no of days present when employeeId and Attendance Month as parameters
	        employeeImpl = new EmployeeImpl() ;
	        int output = employeeImpl.getAttendance(1, "2020-07");
	        assertEquals(30, output);
	 }
	
	//id-10
	
	 @Test
	    void testOfOvertime() {
	        //Returns the amount for overtime when Designation and no of days present as parameters
	        employeeImpl = new EmployeeImpl() ;
	        Salary salary = new Salary();
	        int output = (int)salary.calcOvertime("Clerk", 27);
	        assertEquals(5600, output);
	    
	 }

	 //id-11
	 @Test
	 void testGetGymPackage() {
	 extraServiceImpl = new ExtraServiceImp();
	 Gym gym = new Gym();
	 gym = extraServiceImpl.getgympackage("G001");
	 String output = gym.getName();
	 assertEquals("Beginner",output);
	 }
	 
	 //id-12
	 @Test
	 void testGetSpaPackage() {
	 extraServiceImpl = new ExtraServiceImp();
	 Spa spa = new Spa();
	 spa = extraServiceImpl.getpackage("S001");
	 float output = spa.getPrice();
	 assertEquals(20000,output);
	 }

	 
	 
    //id-13 
	@Test
	//Returns the particular minimum quantity when inputs the asset ID	
	void testGetInventory() {
		    inventoryImpl = new InventoryImpl();
		    Inventory inventory = new Inventory();
		    inventory = inventoryImpl.getAsset("EV0001");
		    
		    int output = inventory.getMinQuantity();
		    assertEquals(15,output);
		}
		
	
    //id-14 	
	@Test
	//Returns the total quantity when inputs the asset ID and type	
	void testInventoryTransaction() {
		    inventoryImpl = new InventoryImpl();
		    InventoryTransaction inventory = new InventoryTransaction();
		
		    int output = inventoryImpl.totQty("EV0001", "Outcome");
		    assertEquals(10,output);


		}
		
	//id-15
	
	@Test
	void testGetDriverID(){
		    
			transportImpl = new TransportImpl();
		    Driver driver = new Driver();
		    driver = transportImpl.GetDriver(2);
		    String output = driver.getDriverName();
		    assertEquals("harshini",output);
		    }

		 
	//id-16 
		/*  @Test
		    void testGetvehicleCapacity(){
		    
		    transportImpl = new TransportImpl();
		    Vehicle vehicle = new Vehicle();
		    vehicle = transportImpl.GetVehicle("12");
		    String output = vehicle.getCapacity();
		    assertEquals("1000cc",output);
		    
		    }
		*/

}
