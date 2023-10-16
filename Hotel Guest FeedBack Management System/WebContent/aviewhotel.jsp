<%@page import="databasecon.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
    <script>alert('Hotel Added Success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Hotel Adding Failed');</script> 

    <%}
    %>
<body>
<div class="wrapper">
  <div class="logo">HOTEL GUEST FEEDBACK MANAGEMENT SYSTEM</div>
  <div class="menu">
    <ul>
     <li><a href="adminhome.jsp">Home</a></li>
      <li><a href="addhotel.jsp" >Add Hotel</a></li>
      <li><a href="addservices.jsp">Add Services</a></li>
      <li><a href="aviewhotel.jsp" class="active" >View Hotels</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
  <div class="header">
      <br>    <br>    <br>    <br>
    
    <div class="header-button"><a href="#">View Hotels</a> </div>
    <br>
  </div>
  <center>
  
   <%
             
                Connection con = Dbconnection.getConnection();
                PreparedStatement pst=con.prepareStatement("select * from hotel ");
        
        
                ResultSet rs=pst.executeQuery();
              
                %>
              	<center>
                    
                    
                  
                    <table width="80%" border="2">
                        <tr style="color:blue">
                            <th><font color="black">Slno.</font></th>
                            <th><font color="black">Image</font></th>
                            <th><font color="black">Hotel</font></th>
                            <th><font color="black">Link</font></th>
                            <th><font color="black">Address</font></th>
                             
                        </tr> 
                      <%
                      while(rs.next()){
                      %>
                        
                      <tr style="color:black">
                          <th><%=rs.getInt("id")%></th>
                          <th><img src="img/<%=rs.getString("image")%>" height="100" width="100"></th>
                          <th><%=rs.getString("hotelname")%></th>
                          <th><a target="_blank" href="<%=rs.getString("link")%>"><%=rs.getString("link")%></a></th>
                          <th><%=rs.getString("address")%></th>
                          
                          
                      </tr>
                      <%}%>
                      
                    </table>
                    
                    
         </center>        
      
      
  
</div>
    <br><br><br>    <br>

<div class="footer">
 <div class="copy-rights">Developed by SD</div>
</div>
</body>
</html>
