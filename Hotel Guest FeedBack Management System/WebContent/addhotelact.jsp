<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    int k = 0;
    String l = request.getParameter("hname");
    String m = request.getParameter("link");
    String n = request.getParameter("address");
    String o = request.getParameter("image");
    
    
    try{
       
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    PreparedStatement ps = con.prepareStatement("insert into hotel values(?,?,?,?,?)");

        ps.setInt(1,k);    
        ps.setString(2,l);
        ps.setString(3,m);
        ps.setString(4,n);  
        ps.setString(5,o);
     int j =   ps.executeUpdate();

if(j>=0){
response.sendRedirect("addhotel.jsp?m1=Success");

}
else
{
 response.sendRedirect("addhotel.jsp?m2=Failed");   
}
    }
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</div>
</body>
</html>