package com.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.model.Item;
import com.model.Order;
import com.model.RestaurantCustomer;
import com.model.Table;
import com.model.TableReservation;

public interface IRestaurant {
	
	public void addItem(Item item);
	
	public ArrayList<Item> listitems();
	
	public void deleteItem(int itemno);
	
	public Item getItem(int itemno);
	
	public void updateItem(Item item);
	
    public void addTable(Table table);
	
	public ArrayList<Table> listtables();
	
	public void deleteTable(int tableno);
	
	public Table getTable(int tableno);
	
	public void updateTable(Table table);
	
	public int generateRcustid();
	
	public int getTableRid(int custid);
	
	public void addRcustomer(RestaurantCustomer rcustomer);
	
	public void reserveTable(int custid,int pid);
	
	public void addTableReservation(int rcustid,float amount);
	
	public void releaseTable(int tableno);
	
	public boolean checktime(Date date);
	
	public boolean checkItem(String name);
	
	public float getTablePrice(int tableno);
	
	public int generateOrderid();
	
	public void addOrder(int orderid,String Type,int rcustid);
	
	public ArrayList<Order> listOrders();
	
	public float getItemPrice(int itemno);
	
	public void AddItemToOrder(int orderid,int itemno,int qty,float subtot);
	
	public ArrayList<Item> printbill(int orderid);
	
	public void addOrderPayment(int orderid,float amount,String type);
	
	public boolean checkOrderStatus(int orderid);
	
	public void deleteOrder(int orderid);
	
	public void addGuestOrder(int orderid,int rreservationid,float amount,int billno);
	
	

}
