<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">

    <title>RenovatorsAP</title>
    <link rel="icon" type="image/png" href="resources/icon.png"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="resources/mscss.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
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
      <td> <marquee class="mrq" > <b>We team Renovators provides the information about the Mechanics near by your location..Makes life a little easier.</b><marquee> </td>

  </tr>
  <tr>
  <td style="border: 1px solid black;"  width=900>
  </tr>
  <tr>
    <td   width=900; align="right">

      <%
          if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
      %>
      You are not logged in<br/>
      <a href="index.jsp">Please Login</a>
      <%} else {
      %>
      <center>Welcome <%=session.getAttribute("userid")%></center>
      <button><a href='logout.jsp' class="vg">Log out</a></button>&nbsp&nbsp&nbsp
      <%
          }
      %>
    </td>
  </tr>
  <tr>
  <td style="border: 1px solid black;"  width=450>
  </tr>
  <tr>
  <td height="20"></td>
  </tr>
  <tr>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%
String a=request.getParameter("uname");
String b=request.getParameter("psw");
String c=request.getParameter("mobno");
String d=request.getParameter("vname");
String e=request.getParameter("district");
String f=request.getParameter("mandal");
String g=request.getParameter("specialization");
String h=request.getParameter("mailid");
try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
PreparedStatement ps=con.prepareStatement(  
"update renovatorsap set uname=?,psw=?,mobno=?,vname=?,district=?,mandal=?,specialization=? where mailid=?");  
  
ps.setString(1,a);  
ps.setString(2,b);  
ps.setString(3,c);
ps.setString(4,d);  
ps.setString(5,e);  
ps.setString(6,f);
ps.setString(7,g);
ps.setString(8,h);  
   
  
          
int i=ps.executeUpdate();  
if(i>0)  {
out.print("<h2><center>Your details are updated Successfully</center></h2>");
			RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
			rd.include(request,response);  
       
  }        
}
catch (ClassNotFoundException e2) {e2.printStackTrace();}  
catch (SQLException e1) {e1.printStackTrace();}
  %>
    <td width="431" valign="top" align="center">


      <form action="update.jsp" method="post" autocomplete="on">
    <table width="431"  cellpadding="0" cellspacing="0" style="height: auto;border: 2px solid black;  padding: 28px; padding: 28px;border-radius: 18px;">
      <tr>
      <td width="200"  align="center" colspan="2"><img src="resources/icon.png" width="200"  border="0"  /></td>
      </tr>


   <tr   width="431" >
    <td  height="50" align="center" colspan="2">
  <h2><b class="vg">Update your details<b></h2></td>
  </tr>
  <tr>
  <td height="10"></td>
  </tr>
  <tr>
  <td colspan="2">  Username &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<P class="fas fa-user">&nbsp&nbsp  </P><input class="inputfields" type="text" required name="uname"></td>
  </tr>
  <tr>
  <td colspan="2">  Password &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<P class="fas fa-key">&nbsp&nbsp  </P><input class="inputfields" type="password" required name="psw"></td>
  </tr>
  <tr>
  <td colspan="2">  Mobile No &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<P class="fas fa-phone"> &nbsp  </P><input class="inputfields" type="text" required name="mobno"></td>
  </tr>
  <tr>
  <td colspan="2">  Village Name &nbsp&nbsp&nbsp<P class="fas fa-home"> &nbsp  </P><input class="inputfields" type="text" required name="vname"></td>
  </tr>
  <tr>
  <td height="35">Select State &nbsp&nbsp&nbsp&nbsp <P class="fas fa-map-marker-alt"></P></td>
<td><select id="State" name="state">
    <option value="Andhra Pradesh">Andhra Pradesh</option>
  </select>
</td>
</tr>
<tr>
  <td height="35" class="contactheading">Select District &nbsp&nbsp<P class="fas fa-map-marker-alt"></P></td>
  <td>

  <select id="continent" onchange="districtChange(this);" name="district" required>
     <option value="">Select a District</option>
     <option value="Anantapur">Anantapur</option>
     <option value="Chittoor">Chittoor</option>
     <option value="East Godavari">East Godavari</option>
     <option value="Guntur">Guntur</option>
     <option value="Kadapa">Kadapa</option>
     <option value="Krishna">Krishna</option>
     <option value="Kurnool">Kurnool</option>
     <option value="Nellore">Nellore</option>
     <option value="Prakasam">Prakasam</option>
     <option value="Srikakulam">Srikakulam</option>
     <option value="Visakhapatnam">Visakhapatnam</option>
     <option value="Vizianagaram">Vizianagaram</option>
     <option value="West Godavari">West Godavari</option>

   </select>
</td>
   <tr>
   <!--<label for="country">Select a country</label>-->
   <td height="35" class="contactheading">Select a City &nbsp&nbsp&nbsp&nbsp<P class="fas fa-map-marker-alt"></P> </td>
   <td><select id="district" name="mandal" required>
     <option>Select a City</option>
   </select>
 </td>
</td>
</tr>
<tr>
  <td >
    Specialized in repairing  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<P class="fas fa-tools"></P>
  </td>


  <td rowspan="2">

    <select name="specialization">
  <option value="bikes">Bikes</option>
  <option value="cars">Cars</option>
  <option value="other">Other heavy vehicles</option>
  <option value="carsbikes">Cars+Bikes</option>
  <option value="carsother">Cars+Other heavy vehicles</option>
</select>
  </td>
</tr>
<tr>
<td height="10"></td>
</tr>
<tr>
<td>
<input  type="hidden" name="mailid" value=<%=session.getAttribute("userid")%>>
</td>
</tr>
  <tr>
    <td align="center" colspan="2"><button type="submit">Update</button></td>
    </tr>

    </td>

  </tr>
  <tr>
  <td height="10"></td>
  </tr>



    </table>
    </form>
  </td>
  </tr>
  <tr>
  <td height="20"></td>
  </tr>
  <tr>
  <td style="border: 1px solid black;"  width=450>
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

<tr width=450>
  <td align="right">
    <p class="ms">Designed, Developed and Maintained by Mohan Satish Peta&nbsp;</p>
  </td>
</tr>
<tr>
<td style="border: 1px solid black;"  width=450>
</tr>

</table>
</tr>




  </table>
</table>

</body>
</html>




