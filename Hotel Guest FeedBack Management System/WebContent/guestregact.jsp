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
    String m = request.getParameter("username");
    String n = request.getParameter("password");
    String f = request.getParameter("email");
    String p = request.getParameter("dob");
    String q = request.getParameter("address");
    String r = request.getParameter("cno");
    String s = request.getParameter("image");
    
    try{
       
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        PreparedStatement ps = con.prepareStatement("insert into guest values(?,?,?,?,?,?,?,?,?)");

        ps.setInt(1,k);    
        ps.setString(2,l);
        ps.setString(3,m);
        ps.setString(4,n);
        ps.setString(5,f);
        ps.setString(6,p);
        ps.setString(7,q);
        ps.setString(8,r);
        ps.setString(9,s);

        int h = ps.executeUpdate();

if(h>=0){

response.sendRedirect("guest.jsp?m1=Success");
out.println("User Registered Successfully");
        }

else    {
response.sendRedirect("guestreg.jsp?m2=Failed");
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