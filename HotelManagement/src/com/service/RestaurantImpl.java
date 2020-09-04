package com.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

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
	
	

}
