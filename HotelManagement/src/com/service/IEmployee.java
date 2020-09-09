package com.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.model.Employee;
<<<<<<< Upstream, based on branch 'master' of https://github.com/Mathursan-007/Metron.git
import com.model.Item;

public interface IEmployee {

	public void registeremploee(Employee employee);
	
	public ArrayList<Item> listitems();
=======


public interface IEmployee {

	public void registeremploee(Employee employee);
	
	//public ArrayList<Item> listitems();
>>>>>>> f270cfb Employee Management
	
	public void generateItemid();
	
	public Employee getEmployee(int empid);
	
	public void updateEmployee(Employee employee);
	
	public void DeleteEmployee(int empid);
	
}
