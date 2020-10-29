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
			pt=connection.prepareStatement("insert into SPA(Package_ID,Package_Name,Details,Amount) values(?,?,?,?)");
			pt.setString(1, spa.getID());
			pt.setString(2, spa.getName());
			pt.setString(3, spa.getDescription());
			pt.setFloat(4, spa.getPrice());
		 
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
			item.setDescription(result.getString(3));
			item.setPrice(result.getFloat(4));
			
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
			pt=connection.prepareStatement("update SPA set Package_Name=?,Details=?,Amount=? where Package_ID=?");
			pt.setString(1,spa.getName());
			pt.setString(2, spa.getDescription());
			 pt.setFloat(3, spa.getPrice());
			 pt.setString(4, spa.getID());
			 
			
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
				item.setDescription(result.getString(3));
				item.setPrice(result.getFloat(4));
				
				
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
			pt=connection.prepareStatement("insert into GYM(Package_ID,Package_Name,Details,Amount) values(?,?,?,?)");
			pt.setString(1, gym.getID());
			pt.setString(2, gym.getName());
			pt.setString(3,gym.getDescription());			
			pt.setFloat(4, gym.getPrice());
		 
			
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
			item.setDescription(result.getString(3));
			item.setPrice(result.getFloat(4));
			
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
				item.setDescription(result.getString(3));
				item.setPrice(result.getFloat(4));
				
				
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
			pt=connection.prepareStatement("update GYM set Package_Name=?,Details=?,Amount=? where Package_ID=?");
			pt.setString(1,gym.getName());
			 pt.setString(2,gym.getDescription());
			 pt.setFloat(3, gym.getPrice());
			
			 pt.setString(4, gym.getID());
			 
			
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
			pt=connection.prepareStatement("insert into SPA_Reservation(Package_ID,Package_Name,RoomNo,Customer_Name,Date,STime,ETime) values(?,?,?,?,?,?,?)");
			
			pt.setString(1,sr.getSpackageID());
			pt.setString(2, sr.getGpackagename());
			pt.setString(3,sr.getRoomNo());
			pt.setString(4, sr.getCusName());
			pt.setString(5, sr.getDate());
			pt.setString(6, sr.getStime());
			pt.setString(7, sr.getEtime());
			 
			
		 
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
			pt=connection.prepareStatement("insert into GYM_Reservation(Package_ID,Package_Name,RoomNo,Customer_Name,Date) values(?,?,?,?,?)");
		
			pt.setString(1,gr.getGpackageID());
			pt.setString(2, gr.getGpackagename());
			pt.setString(3,gr.getRoomNo());
			pt.setString(4, gr.getCusName());
			pt.setString(5, gr.getDate());
		
			 
		 
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
			r.setRoomNo(result.getString(4));
			r.setCusName(result.getString(5));
			r.setDate(result.getString(6));
			r.setStime(result.getString(7));
			r.setEtime(result.getString(8));
			
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
				sr.setRoomNo(result.getString(4));
				sr.setCusName(result.getString(5));
				sr.setDate(result.getString(6));
				sr.setStime(result.getString(7));
				sr.setEtime(result.getString(8));
				
				
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
			pt=connection.prepareStatement("update SPA_Reservation set Package_ID=?,Package_Name=?,RoomNo=?,Customer_Name=?,Date=?,STime=?,Etime=? where Reservation_ID=?");
			pt.setString(1,sr.getSpackageID());
			pt.setString(2, sr.getGpackagename());
			pt.setString(3,sr.getRoomNo());
			pt.setString(4, sr.getCusName());
			pt.setString(5, sr.getDate());
			pt.setString(6, sr.getStime());
			pt.setString(7, sr.getEtime());
			pt.setString(8,sr.getRID());
			 
			
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
 
	public ArrayList<GymReservation> listgymreservation() {
		// TODO Auto-generated method stub
ArrayList<GymReservation> gymr=new ArrayList();
		
		try {
			
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("select * from GYM_Reservation");
		ResultSet result=pt.executeQuery();
		
		while(result.next()) {
			
			GymReservation r=new GymReservation();
		
			
			r.setRID(result.getString(1));
			r.setGpackageID(result.getString(2));
			r.setGpackagename(result.getString(3));
			r.setRoomNo(result.getString(4));
			r.setCusName(result.getString(5));
			r.setDate(result.getString(6));
			 
			
			gymr.add(r);
			
		}
		
		}catch (Exception e){
			
			e.printStackTrace();
		}
		return gymr;
	}
 
	
	@Override
	public SpaReservation getpack(String id) {
		// TODO Auto-generated method stub
	SpaReservation ss=new SpaReservation();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select  r.Reservation_ID,r.Package_Name,r.Customer_Name, s.Amount from SPA_Reservation r,SPA s where Reservation_ID=? and r.Package_ID=s.Package_ID");
			pt.setString(1, id);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				ss.setRID(result.getString(1));
				ss.setSpackagename(result.getString(2));
				ss.setCusName(result.getString(3));
				ss.setAmount(result.getFloat(4));
				 
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return ss;
	}
	
	public SpaReservation getRID() {
SpaReservation ss=new SpaReservation();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select p.Reservation_ID from SPA_Reservation s,SPAPAYMENT p where p.Reservation_ID=s.Reservation_ID" );
		 
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				ss.setRID(result.getString(1));
				 
				 
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return ss;
		
		
		
		
	}
	@Override
	public void addSpaPayment(SpaReservation sp) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into SPAPAYMENT(Reservation_ID,Package_Name,Customer_Name,Amount) values(?,?,?,?)");
		
			 pt.setString(1,sp.getRID());
			 pt.setString(2,sp.getGpackagename());
			 pt.setString(3,sp.getCusName());
			 pt.setFloat(4,sp.getAmount());
		
		
			 
		 
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
	public ArrayList<SpaReservation> listspapayemt() {
ArrayList<SpaReservation> spp=new ArrayList();
		
		try {
			
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("select * from SPAPAYMENT");
		ResultSet result=pt.executeQuery();
		
		while(result.next()) {
			
			SpaReservation p=new SpaReservation();
		
			p.setPID(result.getInt(1));
			p.setRID(result.getString(2));
			 
			p.setSpackagename(result.getString(3));
			p.setCusName(result.getString(4));
			p.setAmount(result.getFloat(5));
			 
			
			spp.add(p);
			
		}
		
		}catch (Exception e){
			
			e.printStackTrace();
		}
		return spp;
	}
	@Override
	public void addStotal(SpaReservation sp) {
		// TODO Auto-generated method stub
		try {
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("insert into SPA_Total(Reservation_ID,Package_ID,Package_Name,RoomNo,Customer_Name,Date,STime,ETime) values(?,?,?,?,?,?,?,?)");
		 
		 pt.setString(1,sp.getRID());
		pt.setString(2,sp.getSpackageID());
		pt.setString(3, sp.getGpackagename());
		pt.setString(4,sp.getRoomNo());
		pt.setString(5, sp.getCusName());
		pt.setString(6, sp.getDate());
		pt.setString(7, sp.getStime());
		pt.setString(8, sp.getEtime());
		 
	 
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
	public GymReservation getGID(String id) {
		// TODO Auto-generated method stub
		GymReservation gr=new GymReservation();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from GYM_Reservation where Reservation_ID=?");
			pt.setString(1, id);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				gr.setRID(result.getString(1));
				gr.setGpackageID(result.getString(2));
				gr.setGpackagename(result.getString(3));
				gr.setRoomNo(result.getString(4));
				gr.setCusName(result.getString(5));
				gr.setDate(result.getString(6));
				 
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return gr;
	}
	@Override
	public void updateGymR(GymReservation sr) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update GYM_Reservation set Package_ID=?,Package_Name=?,RoomNo=?,Customer_Name=?,Date=?  where Reservation_ID=?");
			pt.setString(1,sr.getGpackageID());
			pt.setString(2, sr.getGpackagename());
			pt.setString(3,sr.getRoomNo());
			pt.setString(4, sr.getCusName());
			pt.setString(5, sr.getDate());
		
			pt.setString(6,sr.getRID());
			 
			
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
	public void deleteGymR(String id) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from GYM_Reservation where Reservation_ID=?");
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
	public GymReservation getGymR(String id) {
		// TODO Auto-generated method stub
     GymReservation gs=new GymReservation();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select  r.Reservation_ID,r.Package_Name,r.Customer_Name, g.Amount from GYM_Reservation r,GYM g where Reservation_ID=? and r.Package_ID=g.Package_ID");
			pt.setString(1, id);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				gs.setRID(result.getString(1));
				gs.setGpackagename(result.getString(2));
				gs.setCusName(result.getString(3));
				gs.setAmount(result.getFloat(4));
				 
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return gs;
	}
	@Override
	public void addGtotal(GymReservation sp) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into GYM_Total(Reservation_ID,Package_ID,Package_Name,RoomNo,Customer_Name,Date) values(?,?,?,?,?,?)");
			 
			 pt.setString(1,sp.getRID());
			pt.setString(2,sp.getGpackageID());
			pt.setString(3, sp.getGpackagename());
			pt.setString(4,sp.getRoomNo());
			pt.setString(5, sp.getCusName());
			pt.setString(6, sp.getDate());
			 
			 
		 
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
	public void addGymPayment(GymReservation sp) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into GYMPAYMENT(Reservation_ID,Package_Name,Customer_Name,Amount) values(?,?,?,?)");
		
			 pt.setString(1,sp.getRID());
			 pt.setString(2,sp.getGpackagename());
			 pt.setString(3,sp.getCusName());
			 pt.setFloat(4,sp.getAmount());
		
		
			 
		 
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
	public ArrayList<GymReservation> listgympayemt() {
		// TODO Auto-generated method stub
ArrayList<GymReservation> gpp=new ArrayList();
		
		try {
			
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("select * from GYMPAYMENT");
		ResultSet result=pt.executeQuery();
		
		while(result.next()) {
			
			GymReservation g=new GymReservation();
		
			g.setPID(result.getInt(1));
			g.setRID(result.getString(2));
			 
			g.setGpackagename(result.getString(3));
			g.setCusName(result.getString(4));
			g.setAmount(result.getFloat(5));
			 
			
			gpp.add(g);
			
		}
		
		}catch (Exception e){
			
			e.printStackTrace();
		}
		return gpp;
	}
	 
	
	 
	}

 



