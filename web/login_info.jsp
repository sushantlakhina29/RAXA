<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
    <body background="bg.png">

    
    <%
    String ee;
    String pp;
    int flag=0;
    //out.print(request.getParameter("code"));
   ee=request.getParameter("uname");
   //out.print(request.getParameter("password"));
   pp=request.getParameter("pass");
   
           try
            {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:db","","");
            Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select count(*) from login where uname like '" + ee + "' and  password like '" + pp + "'");
             
             out.print("<table border=1>");
            while(rs.next())
            {
            flag= Integer.parseInt(rs.getString(1));
            
            }
            
             
            out.print("</table>");
       if (flag>=1)
            {
           out.print("<center>Login successfully");
           out.print("<br><table border=1 bgcolor=white>" +
 "<td colspan=2><img src=admin.gif><tr>" + 
                                    "<td><a href=rcdetails_1.jsp>RC DETAILS</a><td><a href=rcform.html>RC REGISTRATION</a>" +
                   "<tr><td><a href=licence_1.jsp>LICENCE DETAILS</a><td><a href=licenceform.html>LICENCE REGISTRATION</a>" +
                   "<tr><td><a href=insurance_1.jsp>INSURANCE DETAIL</a><td><a href=insuranceform.html>INSURANCE REGISTRATION</a>" +
                   "<tr><td><a href=pollutionc_1.jsp>POLLUTION CERTIFICATE DETAILS</a><td><a href=pcform.html>PC REGISTRATION</a>" +
                   "<tr><td><a href=querylist_1.jsp>QUERY LIST</a><td><a href=replyquery.html>MAKE REPLY</a></font>");
           //response.sendRedirect("manage.html");

            }
            else
                {
                out.print("login failed");
                response.sendRedirect("index.html");
                }
            con.close();
        }
        catch(Exception e)
           {
          }
          
            
            
           
           
     
    %>
            
    
    
    
    
    
    
    
    
    
    <%--
    This example uses JSTL, uncomment the taglib directive above.
    To test, display the page like this: index.jsp?sayHello=true&name=Murphy
    --%>
    <%--
    <c:if test="${param.sayHello}">
        <!-- Let's welcome the user ${param.name} -->
        Hello ${param.name}!
    </c:if>
    --%>
    
    </body>
</html>
