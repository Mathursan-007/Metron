package com.model;

public class InventoryPurchase {
	
	private int ID;
	
	private int ReqNo;

	private String AssetID;
	
	private String AssetName;
	
	private int Quantity;	
	
	private float Amount;	
	
	private String SupplierID;
		
	private String Date;
	
	private String Status;

	public int getID() {
		return ID;
	}


	public void setID(int iD) {
		ID = iD;
	}



	public int getReqNo() {
		return ReqNo;
	}

	public void setReqNo(int reqNo) {
		ReqNo = reqNo;
	}

	public String getAssetID() {
		return AssetID;
	}

	public void setAssetID(String assetID) {
		AssetID = assetID;
	}

	public String getAssetName() {
		return AssetName;
	}

	public void setAssetName(String assetName) {
		AssetName = assetName;
	}

	public int getQuantity() {
		return Quantity;
	}

	public void setQuantity(int quantity) {
		Quantity = quantity;
	}

	public float getAmount() {
		return Amount;
	}

	public void setAmount(float amount) {
		Amount = amount;
	}

	public String getSupplierID() {
		return SupplierID;
	}

	public void setSupplierID(String supplierID) {
		SupplierID = supplierID;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}
	
	

}
