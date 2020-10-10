package com.service;

import java.sql.CallableStatement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.model.Supplier;
import com.util.DBConnection;

public class SupplierImpl implements ISupplier{



//Add set of suppliers
private static Connection connection;
private static PreparedStatement pt;
private static Statement st;
private static CallableStatement ct;
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

//update set of suppliers

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


//delete set of suppliers

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

}