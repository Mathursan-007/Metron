package com.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.model.Employee;
import com.model.Salary;


public interface IEmployee {

	public void registeremployee(Employee employee);
	
	public Employee getEmployee(int empid);
	
	public void updateEmployee(Employee employee);
	
	public void DeleteEmployee(int empid);
	
	public Employee searchEmployee(String nic);
	
	public boolean checkEmp(int empid);
	
	//Salary
	
	public void enterAttendance(Salary salary);
	
	public int getAttendance(int empid, String month);
	
	public void insertSalary(Salary salary);
	
	public ArrayList<Salary> getSalary(int empid, String month, String month2);
	
	public ArrayList<Salary> MonthlySalary(String month);
	
}
