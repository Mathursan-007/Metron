package com.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.model.Salary;
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
			pt=connection.prepareStatement("insert into Employee(FirstName,LastName,NIC,email,DOB,contact_no,address,dep_name,designation) values(?,?,?,?,?,?,?,?,?)");
			pt.setString(1, employee.getFirstname());
			pt.setString(2, employee.getLastname());
			pt.setString(3, employee.getNIC());
			pt.setString(4, employee.getEmail());
			pt.setString(5, employee.getDOB());
			pt.setString(6, employee.getcontact());
			pt.setString(7, employee.getAddress());
			pt.setString(8, employee.getDepartment());
			pt.setString(9, employee.getDesignation());
			
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
				employee.setDOB(result.getString(7));
				employee.setAddress(result.getString(8));
				employee.setDepartment(result.getString(9));
				employee.setDesignation(result.getString(10));
				
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
	public Employee searchEmployee(String nic) {
		// TODO Auto-generated method stub
		
		Employee employee=new Employee();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Employee where NIC=?");
			pt.setString(1, nic);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				employee.setempid(result.getInt(1));
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
			pt=connection.prepareStatement("update Employee set FirstName=?,LastName=?,NIC=?,email=?,DOB=?,address=?,designation=?,dep_name=? where emp_ID=?");
			//pt.setInt(1, employee.getempid());
			pt.setString(1, employee.getFirstname());
			pt.setString(2, employee.getLastname());
			pt.setString(3, employee.getNIC());
			pt.setString(4, employee.getEmail());
			pt.setString(5, employee.getDOB());
			//pt.setFloat(6, employee.getcontact());
			pt.setString(6, employee.getAddress());
			pt.setString(7, employee.getDesignation());
			pt.setString(8, employee.getDepartment());
			pt.setInt(9, employee.getempid());
			
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
	public boolean checkEmp(int empid) {
		// TODO Auto-generated method stub
		
		boolean find=false;
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Employee where Emp_ID=?");
			pt.setInt(1, empid);
			pt.execute();
			find=true;
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
			return find;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return find;
		}
		
		return find;
		
	}

	
	@Override
	public void enterAttendance(Salary salary) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into Attendance(emp_id,AttendMonth,tot_days_per_month) values(?,?,?)");
			pt.setInt(1, salary.getEmpid());
			pt.setString(2, salary.getMonth());
			pt.setInt(3, salary.getDays());
			
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
	public int getAttendance(int empid, String month) {
		// TODO Auto-generated method stub
		
		int attendance = 0;
		Employee employee=new Employee();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Attendance where emp_id=? AND AttendMonth=?");
			pt.setInt(1, empid);
			pt.setString(2, month);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				attendance = result.getInt(3);
			}
		}catch (Exception e) {
				
			}
		return attendance;
	}



	@Override
	public void insertSalary(Salary salary) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into Salary(emp_ID,attendMonth,BasicSalary,Overtime,Leave,NetSalary) values(?,?,?,?,?,?)");
			pt.setInt(1, salary.getEmpid());
			pt.setString(2, salary.getMonth());
			pt.setFloat(3, salary.getBasicSal());
			pt.setFloat(4, salary.getOvertime());
			pt.setFloat(5, salary.getLeave());
			pt.setFloat(6, salary.getTotSalary());
			
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
	public ArrayList<Salary> getSalary(int empid, String month, String month2) {
		// TODO Auto-generated method stub
		
		ArrayList<Salary> salary1 = new ArrayList<>();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select attendMonth,BasicSalary,Overtime,NetSalary from Salary where Emp_iD=? AND attendMonth BETWEEN ? AND ?");
			pt.setInt(1, empid);
			pt.setString(2, month);
			pt.setString(3, month2);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				Salary salary = new Salary();
				salary.setMonth(result.getString(1));
				salary.setBasicSal(result.getFloat(2));
				salary.setOvertime(result.getFloat(3));
				salary.setTotSalary(result.getFloat(4));
				
				salary1.add(salary);
			}
		}catch (Exception e) {
			// TODO Auto-generated catch block
					
						e.printStackTrace();
		}
		return salary1;
	}


	@Override
	public ArrayList<Salary> MonthlySalary(String month) {
		// TODO Auto-generated method stub

		ArrayList<Salary> salary2 = new ArrayList<>();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select Emp_iD,BasicSalary,Overtime,Leave,NetSalary from Salary where attendMonth=?");
			pt.setString(1, month);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				Salary salary = new Salary();
				
				salary.setEmpid(result.getInt(1));
				salary.setBasicSal(result.getFloat(2));
				salary.setOvertime(result.getFloat(3));
				salary.setLeave(result.getFloat(4));
				salary.setTotSalary(result.getFloat(5));
				
				salary2.add(salary);
			}
		}catch (Exception e) {
			// TODO Auto-generated catch block
					
						e.printStackTrace();
		}
		return salary2;
	}


	
	}
