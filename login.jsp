<%@ page import = "java.sql.*"%>

<%

String username=request.getParameter("t1");
String password=request.getParameter("t2");
String temp="";

Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ksit","root","");  

Statement st=con.createStatement();  
	
ResultSet rs=st.executeQuery("select * from login where username='"+username+"' and password='"+password+"'");

while(rs.next())
{
	temp=rs.getString(1);
}

if(temp.equals(""))
{
	response.sendRedirect("loginerror.html");
}
else
{
	out.print("Success");
}

%>