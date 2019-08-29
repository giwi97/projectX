<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
    
    <%
	String job_id = request.getParameter("job_id");
	String driver = "com.mysql.cj.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "yulabeach";
	String userid = "root";
	String password = "12345";
		try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	%>
    
    <%
		try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql ="select * from maintenance where job_id="+job_id;
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
	%>
    
    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">


<style>

input[type=text] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}



</style>




<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Update Maintenance List</title>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
     
    <link rel="stylesheet" style="text/css" href="styles/grn.css"> 
        <style>
     		<%@ include file="styles/formStyles.css"%>
		</style>
		
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>	
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>



</head>
<body>


		<%@include file="WEB-INF/view/header.jsp" %>
	
   
    <div id="leftNavi">
    	<input id="search" type="text" class="form-control" placeholder="Enter item code">
    	<input id="searchBtn" type="submit" class="btn btn-primary" value="Search Item"/>  
    	 
    	<div id="hrLine"></div>     	 
    	<a id="leftNevTEXT" href="inventory.jsp"><span class="glyphicon glyphicon-home"></span> Home</a><br>
    	<div id="hrLine"></div> 
    	<a id="leftNevTEXTbody" href="#"><span class="glyphicon glyphicon-th"></span> Dashboard</a><br>
    	<div id="hrLine"></div> 
    	<a id="leftNevTEXTbody" href="cleaning.jsp"><span class="glyphicon glyphicon-tasks"></span> New cleaning Task</a><br>
    	<div id="hrLine"></div> 
    	<a id="leftNevTEXTbody" href="maintenance.jsp"><span class="glyphicon glyphicon-wrench"></span> New maintenance task </a><br>
    	<div id="hrLine"></div> 
    	<a id="leftNevTEXTbody" href="maintenanceList.jsp"><span class="glyphicon glyphicon-list-alt"></span> Current Maint. tasks</a><br>
    	<div id="hrLine"></div> 
    	<a id="leftNevTEXTbody" href="cleaningList.jsp"><span class="glyphicon glyphicon-list-alt"></span> Current Cleaning tasks</a><br>
    	<div id="hrLine"></div>
    	<a id="leftNevTEXTbody" href="grn.jsp"><span class="glyphicon glyphicon-circle-arrow-down"></span> Requests</a><br>
    	<div id="hrLine"></div>
    	<a id="leftNevTEXTbody" href="grn.jsp"><span class="glyphicon glyphicon-tag"></span> Inventory</a><br>
    	<div id="hrLine"></div>
    	 
    </div>     
    <div id="topNavi">
    	<p id="topNavHeading"><span class="glyphicon glyphicon-tasks"></span> Update Maintenance List</p> 
    </div>
    
    
    <div class="containerX"  style="margin-left:350px;margin-right:250px;">
  	<h2>Update</h2><br>
  	
  	<form method="post" action="update-processMn.jsp">
	<input type="hidden" name = "job_id" value="<%=resultSet.getString("job_id") %>">
	<br>
	Job ID:<br>
	<input type="text" name = "job_id" value="<%=resultSet.getString("job_id") %>">
	<br>
	Room Number:<br>
	<input type="text" name="room_no" value="<%=resultSet.getString("room_no") %>">
	<br>
	Employee Number:<br>
	<input type="text" name="emp_id" value="<%=resultSet.getString("emp_id") %>">
	<br>
	Description:<br>
	<input type="text" name="desc" value="<%=resultSet.getString("desc") %>">

	<br><br>
	<input type="submit" class="btn btn-primary" value="submit">
	</form>
  	 </div>
  	 
  	 <%
		}
				connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}		
				
  	 %>


	<%@include file="WEB-INF/view/footer.jsp" %>

</body>
</html>