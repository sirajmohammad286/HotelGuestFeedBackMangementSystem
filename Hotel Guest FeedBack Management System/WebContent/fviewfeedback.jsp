<%@page import="java.sql.Statement"%>
<%@page import="databasecon.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>College Feedback</title>
<link href='http://fonts.googleapis.com/css?family=Trocchi' rel='stylesheet' type='text/css' />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
    <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Hotel Added Success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Hotel  Failed');</script> 

    <%}
    %>
<body>
<div class="wrapper">
  <div class="logo">Hotel Guest Feedback Management system</div>
  <div class="menu">
    <ul>
       <li><a href="fresherhome.jsp"  >Home</a></li>
      <li><a href="fviewprofile.jsp" >View Profile</a></li>
      <li><a href="fviewhotel.jsp">View Hotel</a></li>
      <li><a href="fviewfeedback.jsp"class="active" >View Feedback</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
  <div class="header">
      <br>    
    
    <div class="header-button"><a href="#">View Feedback</a> </div>
    <br>
  </div>
  <center>
  
   <%
          
        try {
        Connection con = Dbconnection.getConnection();
        String query="select distinct hotelname from feedback "; 
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(query);

        %>
        
      
        

        <%                while (rs.next()) {
            String query1="select * from feedback where hotelname = '"+rs.getString(1)+"'" ; 
            Statement st1=con.createStatement();
           
            ResultSet rs1=st1.executeQuery(query1);
          %>
          
       
          
          <table border="2" width="80%">
         
        <tr style="background-color: #b7ab25">
        <th><font color="black">Hotel Name</th>
        <th><font color="black">Hotel Location</th>
        <th><font color="black">Accommodation</th>
        <th><font color="black">Food Quality</th>
        <th><font color="black">Comment</th>
        
        </tr>
        <br/>
              <%
                  while(rs1.next())
                  {
                     %> 
                       
       
        <tr>
        <th><font color="black"><%=rs1.getString(1)%></th>
        <th><font color="black"><%=rs1.getInt(2)%></th>
        <th><font color="black"><%=rs1.getInt(3)%></th>
        <th><font color="black"><%=rs1.getInt(4)%></th>
        <th><font color="black"><%=rs1.getString(5)%></th>
        
        
         </tr>
         <%
         }%>
        <%
        }
        } catch (Exception e) {
          e.printStackTrace();
        }

        %>
        </table>
              
               
                   
                    
                    
         </center>        
      
      
  
</div>
    <br><br>

<div class="footer">
 <div class="copy-rights">Developed by SD</div>
</div>
</body>
</html>
