<%-- 
    Document   : insquery
    Created on : Apr 4, 2011, 11:37:07 PM
    Author     : mandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        try {
           String t1,t2,t3,t4,t5,t6,t7,t8,t9,t10;
           t1=request.getParameter("t1");
           t2=request.getParameter("t2");
           t3=request.getParameter("t3");
           t4=request.getParameter("t4");
           t5=request.getParameter("t5");
           t6=request.getParameter("t6");
        

                               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:db","","");
            Statement sto=con.createStatement();
            sto.executeUpdate("insert into LICENCED values('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "')");
          //  sto.executeUpdate("insert into RCDETAILS values('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "','" + t7 + "','" + t8 + ','" + t9 + "','" + t10 + "')");
            out.print("<center><font size=6 color=green>LICENCE DETAILS SUBMITTED</font></center>");
            con.close();
        } catch(Exception e) {
        }
        
        %>
        
    </body>
</html>
