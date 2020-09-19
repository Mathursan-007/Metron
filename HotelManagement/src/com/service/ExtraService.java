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
	
	public void addGymReservation(GymReservation gr);
	
	public ArrayList<GymReservation> listgymreservation();
	
	
	
	

}
