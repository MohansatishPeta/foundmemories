<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">

    <title>RenovatorsAP</title>
    <link rel="icon" type="image/png" href="resources/icon.png"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="resources/mscss.css">
  <script type="text/javascript" src="resources/msjs.js"></script>
  <style>
  body{
     background-image: url("resources/bg.jpg");
  }
  </style>
</head>

<body>
  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0" class="bg">
    <tr>
    <td valign="top">
    <table width="900" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffcecb98">
    <tr>
    <td height="108" valign="top" align="center" >
  <img src="resources/logo.png" width="400" height="106" border="0"  /></td>
     </tr>
  <tr>
  <td style="border: 1px solid black;"  width=450;>
  </tr>
    <tr>
      <td> <marquee class="mrq" > <b>We team Renovators provides the information about the Mechanics near by your location..Makes life a little easier.</b><marquee> </td>

  </tr>
  <tr>
  <td style="border: 1px solid black;"  width=900>
  </tr>
  <tr>
    <td   width=900 align="right">
    <a href="index.html">  <button style="background-color:#ffcecb98" >Home</button></a>
      <a href="vision_mission.html">  <button style="background-color:#ffcecb98" >Vision & Mission </button></a>
      <a href="about_us.html">  <button style="background-color:#ffcecb98">About us</button></a>

    </td>
  </tr>
  <tr>
  <td style="border: 1px solid black;"  width=900>
  </tr>
  <tr>
<td width=900; height=545 align="Center" valign="top">
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
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
Statement stmt = con.createStatement(); 
 String query="select * from renovatorsap where district='"+b+"'and mandal='"+c+"'";
 ResultSet rs = stmt.executeQuery(query);
	     out.println("<html><body>");
             out.println("<center><h1><font color=black>Mechanic details</font></h1></center>");
              out.println("<center><table border=2 width=100% bordercolor=maroon padding:25px>");
             out.println("<tr><th><font color=blue>Name</font></th><th><font color=blue>Mobile Number</font></th><th><font color=blue>Village Name</font></th><th><font color=blue>Mandal</font></th><th><font color=blue>District</font></th><th><font color=blue>State</font></th><th><font color=blue>Specialized in</font></th><tr>");
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
</td>
  </tr>
  <tr>
  <td style="border: 1px solid black;"  width=450;>
  </tr>

  <tr width=450>
    <td align="right">
      Follow us on: &nbsp;<a href="https://www.instagram.com/mohansatishpeta/"><img src="resources/insta.png" width="15"></a> <a href="https://www.facebook.com/profile.php?id=100006184337118"><img src="resources/fb.png" width="15"></a>&nbsp;
    </td>
  </tr>
  <tr width=380>
    <td align="right">
      Contact us on: <a href="mailto:renovatorsap@gmail.com" class="vg" style="color:blue"><img src="resources/gmail.png" width="18">&nbsp;renovatorsap@gmail.com</a>&nbsp;
    </td>
  </tr>
<tr width=450;>
  <td align="right">
    <p class="ms">Designed, Developed and Maintained by Mohan Satish Peta&nbsp;</p>
  </td>
</tr>
<tr>
<td style="border: 1px solid black;"  width=450;>
</tr>

</table>
</tr>




  </table>
</table>

</body>
</html>
