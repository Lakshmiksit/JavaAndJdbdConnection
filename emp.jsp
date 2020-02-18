<%@ page import="java.sql.*"%>
<%
int empno=Integer.parseInt(request.getParameter("t1"));
String ename=request.getParameter("t2");
String dept=request.getParameter("t3");
String desig=request.getParameter("t4");
int salary=Integer.parseInt(request.getParameter("t5"));

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ksit","root","");
Statement st=con.createStatement();
String sql="insert into emp values("+empno+",'"+ename+"','"+dept+"','"+desig+"',"+salary+")";

st.executeUpdate(sql);
out.print("Your Data Is Secured here");
%>
