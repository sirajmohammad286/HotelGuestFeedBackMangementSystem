<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Hotel guest feedback management system</title>
<link href='http://fonts.googleapis.com/css?family=Trocchi' rel='stylesheet' type='text/css' />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="wrapper">
  <div class="logo">HOTEL GUEST FEEDBACK MANAGEMENT SYSTEM</div>
  <div class="menu">
    <ul>
      <li><a href="index.html" >Home</a></li>
      <li><a href="admin.jsp" class="active">Admin</a></li>
      <li><a href="guest.jsp">Guest</a></li>
      <li><a href="fresher.jsp">Fresh Guest</a></li>
      <li><a href="about.jsp">About Us</a></li>
    </ul>
  </div>
  <div class="header">
      <br>    <br>    <br>    <br>
    
    <div class="header-button"><a href="#">Admin Login</a> </div>
    <br>
  </div>
  <center>
    
    <form action="adminact.jsp">
                       
        <label><b><font color="black">Username</font></b></label>
                        <input type="text" placeholder="Enter Username" name="name" required>
                            <br><br>

                        <label><b><font color="black">Password</font></b></label>
                        <input type="password" placeholder="Enter Password" name="pass" required>
                            <br>
                       <br>   <br>
                        <button type="submit">Login</button>
                        <button type="button" class="cancelbtn">Cancel</button>
    
                        </form></center>
  
</div>
    <br><br><br>    <br>

<div class="footer">
 <div class="copy-rights">Developed by SD</div>
</div>
</body>
</html>
