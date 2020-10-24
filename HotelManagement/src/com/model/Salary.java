package com.model;

import java.util.ArrayList;

public class Salary {

	private int empid;
	private String month;
	private int days;
	private float basicSal;
	private float overtime;
	private float leave;
	private float netSal;
	private float totSalary;
	private ArrayList<Salary> summary;
	private String fname;
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public ArrayList<Salary> getSummary() {
		return summary;
	}
	public void setSummary(ArrayList<Salary> summary) {
		this.summary = summary;
	}
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	public float calcBasicSal(String designation) {
		if(designation.equals("Manager")) {
			return 70000;
		}
		else if(designation.equals("Clerk")) {
			return 40000;
		}
		else if(designation.equals("Chef")) {
			return 90000;
		}
		else if(designation.equals("Event Planer")) {
			return 47000;
		}
		else if(designation.equals("Supervisor")) {
			return 30000;
		}
		else if(designation.equals("Driver")) {
			return 35000;
		}
		else if(designation.equals("Trainer")) {
			return 45000;
		}
		else if(designation.equals("Server")) {
			return 25000;
		}
		else {
			return 20000;
		}
	}
	public float getBasicSal() {
		return basicSal;
	}
	public void setBasicSal(float basicSal) {
		this.basicSal = basicSal;
	}
	public float calcOvertime(String designation, int days) {
		if(designation.equals("Manager")) {
			return 1000*(days-20);
		}
		else if(designation.equals("Clerk")) {
			return 800*(days-20);
		}
		else if(designation.equals("Chef")) {
			return 1200*(days-20);
		}
		else if(designation.equals("Event Planer")) {
			return 800*(days-20);
		}
		else if(designation.equals("Supervisor")) {
			return 500*(days-20);
		}
		else if(designation.equals("Driver")) {
			return 550*(days-20);
		}
		else if(designation.equals("Trainer")) {
			return 820*(days-20);
		}
		else if(designation.equals("Server")) {
			return 400*(days-20);
		}
		else {
			return 200*(days-20);
		}
	}
	public float getOvertime() {
		return overtime;
	}
	public void setOvertime(float overtime) {
		this.overtime = overtime;
	}
	public float calcLeave(String designation, int days) {
		if(designation.equals("Manager")) {
			return 1000*(14-days);
		}
		else if(designation.equals("Clerk")) {
			return 800*(14-days);
		}
		else if(designation.equals("Chef")) {
			return 1200*(14-days);
		}
		else if(designation.equals("Event Planer")) {
			return 800*(14-days);
		}
		else if(designation.equals("Supervisor")) {
			return 500*(14-days);
		}
		else if(designation.equals("Driver")) {
			return 550*(14-days);
		}
		else if(designation.equals("Trainer")) {
			return 820*(14-days);
		}
		else if(designation.equals("Server")) {
			return 400*(14-days);
		}
		else {
			return 200*(14-days);
		}
	}
	public float getLeave() {
		return leave;
	}
	public void setLeave(float leave) {
		this.leave = leave;
	}
	public float getNetSal() {
		if(days > 20) {
			return netSal = (basicSal + overtime) ;
		}
		else if (days <= 13) {
			return netSal = (basicSal - leave) ;
		}
		else {
			return netSal = basicSal ;
		}
	}
	public void setNetSal(float netSal) {
		this.netSal = netSal;
	}
	public float getTotSalary() {
		return totSalary;
	}
	public void setTotSalary(float totSalary) {
		this.totSalary = totSalary;
	}
	
}
