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
    <script>alert('Login Success');</script>
    <%}
        if (request.getParameter("m6") != null) {%>
    <script>alert('#');</script> 

    <%}
    %>
<body>
    
<div class="wrapper">
  <div class="logo">HOTEL GUEST FEEDBACK MANAGEMENT SYSTEM</div>
  <div class="menu">
    <ul>
       <li><a href="index.html">Home</a></li>
      <li><a href="sviewprofile.jsp" >View Profile</a></li>
      <li><a href="sviewhotel.jsp">View Hotel</a></li>
      <li><a href="sviewservices.jsp" class="active">View Services</a></li>
      <li><a href="sfeedback.jsp">Feedback</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
  <div class="header">
      <br>
    
    <div class="header-button"><a href="#">View Services</a> </div>
  
  </div>
  <center>
    <%    
    String user = session.getAttribute("username").toString();
    String hname = session.getAttribute("hname").toString();
    ResultSet rs=null;
    String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
   
   try{    
        
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    rs=st.executeQuery("select * from services where hotelname = '"+hname+"'");
    
  
   
    %>
    <br>
    <center>
         <table border="2" width="70%">
             <tr style="background-color: #b7ab25">
         <th><font color="black">Hotel</font></th>
         <th><font color="black">Service</font></th>
         <th><font color="black">About</font></th>
         <th><font color="black">Date</font></th>
         <th><font color="black">Contact</font></th>
         </tr>   
                
         <%
         while(rs.next()){
          %>
          <tr>
          <th style="color:black";><%=rs.getString("hotelname")%></th>  
          <th style="color:black";><%=rs.getString("service")%></th>  
          <th style="color:black";><%=rs.getString("about")%></th>
          <th style="color:black";><%=rs.getString("date")%></th>  
          <th style="color:black";><%=rs.getString("cno")%></th>  
                      
          </tr>
          <%}%>
          </table>
        
          </center>    
            
          <%
					
						
						con.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>   
            
                                       
            
            
    <br><br><br><br><br>
<div class="footer">
  <div class="copy-rights">Developed by SD</div>
</div>
</body>
</html>
