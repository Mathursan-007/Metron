package com.service;

import java.util.ArrayList;

import com.model.Expense;
import com.model.Income;
import com.model.PurchaseOrder;
import com.model.SalaryRequest;
import com.model.StockRequest;
import com.model.Supplier;
import com.model.Utility;

public interface IFinance {
	
	//Expense
	
	public void AddExpense(Expense expense);

	public ArrayList<Expense> exTransaction();

	public Expense GetExpense(int Expense_ID);

	public void UpdateExpense(Expense expense);

	public void DeleteExpense(int Expense_ID);
	
	public ArrayList<Expense> searchExpense(String Start_Date, String End_Date);
	
	
	
	//Income
	
	public void AddIncome(Income income);

	public ArrayList<Income> listTransaction();

	public Income GetIncome(int Income_ID);

	public void UpdateIncome(Income income);

	public void DeleteIncome(int Income_ID);
	
	public ArrayList<Income> searchIncome(String Start_Date, String End_Date);

	
	
	//Salary Request
	
	public ArrayList<SalaryRequest> listSalary();

	public void DeleteSalaryRequest(int Request_ID);
	
	

	
	//Supplier
	
	
	public void AddSupplier(Supplier supplier);

	public ArrayList<Supplier> listDetails();

	public Supplier GetSupplier(String Supplier_ID);

	public void UpdateSupplier(Supplier supplier);

	public void DeleteSupplier(String Supplier_ID);
	
	
	
	//Utility
	
	
	public void AddUtility(Utility utility);

	public ArrayList<Utility> listExpense();

	public Utility GetUtility(int Payment_ID);

	public void UpdateUtility(Utility utility);

	public void DeleteUtility(int Payment_ID);
	
	
	
	//Stock Request
	
	
	
	public ArrayList<StockRequest> listReq();

	public void DeleteStockRequest(int Request_No);
	
	
	
	//Purchase Order
	
	public void AddPurchaseOrder(PurchaseOrder order);
	
	public PurchaseOrder GetPurchaseOrder(int Request_No);
	
	
	
	//Pdf Report
	
	public ArrayList<Income> generateIncome(String Start_Date, String End_Date);
	
	public ArrayList<Expense> generateExpense(String Start_Date, String End_Date);
	
	
	

}
