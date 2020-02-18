<!DOCTYPE html>
<html>
<body>
<form name="f" method="post" action="update2.jsp">
Select USN :<select name="t1">

<%@ page import = "java.sql.*"%>
<%

String x="";

Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ksit","root","");  
Statement st=con.createStatement();  
	
ResultSet rs=st.executeQuery("select * from student");

while(rs.next())
{
	x=rs.getString(1);
	out.print("<option value='"+x+"'>"+x);
}

%>

</select>
<input type="submit" name="s" value="Show">
</form>
</body>
</html>