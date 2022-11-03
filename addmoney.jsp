<%-- 
    Document   : billpay1
    Created on : Nov 3, 2022, 6:53:03 PM
    Author     : SEEMA
--%>

<%@page import="java.lang.Integer"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             Connection myconn=null;
            PreparedStatement stmt=null;
            int id=0;
            int bill;
            try{
                
                bill=Integer.parseInt(request.getParameter("txtbill"));
                
                
                  Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freesqldatabase.com:3306/sql12530100","sql12530100","DinPa5ELzd");
                String sql="update society set bill=bill+? ;";
                stmt=con.prepareStatement(sql);
                stmt.setInt(1,bill);
                stmt.execute();
                out.println("Successfully Update data");
            }
            catch(Exception e){
                out.println(e);
            }


%>


    </body>
</html>
