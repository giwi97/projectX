package com.YulaBeach.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.YulaBeach.Bean.newMaintenanceBean;
import com.YulaBeach.Model.addMaintenanceJob;

/**
 * Servlet implementation class Maintenance_servlet
 */

public class Maintenance_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String roomNo;
		String empID;
		String Description;
		
		
		
		
		
		roomNo = request.getParameter("room");
		empID = request.getParameter("emp");
		Description = request.getParameter("desc");
		
		newMaintenanceBean newMnt = new newMaintenanceBean();
		
		newMnt.setRoomNo(roomNo);
		newMnt.setEmpID(empID);
		newMnt.setDescription(Description);
		
		addMaintenanceJob admn = new addMaintenanceJob();
		
		String j2 = admn.insertMnJob(newMnt);
		
		response.sendRedirect("http://localhost:8080/YulaBeach/maintenance.jsp");
		System.out.println(j2);
		
		
	}

}
