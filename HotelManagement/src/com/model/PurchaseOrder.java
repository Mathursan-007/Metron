package com.model;

public class PurchaseOrder {
	
private int Request_No;
	
	private String Asset_ID;
	
	private String Asset_Name;
	
	private int Quantity;
	
	private String Date;
	
	private float Amount;
	
	private String Supplier_ID;
	

	public int getRequest_No() {
		return Request_No;
	}

	public void setRequest_No(int request_No) {
		Request_No = request_No;
	}

	public String getAsset_ID() {
		return Asset_ID;
	}

	public void setAsset_ID(String asset_ID) {
		Asset_ID = asset_ID;
	}

	public String getAsset_Name() {
		return Asset_Name;
	}

	public void setAsset_Name(String asset_Name) {
		Asset_Name = asset_Name;
	}

	public int getQuantity() {
		return Quantity;
	}

	public void setQuantity(int quantity) {
		Quantity = quantity;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public float getAmount() {
		return Amount;
	}

	public void setAmount(float amount) {
		Amount = amount;
	}

	public String getSupplier_ID() {
		return Supplier_ID;
	}

	public void setSupplier_ID(String supplier_ID) {
		Supplier_ID = supplier_ID;
	}
	
	

}
