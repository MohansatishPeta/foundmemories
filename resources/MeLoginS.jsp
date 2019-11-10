<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("mailid");    
    String pwd = request.getParameter("psw");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from renovatorsap where mailid='" + userid + "' and psw='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid Password or Mail Id <a href='melogin.html'>try again</a>");
    }
%>