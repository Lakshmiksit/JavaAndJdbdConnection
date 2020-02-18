
<%@ page import = "java.sql.*"%>

<%

String username=request.getParameter("t1");
String password=request.getParameter("t2");
String fname=request.getParameter("t3");
String lname=request.getParameter("t4");
String addr=request.getParameter("t5");
String gender=request.getParameter("t6");

String mobileno=request.getParameter("t7");


String skillset=request.getParameter("t8");

String temp="";

Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ksit","root","");  

Statement st=con.createStatement();  
	
ResultSet rs=st.executeQuery("select * from register where username='"+username+"'");

while(rs.next())
{
	temp=rs.getString(1);
}

if(temp.equals(""))
{
	Statement st1=con.createStatement();  
	String sql="insert into register values('"+username+"','"+password+"','"+fname+"','"+lname+"','"+addr+"','"+gender+"','"+mobileno+"','"+skillset+"')";

	st1.executeUpdate(sql);
	response.sendRedirect("login.html");

	
}
else
{
	out.print("Error");	
}
%>