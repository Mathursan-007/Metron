package com.service;

import java.sql.CallableStatement;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.model.Item;
import com.model.Order;
import com.model.RestaurantCustomer;
import com.model.Table;
import com.model.TableReservation;
import com.util.DBConnection;



import java.text.SimpleDateFormat;
import java.util.Date;

public class RestaurantImpl implements IRestaurant {
	
	
	private static Connection connection;
	private static PreparedStatement pt;
	private static CallableStatement ct;
	private static Statement st; 

	@Override
	public void addItem(Item item) {
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into Item(Name,Category,Price) values(?,?,?)");
		
			pt.setString(1, item.getName());
			pt.setString(2, item.getCategory());
			pt.setFloat(3, item.getPrice());
			
			pt.execute();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	

	@Override
	public ArrayList<Item> listitems() {
		// TODO Auto-generated method stub
		
		ArrayList<Item> items=new ArrayList();
		
		try {
			
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("select * from Item");
		ResultSet result=pt.executeQuery();
		
		while(result.next()) {
			
			Item item=new Item();
			
			item.setItemno(result.getInt(1));
			item.setName(result.getString(2));
			item.setCategory(result.getString(3));
			item.setPrice(result.getFloat(4));
			
			items.add(item);
			
		}
		
		}catch (Exception e){
			
			e.printStackTrace();
		}
		return items;
	}

	@Override
	public void deleteItem(int itemno) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from Item where ItemNo=?");
			pt.setInt(1,itemno);
			pt.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}

	@Override
	public Item getItem(int itemno) {
		// TODO Auto-generated method stub
		
		Item item=new Item();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Item where ItemNo=?");
			pt.setInt(1, itemno);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				item.setItemno(result.getInt(1));
				item.setName(result.getString(2));
				item.setCategory(result.getString(3));
				item.setPrice(result.getFloat(4));
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return item;
	}

	@Override
	public void updateItem(Item item) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update Item set Name=?,Category=?,Price=? where ItemNO=?");
		
			pt.setString(1, item.getName());
			pt.setString(2, item.getCategory());
			pt.setFloat(3, item.getPrice());
			pt.setInt(4, item.getItemno());
			
			pt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}



	@Override
	public void addTable(Table table) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into Tables(Type,Capacity,Price) values(?,?,?) ");
			pt.setString(1, table.getType());
			pt.setInt(2, table.getCapacity());
			pt.setFloat(3, table.getPrice());
			pt.execute();
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}



	@Override
	public ArrayList<Table> listtables() {
		// TODO Auto-generated method stub
		
		ArrayList<Table> tables=new ArrayList<Table>();
		
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from tables");
			ResultSet result=pt.executeQuery();
			
			
			while(result.next()) {
				
				Table table=new Table();
				table.setTableno(result.getInt(1));
				table.setType(result.getString(2));
				table.setCapacity(result.getInt(3));
				table.setPrice(result.getFloat(4));
				table.setStatus(result.getString(5));
				
				tables.add(table);
				
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tables;
	}



	@Override
	public void deleteTable(int tableno) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("delete from Tables where TableNO=?");
			pt.setInt(1,tableno);
			pt.execute();
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}



	@Override
	public Table getTable(int tableno) {
		// TODO Auto-generated method stub
		
		Table table=new Table();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Tables where TableNO=?");
			pt.setInt(1, tableno);
			ResultSet result=pt.executeQuery();
			
			
			while(result.next()) {
				
			    table.setTableno(result.getInt(1));
			    table.setType(result.getString(2));
				table.setCapacity(result.getInt(3));
				table.setPrice(result.getFloat(4));
			
			}
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return table;
	}



	@Override
	public void updateTable(Table table) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update Tables set Type=?,Capacity=?,Price=? where TableNo=?");
			pt.setString(1,table.getType());
			pt.setInt(2, table.getCapacity());
			pt.setFloat(3, table.getPrice());
			pt.setInt(4, table.getTableno());
			
			pt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}



	@Override
	public void addRcustomer(RestaurantCustomer rcustomer) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into RestaurantCustomer(RCustomerID,FullName,NIC,Email,PhoneNo) values(?,?,?,?,?)");
			pt.setInt(1, rcustomer.getRCustomerID());
			pt.setString(2, rcustomer.getFullName());
			pt.setString(3, rcustomer.getNIC());
			pt.setString(4, rcustomer.getEmail());
			pt.setString(5, rcustomer.getPhoneNo());
			pt.execute();
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	
	@Override
	public void addTableReservation(int rcustid,float amount) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			ct=connection.prepareCall("exec AddTableReservation ?,?");
		    ct.setFloat(1, amount);
			ct.setInt(2, rcustid);
			ct.execute();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}


	@Override
	public void reserveTable(int trid, int tableno) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into ReservedTable values(?,?)");
			pt.setInt(1, trid);
			pt.setInt(2, tableno);
			pt.execute();
			
			ct=connection.prepareCall("exec BookTable ?");
			ct.setInt(1, tableno);
			ct.execute();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}



	@Override
	public int generateRcustid() {
		// TODO Auto-generated method stub
		
		int custid=0;
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from RestaurantCustomer");
			ResultSet result=pt.executeQuery();
			
			while(result.next()) {
				
				custid++;
				
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return ++custid;
	}



	@Override
	public int getTableRid(int rcustid) {
		// TODO Auto-generated method stub
		
		int trid=0;
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select TableRID from TableReservation where CustID=?");
			pt.setInt(1, rcustid);
			ResultSet res=pt.executeQuery();
			
			while(res.next()) {
				
				trid=res.getInt(1);
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		
		return trid;
	}



	@Override
	public void releaseTable(int tableno) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update Tables set status='Available' where TableNO=?");
			pt.setInt(1, tableno);
			pt.execute();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public boolean checktime(Date date) {
		
		    boolean check=true; 
		    
		    SimpleDateFormat formatter = new SimpleDateFormat("HH:mm:ss");  
		    String ctime=formatter.format(date);
		    String time[]=ctime.split(":");
		    if(Integer.parseInt(time[0])<9||Integer.parseInt(time[0])>21||(Integer.parseInt(time[0])==21&&Integer.parseInt(time[1])>1)) {
		    	
		    	check=false;
				
		    }
		    
		    return check;
			
	}



	@Override
	public boolean checkItem(String name) {
		// TODO Auto-generated method stub
		
		boolean find=false;
		
		try {
			
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Item where Name=?");
			pt.setString(1, name);
			ResultSet res=pt.executeQuery();
			find=res.next();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return find;
	}

	public float getTablePrice(int tableno) {
		
		float amt=0;
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select price from tables where TableNo=?");
			pt.setInt(1, tableno);
			ResultSet res=pt.executeQuery();
			
			while(res.next()) {
				
				amt=res.getFloat(1);
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return amt;
		
		
		
		
	}



	@Override
	public int generateOrderid() {
		// TODO Auto-generated method stub
	int orderid=0;
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Orders");
			ResultSet result=pt.executeQuery();
			
			while(result.next()) {
				
				if(result.getInt(1)==0) {
					orderid++;
				}else {
					orderid=result.getInt(1);
				}
				
				
			}
			
			pt.close();
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return ++orderid;
	}



	@Override
	public void addOrder(int orderid,String Type,int rcustid) {
		// TODO Auto-generated method stub
		
		  int id=0;
		
		try {
			connection=DBConnection.initializedb();
			
			pt=connection.prepareStatement("insert into RestaurantCustomer(RCustomerID) values(?)");
			pt.setInt(1, rcustid);
			pt.execute();
			
			
			pt=connection.prepareStatement("insert into RestaurantPayment(CustID) values(?)");
			pt.setInt(1, rcustid);
			pt.execute();
			
			pt=connection.prepareStatement("select PaymentID from RestaurantPayment where CustID=?");
			pt.setInt(1, rcustid);
			ResultSet result=pt.executeQuery(); 
			
			while(result.next()) {
				
				id=result.getInt(1);
			}
			
			
		    pt=connection.prepareCall("insert into Orders(OrderID,Type,PID) values(?,?,?)");
			pt.setInt(1, orderid);
			pt.setString(2,Type);
			pt.setInt(3, id);
			pt.execute();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}


	@Override
	public ArrayList<Order> listOrders() {
		// TODO Auto-generated method stub
		
		
        ArrayList<Order> orders=new ArrayList<>();
		
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from currentOrder");
			ResultSet result=pt.executeQuery();
			
			
			while(result.next()) {
				
		      Order order=new Order();
		      order.setOrderID(result.getInt(1));
		      order.setType(result.getString(2));
		      order.setSubtotatl(result.getFloat(3));
		      
		      orders.add(order);
		      
			
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return orders;
		
	}
		
   
	



	@Override
	public float getItemPrice(int itemno) {
		// TODO Auto-generated method stub

		float amt=0;
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select price from Item where ItemNo=?");
			pt.setInt(1, itemno);
			ResultSet res=pt.executeQuery();
			
			while(res.next()) {
				
				amt=res.getFloat(1);
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return amt;
		
		
		
	}



	@Override
	public void AddItemToOrder(int orderid, int itemno, int qty, float subtot) {
		// TODO Auto-generated method stub
		
		
		
			 try {
				connection=DBConnection.initializedb();
				 pt=connection.prepareStatement("insert into Ordered_Items values(?,?,?,?)");
			   	 pt.setInt(1, orderid);
				 pt.setInt(2, itemno);
				 pt.setInt(3, qty);
				 pt.setFloat(4, subtot);
				 pt.execute();
				 
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
				
	}



	@Override
	public ArrayList<Item> printbill(int orderid) {
		// TODO Auto-generated method stub
		
		ArrayList<Item> items=new ArrayList<>();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from RBill where OrderID=?");
			pt.setInt(1, orderid);
			ResultSet rs=pt.executeQuery();
			
			while(rs.next()) {
				
				Item item=new Item();
				item.setName(rs.getString(2));
				item.setQty(rs.getInt(3));
				item.setPrice(rs.getFloat(4));
				
				items.add(item);
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return items;
		
	}



	@Override
	public void addOrderPayment(int orderid, float amount,String type) {
		// TODO Auto-generated method stub
		
		int id=0;
		
		try {
			
			connection=DBConnection.initializedb();
		    pt=connection.prepareStatement("select PID from Orders where OrderID=?");
			pt.setInt(1,orderid);
			ResultSet result=pt.executeQuery(); 
			
			
			while(result.next()) {
				
				id=result.getInt(1);
			}
			pt.close();
			
			pt=connection.prepareStatement("update RestaurantPayment set Type=?,Amount=? where PaymentID=?");
			pt.setString(1, type);
			pt.setFloat(2, amount);
			pt.setInt(3, id);
			pt.execute();
			pt.close();
			
			pt=connection.prepareStatement("update Orders set OrderStatus=? where OrderId=?");
			pt.setString(1, "paid");
			pt.setInt(2, orderid);
			pt.executeUpdate();
			pt.close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public boolean checkOrderStatus(int orderid) {
		
		boolean status=false;
		String st=" ";
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select OrderStatus from Orders where OrderID=?");
			pt.setInt(1, orderid);
			ResultSet resultSet=pt.executeQuery();
			
			while(resultSet.next()) {
				
				st=resultSet.getString(1);
				
			}
			
			if(st.equals("paid")) {
				status=true;
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return status;
		
		
	
	}



	@Override
	public void deleteOrder(int orderid) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			ct=connection.prepareCall("exec DeleteOrder ?");
			ct.setInt(1, orderid);
			ct.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}



	@Override
	public void addGuestOrder(int orderid, int rreservationid, float amount, int billno) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			ct=connection.prepareCall("exec AddGuestOrder ?,?,?,?");
			ct.setInt(1, orderid);
			ct.setInt(2, rreservationid);
			ct.setFloat(3, amount);
			ct.setInt(4, billno);
			ct.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}



	

}
