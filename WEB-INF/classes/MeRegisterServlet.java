<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%
String a=request.getParameter("state");
String b=request.getParameter("district");
String c=request.getParameter("mandal");
          
try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:XE","system","manager"); 
 
 String query="select * from renovatorsap where district="+b+"and mandal="+c;
 



         ResultSet rs = stmt.executeQuery(query);
	     out.println("<html><body bgcolor=cyam>");
             out.println("<center><h1><font color=blue>LOGIN USERS DETAILS</font></h1></center>");
             out.println("<hr size=10 color=green width=100%>");
             out.println("<center><table border=2 width=60% height=60% bordercolor=maroon>");
             out.println("<tr><th><font color=cyan>Name</font></th><th><font color=cyan>Mobile Number</font></th><th><font color=cyan>Village Name</font></th><th><font color=cyan>Mandal</font></th><th><font color=cyan>District</font></th><th><font color=cyan>State</font></th><th><font color=cyan>Specialized in</font></th><tr>");
             while (rs.next()) {
                 String n1= rs.getString("uname");
                 String n2 = rs.getString("mobno");
                 String n3= rs.getString("vname");
                 String n4 = rs.getString("mandal");
                 String n5= rs.getString("district");
                 String n6 = rs.getString("state");
		 String n7 = rs.getString("specialization");
                  
                 out.println("<tr><td>" + n1 + "</td><td>" + n2 + "</td><td>" + n3 + "</td><td>" + n4 + "</td><td>" + n5 + "</td><td>" + n6 + "</td><td>" + n7 + "</td></tr>"); 
             }
             out.println("</table></center>");
             out.println("</html></body>");
             con.close();
            }
             catch (Exception e) {
             out.println("error");
         }
  %>