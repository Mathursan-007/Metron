package com.model;

public class Inventory {
	
	private String AssetID;
	
	private String AssetName;
	
	private int MinQuantity;
	
	private int AvailableQuantity;
	
	private int TotalQuantity;
	
	
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



	public int getMinQuantity() {
		return MinQuantity;
	}



	public void setMinQuantity(int minQuantity) {
		MinQuantity = minQuantity;
	}



	public int getAvailableQuantity() {
		return AvailableQuantity;
	}



	public void setAvailableQuantity(int availableQuantity) {
		AvailableQuantity = availableQuantity;
	}



	public int getTotalQuantity() {
		return TotalQuantity;
	}



	public void setTotalQuantity(int totalQuantity) {
		TotalQuantity = totalQuantity;
	}



	@Override
	public String toString() {
		
		return "Asset ID = " + AssetID + "\n" + "Asset Name = " + AssetName + "\n"
				+ "Minimum Quantity = " + MinQuantity + "\n" + "Available Quantity = " + AvailableQuantity + "\n" + "Total Quantity = "
				+ TotalQuantity;
	}

}
