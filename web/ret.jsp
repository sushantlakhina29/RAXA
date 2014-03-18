<%@page contentType="text/html"%>
<%@page import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>
<%--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    <h1>JSP Page</h1>
    
    <%
   try
       {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:abc","","");
        Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from table1");
        out.print("<table border=1>");
            out.print("<th>CODE<TH>FIRST NAME<TH>LASTNAME<TH>ADDRESS<TH>DOB<TH>LASTDONATE<TH>GENDER<TH>BLOOD GROUP<TH>CONTACT NO<TH>DISEASE<TH>NUMBER OF TIME DONATED<TH>AGE<TH>PROFESSION<TH>CASTE<TH>CITY<TH>STATE<TH>COUNTRY<TH>NATIONALITY<TH>DATE OF SUBMISSION OF FORM<TH>EMAIL_ID");
           while(rs.next())
            {
                 out.print("<tr>");
           
             out.print("<td>" + rs.getString(1)+"<td>" + rs.getString(2)+"<td>" + rs.getString(3)+"<td>" + rs.getString(4) + "<td>" +rs.getString(5) + "<td>" +rs.getString(6) + "<td>"  +rs.getString(7) + "<td>" +rs.getString(8) + "<td>" +rs.getString(9) + "<td>" +rs.getString(10) + "<td>" +rs.getString(11)  + "<td>" +rs.getString(13) + "<td>" +rs.getString(14) + "<td>" +rs.getString(15) + "<td>" +rs.getString(16) + "<td>" +rs.getString(17) + "<td>" +rs.getString(18) + "<td>" +rs.getString(19) + "<td>" +rs.getString(20)+ "<TD>" + rs.getString(21));
           }
            out.print("</table>");
        con.close();
        }
        catch(Exception e)
           {
          }
   
    %>
    
    </body>
</html>
