package com.model;

import java.util.ArrayList;

public class Order {

	private int OrderID;
	private String Type;
	private int itemno;
	private int qty;
	private float subtotatl;
	private ArrayList<Item> items;
	
	
	public ArrayList<Item> getItems() {
		return items;
	}
	public void setItems(ArrayList<Item> items) {
		this.items = items;
	}
	public int getOrderID() {
		return OrderID;
	}
	public void setOrderID(int orderID) {
		OrderID = orderID;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public int getItemno() {
		return itemno;
	}
	public void setItemno(int itemno) {
		this.itemno = itemno;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public float getSubtotatl() {
		return subtotatl;
	}
	public void setSubtotatl(float subtotatl) {
		this.subtotatl = subtotatl;
	}
	
	
	
	
}
