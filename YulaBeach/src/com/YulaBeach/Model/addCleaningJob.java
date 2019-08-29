package com.YulaBeach.Model;

import java.sql.Connection;

import java.sql.SQLException;
import java.sql.Statement;

import com.YulaBeach.Bean.newCleaningBean;
import com.YulaBeach.Util.YulaBeachDB;

public class addCleaningJob {
	
	
	String j1 = null;

	
	
	
	public String insertClJob(newCleaningBean nj) {
		
		
		//Creating new database object
		YulaBeachDB db = new YulaBeachDB();
		Connection con = db.getCon();
		
		try {
			
			//Creating new statement object
			Statement s1 = con.createStatement();
			
			//Getting current date
			java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
			
			
			
			s1.executeUpdate("INSERT INTO cleaning (`room_no`,`emp_id`,`desc`, `date`) VALUE ('"+nj.getRoomNo()+"','"+nj.getEmpID()+"', '"+nj.getDescription()+"', '"+sqlDate+"')");
		
			//Success message
			
			j1 = "New Cleaning Job Added Successfully";
		}catch(SQLException e) {
			
			e.printStackTrace();
		}
		
		return j1;
		
	}

}
