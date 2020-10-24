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

import com.model.DepInventory;
import com.model.Inventory;
import com.model.InventoryIssue;
import com.model.InventoryPurchase;
import com.model.InventoryTransaction;
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
	
		@Override
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
		
		@Override
		public ArrayList<Inventory> listLowInventories() {
			// TODO Auto-generated method stub
			ArrayList<Inventory> depInventory=new ArrayList<>();
			try {
				connection=DBConnection.initializedb();
				ct=connection.prepareCall("Select * from Low_Stock");
				ResultSet result=ct.executeQuery();
				
				while(result.next()) {
					Inventory assets = new Inventory();
					
					assets.setAssetID(result.getString(1));
					assets.setAssetName(result.getString(2));
					assets.setMinQuantity(result.getInt(3));
					assets.setAvailableQuantity(result.getInt(4));
					assets.setTotalQuantity(result.getInt(5));
					
					depInventory.add(assets);
				}
				
			} catch (Exception e) {
				
			}
			
			return depInventory;
		}
		
		@Override
		public ArrayList<DepInventory> listDepInventories() {
			// TODO Auto-generated method stub
			ArrayList<DepInventory> inventory=new ArrayList<>();
			try {
				connection=DBConnection.initializedb();
				ct=connection.prepareCall("Select * from Department_Stock");
				ResultSet result=ct.executeQuery();
				
				while(result.next()) {
					DepInventory assets = new DepInventory();
					
					assets.setDepAssetID(result.getString(1));
					assets.setAssetName(result.getString(2));
					assets.setCategory(result.getString(3));
					assets.setQuantity(result.getInt(4));
					
					inventory.add(assets);
				}
				
			} catch (Exception e) {
				
			}
			
			return inventory;
		}
		
		@Override
		public ArrayList<InventoryIssue> issuedDetails() {
			// TODO Auto-generated method stub
			ArrayList<InventoryIssue> issueInventory=new ArrayList<>();
			try {
				connection=DBConnection.initializedb();
				ct=connection.prepareCall("Select * from Issued_Details");
				ResultSet result=ct.executeQuery();
				
				while(result.next()) {
					InventoryIssue assets = new InventoryIssue();
					
					assets.setReqNo(result.getInt(1));	
					assets.setAssetID(result.getString(2));
					assets.setAssetName(result.getString(3));
					assets.setQuantity(result.getInt(4));
					assets.setDepAssetID(result.getString(5));
					assets.setDate(result.getString(6));

					issueInventory.add(assets);
				}
				
			} catch (Exception e) {
				
			}
			
			return issueInventory;
		}
		
		@Override
		public Inventory getIssue(String AssetID) {
			// TODO Auto-generated method stub
			
			Inventory inventory=new Inventory();
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("select AssetID,AssetName from New_Stock where AssetID=?");
				pt.setString(1, AssetID);
				ResultSet result=pt.executeQuery();
				
				while(result.next()){
					inventory.setAssetID(result.getString(1));
					inventory.setAssetName(result.getString(2));				
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
		public void addIssueDetails(InventoryIssue inventory) {
			try {
				 connection=DBConnection.initializedb();
					pt=connection.prepareStatement("insert into Issued_Details(AssetID,AssetName,Quantity,DepAssetID) values (?,?,?,?)");
					pt.setString(1, inventory.getAssetID());
					pt.setString(2, inventory.getAssetName());
					pt.setInt(3, inventory.getQuantity());
					pt.setString(4, inventory.getDepAssetID());
									
					pt.execute();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		@Override
		public Inventory getLowStock(String AssetID) {
			// TODO Auto-generated method stub
			
			Inventory inventory=new Inventory();
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("select AssetID,AssetName from Low_Stock where AssetID=?");
				pt.setString(1, AssetID);
				ResultSet result=pt.executeQuery();
				
				while(result.next()){
					inventory.setAssetID(result.getString(1));
					inventory.setAssetName(result.getString(2));				
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
		public void addStockRequest(InventoryPurchase inventory) {
			try {
				 connection=DBConnection.initializedb();
					pt=connection.prepareStatement("insert into Stock_Request(AssetID,AssetName,Quantity) values (?,?,?)");
					pt.setString(1, inventory.getAssetID());
					pt.setString(2, inventory.getAssetName());
					pt.setInt(3, inventory.getQuantity());
									
					pt.execute();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		@Override
		public ArrayList<InventoryPurchase> purchaseDetails() {
			// TODO Auto-generated method stub
			ArrayList<InventoryPurchase> inventoryPurchase=new ArrayList<>();
			try {
				connection=DBConnection.initializedb();
				ct=connection.prepareCall("select * from Purchase_Order");
				ResultSet result=ct.executeQuery();
				
				while(result.next()) {
					InventoryPurchase assets = new InventoryPurchase();
					
					assets.setID(result.getInt(1));
					assets.setReqNo(result.getInt(2));	
					assets.setAssetID(result.getString(3));
					assets.setAssetName(result.getString(4));
					assets.setQuantity(result.getInt(5));
					assets.setAmount(result.getFloat(6));
					assets.setSupplierID(result.getString(7));
					assets.setDate(result.getString(8));
					assets.setStatus(result.getString(9));

					inventoryPurchase.add(assets);
				}
				
			} catch (Exception e) {
				
			}
			
			return inventoryPurchase;
		}
		
		@Override
		public ArrayList<InventoryPurchase> Inflows() {
			// TODO Auto-generated method stub
			ArrayList<InventoryPurchase> inventoryInflow=new ArrayList<>();
			try {
				connection=DBConnection.initializedb();
				ct=connection.prepareCall("select * from Inflows");
				ResultSet result=ct.executeQuery();
				
				while(result.next()) {
					InventoryPurchase assets = new InventoryPurchase();
					
					assets.setID(result.getInt(1));
					assets.setAssetID(result.getString(2));
					assets.setAssetName(result.getString(3));
					assets.setQuantity(result.getInt(4));
					assets.setSupplierID(result.getString(5));
					assets.setDate(result.getString(6));

					inventoryInflow.add(assets);
				}
				
			} catch (Exception e) {
				
			}
			
			return inventoryInflow;
		}
		
		@Override
		public void updateStatus(int ID) {
			// TODO Auto-generated method stub
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("UPDATE Purchase_Order SET Status='Received' WHERE PurchaseID=?");
				pt.setInt(1, ID);
				pt.executeUpdate();
				
			} catch (Exception e) {
				
			}
			
		}
		
		@Override
		public void deletePurchase(int ID) {
			// TODO Auto-generated method stub
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("delete from Purchase_Order WHERE PurchaseID=?");
				pt.setInt(1, ID);
				pt.executeUpdate();
				
			} catch (Exception e) {
				
			}
			
		}
		
		public int totQty(String id, String type) {
			InventoryTransaction inventory = new InventoryTransaction();

			int qty=0;
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("select Quantity from Inventory_Transaction where AssetID=? and type=?");
				pt.setString(1, id);
				pt.setString(2, type);
				ResultSet result=pt.executeQuery();
				
				while(result.next()){
					inventory.setQuantity(result.getInt(1));
					qty = qty + inventory.getQuantity();
					//inventory.setTotQuantity(qty);
				}
				
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
			return qty;
			
		}
		
		@Override
		public void addDepInventory(DepInventory inventory) {
			try {
				 connection=DBConnection.initializedb();
					pt=connection.prepareStatement("insert into Department_Stock (DepAssetID,AssetName,Category,Quantity) values(?,?,?,?)");
					pt.setString(1, inventory.getDepAssetID());
					pt.setString(2, inventory.getAssetName());
					pt.setString(3, inventory.getCategory());
					pt.setInt(4, inventory.getQuantity());
									
					pt.execute();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		@Override
		public ArrayList<InventoryTransaction> transactionDetails() {
			// TODO Auto-generated method stub
			ArrayList<InventoryTransaction> transactionInventory=new ArrayList<>();
			try {
				connection=DBConnection.initializedb();
				ct=connection.prepareCall("Select * from Inventory_Transaction");
				ResultSet result=ct.executeQuery();
				
				while(result.next()) {
					InventoryTransaction assets = new InventoryTransaction();
					
					assets.setID(result.getInt(1));	
					assets.setTransID(result.getInt(2));	
					assets.setAssetID(result.getString(3));
					assets.setAssetName(result.getString(4));
					assets.setType(result.getString(5));
					assets.setQuantity(result.getInt(6));
					assets.setDate(result.getString(7));

					transactionInventory.add(assets);
				}
				
			} catch (Exception e) {
				
			}
			
			return transactionInventory;
		}
		
		//Generate Report
		@Override
		public ArrayList<Inventory> GenerateInventoryReport() {
			// TODO Auto-generated method stub
			ArrayList<Inventory> inventory=new ArrayList<>();
			try {
				connection=DBConnection.initializedb();
				ct=connection.prepareCall("Select AssetID,AssetName,AvailableQuantity,TotalQuantity from New_Stock");
				ResultSet result=ct.executeQuery();
				
				while(result.next()) {
					Inventory assets = new Inventory();
					
					assets.setAssetID(result.getString(1));
					assets.setAssetName(result.getString(2));
					assets.setAvailableQuantity(result.getInt(3));
					assets.setTotalQuantity(result.getInt(4));
					
					inventory.add(assets);
				}
				
			} catch (Exception e) {
				
			}
			
			return inventory;
		}
		
		@Override
		public DepInventory getDepInventory(String depAssetID) {
			// TODO Auto-generated method stub
			
			DepInventory depinventory=new DepInventory();
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("select * from Department_Stock where DepAssetID=?");
				pt.setString(1, depAssetID);
				ResultSet result=pt.executeQuery();
				
				while(result.next()){
					depinventory.setDepAssetID(result.getString(1));
					depinventory.setAssetName(result.getString(2));
					depinventory.setCategory(result.getString(3));
					depinventory.setQuantity(result.getInt(4));
				}
				
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return depinventory;
		}
		
		@Override
		public void updateDepInventory(DepInventory depinventory) {
			// TODO Auto-generated method stub
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("UPDATE Department_Stock SET AssetName=?, Category=?, Quantity=? WHERE DepAssetID=?");
				pt.setString(1, depinventory.getAssetName());
				pt.setString(2, depinventory.getCategory());
				pt.setInt(3, depinventory.getQuantity());
				pt.setString(4, depinventory.getDepAssetID());
				pt.executeUpdate();
				
			} catch (Exception e) {
				
			}
			
		}
		
		@Override
		public void deleteDepInventory(String depAssetID) {
			// TODO Auto-generated method stub
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("delete from Department_Stock where DepAssetID=?"); 
				pt.setString(1, depAssetID);
				pt.execute();
			} catch (Exception e) {
				
				e.printStackTrace();
			} 
			
		}
		
		@Override
		public void deleteIssueDetail(int depReqNo) {
			// TODO Auto-generated method stub
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("delete from Issued_Details where DepReqNo=?"); 
				pt.setInt(1, depReqNo);
				pt.execute();
			} catch (Exception e) {
				
				e.printStackTrace();
			} 
			
		}
		
		@Override
		public void deleteInflowDetail(int goodReqNo) {
			// TODO Auto-generated method stub
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("delete from Inflows where GoodRecNo=?"); 
				pt.setInt(1, goodReqNo);
				pt.execute();
			} catch (Exception e) {
				
				e.printStackTrace();
			} 
			
		}
		


}
