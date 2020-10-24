package com.model;

public class InventoryTransaction {
	
	private int ID;
	
	private int transID;

	private String AssetID;
	
	private String AssetName;
	
	private String Type;

	private int Quantity;	
	
	private String Date;
	
	private int totQuantity;	

	

	public int getTransID() {
		return transID;
	}

	public void setTransID(int transID) {
		this.transID = transID;
	}

	public int getTotQuantity() {
		return totQuantity;
	}

	public void setTotQuantity(int totQuantity) {
		this.totQuantity = totQuantity;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
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

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
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

	

}
