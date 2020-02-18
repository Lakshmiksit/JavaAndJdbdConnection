<%@ page import="java.sql.*"%>
		
<%

String regno=request.getParameter("t1");
String sname=request.getParameter("t2");
int marks=Integer.parseInt(request.getParameter("t3"));

String temp="";

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ksit","root","");

Statement st=con.createStatement();

ResultSet rs=st.executeQuery("select * from student where regno='"+regno+"'");

while(rs.next())
{
	temp=rs.getString(1);
}

if(temp.equals(""))
{
	Statement st1=con.createStatement();
	String sql="insert into student values('"+regno+"','"+sname+"',"+marks+")";
	st1.executeUpdate(sql);
	out.print("Data Saved");	
}
else
{
	response.sendRedirect("studerror.html");
}

%>