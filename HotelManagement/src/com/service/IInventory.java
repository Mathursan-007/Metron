package com.service;

import java.util.ArrayList;
import java.util.logging.Logger;

import com.model.Inventory;
import com.model.Room;


public interface IInventory {
	
	public static final Logger log = Logger.getLogger(IInventory.class.getName());

	public void addInventory(Inventory inventory);
	
	public ArrayList<Inventory> listInventories();

	public Inventory getAsset(String AssetID);
	
	public void updateAsset(Inventory inventory);
	
	public void deleteAsset(String AssetID);

}
