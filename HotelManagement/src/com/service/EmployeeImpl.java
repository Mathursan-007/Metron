package com.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.model.Employee;
import com.model.Item;
import com.util.DBConnection;

public class EmployeeImpl implements IEmployee{

	private static Connection connection;
	private static PreparedStatement pt;
	private static CallableStatement ct;
	private static Statement st; 
	
	@Override
	public void registeremployee(Employee employee) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into Employee(FirstName,LastName,NIC,email,address,dep_name,designation) values(?,?,?,?,?,?,?)");
			//pt.setInt(1, employee.getempid());
			pt.setString(1, employee.getFirstname());
			pt.setString(2, employee.getLastname());
			pt.setString(3, employee.getNIC());
			pt.setString(4, employee.getEmail());
			//pt.setInt(6, employee.getAge());
			pt.setString(5, employee.getAddress());
			pt.setString(6, employee.getDepartment());
			pt.setString(7, employee.getDesignation());
			
			pt.execute();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/*@Override
	 public ArrayList<Employee> listemployee() {
		// TODO Auto-generated method stub
		return null;
	}*/

	@Override
	public void generateItemid() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void DeleteEmployee(int empid) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from Employee where emp_ID=?");
			pt.setInt(1,empid);
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
	public Employee getEmployee(int empid) {
		// TODO Auto-generated method stub
		
		Employee employee=new Employee();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Employee where emp_ID=?");
			pt.setInt(1, empid);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				employee.setempid(result.getInt(1));
				employee.setFirstname(result.getString(3));
				employee.setLastname(result.getString(4));
				employee.setNIC(result.getString(5));
				employee.setEmail(result.getString(6));
				//employee.setAge(result.getInt(7));
				employee.setAddress(result.getString(8));
				employee.setDesignation(result.getString(9));
				employee.setDepartment(result.getString(10));
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return employee;
	}

	@Override
	public void updateEmployee(Employee employee) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update Employee set FirstName=?,LastName=?,NIC=?,email=?,address=?,designation=?,dep_name=? where emp_ID=?");
			//pt.setInt(1, employee.getempid());
			pt.setString(1, employee.getFirstname());
			pt.setString(2, employee.getLastname());
			pt.setString(3, employee.getNIC());
			pt.setString(4, employee.getEmail());
			//pt.setFloat(6, employee.getcontact());
			//pt.setInt(7, employee.getAge());
			pt.setString(5, employee.getAddress());
			pt.setString(6, employee.getDesignation());
			pt.setString(7, employee.getDepartment());
			pt.setInt(8, employee.getempid());
			
			pt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}
