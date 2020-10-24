package com.service;

import java.util.ArrayList;

import java.util.logging.Logger;

import com.model.DepInventory;
import com.model.Inventory;
import com.model.InventoryIssue;
import com.model.InventoryPurchase;
import com.model.InventoryTransaction;
import com.model.Room;


public interface IInventory {
	
	public static final Logger log = Logger.getLogger(IInventory.class.getName());

	public void addInventory(Inventory inventory);
	
	public ArrayList<Inventory> listInventories();

	public Inventory getAsset(String AssetID);
	
	public void updateAsset(Inventory inventory);
	
	public void deleteAsset(String AssetID);
	
	
	
	public ArrayList<Inventory> listLowInventories();
	
	public Inventory getLowStock(String AssetID);
	
	public void addStockRequest(InventoryPurchase inventory);
	
	
	
	public ArrayList<InventoryIssue> issuedDetails();
	
	public Inventory getIssue(String AssetID);
	
	public void addIssueDetails(InventoryIssue inventory);
	
	public void deleteIssueDetail(int depReqNo);
	
	
	
	public ArrayList<InventoryPurchase> purchaseDetails();
	
	public void updateStatus(int ID);
	
	public void deletePurchase(int ID);
	
	public ArrayList<InventoryPurchase> Inflows();

	public void deleteInflowDetail(int goodReqNo);
	
	
	
	public ArrayList<DepInventory> listDepInventories();

	public void addDepInventory(DepInventory inventory);
	
	public DepInventory getDepInventory(String depAssetID);
	
	public void updateDepInventory(DepInventory depinventory);
	
	public void deleteDepInventory(String depAssetID);
	
	
	
	
	public ArrayList<InventoryTransaction> transactionDetails();
	
	
	public ArrayList<Inventory> GenerateInventoryReport();
}
