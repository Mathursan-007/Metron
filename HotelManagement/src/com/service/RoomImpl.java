package com.service;

import java.util.ArrayList;
import java.util.Date;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.microsoft.sqlserver.jdbc.SQLServerException;
import com.model.GuestReservation;
import com.model.Room;
import com.model.RoomBill;
import com.model.RoomGuest;
import com.util.DBConnection;


public class RoomImpl implements IRoom {
		
	private static Connection connection;
	private static PreparedStatement pt;
	private static Statement st;
	private static CallableStatement ct;
	private static SimpleDateFormat inSDF = new SimpleDateFormat("mm/dd/yyyy");
	private static SimpleDateFormat outSDF = new SimpleDateFormat("yyyy-mm-dd");
	
	@Override
	public void addRoom(Room room) {
		// TODO Auto-generated method stub
		
		try {
			
			 connection=DBConnection.initializedb();
				pt=connection.prepareStatement("insert into Room (Room_no,Availability_Status,Room_size,Max_guests,Room_type_no) values(?,?,?,?,?)");
				pt.setString(1, room.getRoomNo());
				pt.setString(2, room.getAvailability());
				pt.setString(3, room.getRoomSize());
				pt.setInt(4, room.getMaxGuests());
				pt.setInt(5, room.getRoomTypeNo());
				
				
				pt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
	
	@Override
	public ArrayList<Room> listRooms() {
		// TODO Auto-generated method stub
		ArrayList<Room> rooms=new ArrayList<>();
		try {
			connection=DBConnection.initializedb();
			ct=connection.prepareCall("Select * from Room_Details");
			ResultSet result=ct.executeQuery();
			
			while(result.next()) {
				Room room = new Room();
				
				room.setRoomNo(result.getString(1));
				room.setRoomTypeName(result.getString(2));
				room.setRoomSize(result.getString(3));
				room.setMaxGuests(result.getInt(4));
				room.setCostPerDay(result.getDouble(5));
				
				rooms.add(room);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rooms;
	}

	@Override
	public void updateRoom(Room room) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("UPDATE Room SET Room_size=?, Room_type_no=?, Max_guests=? WHERE Room_no=?");
			pt.setString(1, room.getRoomSize());
			pt.setInt(2, room.getRoomTypeNo());
			pt.setInt(3, room.getMaxGuests());
			pt.setString(4, room.getRoomNo());
			pt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public int deleteRoom(String roomNo) {
		// TODO Auto-generated method stub
		int i=0;
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from Room where Room_no=?"); 
			pt.setString(1,roomNo);
			pt.execute();
			i=1;
		} catch (SQLServerException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return i;
	}

	@Override
	public Room getRoom(String roomNo) {
		// TODO Auto-generated method stub
		Room room=new Room();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select Room_no,Room_type_no,Room_size,Max_guests from Room where Room_no=?");
			pt.setString(1, roomNo);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				room.setRoomNo(result.getString(1));
				room.setRoomTypeNo(result.getInt(2));
				room.setRoomSize(result.getString(3));
				room.setMaxGuests(result.getInt(4));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return room;
	}

	@Override
	public ArrayList<Room> getAvailableRooms(String checkIn, String checkOut,int roomType) {
		// TODO Auto-generated method stub
		ArrayList<Room> rooms=new ArrayList<>();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareCall("SELECT Room_no From Room where Room_type_no=? AND Room_no NOT IN (SELECT b.Room_no FROM Room_Reservation_View b where (CheckIn_Date BETWEEN ? AND ?) OR (CheckOut_Date BETWEEN ? AND ?))");
			pt.setInt(1, roomType);
			pt.setString(2, checkIn);
			pt.setString(3, checkOut);
			pt.setString(4, checkIn);
			pt.setString(5, checkOut);
			ResultSet result=pt.executeQuery();
			
			while(result.next()) {
				Room room = new Room();
				
				room.setRoomNo(result.getString(1));
				rooms.add(room);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return rooms;
	}

	@Override
	public int setRoomAvailabilityCount(String checkIn, String checkOut,int typeNo) {
		// TODO Auto-generated method stub
		int count=0;
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareCall("SELECT COUNT(*) From Room where Room_type_no=? AND Room_no NOT IN (SELECT b.Room_no FROM Room_Reservation_View b where (CheckIn_Date BETWEEN ? AND ?) OR (CheckOut_Date BETWEEN ? AND ?))");
			pt.setInt(1, typeNo);
			pt.setString(2, checkIn);
			pt.setString(3, checkOut);
			pt.setString(4, checkIn);
			pt.setString(5, checkOut);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				count=result.getInt(1);
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}



	@Override
	public int generateGuestID() {
		// TODO Auto-generated method stub
		int count=0;
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareCall("SELECT COUNT(*) From Hotel_Guest");
			
			
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				count=result.getInt(1)+1;
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}



	@Override
	public int generateReservationID() {
		// TODO Auto-generated method stub
		
		int value=0;
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareCall("SELECT Room_RID From Room_Reservation");
			
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				value=result.getInt(1)+1;
				
			}
			
			if(value==0) {
				value=1;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return value;
	}



	@Override
	public void addGuest(RoomGuest roomGuest) {
		// TODO Auto-generated method stub
		try {
			
			 connection=DBConnection.initializedb();
				pt=connection.prepareStatement("INSERT INTO Hotel_Guest(HGuest_ID,NIC,Full_Name,Email,Contact_no) VALUES(?,?,?,?,?)");
				
				pt.setInt(1, roomGuest.getHGuest_ID());
				pt.setString(2, roomGuest.getNIC());
				pt.setString(3, roomGuest.getFull_Name());
				pt.setString(4, roomGuest.getEmail());
				pt.setString(5, roomGuest.getContact());
				
				
				pt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}



	@Override
	public void addReservation(GuestReservation guestReservation) {
		// TODO Auto-generated method stub
		try {
			
			 connection=DBConnection.initializedb();
				pt=connection.prepareStatement("INSERT INTO Room_Reservation(Room_RID,No_Of_Rooms,No_Of_Guests,CheckIn_Date,CheckOut_Date,HGuest_ID) VALUES (?,?,?,?,?,?)");
				pt.setInt(1, guestReservation.getRoom_RID());
				pt.setInt(2, guestReservation.getNo_Of_Rooms());
				pt.setInt(3, guestReservation.getNo_Of_Guests());
				pt.setString(4, guestReservation.getCheckIn());
				pt.setString(5, guestReservation.getCheckOut_Date());
				pt.setInt(6, guestReservation.getHGuest_ID());
				
				
				pt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}



	@Override
	public void addReservedRooms(int Room_RID, String Room_no) {
		// TODO Auto-generated method stub
		
		//Availability status insertion
		try {
			
			 connection=DBConnection.initializedb();
				pt=connection.prepareStatement("INSERT INTO Reserved_Rooms (Room_RID,Room_no,Availability_Status) VALUES (?,?,?)");
				
				String availability="Unavailable";
				
				pt.setInt(1, Room_RID);
				pt.setString(2, Room_no);
				pt.setString(3, availability);
				
				
				
				pt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}



	@Override
	public void addResrvationInfo(GuestReservation guestReservation, RoomGuest roomGuest) {
		// TODO Auto-generated method stub
		try {
			
			 connection=DBConnection.initializedb();
				pt=connection.prepareStatement("insert into Reservation_Info(Room_RID,Full_Name,No_Of_Rooms,No_Of_Guests,CheckIn_Date) VALUES (?,?,?,?,?)");
				pt.setInt(1, guestReservation.getRoom_RID());
				pt.setString(2, roomGuest.getFull_Name());
				pt.setInt(3, guestReservation.getNo_Of_Rooms());
				pt.setInt(4, guestReservation.getNo_Of_Guests());
				pt.setString(5, guestReservation.getCheckIn());
				
				
				pt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}



	@Override
	public ArrayList<GuestReservation> listGuestReservationInfo() {
		// TODO Auto-generated method stub
		ArrayList<GuestReservation> guestReservations=new ArrayList<>();
		
		try {
			connection=DBConnection.initializedb();
			ct=connection.prepareCall("select * from Reservation_Info");
			ResultSet result=ct.executeQuery();
			
			while(result.next()) {
				GuestReservation guestReservation = new GuestReservation();
				
				guestReservation.setRoom_RID(result.getInt(1));
				guestReservation.setFullName(result.getString(2));
				guestReservation.setNo_Of_Rooms(result.getInt(3));
				guestReservation.setNo_Of_Guests(result.getInt(4));
				guestReservation.setCheckIn(result.getString(5));
				
				guestReservations.add(guestReservation);
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return guestReservations;
	}



	@Override
	public void addBill(RoomBill roomBill) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("INSERT INTO Room_Bill(Bill_ID,Bill_Type,Amount,Room_RID) VALUES(?,?,?,?)");
			

			pt.setInt(1, roomBill.getBill_ID());
			pt.setString(2, roomBill.getBill_Type());
			pt.setFloat(3, roomBill.getAmount());
			pt.setInt(4, roomBill.getRoom_RID());
			
			pt.execute();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}



	@Override
	public int generateBillId() {
		// TODO Auto-generated method stub
		int value=0;
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareCall("select Bill_ID from Room_Bill");
			
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				value=result.getInt(1)+1;
				
			}
			
			if(value==0) {
				value=1;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return value;
	}



	@Override
	public void cancelReservation(int RRID) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			ct=connection.prepareCall("EXEC cancelReservation ?");
			
			ct.setInt(1, RRID);
			
			ct.execute();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}



	@Override
	public void addCheckedInDetails(GuestReservation guestReservation) {
		// TODO Auto-generated method stub
		//insert into Checked_in_guests(CID,Full_Name,No_Of_Rooms,No_Of_Guests,CheckOut_Date,Room_RID) VALUES (?,?,?,?,?,?)
		try {
			
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("delete from Reservation_Info where Room_RID=?");
				pt.setInt(1, guestReservation.getRoom_RID());
			
				pt.execute();
				
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("insert into Checked_in_guests(CID,Full_Name,No_Of_Rooms,No_Of_Guests,CheckOut_Date,Room_RID) VALUES (?,?,?,?,?,?)");
				pt.setInt(1, guestReservation.getCID());
				pt.setString(2, guestReservation.getFullName());
				pt.setInt(3, guestReservation.getNo_Of_Rooms());
				pt.setInt(4, guestReservation.getNo_Of_Guests());
				pt.setString(5, guestReservation.getCheckOut_Date());
				pt.setInt(6, guestReservation.getRoom_RID());
				
				pt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}



	@Override
	public int generateCID() {
		// TODO Auto-generated method stub
		int value=0;
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareCall("select CID from Checked_in_guests");
			
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				value=result.getInt(1)+1;
				
			}
			
			if(value==0) {
				value=1;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return value;
	}



	@Override
	public GuestReservation getReservation(int RRID) {
		GuestReservation guestReservation = new GuestReservation();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Room_Reservation where Room_RID=?");
			pt.setInt(1, RRID);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				guestReservation.setRoom_RID(result.getInt(1));
				guestReservation.setNo_Of_Rooms(result.getInt(2));
				guestReservation.setNo_Of_Guests(result.getInt(3));
				guestReservation.setCheckIn(result.getString(4));
				guestReservation.setCheckOut_Date(result.getString(5));
				guestReservation.setHGuest_ID(result.getInt(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return guestReservation;
	}



	@Override
	public float getCustomerBill(int RRID) {
		// TODO Auto-generated method stub
		float count=0;
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareCall("select SUM(Amount) from Room_Bill where Room_RID=? group by Room_RID");
			pt.setInt(1, RRID);
			
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				count=result.getFloat(1);
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}



	@Override
	public ArrayList<GuestReservation> listCheckInDetails() {
		
		ArrayList<GuestReservation> guestReservations=new ArrayList<>();
		RoomImpl roomImpl = new RoomImpl();
		float bill=0;
		try {
			connection=DBConnection.initializedb();
			ct=connection.prepareCall("select Room_RID,Full_Name from Checked_in_guests");
			ResultSet result=ct.executeQuery();
			
			while(result.next()) {
				GuestReservation guestReservation = new GuestReservation();
				bill=roomImpl.getCustomerBill(result.getInt(1));
				
				guestReservation.setRoom_RID(result.getInt(1));
				guestReservation.setFullName(result.getString(2));
				guestReservation.setBill(bill);
				
				guestReservations.add(guestReservation);
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return guestReservations;
	}



	@Override
	public void setReportDetails(Room room, GuestReservation guestReservation,int RRID) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareCall("select h.Full_Name,rr.Room_RID,rr.No_Of_Rooms,r.Room_type_no from Room_Reservation rr,Room r,Reserved_Rooms rrr,Hotel_Guest h where rr.Room_RID=? and r.Room_no=rrr.Room_no and rrr.Room_RID=rr.Room_RID and rr.HGuest_ID=h.HGuest_ID group by h.Full_Name,rr.Room_RID,r.Room_type_no,rr.No_Of_Rooms");
			pt.setInt(1, RRID);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				guestReservation.setFullName(result.getString(1));
				guestReservation.setRoom_RID(result.getInt(2));
				guestReservation.setNo_Of_Rooms(result.getInt(3));
				room.setRoomTypeNo(result.getInt(4));
				
					switch(room.getRoomTypeNo()) 
						{
						
							case 1: room.setRoomTypeName("Standard");
									break;
							case 2: room.setRoomTypeName("Premium");
									break;
							case 3: room.setRoomTypeName("Elite");
									break;
						
						}
				
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}



	@Override
	public ArrayList<RoomBill> getBillDetails(int RRID) {
		ArrayList<RoomBill> BillDetails=new ArrayList<>();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareCall("select Bill_Type,Amount from Room_Bill where Room_RID =?");
			pt.setInt(1, RRID);
			ResultSet result=pt.executeQuery();
			
			while(result.next()) {
				RoomBill roomBill = new RoomBill();
				
				roomBill.setBill_Type(result.getString(1));
				roomBill.setAmount(result.getFloat(2));
				
				BillDetails.add(roomBill);
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return BillDetails;
	}



	@Override
	public void deleteCheckIn(int RRID) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from Checked_in_guests where Room_RID=?"); 
			pt.setInt(1,RRID);
			pt.execute();
		} catch (SQLServerException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



	@Override
	public float getRoomCost(String checkIn, String checkOut, int type,int noOfRooms) {
		// TODO Auto-generated method stub
		float s;
		SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd");
		 float daysBetween=0;

		 try {
		       java.util.Date dateBefore = myFormat.parse(checkIn);
		       java.util.Date dateAfter = myFormat.parse(checkOut);
		       long difference = dateAfter.getTime() - dateBefore.getTime();
		       daysBetween = (difference / (1000*60*60*24));
	               /* You can also convert the milliseconds to days using this method
	                * float daysBetween = 
	                *         TimeUnit.DAYS.convert(difference, TimeUnit.MILLISECONDS)
	                */
		       
		 } catch (Exception e) {
		       e.printStackTrace();
		 }
		 
		 if(type==1) {
			 s=7500*daysBetween*noOfRooms;
		 } else if(type==2) {
			 s=15000*daysBetween*noOfRooms;
		 } else {
			 s=25000*daysBetween*noOfRooms;
		 }
		return s;
	}



	@Override
	public String convertDate(String inDate) {
		// TODO Auto-generated method stub
		
		String outDate = "";
	    if (inDate != null) {
	        try {
	            Date date = inSDF.parse(inDate);
	            outDate = outSDF.format(date);
	        } catch (ParseException ex) {
	            System.out.println("Unable to format date: " + inDate + ex.getMessage());
	            ex.printStackTrace();
	        }
	    }
	    return outDate;

	}
	
	
	
	
	
}
