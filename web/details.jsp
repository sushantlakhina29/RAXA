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
        <title>USER DETAIL</title>
        
        <jsp:include page="stylesheets.jsp" />
    </head>
    <body bgcolor="yellow">
<CENTER> <jsp:include page="header.jsp" />

<!-- <IMG SRC="BBS.gif" WIDTH=700 HEIGHT=80> </IMG>--></CENTER>
<marquee><font size="4" color="cyan">Give Blood, Save Life</font></marquee>
          
          <br><center><a href="homepage.jsp"><font color="blue" size="5">Go To HomePage</font></a></center>
          <br>
    <h1 align="center">USER DETAIL</h1>
    
     <%
    int ee;
    String pp;
    int flag=0;
    //out.print(request.getParameter("code"));
   ee=Integer.parseInt(request.getParameter("uid"));
   //out.print(request.getParameter("password"));
   pp=request.getParameter("password");
   
           try
            {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:abc","","");
            Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select count(*) from table1 where code=" + ee + " and  password like '" + pp + "'");
             
             out.print("<table border=1 >");
            while(rs.next())
            {
            flag= Integer.parseInt(rs.getString(1));
            
            }
            
             
            out.print("</table>");
       if (flag>=1)
            {
          //  out.print("login successfully");
          // response.sendRedirect("details.jsp");

            }
            else
                {
                out.print("login failed");
                response.sendRedirect("fail.jsp");
                }
            con.close();
        }
        catch(Exception e)
           {
          }
          
            
            
           
           
     
    %>
    <%
    int i;
    i=Integer.parseInt(request.getParameter("uid"));
    
    out.print("<center><form name=t action=update.jsp><INPUT TYPE=HIDDEN VALUE=" + i + " name=uid><INPUT TYPE=SUBMIT VALUE=UPDATE></FORM></center>");
    
    
    
    try
    {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:abc","","");
        Statement st=con.createStatement();
        
        ResultSet rs=st.executeQuery("select * from table1 where code=" + i);
        out.print("<center><table bgcolor=pink border=2 cellspacing=10 cellpadding=10>");
        
        while(rs.next())
            {
            out.print("<td>CODE<TD>" +rs.getString(1)+ "<TR><TD>FIRSTNAME<td>"+ rs.getString(2)+"<TR><TD>LASTNAME<td>" + rs.getString(3)+"<TR><TD>ADDRESS<td>" + rs.getString(4) + "<TR><TD>DATE of birth<td>" +rs.getString(5) + "<TR><TD>LAST TIME BLOOD DONATED<td>" +rs.getString(6) + "<TR><TD>GENDER<td>" +rs.getString(7) + "<TR><TD>BLOOD GROUP<td>" +rs.getString(8) + "<TR><TD>CONTACT NUMBER<td>" +rs.getString(9) + "<TR><TD>DISEASE<td>" +rs.getString(10) + "<TR><TD>NO OF TIMES BLOOD DONATED<td>" +rs.getString(11) + "<TR><TD>PASSWORD<td>" +rs.getString(12) + "<TR><TD>AGE<td>" +rs.getString(13) + "<TR><TD>PROFESSION<td>" +rs.getString(14) + "<TR><TD>CASTE<td>" +rs.getString(15) + "<TR><TD>CITY<td>" +rs.getString(16) + "<TR><TD>STATE<td>" +rs.getString(17) + "<TR><TD>COUNTRY<td>" +rs.getString(18) + "<TR><TD>NATIONALITY<td>" +rs.getString(19) + "<TR><TD>FORM SUBMISSION DATE<td>" +rs.getString(20)+"<TR><TD>EMAIL ID<TD>"+rs.getString(21));
            out.print("<tr>");
            }
    out.print("</table></center>");
              con.close();
              }
              
       catch(Exception e)
           {
           }
   
    %>
    
   
    <center><jsp:include page="footer.jsp" /> </center>
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
