package com.service;

import java.util.ArrayList;

import com.model.*;
 

import java.sql.SQLException;

public interface ExtraService {

	public void addSpa(Spa spa);
	
	public ArrayList<Spa> listspa();
	
	public void generatepackageid();
	
	public void deletepackage(String id);
	
	public Spa getpackage(String id);
	
	public void updatepackage(Spa spa);
	
	public void addGym(Gym gym);
	
	public ArrayList<Gym> listgym();
	
	public void deletegympackage(String id);
	
	public Gym getgympackage(String id);
	
	public void updatepackage(Gym gym);
	
	public void addSpaReservation(SpaReservation sr);
	
	public ArrayList<SpaReservation> listspareservation();
	
	
	
	public SpaReservation getSID(String id);
	
	public void updateSpaR(SpaReservation sr);
	
	public void deleteSpaR(String id);
	
	public SpaReservation getpack(String id);
	
	public void addSpaPayment(SpaReservation sp);
	
	public void addStotal(SpaReservation sp);
	
	public ArrayList<SpaReservation> listspapayemt();
	
	public SpaReservation getRID();
	
	
	public void addGymReservation(GymReservation gr);
	
	public ArrayList<GymReservation> listgymreservation();
 
	public GymReservation getGID(String id);
	
	public void updateGymR(GymReservation sr);
	
	public void deleteGymR(String id);
	
	public GymReservation getGymR(String id);
	
	public void addGtotal(GymReservation sp);
	
	public void addGymPayment(GymReservation sp);
	
	public ArrayList<GymReservation> listgympayemt();
	
	 
	
	

}
