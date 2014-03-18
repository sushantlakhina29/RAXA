<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
        <title>Insertion report</title>
        <jsp:include page="stylesheets.jsp" />
    </head>
    <body bgcolor="green">
        
        <CENTER> <jsp:include page="header.jsp" />
            
        <!-- <IMG SRC="BBS.gif" WIDTH=700 HEIGHT=80> </IMG>--></CENTER>
        
        <br><center><a href="homepage.jsp"><font color="blue" size="5">Go To HomePage</font></a></center>
        <br>
        
        <marquee><font size="5" color="orange">Your Data is submitted successfully!</font></marquee>
        
        <center><h2><font color="cyan">INSERTION REPORT</font></h2></center>
        <%
        int sage;
        String sfirst_name,slast_name,saddress,sdob,slastdonate,sgender,sblood_group,sc_number,sdisease,snumofdonate,spassword,sprofessional,scaste,scity,sstate,scountry,snation,sSubmissiondate,semail;
        out.println(request.getParameter("first_name"));
        out.println("//");
        sfirst_name=request.getParameter("first_name");
        out.println(request.getParameter("last_name"));
        out.println("//");
        slast_name=request.getParameter("last_name");
        out.println(request.getParameter("address"));
        out.println("//");
        saddress=request.getParameter("address");
        out.println(request.getParameter("dob"));
        out.println("//");
        sdob=request.getParameter("dob");
        out.println(request.getParameter("lastdonate"));
        out.println("//");
        slastdonate=request.getParameter("lastdonate");
        out.println(request.getParameter("gender"));
        out.println("//");
        sgender=request.getParameter("gender");
        out.println(request.getParameter("blood_group"));
        out.println("//");
        sblood_group=request.getParameter("blood_group");
        out.println(request.getParameter("c_number"));
        out.println("//");
        sc_number=request.getParameter("c_number");
        out.println(request.getParameter("disease"));
        out.println("//");
        sdisease=request.getParameter("disease");
        out.println(request.getParameter("numofdonate"));
        out.println("//");
        snumofdonate=request.getParameter("numofdonate");
        out.println(request.getParameter("password"));
        out.println("//");
        spassword=request.getParameter("password");
        out.println(request.getParameter("age"));
        out.println("//");
        try {
            sage=Integer.parseInt(request.getParameter("age"));
        } catch(Exception e) {
            sage=0;
        }
        out.println(request.getParameter("professional"));
        out.println("//");
        sprofessional=request.getParameter("professional");
        out.println(request.getParameter("caste"));
        out.println("//");
        scaste=request.getParameter("caste");
        out.println(request.getParameter("city"));
        out.println("//");
        scity=request.getParameter("city");
        out.println(request.getParameter("state"));
        out.println("//");
        sstate=request.getParameter("state");
        out.println(request.getParameter("country"));
        out.println("//");
        scountry=request.getParameter("country");
        out.println(request.getParameter("nationality"));
        out.println("//");
        snation=request.getParameter("nationality");
        out.println(request.getParameter("Submissiondate"));
        out.println("//");
        sSubmissiondate=request.getParameter("Submissiondate");
        out.println(request.getParameter("email"));
       
        semail=request.getParameter("email");
        out.println("*******"+semail+"***********");
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:abc","","");
            Statement sto=con.createStatement();
            sto.executeUpdate("insert into table1(first_name,last_name,dob,lastdonate,gender,blood_group,c_number,disease,numofdonate,password,address,age,professional,caste,city,state,country,nationality,Submissiondate,email) values('" + sfirst_name + "','" + slast_name + "','" + sdob + "','" + slastdonate+ "','" + sgender + "','" + sblood_group + "','" + sc_number + "','" + sdisease + "','" + snumofdonate + "','" + spassword + "','" + saddress + "'," + sage + ",'" + sprofessional + "','" +scaste + "','" + scity + "','" + sstate + "','" + scountry + "','" + snation + "','" + sSubmissiondate + "','" +semail+ "')");
            con.close();
        } catch(Exception e) {
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
