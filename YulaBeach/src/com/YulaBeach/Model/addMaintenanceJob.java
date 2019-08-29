package com.YulaBeach.Model;

import java.sql.Connection;

import java.sql.SQLException;
import java.sql.Statement;

import com.YulaBeach.Bean.newMaintenanceBean;
import com.YulaBeach.Util.YulaBeachDB;

public class addMaintenanceJob {
	
	String j2 = null;
	
	public String insertMnJob(newMaintenanceBean nm) {
		
		//Creating new database object
		YulaBeachDB db = new YulaBeachDB();
		Connection con = db.getCon();
		
		try {
			
			//Create new statement object
			Statement s2 = con.createStatement();
			
			//Getting current date
			
			java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
			
			s2.executeUpdate("INSERT INTO maintenance (`room_no`,`emp_id`,`desc`, `date`) VALUE ('"+nm.getRoomNo()+"','"+nm.getEmpID()+"', '"+nm.getDescription()+"', '"+sqlDate+"')");
		
			
			
			j2 = "New Maintenance Job Added Successfully!!";
		}catch(SQLException e) {
			
			e.printStackTrace();
		}
		
		return j2;
		
	}

}
