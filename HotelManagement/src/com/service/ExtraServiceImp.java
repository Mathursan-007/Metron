package com.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.model.*;
import com.util.DBConnection;

public class ExtraServiceImp implements ExtraService{
	

	private static Connection connection;
	private static PreparedStatement pt;
	private static CallableStatement ct;
	private static Statement st;
	@Override
	public void addSpa(Spa spa) {
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into SPA(Package_ID,Package_Name,Amount) values(?,?,?)");
			pt.setString(1, spa.getID());
			pt.setString(2, spa.getName());
			pt.setFloat(3, spa.getPrice());
		 
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
	public ArrayList<Spa> listspa() {
ArrayList<Spa> spa=new ArrayList();
		
		try {
			
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("select * from SPA");
		ResultSet result=pt.executeQuery();
		
		while(result.next()) {
			
			Spa item=new Spa();
			
			item.setID(result.getString(1));;
			item.setName(result.getString(2));
			item.setPrice(result.getFloat(3));
			
			spa.add(item);
			
		}
		
		}catch (Exception e){
			
			e.printStackTrace();
		}
		return spa;
	}
	
	@Override
	public void generatepackageid() {
		// TODO Auto-generated method stub
		
	}
 
	@Override
	public void updatepackage(Spa spa) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update SPA set Package_Name=?,Amount=? where Package_ID=?");
			pt.setString(1,spa.getName());
			 pt.setFloat(2, spa.getPrice());
			 pt.setString(3, spa.getID());
			 
			
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
	public void deletepackage(String id) {
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from SPA where Package_ID=?");
			pt.setString(1,id);
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
	public Spa getpackage(String id) {
		
			Spa item=new Spa();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from SPA where Package_ID=?");
			pt.setString(1, id);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				item.setID(result.getString(1));
				item.setName(result.getString(2));
				item.setPrice(result.getFloat(3));
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return item;
	}
	@Override
	public void addGym(Gym gym) {
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into GYM(Package_ID,Package_Name,Amount) values(?,?,?)");
			pt.setString(1, gym.getID());
			pt.setString(2, gym.getName());
			pt.setFloat(3, gym.getPrice());
		 
			
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
	public ArrayList<Gym> listgym() {
ArrayList<Gym> gym=new ArrayList();
		
		try {
			
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("select * from GYM");
		ResultSet result=pt.executeQuery();
		
		while(result.next()) {
			
			Gym item=new Gym();
			
			item.setID(result.getString(1));;
			item.setName(result.getString(2));
			item.setPrice(result.getFloat(3));
			
			gym.add(item);
			
		}
		
		}catch (Exception e){
			
			e.printStackTrace();
		}
		return gym;
	}
	
	@Override
	public void deletegympackage(String id) {
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from GYM where Package_ID=?");
			pt.setString(1,id);
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
	public Gym getgympackage(String id) {

		Gym item=new Gym();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from GYM where Package_ID=?");
			pt.setString(1, id);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				item.setID(result.getString(1));
				item.setName(result.getString(2));
				item.setPrice(result.getFloat(3));
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return item;
	}
	@Override
	public void updatepackage(Gym gym) {
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update GYM set Package_Name=?,Amount=? where Package_ID=?");
			pt.setString(1,gym.getName());
			 pt.setFloat(2, gym.getPrice());
			 pt.setString(3, gym.getID());
			 
			
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
	public void addSpaReservation(SpaReservation sr) {
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into SPA_Reservation(Reservation_ID,Package_ID,Package_Name,RoomNo,Customer_Name,Date,Time) values(?,?,?,?,?,?,?)");
			pt.setString(1,sr.getRID());
			pt.setString(2,sr.getSpackageID());
			pt.setString(3, sr.getGpackagename());
			pt.setInt(4,sr.getRoomNo());
			pt.setString(5, sr.getCusName());
			pt.setString(6, sr.getDate());
			pt.setString(7, sr.getTime());
			 
		 
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
	public void addGymReservation(GymReservation gr) {
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into GYM_Reservation(Reservation_ID,Package_ID,Package_Name,RoomNo,Customer_Name,Date,Time) values(?,?,?,?,?,?,?)");
			pt.setString(1,gr.getRID());
			pt.setString(2,gr.getGpackageID());
			pt.setString(3, gr.getGpackagename());
			pt.setInt(4,gr.getRoomNo());
			pt.setString(5, gr.getCusName());
			pt.setString(6, gr.getDate());
			pt.setString(7, gr.getTime());
			 
		 
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
	public ArrayList<SpaReservation> listspareservation() {
		// TODO Auto-generated method stub
ArrayList<SpaReservation> spar=new ArrayList();
		
		try {
			
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("select * from SPA_Reservation");
		ResultSet result=pt.executeQuery();
		
		while(result.next()) {
			
			SpaReservation r=new SpaReservation();
		
			
			r.setRID(result.getString(1));
			r.setSpackageID(result.getString(2));
			r.setSpackagename(result.getString(3));
			r.setRoomNo(result.getInt(4));
			r.setCusName(result.getString(5));
			r.setDate(result.getString(6));
			r.setTime(result.getString(7));
			 
			
			spar.add(r);
			
		}
		
		}catch (Exception e){
			
			e.printStackTrace();
		}
		return spar;
	}
	@Override
	public SpaReservation getSID(String id) {
		
		SpaReservation sr=new SpaReservation();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from SPA_Reservation where Reservation_ID=?");
			pt.setString(1, id);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				sr.setRID(result.getString(1));
				sr.setSpackageID(result.getString(2));
				sr.setSpackagename(result.getString(3));
				sr.setRoomNo(result.getInt(4));
				sr.setCusName(result.getString(5));
				sr.setDate(result.getString(6));
				sr.setTime(result.getString(7));
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return sr;
	}
	@Override
	public void updateSpaR(SpaReservation sr) {
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update SPA_Reservation set Package_ID=?,Package_Name=?,RoomNo=?,Customer_Name=?,Date=?,Time=? where Reservation_ID=?");
			pt.setString(1,sr.getSpackageID());
			pt.setString(2, sr.getGpackagename());
			pt.setInt(3,sr.getRoomNo());
			pt.setString(4, sr.getCusName());
			pt.setString(5, sr.getDate());
			pt.setString(6, sr.getTime());
			pt.setString(7,sr.getRID());
			 
			
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
	public void deleteSpaR(String id) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from SPA_Reservation where Reservation_ID=?");
			pt.setString(1,id);
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
	public ArrayList<GymReservation> listgymreservation() {
		// TODO Auto-generated method stub
		return null;
	}
}



