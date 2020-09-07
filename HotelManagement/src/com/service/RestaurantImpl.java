package com.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.model.Item;
import com.model.Table;
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
			pt=connection.prepareStatement("insert into Item(Name,Category,Price) values(?,?,?)");
		
			pt.setString(1, item.getName());
			pt.setString(2, item.getCategory());
			pt.setFloat(3, item.getPrice());
			
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
			pt=connection.prepareStatement("update Item set Name=?,Category=?,Price=? where ItemNO=?");
		
			pt.setString(1, item.getName());
			pt.setString(2, item.getCategory());
			pt.setFloat(3, item.getPrice());
			pt.setInt(4, item.getItemno());
			
			pt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}



	@Override
	public void addTable(Table table) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into Tables(Type,Capacity,Price) values(?,?,?) ");
			pt.setString(1, table.getType());
			pt.setInt(2, table.getCapacity());
			pt.setFloat(3, table.getPrice());
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
	public ArrayList<Table> listtables() {
		// TODO Auto-generated method stub
		
		ArrayList<Table> tables=new ArrayList<Table>();
		
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from tables");
			ResultSet result=pt.executeQuery();
			
			
			while(result.next()) {
				
				Table table=new Table();
				table.setTableno(result.getInt(1));
				table.setType(result.getString(2));
				table.setCapacity(result.getInt(3));
				table.setPrice(result.getFloat(4));
				
				tables.add(table);
				
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tables;
	}



	@Override
	public void deleteTable(int tableno) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from Tables where TableNO=?");
			pt.setInt(1,tableno);
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
	public Table getTable(int tableno) {
		// TODO Auto-generated method stub
		
		Table table=new Table();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from tables where TableNO=?");
			pt.setInt(1, tableno);
			ResultSet result=pt.executeQuery();
			
			
		    table.setTableno(result.getInt(1));
		    table.setType(result.getString(2));
			table.setCapacity(result.getInt(3));
			table.setPrice(result.getFloat(4));
				
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return table;
	}



	@Override
	public void updateTable(Table table) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update Tables set Type=?,Capacity=?,Price=? where TableNo=?");
			pt.setString(1,table.getType());
			pt.setInt(2, table.getCapacity());
			pt.setFloat(3, table.getPrice());
			pt.setInt(4, table.getTableno());
			
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
