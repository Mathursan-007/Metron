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
			 
		}//sfhdkh
			
<<<<<<< Upstream, based on branch 'master' of https://github.com/Mathursan-007/Metron.git
			    return connection;//hiiiiiiiiiiiiiee
	}
	
=======
			    return connection;//hi
	}//hello
<<<<<<< Upstream, based on branch 'master' of https://github.com/Mathursan-007/Metron.git
	//pull
>>>>>>> 4faba6f pull first
=======
	//pulll
>>>>>>> 936111c pull try
	
}
