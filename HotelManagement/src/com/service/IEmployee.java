package com.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.model.Employee;
import com.model.Attendance;


public interface IEmployee {

	public void registeremployee(Employee employee);
	
	public Employee getEmployee(int empid);
	
	public void updateEmployee(Employee employee);
	
	public void DeleteEmployee(int empid);
	
	public Employee searchEmployee(String nic);
	
	public void retrieveempid(Employee employee);
	
	
	//Attendance
	
	public void insertAttendance(Attendance attendance);
	
	public Attendance getAttendance(String attend_date, int empid);
	
	public void updateAttendance(Attendance attendance);
	
	public void DeleteAttendance(String attend_date, int empid);
	
	public boolean checkEmp(int empid);
	
}
