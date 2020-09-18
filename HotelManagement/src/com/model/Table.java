package com.model;

public class Table {

	private int Tableno;
	private int capacity;
	private String type;
	private float price;
	private String status;
	
	public int getTableno() {
		return Tableno;
	}
	public void setTableno(int tableno) {
		Tableno = tableno;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
}
