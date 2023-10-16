<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String k = request.getParameter("hname");
    int l = Integer.parseInt(request.getParameter("hlocation"));
    int m = Integer.parseInt(request.getParameter("accommodation"));
    int n = Integer.parseInt(request.getParameter("foodquality"));   
    String o = request.getParameter("cmnt");
    
    
    try{
       
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    PreparedStatement ps = con.prepareStatement("insert into feedback values(?,?,?,?,?)");

        ps.setString(1,k);    
        ps.setInt(2,l);
        ps.setInt(3,m);
        ps.setInt(4,n);  
        ps.setString(5,o);
     int j =   ps.executeUpdate();

if(j>=0){
response.sendRedirect("sfeedback.jsp?m1=Success");

}
else
{
 response.sendRedirect("sfeedback.jsp?m2=Failed");   
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