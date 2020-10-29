package com.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.model.Expense;
import com.model.Income;
import com.model.PurchaseOrder;
import com.model.SalaryRequest;
import com.model.StockRequest;
import com.model.Supplier;
import com.model.Utility;
import com.util.DBConnection;

public class FinanceImpl implements IFinance {
	
	
	//Add Income
	
	private static Connection connection;
	private static PreparedStatement pt;
	private static Statement st;
	private static CallableStatement ct;
	
		public void AddIncome(Income income) {
		try {
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("insert into Income (Payment_ID,Category,Amount,Date) values(?,?,?,?)");
		//pt.setInt(1, income.getIncome_ID());
		pt.setInt(1, income.getPayment_ID());
		pt.setString(2, income.getCategory());
		pt.setFloat(3, income.getAmount());
		pt.setString(4, income.getDate());


		pt.execute();
		} catch (Exception e) {
		System.out.println(e);
		}
		}
		
		
		

		@Override
		public ArrayList<Income> listTransaction() {
		//TODO Auto-generated method stub
			
		ArrayList<Income> income=new ArrayList<>();
		try {
		connection=DBConnection.initializedb();
		ct=connection.prepareCall("Select * from Income");
		ResultSet result=ct.executeQuery();

		while(result.next()) {
			Income incom = new Income();

			incom.setIncome_ID(result.getInt(1));
			incom.setPayment_ID(result.getInt(2));
			incom.setCategory(result.getString(3));
			incom.setAmount(result.getFloat(4));
			incom.setDate(result.getString(5));


		income.add(incom);
		}

		} catch (Exception e) {

		}

		return income;
		}
		
		
		//Get Income
		

		@Override
		public Income GetIncome(int Income_ID) {
			// TODO Auto-generated method stub
			
			Income income=new Income();
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("select * from Income where Income_ID=?");
				pt.setInt(1, Income_ID);
				ResultSet result=pt.executeQuery();
				
				while(result.next()){
					income.setIncome_ID(result.getInt(1));
					income.setPayment_ID(result.getInt(2));
					income.setCategory(result.getString(3));
					income.setAmount(result.getFloat(4));
					income.setDate(result.getString(5));
							
				}
				
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return income;
		}

		
		
		//Update Income
		
		

		@Override
		public void UpdateIncome(Income income) {
			// TODO Auto-generated method stub
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("UPDATE Income SET Payment_ID=?, Category=?, Amount=?, Date=? WHERE Income_ID=?");
				pt.setInt(1, income.getPayment_ID());
				pt.setString(2, income.getCategory());
				pt.setFloat(3, income.getAmount());
				pt.setString(4, income.getDate());
				pt.setInt(5, income.getIncome_ID());

				pt.executeUpdate();
				
			} catch (Exception e) {
				
			}
			
		}
		
		


		//Delete Income
		
		

		@Override
		public void DeleteIncome(int Income_ID) {
			// TODO Auto-generated method stub
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("delete from Income where Income_ID=?"); 
				pt.setInt(1, Income_ID);
				pt.execute();
			} catch (Exception e) {
				
				e.printStackTrace();
			} 
			
		}
		

		
		//Search monthly Income


	@Override
	public  ArrayList<Income> searchIncome(String Start_Date, String End_Date){
		// TODO Auto-generated method stub
		
		ArrayList<Income> incomes=new ArrayList<>();
	      
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("SELECT Category,Amount FROM Income WHERE Date BETWEEN ? AND ?");
			pt.setString(1, Start_Date);
			pt.setString(2, End_Date);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				Income income = new Income();
				
				income.setCategory(result.getString(1));
				income.setAmount(result.getFloat(2));
											
				incomes.add(income);
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return incomes;
		
	}
	
	
	

	
	
	
		//Add Expense
	
	
		
		public void AddExpense(Expense expense) {
		try {
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("insert into Expense (Payment_ID,Category,Amount,Date) values(?,?,?,?)");
		//pt.setInt(1, expense.getExpense_ID());
		pt.setInt(1, expense.getPayment_ID());
		pt.setString(2, expense.getCategory());
		pt.setFloat(3, expense.getAmount());
		pt.setString(4, expense.getDate());


		pt.execute();
		} catch (Exception e) {
		System.out.println(e);
		}
		}
		
		
		
		

		@Override
		public ArrayList<Expense> exTransaction() {
		//TODO Auto-generated method stub
			
		ArrayList<Expense> expense=new ArrayList<>();
		try {
		connection=DBConnection.initializedb();
		ct=connection.prepareCall("Select * from Expense");
		ResultSet result=ct.executeQuery();

		while(result.next()) {

			
			Expense expen = new Expense();

			expen.setExpense_ID(result.getInt(1));
			expen.setPayment_ID(result.getInt(2));
			expen.setCategory(result.getString(3));
			expen.setAmount(result.getFloat(4));
			expen.setDate(result.getString(5));


		expense.add(expen);
		}

		} catch (Exception e) {

		}

		return expense;
		}
		
		
		
		//Get Expense
		
		

		@Override
		public Expense GetExpense(int Expense_ID) {
			// TODO Auto-generated method stub
			
			Expense expense=new Expense();
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("select * from Expense where Expense_ID=?");
				pt.setInt(1, Expense_ID);
				ResultSet result=pt.executeQuery();
				
				while(result.next()){
					expense.setExpense_ID(result.getInt(1));
					expense.setPayment_ID(result.getInt(2));
					expense.setCategory(result.getString(3));
					expense.setAmount(result.getFloat(4));
					expense.setDate(result.getString(5));
							
				}
				
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return expense;
		}
		
		
		

		
		
		//Update Expense
		
		
		

		@Override
		public void UpdateExpense(Expense expense) {
			// TODO Auto-generated method stub
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("UPDATE Expense SET Payment_ID=?, Category=?, Amount=?, Date=? WHERE Expense_ID=?");
				pt.setInt(1, expense.getPayment_ID());
				pt.setString(2, expense.getCategory());
				pt.setFloat(3, expense.getAmount());
				pt.setString(4, expense.getDate());
				pt.setInt(5, expense.getExpense_ID());

				pt.executeUpdate();
				
			} catch (Exception e) {
				
			}
			
		}

		
		

		//Delete Expense
		
		

		@Override
		public void DeleteExpense(int Expense_ID) {
			// TODO Auto-generated method stub
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("delete from Expense where Expense_ID=?"); 
				pt.setInt(1, Expense_ID);
				pt.execute();
			} catch (Exception e) {
				
				e.printStackTrace();
			} 
			
		}
		
		
		// Search monthly Expense
		
		
		
		@Override
		public  ArrayList<Expense> searchExpense(String Start_Date, String End_Date){
			// TODO Auto-generated method stub
			
			ArrayList<Expense> expenses=new ArrayList<>();
		      
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("SELECT Category,Amount FROM Expense WHERE Date BETWEEN ? AND ?");
				pt.setString(1, Start_Date);
				pt.setString(2, End_Date);
				ResultSet result=pt.executeQuery();
				
				while(result.next()){
					
					Expense expense = new Expense();
					
					expense.setCategory(result.getString(1));
					expense.setAmount(result.getFloat(2));
					
					expenses.add(expense);
				}
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return expenses;
			
		}
		
		
		
		
		// add set of salary
		
		//public void AddSalaryRequest(SalaryRequest salary) {
			//try {
			//connection=DBConnection.initializedb();
			//pt=connection.prepareStatement("insert into Salary_Request (Employee_ID,Total_Salary,Date) values(?,?,?)");
			//pt.setInt(1, salary.getRequest_ID());
			//pt.setInt(1, salary.getEmployee_ID());
			//pt.setFloat(2, salary.getTotal_Salary());
			//pt.setString(3, salary.getDate());
			


			//pt.execute();
			//} catch (Exception e) {
			//System.out.println(e);
			//}
			//}
		
		
		
		
		
		
		// Get salary

			@Override
			public ArrayList<SalaryRequest> listSalary() {
			//TODO Auto-generated method stub
				
			ArrayList<SalaryRequest> salary=new ArrayList<>();
			try {
			connection=DBConnection.initializedb();
			ct=connection.prepareCall("Select * from Salary_Request");
			ResultSet result=ct.executeQuery();

			while(result.next()) {
				SalaryRequest sal = new SalaryRequest();

				sal.setRequest_ID(result.getInt(1));
				sal.setEmployee_ID(result.getInt(2));
				sal.setTotal_Salary(result.getFloat(3));
				sal.setDate(result.getString(4));
				


			salary.add(sal);
			}

			} catch (Exception e) {

			}

			return salary;
			}

			
			
			
			//@Override
			//public SalaryRequest GetSalaryRequest(int Request_ID) {
				// TODO Auto-generated method stub
				
				//SalaryRequest salary=new SalaryRequest();
				
				//try {
				//	connection=DBConnection.initializedb();
				//	pt=connection.prepareStatement("select * from Salary_Request where Request_ID=?");
				//	pt.setInt(1, Request_ID);
				//	ResultSet result=pt.executeQuery();
					
					//while(result.next()){
					//	salary.setRequest_ID(result.getInt(1));
					//	salary.setEmployee_ID(result.getInt(2));
					//	salary.setTotal_Salary(result.getFloat(3));
						//salary.setDate(result.getString(4));
						
					//}
					
					
				//} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
				//	e.printStackTrace();
				//} catch (SQLException e) {
					// TODO Auto-generated catch block
				//	e.printStackTrace();
				//}
				
				
				//return salary;
			//}

			
			
			//update set of Salary

			//@Override
			//public void UpdateSalaryRequest(SalaryRequest salary) {
				// TODO Auto-generated method stub
				
				//try {
				//	connection=DBConnection.initializedb();
				//	pt=connection.prepareStatement("update Salary_Request SET Employee_ID=?, Total_Salary=?, Date=? WHERE Request_ID=?");
				//	pt.setInt(1, salary.getEmployee_ID());
				//	pt.setFloat(2, salary.getTotal_Salary());
				//	pt.setString(3, salary.getDate());
				//	pt.setInt(4, salary.getRequest_ID());
					

					//pt.executeUpdate();
					
				//} catch (Exception e) {
					
				//}
				
			//}

			
			
			
			// Add supplier	
				
			public void AddSupplier(Supplier supplier) {
				try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("insert into Supplier_s (Supplier_ID,Name,Type,ContactNo,Email,Address) values(?,?,?,?,?,?)");
				pt.setString(1, supplier.getSupplier_ID());
				pt.setString(2, supplier.getName());
				pt.setString(3, supplier.getType());
				pt.setString(4, supplier.getContact_No());
				pt.setString(5, supplier.getEmail());
				pt.setString(6, supplier.getAddress());



				pt.execute();
				
				} catch (Exception e) {
					
				System.out.println(e);
				
				}
			}
				
				
				
				

				@Override
				public ArrayList<Supplier> listDetails() {
				//TODO Auto-generated method stub
						
				ArrayList<Supplier> supplier=new ArrayList<>();
				try {
				connection=DBConnection.initializedb();
				ct=connection.prepareCall("Select * from Supplier_s");
				ResultSet result=ct.executeQuery();

				while(result.next()) {
				Supplier suppl = new Supplier();
				
				suppl.setSupplier_ID(result.getString(1));
				suppl.setName(result.getString(2));
				suppl.setType(result.getString(3));
				suppl.setContact_No(result.getString(4));
				suppl.setEmail(result.getString(5));
				suppl.setAddress(result.getString(6));


				supplier.add(suppl);
				}
					} catch (Exception e) {
					
					}

				return supplier;
			}

					
					
					
				//Get Supplier
					
					
				@Override
				public Supplier GetSupplier(String Supplier_ID) {
					// TODO Auto-generated method stub
						
				Supplier supplier=new Supplier();
						
				try {
					connection=DBConnection.initializedb();
					pt=connection.prepareStatement("select * from Supplier_s where Supplier_ID=?");
					pt.setString(1, Supplier_ID);
					ResultSet result=pt.executeQuery();
							
				while(result.next()){
						supplier.setSupplier_ID(result.getString(1));
						supplier.setName(result.getString(2));
						supplier.setType(result.getString(3));
						supplier.setContact_No(result.getString(4));
						supplier.setEmail(result.getString(5));
						supplier.setAddress(result.getString(6));

										
					}
							
							
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
						e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
						e.printStackTrace();
				}
						
						
					return supplier;
			}

					
					
					
					
				//Update supplier
					
					

				@Override
				public void UpdateSupplier(Supplier supplier) {
					// TODO Auto-generated method stub
						
				try {
					connection=DBConnection.initializedb();
					pt=connection.prepareStatement("UPDATE Supplier_s SET Name=?, Type=?, ContactNo=?, Email=?, Address=? WHERE Supplier_ID=?");
					pt.setString(1, supplier.getName());
					pt.setString(2, supplier.getType());
					pt.setString(3, supplier.getContact_No());
					pt.setString(4, supplier.getEmail());
					pt.setString(5, supplier.getAddress());
					pt.setString(6, supplier.getSupplier_ID());

					pt.executeUpdate();
							
				} catch (Exception e) {
							
					}
						
			}

					

				//Delete supplier
					
					
					

				@Override
				public void DeleteSupplier(String Supplier_ID) {
					// TODO Auto-generated method stub
						
				try {
					connection=DBConnection.initializedb();
					pt=connection.prepareStatement("delete from Supplier_s where Supplier_ID=?"); 
					pt.setString(1, Supplier_ID);
					pt.execute();
				} catch (Exception e) {
							
					e.printStackTrace();
				} 
					
			}
					
					
				// Add utility
						
				public void AddUtility(Utility utility) {
					try {
					connection=DBConnection.initializedb();
					pt=connection.prepareStatement("insert into Utility_Bill (UPayment_ID,Category,Amount,Date) values(?,?,?,?)");
					pt.setInt(1, utility.getPayment_ID());
					pt.setString(2, utility.getCategory());
					pt.setFloat(3, utility.getAmount());
					pt.setString(4, utility.getDate());



					pt.execute();
						
					} catch (Exception e) {
							
					System.out.println(e);
					}
					
				}
					
					
						


					@Override
					public ArrayList<Utility> listExpense() {
					//TODO Auto-generated method stub
								
					ArrayList<Utility> utility=new ArrayList<>();
						try {
						connection=DBConnection.initializedb();
						ct=connection.prepareCall("Select * from Utility_Bill");
						ResultSet result=ct.executeQuery();

						while(result.next()) {
						Utility util = new Utility();

						util.setPayment_ID(result.getInt(1));
						util.setCategory(result.getString(2));
						util.setAmount(result.getFloat(3));
						util.setDate(result.getString(4));


						utility.add(util);
						}

						} catch (Exception e) {

						}

						return utility;
					}

							
							
						//Get Utility
							
							
							
						@Override
						public Utility GetUtility(int Payment_ID) {
							// TODO Auto-generated method stub
								
							Utility utility=new Utility();
								
							try {
								connection=DBConnection.initializedb();
								pt=connection.prepareStatement("select * from Utility_Bill where UPayment_ID=?");
								pt.setInt(1, Payment_ID);
								ResultSet result=pt.executeQuery();
									
							while(result.next()){
								utility.setPayment_ID(result.getInt(1));
								utility.setCategory(result.getString(2));
								utility.setAmount(result.getFloat(3));
								utility.setDate(result.getString(4));

												
								}
								
									
							} catch (ClassNotFoundException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							} catch (SQLException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
								
								
							return utility;
					}

							
							
							
							
						//Update Utility
							
							
						@Override
						public void UpdateUtility(Utility utility) {
							// TODO Auto-generated method stub
								
							try {
								connection=DBConnection.initializedb();
								pt=connection.prepareStatement("UPDATE Utility_Bill SET Category=?, Amount=?, Date=? WHERE UPayment_ID=?");
								pt.setString(1, utility.getCategory());
								pt.setFloat(2, utility.getAmount());
								pt.setString(3, utility.getDate());
								pt.setInt(4, utility.getPayment_ID());

								pt.executeUpdate();
									
							} catch (Exception e) {
									
							}
							
						}

							
							

						//Delete Utility

						@Override
						public void DeleteUtility(int Payment_ID) {
							// TODO Auto-generated method stub
								
							try {
								connection=DBConnection.initializedb();
								pt=connection.prepareStatement("delete from Utility_Bill where UPayment_ID=?"); 
								pt.setInt(1, Payment_ID);
								pt.execute();
							} catch (Exception e) {
									
								e.printStackTrace();
							} 
								
						}
							
							
							
							
							
							
						//Delete salary request
						
							
							
						@Override
						public void DeleteSalaryRequest(int Request_ID) {
							// TODO Auto-generated method stub
								
							try {
								connection=DBConnection.initializedb();
								pt=connection.prepareStatement("delete from Salary_Request where Request_ID=?"); 
								pt.setInt(1, Request_ID);
								pt.execute();
							} catch (Exception e) {
									
								e.printStackTrace();
							} 
								
					}
								
							
						
						// retrieve stock request
								

							@Override
							public ArrayList<StockRequest> listReq() {
							//TODO Auto-generated method stub
										
							ArrayList<StockRequest> stock=new ArrayList<>();
								try {
								connection=DBConnection.initializedb();
								ct=connection.prepareCall("Select * from Stock_Request");
								ResultSet result=ct.executeQuery();

							while(result.next()) {
								StockRequest stocks = new StockRequest();

								stocks.setRequest_No(result.getInt(1));
								stocks.setAsset_ID(result.getString(2));
								stocks.setAsset_Name(result.getString(3));
								stocks.setQuantity(result.getInt(4));
								stocks.setDate(result.getString(5));


									stock.add(stocks);
									}

									} catch (Exception e) {

									}

									return stock;
							}

									
									
								
							
									
						//Delete stock
										

						@Override
						public void DeleteStockRequest(int Request_No) {
							// TODO Auto-generated method stub
										
							try {
							connection=DBConnection.initializedb();
							pt=connection.prepareStatement("delete from Stock_Request where ReqNo=?"); 
							pt.setInt(1, Request_No);
							pt.execute();
								} catch (Exception e) {
											
									e.printStackTrace();
								} 																
										
						}
									
									
									
						//Add Purchase order
									
									
									
				public void AddPurchaseOrder(PurchaseOrder order) {
					try {
					connection=DBConnection.initializedb();
					pt=connection.prepareStatement("insert into Purchase_Order (ReqNo, AssetID, AssetName,Quantity, Amount, Supplier_ID) values(?,?,?,?,?,?)");
					pt.setInt(1, order.getRequest_No());
					pt.setString(2, order.getAsset_ID());
					pt.setString(3, order.getAsset_Name());
					pt.setInt(4, order.getQuantity());
					pt.setFloat(5, order.getAmount());
					pt.setString(6, order.getSupplier_ID());


						pt.execute();
										
						} catch (Exception e) {
											
							System.out.println(e);
										
						}
			}
									
									
									
									
				// Get purchase order
									
									
									
				@Override
				public PurchaseOrder GetPurchaseOrder(int Request_No) {
				// TODO Auto-generated method stub
										
				PurchaseOrder order=new PurchaseOrder();
										
				try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("select ReqNo, AssetID, AssetName, Quantity from Stock_Request where ReqNo=?");
				pt.setInt(1, Request_No);
				ResultSet result=pt.executeQuery();
											
					while(result.next()){
					order.setRequest_No(result.getInt(1));
					order.setAsset_ID(result.getString(2));
					order.setAsset_Name(result.getString(3));
					order.setQuantity(result.getInt(4));											
														
				}
											
											
					} catch (ClassNotFoundException e) {
							// TODO Auto-generated catch block
								e.printStackTrace();
					} catch (SQLException e) {
							// TODO Auto-generated catch block
								e.printStackTrace();
					}
										
										
						return order;
		}

									
									
									
					// Generate p&l income report
									
									
									
					@Override
					public  ArrayList<Income> generateIncome(String Start_Date, String End_Date){
					// TODO Auto-generated method stub
										
					ArrayList<Income> incomes=new ArrayList<>();
									      
										
					try {
					connection=DBConnection.initializedb();
					pt=connection.prepareStatement("SELECT Category, SUM(Amount) FROM Income WHERE Date BETWEEN ? AND ? group by Category");
					pt.setString(1, Start_Date);
					pt.setString(2, End_Date);
					ResultSet result=pt.executeQuery();
																			
											
					while(result.next()){
										
						Income income = new Income();
												
						income.setCategory(result.getString(1));
						income.setAmount(result.getFloat(2));
												
							incomes.add(income);
						}
											
						} catch (ClassNotFoundException e) {
							// TODO Auto-generated catch block
								e.printStackTrace();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
								e.printStackTrace();
						}
										
										
							return incomes;
										
			}
									
									
									
									
									
					// Generate p&l expense report
									
									
									
									
					@Override
					public  ArrayList<Expense> generateExpense(String Start_Date, String End_Date){
					// TODO Auto-generated method stub
										
					ArrayList<Expense> expenses=new ArrayList<>();
									      
										
					try {
					connection=DBConnection.initializedb();
					pt=connection.prepareStatement("SELECT Category, SUM(Amount) FROM Expense WHERE Date BETWEEN ? AND ? group by Category");
					pt.setString(1, Start_Date);
					pt.setString(2, End_Date);
					ResultSet result=pt.executeQuery();
											
					while(result.next()){
												
						Expense expense = new Expense();
												
							expense.setCategory(result.getString(1));
							expense.setAmount(result.getFloat(2));
												
							expenses.add(expense);
							}
											
						} catch (ClassNotFoundException e) {
							// TODO Auto-generated catch block
									e.printStackTrace();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
									e.printStackTrace();
						}
										
										
							return expenses;
								
						}
								
		}
											

							


