package com.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.model.Item;

public interface IRestaurant {
	
	public void addItem(Item item);
	
	public ArrayList<Item> listitems();
	
	public void generateItemid();
	
	public void deleteItem(int itemno);
	
	public Item getItem(int itemno);
	
	public void updateItem(Item item);
	
	

}
