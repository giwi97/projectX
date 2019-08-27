package com.YulaBeach.Model;

import java.sql.Connection;

import java.sql.SQLException;
import java.sql.Statement;

import com.YulaBeach.Bean.newMaintenanceBean;
import com.YulaBeach.Util.YulaBeachDB;

public class addMaintenanceJob {
	
	String j2 = null;
	
	public String insertMnJob(newMaintenanceBean nm) {
		
		YulaBeachDB db = new YulaBeachDB();
		Connection con = db.getCon();
		
		try {
			Statement s2 = con.createStatement();
			
			s2.executeUpdate("INSERT INTO maintenance (`room_no`,`emp_id`,`desc`) VALUE ('"+nm.getRoomNo()+"','"+nm.getEmpID()+"', '"+nm.getDescription()+"')");
		
			
			
			j2 = "New Cleaning Job Added Successfully";
		}catch(SQLException e) {
			
			e.printStackTrace();
		}
		
		return j2;
		
	}

}
