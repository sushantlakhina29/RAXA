package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class insurance_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Report</title>\n");
      out.write("        \n");
      out.write("      \n");
      out.write("    <script language=\"JavaScript\" type=\"text/javascript\">\n");
      out.write("function goback()\n");
      out.write("{\n");
      out.write("    history.go(-1);\n");
      out.write("}\n");
      out.write("    </script>\n");
      out.write("    </head>\n");
      out.write("    <body background=bg.png>\n");
      out.write("<CENTER> \n");
      out.write("\n");
      out.write("<!-- <IMG SRC=\"BBS.gif\" WIDTH=700 HEIGHT=80> </IMG>--></CENTER>\n");
      out.write("<br>\n");
      out.write("<br><center><a href=\"index.html\"><font color=\"blue\" size=\"5\">Go To HomePage</font></a></center>\n");
      out.write("<br>\n");
      out.write("     <center><h2>INSURANCE DETAILS</h2>\n");
      out.write("     <br>\n");
      out.write("    <form name=\"ff\" action=\"insurance.jsp\">\n");
      out.write("        Search By KeyWord\n");
      out.write("   <input type=text name=\"t1\">\n");
      out.write("       <input type=\"submit\">\n");
      out.write("    </form>\n");
      out.write("   \n");
      out.write("    </center>\n");
      out.write("    ");

    int t=0;
    String s="";
    try
            {
    s=request.getParameter("t1");
    }
    catch(Exception e)
            {
        s="";
    }
   try
       {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:db","","");
        Statement st=con.createStatement();
    // ResultSet rs=st.executeQuery("select * from licenced where licenceno like '" + request.getParameter("licno") + "'");
 ResultSet rs=st.executeQuery("select * from insurance where iname like '%" + s + "%'");
        
        out.print("<center><table border=1 bgcolor=pink>");
               
               out.print("<th>POLICY NUMBER<TH>DATE OF ISSUE<TH>REG NO<TH>NAME<TH>ADDRESS<TH>VEHICLE CLASS<TH>CHASSIS NO<TH>VALID UPTO<TH>SEATING CAPACITY<TH>ENGINE NO.");
            while(rs.next())
            {
          
                   out.print("<tr>");
                   
                    out.print("<td>" + rs.getString(1)+"<td>" + rs.getString(2)+"<td>" + rs.getString(3)+"<td>" + rs.getString(4) + "<td>" +rs.getString(5) + "<td>" +rs.getString(6)+ "<td>" +rs.getString(7)+ "<td>" +rs.getString(8)+ "<td>" +rs.getString(9)+ "<td>" +rs.getString(10));          
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
    
    
      out.write("\n");
      out.write("    <BR>\n");
      out.write("     \n");
      out.write("     \n");
      out.write("     <form>\n");
      out.write("         <table align=\"center\" border=\"0\">\n");
      out.write("             <tr>\n");
      out.write("                 <td align=\"center\"></td>\n");
      out.write("                 <td></td>\n");
      out.write("                 <td></td>\n");
      out.write("                 <td align=\"center\"><INPUT name=\"btnBack\" id=\"btnBack\" type=\"button\" onclick=\"goback()\" value=\"Back\" ></td>\n");
      out.write("             </tr>\n");
      out.write("         </table>\n");
      out.write("     </form>\n");
      out.write("  \n");
      out.write("  <center></center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
