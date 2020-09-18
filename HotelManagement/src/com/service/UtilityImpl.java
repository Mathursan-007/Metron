package com.service;

import java.sql.CallableStatement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.model.Utility;
import com.util.DBConnection;

public class UtilityImpl implements IUtility{



//Add set of utility
private static Connection connection;
private static PreparedStatement pt;
private static Statement st;
private static CallableStatement ct;
public void AddUtility(Utility utility) {
try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("insert into Utility_Bill (UPayment_ID,Description,Amount,Date) values(?,?,?,?)");
pt.setInt(1, utility.getPayment_ID());
pt.setString(2, utility.getDescription());
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
util.setDescription(result.getString(2));
util.setAmount(result.getFloat(3));
util.setDate(result.getString(4));


utility.add(util);
}

} catch (Exception e) {

}

return utility;
}

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
			utility.setDescription(result.getString(2));
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

//update set of utility

@Override
public void UpdateUtility(Utility utility) {
	// TODO Auto-generated method stub
	
	try {
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("UPDATE Utility_Bill SET Description=?, Amount=?, Date=? WHERE UPayment_ID=?");
		pt.setString(1, utility.getDescription());
		pt.setFloat(2, utility.getAmount());
		pt.setString(3, utility.getDate());
		pt.setInt(4, utility.getPayment_ID());

		pt.executeUpdate();
		
	} catch (Exception e) {
		
	}
	
}


//delete set of utility

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

}




