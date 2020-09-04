package com.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.model.Item;
import com.util.DBConnection;

public class RestaurantImpl implements IRestaurant {
	
	
	private static Connection connection;
	private static PreparedStatement pt;
	private static CallableStatement ct;
	private static Statement st; 

	@Override
	public void addItem(Item item) {
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into Item(ItemNo,Name,Category,Price) values(?,?,?,?)");
			pt.setInt(1, item.getItemno());
			pt.setString(2, item.getName());
			pt.setString(3, item.getCategory());
			pt.setFloat(4, item.getPrice());
			
			pt.execute();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void generateItemid() {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	@Override
	public ArrayList<Item> listitems() {
		// TODO Auto-generated method stub
		
		ArrayList<Item> items=new ArrayList();
		
		try {
			
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("select * from Item");
		ResultSet result=pt.executeQuery();
		
		while(result.next()) {
			
			Item item=new Item();
			
			item.setItemno(result.getInt(1));
			item.setName(result.getString(2));
			item.setCategory(result.getString(3));
			item.setPrice(result.getFloat(4));
			
			items.add(item);
			
		}
		
		}catch (Exception e){
			
			e.printStackTrace();
		}
		return items;
	}

	@Override
	public void deleteItem(int itemno) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from Item where ItemNo=?");
			pt.setInt(1,itemno);
			pt.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}

	@Override
	public Item getItem(int itemno) {
		// TODO Auto-generated method stub
		
		Item item=new Item();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Item where ItemNo=?");
			pt.setInt(1, itemno);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				item.setItemno(result.getInt(1));
				item.setName(result.getString(2));
				item.setCategory(result.getString(3));
				item.setPrice(result.getFloat(4));
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return item;
	}

	@Override
	public void updateItem(Item item) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update Item set ItemNo=?,Name=?,Category=?,Price=?");
			pt.setInt(1, item.getItemno());
			pt.setString(2, item.getName());
			pt.setString(3, item.getCategory());
			pt.setFloat(4, item.getPrice());
			
			pt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}
	
	

}
