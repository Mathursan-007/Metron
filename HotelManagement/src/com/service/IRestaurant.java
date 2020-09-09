package com.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.model.Item;
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
	
	
	

}
