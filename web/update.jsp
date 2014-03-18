<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>UPDATE FORM  </title>
<jsp:include page="stylesheets.jsp" />
<CENTER> <jsp:include page="header.jsp" />

<!-- <IMG SRC="BBS.gif" WIDTH=700 HEIGHT=80> </IMG>--></CENTER>
<script language="JavaScript" type="text/javascript" src="js/common.js"></script>
<script language="javascript" src="js/Calender/cal2.js" type="text/javascript">
</script>
<script language="javascript" src="js/Calender/cal_conf2.js" type="text/javascript">
</script>
<script type="text/javascript" src="js/countryStateCity.js"></script>
<script language="JavaScript" type="text/javascript">


function goback()
{
    history.go(-1);
}



function validateForm()
{

 var strFirstName = document.getElementById("first_name").value;
 if(isEmpty(strFirstName)==true)
 {
    alert("First Name is required");
    document.getElementById("first_name").focus();
    return false;
 }
 else
{
    if(isName(strFirstName)==false)
         {
             alert("First Name should have alphabet characters only");
             document.getElementById("first_name").value = "";
             document.getElementById("first_name").focus();
             return false;
         }
}




var strLastName = document.getElementById("last_name").value;
 if(isEmpty(strLastName)==true)
 {
    alert("Last Name is required");
    document.getElementById("last_name").focus();
    return false;
 }
  else
 {
  if(isName(strLastName)==false)
  {
    alert("Last Name should have alphabet characters only");
    document.getElementById("last_name").value = "";
    document.getElementById("last_name").focus();
    return false;
 }
}


strPassword=document.getElementById("password").value;
    if(isEmpty(strPassword)==true)
    {
        alert("Password is required");
        document.getElementById("password").focus();
        return false;
    }
    if(isInRange(6,20,strPassword)==false)
    {
             alert("Length of password should be between 6-20 characters");
             document.getElementById("password").value="";
             document.getElementById("password").focus();
             return false;
    }

   

var strddob=document.getElementById("dob").value;
    if(isEmpty(strddob)==true)
    {
             alert("Must specify birth date");
             document.getElementById("dob").focus();
             return false;
    }

    if(isFutureDate(strddob)==true)
    {
             alert("logindate can not be in future");
             document.getElementById("dob").value="";
             document.getElementById("dob").focus();
             return false;
    }
       
    
    var m= new Date();
    var x= new Date(strddob);
    var diff=m.getYear()-x.getYear() ;

    
    var age=document.getElementById("age").value;
   
    
    
    if(diff!=age)
    {
    
             document.getElementById("age").focus();
    
     document.getElementById("age").value=diff;
            
    }
   
    
    if(isEmpty(age)==true)
    {
               document.getElementById("age").focus();
        
             document.getElementById("age").value=diff;
             
             return false;
        
    }
    
   
    
    
            
 

             if (isNaN(age)||age<16||age>70)
            {
                alert("The age must be a number between 16 and 70");
                document.getElementById("age").value="";
                    return false;
            }





    
    
    
    
    strPermanentAddress = document.getElementById("address").value;
 if(isEmpty(strPermanentAddress)==true)
 {
    alert("PermanentAddress is required");
    document.getElementById("address").focus();
    return false;
 }
 if(hasSpace(strPermanentAddress.charAt(0))==true){
    alert("PermanentAddress should not have spaces in starting");
    document.getElementById("address").value="";
    document.getElementById("address").focus();
    return false;
 }
 
 







if(document.getElementById("email").value=="")
  {
    alert("Please enter the Email ");
    document.getElementById("email").focus();
    return false;
  }
  strEmail=document.getElementById("email").value;

  if((strEmail.indexOf("@")<1 )||(strEmail.lastIndexOf(".")-strEmail.indexOf("@")<2)|| (strEmail.lastIndexOf(".")>strEmail.length-3) || (strEmail.indexOf(' ')!=-1))
  {
    alert("Enter valid email address");
    document.getElementById("email").value="";
   document.getElementById("email").focus();
    return false;
  }

var strBdate=document.getElementById("lastdonate").value;
    if(isEmpty(strBdate)==true)
    {
             alert("Must specify last time you donate the blood");
             document.getElementById("lastdonate").focus();
             return false;
    }

    if(isFutureDate(strBdate)==true)
    {
             alert("Last Blood donation date can not be in future");
             document.getElementById("lastdonate").value="";
             document.getElementById("lastdonate").focus();
             return false;
    }




   var strlogin=document.getElementById("Submissiondate").value;
    if(isEmpty(strlogin)==true)
    {
             alert("Submission of form is current  date");
             
             document.getElementById("Submissiondate").value=new Date();
             document.getElementById("Submissiondate").focus();
             return false;
    }

    if(isFutureDate(strlogin)==true)
    {
             alert("Logindate can not be in future");
             document.getElementById("Submissiondate").value="";
             document.getElementById("Submissiondate").focus();
             return false;
    }

var vp=new Date();
var dt=new Date(strBdate);
var p;
rp=vp-dt;
hh=rp/(1000*60*60*24);



if(hh<90)

{
alert("Your registration is cancelled,you must have a gap of 90 days in next blood donation");

             document.getElementById("Submissiondate").value="";
             document.getElementById("Submissiondate").focus();
             return false;
}



var strgender = document.getElementById("gender").value;
 if(strgender=="select")
 {
    alert("Select for gender ");
    document.getElementById("gender").focus();
    return false;
 }



 var strdisease = document.getElementById("disease").value;
 if(strdisease=="select")
 {
    alert("Select for Disesae either yes  or no");
    document.getElementById("disease").focus();
    return false;
 }


 var strdisease = document.getElementById("disease").value;
   if(strdisease=="yes")
 {
    alert("Sorry!! You must not have disease,so not eligible for blood dontation condition,");
    document.getElementById("disease").focus();
    return false;
 }






 

 var strbloodgrp = document.getElementById("blood_group").value;
 if(strbloodgrp=="select")
 {
    alert("Select a blood group");
    document.getElementById("blood_group").focus();
    return false;
 }






 var strPhoneNumber = document.getElementById("c_number").value;
 if(isEmpty(strPhoneNumber)==true)
 {
    alert("Phone Number is required");
    document.getElementById("c_number").focus();
    return false;
 }
 if(isNumeric(strPhoneNumber)==false)
    {
             alert("Phone number should be numeric");
             document.getElementById("c_number").value="";
             document.getElementById("c_number").focus();
             return false;
    }
    if(isInRange(5,12,strPhoneNumber)==false){
             alert("Length of phone number should be between 5-12");
             document.getElementById("c_number").value="";
             document.getElementById("c_number").focus();
             return false;
     }



     var strnation = document.getElementById("nationality").value;
if(strnation=="select")
 {
    alert("Select for nationality ");
    document.getElementById("nationality").focus();
    return false;
 }
 



      strprof = document.getElementById("professional").value;
 if(isEmpty(strprof)==true)
 {
    alert("Specify  profession ");
    document.getElementById("professional").focus();
    return false;
 }
 else
{
    if(isName(strprof)==false)
         {
             alert("Profession should  have alphabet characters only");
             document.getElementById("professional").value = "";
             document.getElementById("professional").focus();
             return false;
         }
}

var strcaste = document.getElementById("caste").value;
 if(isEmpty(strcaste)==true)
 {
    alert("Plz Specify caste");
    document.getElementById("caste").focus();
    return false;
 }
 else
{
    if(isName(strcaste)==false)
         {
             alert("Caste should have alphabet characters only");
             document.getElementById("caste").value = "";
             document.getElementById("caste").focus();
             return false;
         }

         }
         
          var strcountry = document.getElementById("country").value;
 if(strcountry=="select")
 {
    alert("Select country");
    document.getElementById("country").focus();
    return false;
 }
 
 
    var strstate = document.getElementById("state").value;
 if(strstate=="select")
 {
    alert("Select state");
    document.getElementById("state").focus();
    return false;
 }
 
 var strcity = document.getElementById("city").value;
 if(strcity=="select")
 {
    alert("Select city");
    document.getElementById("city").focus();
    return false;
 }
         
         
    













}


</script>
</head>

<body  bgcolor="yellow"  >
    <marquee><font size="4" color="cyan">Give Blood, Save Life</font></marquee>
    <br>
<center><a href="homepage.jsp"><font color="blue" size="5">Go To HomePage</font></a></center>
<br>
    <h2 align="center">UPDATE FORM</h2>
    
     <table bgcolor="pink"  align="center" >
        <form action="update1.jsp" onsubmit="return validateForm()"  method="post">
           <td>CODE:*<td>            
    <%
    int i;
    String scode="",sfirst_name="",slast_name="",spassword="",saddress="",sdob="", slastdonate ="",
            sgender="",
            sblood_group="",
            sc_number="",
            sdisease="",
            snumofdonate="",
              sage="",sprofessional="",scaste="",scity="",sstate="",scountry="",snation="",sSubmissiondate="",semail="";
     
              out.print("<input type=hidden name=CODE value="+ request.getParameter("uid")+ ">");
  //out.print("<input type=HIDDEN name=CODE value=1>");
  
              i= Integer.parseInt(request.getParameter("uid"));
            
            
             try
    {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:abc","","");
        Statement st=con.createStatement();
        
        ResultSet rs=st.executeQuery("select * from table1 where code=" + i);
      //  out.print("<center><table border=2 cellspacing=10 cellpadding=10>");
        
        while(rs.next())
            {
            scode=rs.getString(1);
            sfirst_name= rs.getString(2);
            slast_name=rs.getString(3);
            saddress= rs.getString(4);
            sdob=rs.getString(5);
            slastdonate=rs.getString(6);
            sgender=rs.getString(7);
           sblood_group=rs.getString(8);
            sc_number=rs.getString(9);
            sdisease=rs.getString(10);
            snumofdonate=rs.getString(11);
          spassword=rs.getString(12);
             sage=rs.getString(13);
            sprofessional=rs.getString(14);
           scaste=rs.getString(15);
            scity=rs.getString(16);
            sstate=rs.getString(17);
            scountry=rs.getString(18);
           snation=rs.getString(19);
           sSubmissiondate=rs.getString(20);
          semail=rs.getString(21);
             }
   
              con.close();
              }
              
       catch(Exception e)
           {
           } 
  %>
 
<input  disabled name="code" id="code" type="text" value=<%=scode%>  />
    <td >  <img src="blood1.jpg" WIDTH=100 HEIGHT=100 onmouseover="You are doing a great job!"> </img></td>

        
    </tr>
    <tr>
              <td align="left">
                  
                  
                  
                  <tr>
                      <td><label>First Name</label></td>
                      
                      <td><input name="first_name" id="first_name" type="text" value=<%=sfirst_name%>  /></td>
                  </tr>
                  <tr>
                      <td><label>Last name</label></td>
                      
                      <td><input name="last_name" id="last_name" type="text" value=<%=slast_name%> /></td>
                  </tr>
                  
                  <TR>
                      <TD><label><b>Password</b></label></TD>
                      <TD><INPUT NAME="password" id="password" type=password value=<%=spassword%>> </TD>
                  </TR>
                  
                  
                  <tr><td><label>Date of Birth</label></td>
                      <td>
              <input type="text" name="dob"  readonly="readonly" id ="dob" value=<%=sdob%>>
                <a href="javascript:showCal('Calendar222')">DTP</a></td>
              </td>  
          </tr>
          
          
          
          <tr> <td>  <label>Age:*</label>  </td>
          <td><input type="text" name="age"  id="age" readonly="readonly" value=<%=sage%>> </td>
          </tr>
          
           
              
                      
                  
                  <tr>
                      <td valign="top"><label>Permanent Address</label></td>
                      <td colspan="5"><input type="text" name="address" id="address" cols="75" rows="3" value=<%=saddress%>></td>
                  </tr>
                  
                  
                  
                  
                  
                  
                  <tr>
                      <td>Email</td>
                      <td> <input type=  "text"  id ="email" name="email" value=<%=semail%>></td>
                  </tr>
                  
              
                  
                      <tr>
                      <td><label>Last time blood donated</label></td>
                      
                      <td colspan="4"><input name="lastdonate" type="text" readonly="readonly" id="lastdonate" value=<%=slastdonate%>>
                      <a href="javascript:showCal('Calendar152')">DTP</a></td>
                   


        <tr>
                  
        <tr>
            <td><label> Date of Submission of form</label></td>
            
            <td colspan="4"><input name="Submissiondate" type="text" readonly="readonly" id="Submissiondate" value=<%=sSubmissiondate%>>
            </td>
        </tr>

        
        <tr>
            
            
            <td><label>Gender:*</label></td>

            <td><select name="gender" id="gender" size="1" value=<%=sgender%>>
              <option value="<%=sgender%>" selected="selected">
                <%=sgender%>
              </option>
              <option value="male">
                Male
              </option>
              <option value="female">
                Female
              </option>

            </select></td>
          </tr>

        
        
        
        

        <tr>
            
            
            <td><label>Disease(if any):*</label></td>

            <td><select name="disease" id="disease" size="1" >
              <option value="<%=sdisease%>" selected="selected">
              <%=sdisease%>
              </option>
              <option value="yes">
                Yes
              </option>
              <option value="No">
                No
              </option>

            </select></td>
          </tr>






          <tr>
            <td><label>Blood Group</label></td>

            <td><select name="blood_group" id="blood_group" size="1" >
              <option value="<%=sblood_group%>" selected="selected"><%=sblood_group%></option>
              <option value="O+">O+</option>
              <option value="B+">B+</option>
              <option value="A+">A+</option>
              <option value="AB+">AB+</option>
              <option value="O-">O-</option>
              <option value="B-">B-</option>
               <option value="A-">A-</option>
              <option value="AB-">AB-</option>
            </select></td>
          </tr>
          <tr>
            <td><label>Contact no.</label></td>

            <td > <input name="c_number" id="c_number" type="text" value=<%=sc_number%> /></td>
          </tr>


          <tr>
           <td><label>Nationality:</label></td>
          <td><select name="nationality" id="nationality" >
                        <option value="<%=snation%>" selected="selected"><%=snation%></option>
                        <option value="Indian">Indian</option>
                        <option value="Canadian">Canadian</option>
                        <option value="Mexicon">Mexicon</option>
                        <option value="American">American</option>
                        <option value="other">other</option>
                        
                </select></td>
         </tr>

          <tr>
          <td><label>Professional:</label></td>
          <td><input type="text" name="professional" id="professional" value=<%=sprofessional%>></td>
          </tr>

          <tr>
            <td><label>Caste:</label></td>
            <td><input type="text" name="caste" id="caste"  value=<%=scaste%>></td>

<tr>
<td style="text-align: left;">Country:</td>
<td style="text-align: left;">

    <select name="country" id="country"  onchange="setStates();">
        <option value="<%=scountry%>" selected="selected"><%=scountry%></option>
    <option value="India">India</option>
<option value="Canada">Canada</option>
  <option value="Mexico">Mexico</option>
  <option value="United States">United States</option>
  
  <option value="other">other</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">
<select name="state" id="state" value=<%=sstate%> onchange="setCities();">
  
   <option value="select" selected="selected">
   <%=sstate%>
   </option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">
<select name="city"  id="city" value=<%=scity%>>
   <option value="<%=scity%>"><%=scity%></option>
</select>
</td>
</tr>


          <tr>


          <tr>
            <td height="10"></td>
          </tr>

          <tr>
            <td colspan="6" align="center">
                <input type="submit" id="send info" name=" send info" value="sendinfo" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" id="btnBack" name="btnBack" onclick="goback()" value="Back" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" id="rbtnReset" name="rbtnReset" value="Reset" /></td>
          </tr>
          <tr>
            <td height="10"></td>
          </tr>
        </table>
      </td>
    </tr>   
  </table>
  
        </form>
        <center><jsp:include page="footer.jsp" /> </center>
    </body>
</html>
