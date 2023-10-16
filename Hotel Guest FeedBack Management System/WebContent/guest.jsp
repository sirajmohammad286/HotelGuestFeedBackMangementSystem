<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Hotel Guest Feedback Management System </title>
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
  <div class="logo">Hotel GUEST FEEDBACK MANAGEMENT SYSTEM</div>
  <div class="menu">
    <ul>
      <li><a href="index.html" >Home</a></li>
      <li><a href="admin.jsp">Admin</a></li>
      <li><a href="guest.jsp" class="active">Guest</a></li>
      <li><a href="fresher.jsp">Fresh Guest</a></li>
      <li><a href="about.jsp">About Us</a></li>
    </ul>
  </div>
  <div class="header">
      <br>    <br>    <br>    <br>
    
    <div class="header-button"><a href="#">Guest login</a> </div>
    <br>
  </div>
  <%
                
ResultSet rs=null;
 try{
       
        
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        rs=st.executeQuery("select * from hotel");
}catch(Exception e){
    e.printStackTrace();
    }
%>
  <center>
    
    <form action="guestact.jsp" method="post" id="leavereply">
        <table border="0" >
        <tr>
           <td>    
           <td><strong><font size="3" color="black">Select Hotel:</font></strong></td> 
           <td>
           <select name="hname"required style="width:100%">
           <option value="">Select</option>
           <%
           while(rs.next()){
           %>
           <option value="<%=rs.getString("hotelname")%>"><%=rs.getString("hotelname")%></option>

           <%}%>
           </select>
           </td>
           </td>
        </tr> 
                       
           <tr>
           <td>
           <td><strong><font size="3" color="black">User Name:</font></strong></td>
           <td><input type="text" name="username" id="username1" placeholder=UserName required style="height:30px; width:200px"> </input></td>
           </td>
           </tr>
           
           <tr>
           <td>
           <td><strong><font size="3" color="black">password:</font></strong></td>
           <td><input type="text" name="password" id="username1" placeholder=password required style="height:30px; width:200px"> </input></td>
           </td>
           </tr>
           <tr>
           <td>
           <br><br><br>    
           <td><input type="submit" value="Login" style="height:30px; width:70px" />
           <input type="reset" value="Reset" style="height:30px; width:50px" /></td>
           </td>
           </tr>
           </table>
           </form></center>
  
</div>
   <br><br>
            <center>    <a href="guestreg.jsp"><font size="4">Click Here for Registration</a></center><br>    <br>

<div class="footer">
 <div class="copy-rights">Developed by SD</div>
</div>
</body>
</html>
