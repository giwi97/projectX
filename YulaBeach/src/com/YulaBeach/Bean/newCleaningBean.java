package com.YulaBeach.Bean;

public class newCleaningBean {
	
	
	
	String roomNo;
	String empID;
	String Description;
	
	
	public newCleaningBean(String roomNo, String empID, String description) {
		
		super();
		
		this.roomNo = roomNo;
		this.empID = empID;
		Description = description;
	
	}


	public newCleaningBean() {
		// TODO Auto-generated constructor stub
	}


	public String getRoomNo() {
		return roomNo;
	}


	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}


	public String getEmpID() {
		return empID;
	}


	public void setEmpID(String empID) {
		this.empID = empID;
	}


	public String getDescription() {
		return Description;
	}


	public void setDescription(String description) {
		Description = description;
	}

	
	
	
	
	

}
