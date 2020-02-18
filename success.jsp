
<%@ page import="java.sql.*"%>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ksit","root","");  

String cnd=request.getParameter("t1");

if(cnd.equals(""))
{
	String username=request.getParameter("username");
               
               String fname="";
	String lname="";
               String addr="";
	String gender="";
             	String mobileno="";
       String skillset="";


	Statement st=con.createStatement();  

	ResultSet rs=st.executeQuery("select * from register where username='"+username+"'");

	while(rs.next())	
	{
		fname=rs.getString(3);
		lname=rs.getString(4);
		addr=rs.getString(5);
		gender=rs.getString(6);
		mobileno=rs.getString(7);
		skillset=rs.getString(8);

		out.print("<tr>");
		out.print("<td>"+fname);
		out.print("<td>"+lname);
		out.print("<td>"+addr);
		out.print("<td>"+gender);
		out.print("<td>"+mobileno);
		out.print("<td>"+skillset);
		
		
		out.print("</tr>");
	}

}
else{
out.print("Error");
}
%>