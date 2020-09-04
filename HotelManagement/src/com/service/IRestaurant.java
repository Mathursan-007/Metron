package com.service;

import java.sql.SQLException;

import com.model.Item;

public interface IRestaurant {
	
	public void addItem(Item item);
	
	public void generateItemid();

}
