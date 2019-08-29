<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/yulabeach";%>
<%!String user = "root";%>
<%!String psw = "12345";%>

<%
String job_id = request.getParameter("job_id");
String room_no=request.getParameter("room_no");
String emp_id=request.getParameter("emp_id");
String desc=request.getParameter("desc");

if(job_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(job_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update maintenance set `job_id`=?,`room_no`=?,`emp_id`=?,`desc`=? where `job_id`="+job_id;
ps = con.prepareStatement(sql);
ps.setString(1,job_id);
ps.setString(2, room_no);
ps.setString(3, emp_id);
ps.setString(4, desc);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>