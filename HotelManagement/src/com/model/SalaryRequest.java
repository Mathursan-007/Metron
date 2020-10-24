package com.model;

public class SalaryRequest {
	
	private int Request_ID;

	private int Employee_ID;

	private float Total_Salary;
	
	private String Date;

	public int getRequest_ID() {
		return Request_ID;
	}

	public void setRequest_ID(int request_ID) {
		Request_ID = request_ID;
	}

	public int getEmployee_ID() {
		return Employee_ID;
	}

	public void setEmployee_ID(int employee_ID) {
		Employee_ID = employee_ID;
	}

	public float getTotal_Salary() {
		return Total_Salary;
	}

	public void setTotal_Salary(float total_Salary) {
		Total_Salary = total_Salary;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}
	
	

	
	
}
