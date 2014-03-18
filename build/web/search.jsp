<%@page contentType="text/html"%>
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
    <title></title>
    
    <jsp:include page="stylesheets.jsp" />
    
  </head>
  <body>
      <CENTER> <jsp:include page="header.jsp" />

<!-- <IMG SRC="BBS.gif" WIDTH=700 HEIGHT=80> </IMG>--></CENTER>
          <br>
          <br><center><a href="homepage.jsp"><font color="blue" size="5">Go To HomePage</font></a></center>
          <br>
      <form>
          
          <table align="center" border="1">
              
              <tr>
                  <td colspan="5"><font color="cyan"><h2><b>Click on specific link according to which you want to search the donors</b></h2></font></td>
                  <TD ROWSPAN="2" BGCOLOR=WHITE><CENTER>
                  <IMG SRC="donateblood.gif" WIDTH=250 HEIGHT=100 ><BR><IMG SRC="SL.gif" height="40" WIDTH="250"></CENTER></td>

              <tr>
                  <td align="center"><h4><a href="sellall.jsp">By Blood Group</a></h4></td>
                  <td align="center"><h4><a href="sellage.jsp">By Age</a></h4></td>
                  <td align="center"><h4><a href="sellgender.jsp">By Gender</a></h4></td>
                  <td align="center"><h4><a href="sellloc.jsp">By Location</a></h4></td>
                  <td align="center"><h4><a href="sellnation.jsp">By Nation</a></h4></td>
              </tr>
               
          </table>
          
      </form>
      <center><jsp:include page="footer.jsp" /> </center>
  </body>
</html>
