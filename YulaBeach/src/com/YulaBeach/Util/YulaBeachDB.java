package com.YulaBeach.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class YulaBeachDB {
	
	private static Connection con = null; 
	public Connection getCon() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yulabeach","root","12345");
			
		} catch (ClassNotFoundException e) {
			
			 e.printStackTrace();
			 
		}catch (SQLException e) {	
			
			 e.printStackTrace();
		}
		
	return con;
		
	}

}
