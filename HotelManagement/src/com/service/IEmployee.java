package com.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.model.Employee;

import com.model.Item;


public interface IEmployee {

	public void registeremployee(Employee employee);
	
	//public ArrayList<Item> listitems();

	
	public void generateItemid();
	
	public Employee getEmployee(int empid);
	
	public void updateEmployee(Employee employee);
	
	public void DeleteEmployee(int empid);
	
}
