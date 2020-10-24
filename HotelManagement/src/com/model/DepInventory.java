package com.model;

public class DepInventory {
	
	private String DepAssetID;
	
	private String AssetName;
	
	private String Category;
	
	private int Quantity;

	public String getDepAssetID() {
		return DepAssetID;
	}

	public void setDepAssetID(String depAssetID) {
		DepAssetID = depAssetID;
	}

	public String getAssetName() {
		return AssetName;
	}

	public void setAssetName(String assetName) {
		AssetName = assetName;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}

	public int getQuantity() {
		return Quantity;
	}

	public void setQuantity(int quantity) {
		Quantity = quantity;
	}

	
}
