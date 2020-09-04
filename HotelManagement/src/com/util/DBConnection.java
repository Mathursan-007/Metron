package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	private static Connection connection;
	
	public static Connection initializedb() throws ClassNotFoundException,SQLException {
		   
		
		if (connection == null || connection.isClosed()) {
			    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				String url="jdbc:sqlserver://localhost:1433;databaseName=Hotel";
			    connection=DriverManager.getConnection(url,"admin","admin");
			 
		} 
			
			    return connection;
	}
	
}	

			

