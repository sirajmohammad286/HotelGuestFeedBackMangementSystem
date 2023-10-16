<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String k = request.getParameter("uid");
    String l = request.getParameter("username");
    String m = request.getParameter("password");
    String n = request.getParameter("email");
    String f = request.getParameter("dob");
    String p = request.getParameter("address");
    String q = request.getParameter("cno");
    String r = request.getParameter("image");
    
    try{
       
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        PreparedStatement ps = con.prepareStatement("insert into fresher values(?,?,?,?,?,?,?,?)");

        ps.setString(1,k);    
        ps.setString(2,l);
        ps.setString(3,m);
        ps.setString(4,n);
        ps.setString(5,f);
        ps.setString(6,p);
        ps.setString(7,q);
        ps.setString(8,r);

        int h = ps.executeUpdate();

if(h>=0){

response.sendRedirect("fresher.jsp?m1=Success");
out.println("User Registered Successfully");
        }

else    {
response.sendRedirect("fresherreg.jsp?m2=Failed");
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