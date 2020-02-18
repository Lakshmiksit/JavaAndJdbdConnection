<!DOCTYPE html>
<html>
<body>


<%@ page import = "java.sql.*"%>
<%

String usn=request.getParameter("t1");
String sname="";
String marks="";

Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ksit","root","");  
Statement st=con.createStatement();  
	
ResultSet rs=st.executeQuery("select * from student where usn='"+usn+"'");

while(rs.next())
{
	sname=rs.getString(2);
	marks=rs.getString(3);
}

%>


<form name="f" method="post" action="update3.jsp">
USN :<input type="text" name="t1" value="<%=usn%>">
<br>
Student Name :<input type="text" name="t2" value="<%=sname%>">
<br>
Marks :<input type="text" name="t3" value="<%=marks%>">
<br>
<input type="submit" name="s" value="Update">
</form>
</body>
</html>