<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    
    String l = request.getParameter("hname");
    String m = request.getParameter("service");
    String n = request.getParameter("about");
    String o = request.getParameter("date");
    String p = request.getParameter("cno");
    
    
    try{
       
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    PreparedStatement ps = con.prepareStatement("insert into services values(?,?,?,?,?)");

           
        ps.setString(1,l);
        ps.setString(2,m);
        ps.setString(3,n);  
        ps.setString(4,o);
        ps.setString(5,p);
     int j =   ps.executeUpdate();

if(j>=0){
response.sendRedirect("addservices.jsp?m1=Success");

}
else
{
 response.sendRedirect("addservices.jsp?m2=Failed");   
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