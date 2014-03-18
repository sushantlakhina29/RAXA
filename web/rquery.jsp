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
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:db","","");
            Statement sto=con.createStatement();
            
  sto.executeUpdate("update querylist set reply='" + t2 + "' where qid=" + Integer.parseInt(t1));           

                       out.print("<center><font size=6 color=green>Reply made successfully</font></center>");
            con.close();
        } catch(Exception e) {
        }
        
        %>
        
    </body>
</html>
