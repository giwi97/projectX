package com.YulaBeach.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.YulaBeach.Bean.newCleaningBean;
import com.YulaBeach.Model.addCleaningJob;

/**
 * Servlet implementation class Cleaning_servlet
 */

public class Cleaning_servlet extends HttpServlet {
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
		
		newCleaningBean newCln = new newCleaningBean();
		
		newCln.setRoomNo(roomNo);
		newCln.setEmpID(empID);
		newCln.setDescription(Description);
		
		addCleaningJob adjb = new addCleaningJob();
		
		String j1 = adjb.insertClJob(newCln);
		
		response.sendRedirect("http://localhost:8080/YulaBeach/cleaning.jsp");
		System.out.println(j1);
		
		
		
		
	}

}
