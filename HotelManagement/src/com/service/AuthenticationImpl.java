package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.User;
import com.util.DBConnection;

public class AuthenticationImpl {

	private Connection connection;
	private PreparedStatement pt;
	
	public boolean login(String un,String pwd){
		
		boolean user=false;
		
		
		try {
			
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Users where Username=? and Password=?");
			pt.setString(1, un);
			pt.setString(2, pwd);
			ResultSet res=pt.executeQuery();
			user=res.next();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return user;
						
	}
	
	
	
}
