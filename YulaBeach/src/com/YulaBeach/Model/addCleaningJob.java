package com.YulaBeach.Model;

import java.sql.Connection;

import java.sql.SQLException;
import java.sql.Statement;

import com.YulaBeach.Bean.newCleaningBean;
import com.YulaBeach.Util.YulaBeachDB;

public class addCleaningJob {
	
	
	String j1 = null;

	
	
	public String insertClJob(newCleaningBean nj) {
		
		YulaBeachDB db = new YulaBeachDB();
		Connection con = db.getCon();
		
		try {
			Statement s1 = con.createStatement();
			
			s1.executeUpdate("INSERT INTO cleaning (`room_no`,`emp_id`,`desc`) VALUE ('"+nj.getRoomNo()+"','"+nj.getEmpID()+"', '"+nj.getDescription()+"')");
		
			
			
			j1 = "New Cleaning Job Added Successfully";
		}catch(SQLException e) {
			
			e.printStackTrace();
		}
		
		return j1;
		
	}

}
