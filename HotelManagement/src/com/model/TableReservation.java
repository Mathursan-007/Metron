package com.model;

public class TableReservation {

	
	private int TableRID;
	private String  DateTime;
	private int CustID;
	private String CName;
	private String  OrderStatus;
	
	public int getTableRID() {
		return TableRID;
	}
	public void setTableRID(int tableRID) {
		TableRID = tableRID;
	}
	public String getDateTime() {
		return DateTime;
	}
	public void setDateTime(String dateTime) {
		DateTime = dateTime;
	}
	public int getCustID() {
		return CustID;
	}
	public void setCustID(int custID) {
		CustID = custID;
	}
	public String getCName() {
		return CName;
	}
	public void setCName(String cName) {
		CName = cName;
	}
	public String getOrderStatus() {
		return OrderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		OrderStatus = orderStatus;
	}
	
}
