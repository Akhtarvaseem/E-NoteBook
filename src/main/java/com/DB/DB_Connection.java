package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB_Connection {

	public static Connection getConnection(){
		
		
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
			
				e.printStackTrace();
			}
			
			String url="jdbc:mysql://localhost:3306/e-notebook";
			String user="root";
			String pass="python@123";
			
			Connection con = null;
			try {
			con = DriverManager.getConnection(url,user,pass);
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
			if(con!=null) {
				return con;
			}
			else {
				
				return null;
			}
	}
	

	
}
