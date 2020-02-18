<%@ page import = "java.sql.*"%>

<%

String usn=request.getParameter("t1");
String sname=request.getParameter("t2");
int marks=Integer.parseInt(request.getParameter("t3"));

 
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ksit","root","");  

Statement st=con.createStatement();  
String sql="update student set sname='"+sname+"', marks="+marks+" where usn='"+usn+"'";
st.executeUpdate(sql);
out.print("Recod Updated");

%>