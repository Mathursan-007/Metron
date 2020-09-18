package com.service;

import java.sql.CallableStatement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.model.Inventory;
import com.model.Item;
import com.model.Room;
import com.util.DBConnection;

public class InventoryImpl implements IInventory {
	
	//Initialize logger
	public static final Logger log = Logger.getLogger(InventoryImpl.class.getName());
	
	
	//Add set of assets	
	private static Connection connection;
	private static PreparedStatement pt;
	private static Statement st;
	private static CallableStatement ct;
	
		public void addInventory(Inventory inventory) {
			try {
				 connection=DBConnection.initializedb();
					pt=connection.prepareStatement("insert into New_Stock (AssetID,AssetName,MinQuantity,AvailableQuantity,TotalQuantity) values(?,?,?,?,?)");
					pt.setString(1, inventory.getAssetID());
					pt.setString(2, inventory.getAssetName());
					pt.setInt(3, inventory.getMinQuantity());
					pt.setInt(4, inventory.getAvailableQuantity());
					pt.setInt(5, inventory.getTotalQuantity());
									
					pt.execute();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		@Override
		public ArrayList<Inventory> listInventories() {
			// TODO Auto-generated method stub
			ArrayList<Inventory> inventory=new ArrayList<>();
			try {
				connection=DBConnection.initializedb();
				ct=connection.prepareCall("Select * from New_Stock");
				ResultSet result=ct.executeQuery();
				
				while(result.next()) {
					Inventory assets = new Inventory();
					
					assets.setAssetID(result.getString(1));
					assets.setAssetName(result.getString(2));
					assets.setMinQuantity(result.getInt(3));
					assets.setAvailableQuantity(result.getInt(4));
					assets.setTotalQuantity(result.getInt(5));
					
					inventory.add(assets);
				}
				
			} catch (Exception e) {
				
			}
			
			return inventory;
		}
		
		@Override
		public Inventory getAsset(String AssetID) {
			// TODO Auto-generated method stub
			
			Inventory inventory=new Inventory();
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("select * from New_Stock where AssetID=?");
				pt.setString(1, AssetID);
				ResultSet result=pt.executeQuery();
				
				while(result.next()){
					inventory.setAssetID(result.getString(1));
					inventory.setAssetName(result.getString(2));
					inventory.setMinQuantity(result.getInt(3));
					inventory.setAvailableQuantity(result.getInt(4));
					inventory.setTotalQuantity(result.getInt(5));					
				}
				
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return inventory;
		}
		
		@Override
		public void updateAsset(Inventory inventory) {
			// TODO Auto-generated method stub
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("UPDATE New_Stock SET AssetName=?, MinQuantity=?, AvailableQuantity=?, TotalQuantity=? WHERE AssetID=?");
				pt.setString(1, inventory.getAssetName());
				pt.setInt(2, inventory.getMinQuantity());
				pt.setInt(3, inventory.getAvailableQuantity());
				pt.setInt(4, inventory.getTotalQuantity());
				pt.setString(5, inventory.getAssetID());
				pt.executeUpdate();
				
			} catch (Exception e) {
				
			}
			
		}
		
		@Override
		public void deleteAsset(String AssetID) {
			// TODO Auto-generated method stub
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("delete from New_Stock where AssetID=?"); 
				pt.setString(1, AssetID);
				pt.execute();
			} catch (Exception e) {
				
				e.printStackTrace();
			} 
			
		}

}
