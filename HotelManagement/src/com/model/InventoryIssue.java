package com.model;

public class InventoryIssue {

	private int ReqNo;

	private String AssetID;
	
	private String AssetName;
	
	private int Quantity;	
	
	private String DepAssetID;
		
	private String Date;

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

	public String getDepAssetID() {
		return DepAssetID;
	}

	public void setDepAssetID(String depAssetID) {
		DepAssetID = depAssetID;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}
	
}
