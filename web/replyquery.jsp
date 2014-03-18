<!-- 
    Document   : queryform
    Created on : Apr 4, 2011, 11:50:31 PM
    Author     : mandeep
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <script language="javascript">
      function a()
      {
          if ((f.t1.value=="") || (f.t2.value==""))
       {
           alert ("Please donot leave * field blank");
              return false;
           }
else
    {
      return true;  
              
    }
      }
      
      </script>
  <body bgcolor="ffaaff">
      <center>
          <font size="6">Reply Query</font>
      <form name="f" action="rquery.jsp" onsubmit="return a();">
      <table border="1">
          
          
          <td>Query ID
          <td>
              
         <%     
         
         out.print("<input type=hidden name=t1 value=" + request.getParameter("qid") + ">");
                 
                 %>
         
         <tr>
          <td>REPLY
          <td><input type="text" name="t2">
          <tr>
          
          <td>
          <td><center><input type="SUBMIT" value="SUBMIT QUERY"></center>
          <tr>
                  
          
      </table>
      </center>
  </form>
  </body>
</html>
