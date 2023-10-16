<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Hotel Guest Feedback Management System</title>
<link href='http://fonts.googleapis.com/css?family=Trocchi' rel='stylesheet' type='text/css' />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
    <%
        if (request.getParameter("") != null) {%>
    <script>alert('');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Registration Failed');</script> 

    <%}
    %>
<body>
<div class="wrapper">
  <div class="logo">HOTEL GUEST FEEDBACK MANAGEMENT SYSTEM</div>
  <div class="menu">
    <ul>
      <li><a href="index.html" >Home</a></li>
      <li><a href="admin.jsp">Admin</a></li>
      <li><a href="guest.jsp">Guest</a></li>
      <li><a href="fresher.jsp" class="active">Fresh Guest</a></li>
      <li><a href="about.jsp">About Us</a></li>
    </ul>
  </div>
  <div class="header">
      <br><br><br><br>
    
    <div class="header-button"><a href="#">Fresh Guest Registration</a> </div>
    <br>
  </div>
  <center>
      
           <form name="myform" action="fresherregact.jsp" method="post" onsubmit="return validateform()" >
           <table border="0" >
          
           <tr>
           <td>
           <td><strong><font size="3" color="black">User Name:</font></strong></td>
           <td><input type="text" name="username" id="username1" placeholder=UserName required style="height:30px; width:200px"> </input></td>
           </td>
           </tr>
        
           <tr>
           <td>
           <td><strong><font size="3" color="black">Password </font></strong></td>
           <td><input type="password" name="password" id="password1" placeholder= Password required style="height:30px; width:200px"></input></td> 
           </td>
           </tr>
          
           <tr>
           <td>
           <td><strong><font size="3" color="black">Email: </font></strong></td>
           <td><input type="text" name="email" id="email" placeholder= Email style="height:30px; width:200px"></input></td> 
           </td>
           </tr> 
            
           
           <tr>
           <td>
           <td><strong><font size="3" color="black">DOB:</font></strong></td>
           <td><input type="date" name="dob" id="dob1"  style="height:30px; width:200px"> </input></td>
           </td>
           </tr>
        
           <tr>
           <td>
           <td><strong><font size="3" color="black">Address </font></strong></td>
           <td><input type="text" name="address" id="address1" placeholder= Address required style="height:30px; width:200px"></input></td> 
           </td>
           </tr>
           
           <tr>
           <td>
           <td><strong><font size="3" color="black">Mobile No: </font></strong></td>
           <td><input type="text" name="cno" id="txtphoneno" onkeypress="return isNumber(event)" placeholder= MobileNo style="height:30px; width:200px"></input></td> 
           </td>
           </tr><tr><tr>
               
           <tr>
           <td>
           <td><strong><font size="3" color="black">Picture: </font></strong></td>
           <td><input type="file" name="image"    style="height:30px; width:200px"></input></td> 
           </td>
           </tr>
            
           <tr>
           <td>
           <br><br><br>    
           <td><input type="submit" value="Register" style="height:30px; width:70px" />
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
