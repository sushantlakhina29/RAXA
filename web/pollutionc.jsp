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
        <title>Report</title>
        
      
    <script language="JavaScript" type="text/javascript">
function goback()
{
    history.go(-1);
}
    </script>
    </head>
    <body background=bg.png>
<CENTER> 

<!-- <IMG SRC="BBS.gif" WIDTH=700 HEIGHT=80> </IMG>--></CENTER>
<br>
<br><center><a href="index.html"><font color="blue" size="5">Go To HomePage</font></a></center>
<br>
<h2><center>POLLUTION CERITIFICATE DETAILS</center></h2><br>
    <center>
    <form name="ff" action="pollutionc.jsp">
        Search By RC NUMBER
   <input type=text name="t1">
       <input type="submit">
    </form>
   </center>
    <%
int t=0;
      try
       {
        String s="";
    try
            {
    s=request.getParameter("t1");
    }
    catch(Exception e)
            {
        s="";
    }
   
       
       
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:db","","");
        Statement st=con.createStatement();
    // ResultSet rs=st.executeQuery("select * from licenced where licenceno like '" + request.getParameter("licno") + "'");
 ResultSet rs=st.executeQuery("select * from pollutionc where rcno like '%" + s + "%'");
        
        out.print("<center><table border=1 bgcolor=pink>");
               
               out.print("<th>REG NO<TH>NAME<TH>RC NUMBER<TH>DETAILS<TH>VALID UPTO");
            while(rs.next())
            {
          
                   out.print("<tr>");
                   
                    out.print("<td>" + rs.getString(1)+"<td>" + rs.getString(2)+"<td>" + rs.getString(3)+"<td>" + rs.getString(4) + "<td>" +rs.getString(5));          
                    t++;        
                       }
            out.print("</table></center>");
        con.close();
        }
        catch(Exception e)
           {
          }
   if (t==0)
            {
        out.print("<center>RECORD DOES NOT EXISTS<center>");
        }
    
    %>
    <BR>
     
     
     <form>
         <table align="center" border="0">
             <tr>
                 <td align="center"></td>
                 <td></td>
                 <td></td>
                 <td align="center"><INPUT name="btnBack" id="btnBack" type="button" onclick="goback()" value="Back" ></td>
             </tr>
         </table>
     </form>
  
  <center></center>
    </body>
</html>
