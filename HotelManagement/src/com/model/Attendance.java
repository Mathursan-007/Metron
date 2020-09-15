package com.model;

public class Attendance {

	private String attend_date;
	private int emp_id;
	private String arrivaltime;
	private String lefttime;
	private String total_no_hrs;
	
	
	public String getAttend_date() {
		return attend_date;
	}
	public void setAttend_date(String attend_date) {
		this.attend_date = attend_date;
	}
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getArrivaltime() {
		return arrivaltime;
	}
	public void setArrivaltime(String arrivaltime) {
		this.arrivaltime = arrivaltime;
	}
	public String getLefttime() {
		return lefttime;
	}
	public void setLefttime(String lefttime) {
		this.lefttime = lefttime;
	}
	public String getTotal_no_hrs() {
		return total_no_hrs;
	}
	public void setTotal_no_hrs(String total_no_hrs) {
		this.total_no_hrs = total_no_hrs;
	}
}
