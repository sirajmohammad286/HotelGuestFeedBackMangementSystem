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
    <script>alert('Registration Success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Login Failed');</script> 

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
      <br>    <br>    <br>    <br>
    
    <div class="header-button"><a href="#">Fresher Login</a> </div>
    <br>
  </div>
  <center>
    
    <form action="fresheract.jsp" method="post" id="leavereply">
                       
        <label><b><font color="black">Username</font></b></label>
                        <input type="text" placeholder="Enter Username" name="username" required>
                            <br><br>

                        <label><b><font color="black">Password</font></b></label>
                        <input type="password" placeholder="Enter Password" name="password" required>
                            <br>
                       <br>   <br>
                        <button type="submit">Login</button>
                        <button type="button" class="cancelbtn">Cancel</button>
    
                        </form></center>
  
</div>
    <br><br>
            <center>    <a href="fresherreg.jsp"><font size="4">Click Here for Registration</a></center><br>    <br>

<div class="footer">
 <div class="copy-rights">Developed by SD</div>
</div>
</body>
</html>
