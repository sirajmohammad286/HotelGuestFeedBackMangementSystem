<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Hotel guest feedback management system</title>
<link href='http://fonts.googleapis.com/css?family=Trocchi' rel='stylesheet' type='text/css' />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
    <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Hotel Added Success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Hotel Adding  Failed');</script> 

    <%}
    %>
<body>
<div class="wrapper">
  <div class="logo">HOTEL GUEST FEEDBACK MANAGEMENT SYSTEM</div>
  <div class="menu">
    <ul>
      <li><a href="adminhome.jsp">Home</a></li>
      <li><a href="addhotel.jsp" class="active">Add Hotel</a></li>
      <li><a href="addservices.jsp">Add Service</a></li>
      <li><a href="aviewhotel.jsp">View Hotel</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
  <div class="header">
      <br>    <br>    <br>    <br>
    
    <div class="header-button"><a href="#">Add Hotel</a> </div>
    <br>
  </div>
  <center>
  
         <form name="myform" action="addhotelact.jsp" method="post"  >
         <table border="0" >
          
            
              <tr>              
              <th><strong><font size="3" color="black">Hotel Name:</font></strong></th>
              <th style="color:green"><input name="hname"  placeholder=HotelName required style="height:30px; width:200px"> </input></th>
              </tr>
              
        
              <tr>           
              <th><strong><font size="3" color="black">Link:</font></strong></th>
              <th><input type="text" name="link" placeholder=Link  style="height:30px; width:200px"> </input></th>
              </tr>
        
        
              <tr>
              <th><strong><font size="3" color="black">Address </font></strong></th>
              <th><input type="text" name="address" id="ad" placeholder= "Address" required style="height:30px; width:200px"></input></th> 
              </tr>
             
             
             <tr>
             <th><strong><font size="3" color="black">Image </font></strong></th>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <th><input type="file" name="image"  required></input></th> 
             </tr>
        
             <tr></tr>
             <tr></tr>
             <tr></tr>
             <tr></tr>
               
              
             <tr>
             <td><input type="submit" value="Upload" style="height:30px; width:70px" />                
             <input type="reset" value="Reset" style="height:30px; width:50px" /></td>
             </tr>
              
            </table>
            </form>   
      
      
  </center>
  
</div>
    <br><br><br>    <br>

<div class="footer">
 <div class="copy-rights">Developed by SD</div>
</div>
</body>
</html>
