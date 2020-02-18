<!DOCTYPE html>
<html>
<body>
<form name="f" method="post" action="view2.jsp">
<table>
<tr>
     <td><input type="radio" name="r" value="sr">SELECT USN
    <td><select name="regno">
        <option value="1k">1k
        <option value="2k">2k
      </select>
</tr>
<%@ page import="java.sql.*"%>
<%
   String x="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ksit","root","");

Statement st=con.createStatement();

ResultSet rs=st.executeQuery("select * from student");
while(rs.next())
{
 x=rs.getString(1);
 out.print("<option value="+x+">"+x);
}
%>
</select>
</tr>

<tr>
 <td><input type="radio" name="r" value="all">All
 </tr>
<tr>
<td><td><input type="submit" name="s" value="Show">
</tr>
</table>
</form>
</body>
</html>