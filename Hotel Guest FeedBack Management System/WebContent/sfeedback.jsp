<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Hotel Guest Feedback Management System</title>
<link href='http://fonts.googleapis.com/css?family=Trocchi' rel='stylesheet' type='text/css' />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
    <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Feedback Posted Success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Feedback Posted  Failed');</script> 

    <%}
    %>
<body>
<div class="wrapper">
  <div class="logo">HOTEL GUEST FEEDBACK MANAGEMENT SYSTEM</div>
  <div class="menu">
    <ul>
      <li><a href="studenthome.jsp">Home</a></li>
      <li><a href="sviewprofile.jsp">View Profile</a></li>
      <li><a href="sviewhotel.jsp">View Hotel</a></li>
      <li><a href="sviewservices.jsp">View Services</a></li>
      <li><a href="sfeedback.jsp" class="active" >Feedback</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
  <div class="header">
      <br><br><br><br>
       <%
        
   String user = session.getAttribute("username").toString();
   String hname = session.getAttribute("hname").toString();

       %>
    <div class="header-button"><a href="#">Feedback Form</a> </div>
    <br>
  </div>
  <center>
      
           <form name="myform" action="sfeebackact.jsp" method="post" >
           <table border="0" >
               
           <tr>
           <td>
           <td><strong><font size="3" color="black">Hotel Name:</font></strong></td>
           <td><input type="text" readonly name="hname" value="<%=hname%>"required style="height:30px; width:200px"> </input></td>
           </td>
           </tr>    
          
           <tr>
           <td>
           <td><strong><font size="3" color="black">Hotel Location:</font></strong></td>
           <td>
           <select name="hlocation" required style="width:100%">
           <option value="">Select</option>
           <option value="1">1</option>
           <option value="2">2</option>
           <option value="3">3</option>
           <option value="4">4</option>
           <option value="5">5</option>
           </select>             
           </td>
           </td>
           </tr>
           
           <tr>
           <td>
           <td><strong><font size="3" color="black">Accommodation:</font></strong></td>
           <td>
           <select name="accommodation" required style="width:100%">
           <option value="">Select</option>
           <option value="1">1</option>
           <option value="2">2</option>
           <option value="3">3</option>
           <option value="4">4</option>
           <option value="5">5</option>
           </select>             
           </td>
           </td>
           </tr>
           
           <tr>
           <td>
           <td><strong><font size="3" color="black">Food Quality:</font></strong></td>
           <td>
           <select name="foodquality" required style="width:100%">
           <option value="">Select</option>
           <option value="1">1</option>
           <option value="2">2</option>
           <option value="3">3</option>
           <option value="4">4</option>
           <option value="5">5</option>
           </select>             
           </td>
           </td>
           </tr>
        
           
        
           <tr>
           <td>
           <td><strong><font size="3" color="black">Comment: </font></strong></td>
           <td><input type="text" name="cmnt"  placeholder= Comment required style="height:30px; width:200px"></input></td> 
           </td>
           </tr>
           
          
               
          
            
           <tr>
           <td>
           <br><br><br>    
           <td><input type="submit" value="Submit" style="height:30px; width:70px" />
           <input type="reset" value="Reset" style="height:30px; width:50px" /></td>
           </td>
           </tr>
           </table>
           </form>    
      
      
    </center>
  
    </div>
  

    <div class="footer">
    <div class="copy-rights">Developed by SD</div>
    </div>
    </body>
    </html>
