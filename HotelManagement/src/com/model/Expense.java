package com.model;

public class Expense {
	
	private int Expense_ID;

	private int Payment_ID;

	private String Category;

	private float Amount;

	private String Date;
	
	private String Start_Date;
	
	private String End_Date;
	
	

	

	public int getExpense_ID() {
		return Expense_ID;
	}

	public void setExpense_ID(int expense_ID) {
		Expense_ID = expense_ID;
	}

	public int getPayment_ID() {
		return Payment_ID;
	}

	public void setPayment_ID(int payment_ID) {
		Payment_ID = payment_ID;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}

	public float getAmount() {
		return Amount;
	}

	public void setAmount(float amount) {
		Amount = amount;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}
	
	public String getStart_Date() {
		return Start_Date;
	}

	public void setStart_Date(String start_Date) {
		Start_Date = start_Date;
	}

	public String getEnd_Date() {
		return End_Date;
	}

	public void setEnd_Date(String end_Date) {
		End_Date = end_Date;
	}

	
	

}
