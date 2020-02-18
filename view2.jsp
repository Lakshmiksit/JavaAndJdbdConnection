<!DOCTYPE html>
<html>
<body>

<%@ page import="java.sql.*"%>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ksit","root","");  

String cnd=request.getParameter("r");

if(cnd.equals("sr"))
{

	String regno=request.getParameter("regno");
	String sname="";
	int marks=0;
	Statement st=con.createStatement();  

	ResultSet rs=st.executeQuery("select * from student where regno='"+regno+"'");

	while(rs.next())	
	{
		sname=rs.getString(2);
		marks=rs.getInt(3);
	}
%>
	<table border=1>
	<caption>Student Details</caption>
	<tr>
		<td>Register Number
		<td>Student Name
		<td>Marks
	</tr>
	<tr>
		<td><%=regno%>
		<td><%=sname%>
		<td><%=marks%>
	</tr>
	</table>
<%
}
else
{
	String regno="";
	String sname="";
	int marks=0;

	Statement st=con.createStatement();  
	ResultSet rs=st.executeQuery("select * from student");	
	%>
	<table border=1>
	<caption>Student Details</caption>
	<tr>
		<td>Register Number
		<td>Student Name
		<td>Marks
	</tr>
	<%
		while(rs.next())
		{
			regno=rs.getString(1);
			sname=rs.getString(2);
			marks=rs.getInt(3);
			out.print("<tr>");
			out.print("<td>"+regno);
			out.print("<td>"+sname);
			out.print("<td>"+marks);
			out.print("</tr>");
		}
}
%>
</table>
</body>
</html>