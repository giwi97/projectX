<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cleaning Task</title>
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
    	<a id="leftNevTEXTbody" href="cleaning.jsp" style="color: yellow;" ><span class="glyphicon glyphicon-tasks"></span> New cleaning Task</a><br>
    	<div id="hrLine"></div> 
    	<a id="leftNevTEXTbody" href="maintenance.jsp"><span class="glyphicon glyphicon-wrench"></span> New maintenance task </a><br>
    	<div id="hrLine"></div> 
    	<a id="leftNevTEXTbody" href="grn.jsp"><span class="glyphicon glyphicon-list-alt"></span> Current Maint. tasks</a><br>
    	<div id="hrLine"></div> 
    	<a id="leftNevTEXTbody" href="cleaningList.jsp"><span class="glyphicon glyphicon-list-alt"></span> Current Cleaning tasks</a><br>
    	<div id="hrLine"></div>
    	<a id="leftNevTEXTbody" href="grn.jsp"><span class="glyphicon glyphicon-circle-arrow-down"></span> Requests</a><br>
    	<div id="hrLine"></div>
    	<a id="leftNevTEXTbody" href="grn.jsp"><span class="glyphicon glyphicon-tag"></span> Inventory</a><br>
    	<div id="hrLine"></div>
    	 
    </div>     
    <div id="topNavi">
    	<p id="topNavHeading"><span class="glyphicon glyphicon-tasks"></span> Assign New Cleaning Task</p> 
    </div>
    

	<div class="containerX"  style="margin-left:350px;margin-right:250px;">
  <h2>New Cleaning Task</h2><br>
  <form  id = "taskForm" action="Cleaning_servlet" method="POST" >
    <div class="form-group">
      <label id="attribute1">Room No.</label><br>
      	<select id="listRoom" name="room">
      		<option disabled selected value="">Select Room No. </option>
      		<option value="RM1">1</option>
      	
      	</select>
    </div>
    <div class="form-group">
      <label id="attribute2">Assign Employee</label><br>
      	<select id="listEmp" name="emp">
      		<option value="" disabled selected>Employee ID.</option>
      		<option value="EM1">1</option>
      	
      	</select>
    </div>
    
    <div class="form-group">
      <label id="attribute3">Description(optional)</label><br>
  		<textarea id="desc" rows="4" cols="18" placeholder="Enter Description." name="desc"></textarea>
    </div>
    


 
    <button type="submit" class="btn btn-primary">Submit</button>
     <button  type="reset" class="btn btn-primary" style="background-color:red;">Clear</button>
  </form>
</div>
	
    
    
  
  		
  		<%@include file="WEB-INF/view/footer.jsp" %>
  		
  	
     
        
</body>
</html>