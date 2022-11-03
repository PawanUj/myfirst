<%-- 
    Document   : namechange
    Created on : Nov 3, 2022, 5:34:43 PM
    Author     : SEEMA
--%>


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
    <body><%
         Connection myconn=null;
            PreparedStatement stmt=null;
            int id=0;
            String rentn="";
            String ownern="";
            try{
                id=Integer.parseInt(request.getParameter("txtid"));
                rentn=request.getParameter("txtrentn");
                ownern=request.getParameter("txtownern");
                 Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freesqldatabase.com:3306/sql12530100","sql12530100","DinPa5ELzd");
                String sql="update society set RentName=?,OwnerName=? where id=? ;";
                stmt=con.prepareStatement(sql);
                stmt.setInt(3,id);
                stmt.setString(1,rentn);
                stmt.setString(2,ownern);
                                stmt.execute();

                out.println("Successfully update ");
            }
           catch(Exception e){%><h2><%
                out.println(e);%> <br><%
                out.println("Failed To Saved Given Below Data");
            }%></h2>
            <h2><br>
                <%
                
                    out.println("Owner Name : "+ownern);%><br><%
                out.println("Rented Name :"+rentn);%><br><%
                out.println("ID :"+id);%><br>
            
            
    </body>
</html>
