package com.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.model.Item;
import com.model.RestaurantCustomer;
import com.model.Table;

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
	
	public void addTableReservation(int rcustid);
	
	public void releaseTable(int tableno);
	
	public boolean checktime(Date date);
	
	public boolean checkItem(String name);
	
	
	

}
