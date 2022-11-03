<%-- 
    Document   : rentdetail
    Created on : Nov 3, 2022, 6:17:00 PM
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
    <body>
 <%
            Connection myconn=null;
            PreparedStatement stmt=null;
            long id=0;
            String rentn="";
            String ownern="";
            long rentmob;
            long rentaddhar;
            try{
                id=Long.parseLong(request.getParameter("txtid"));
                rentn=request.getParameter("txtrentn");
                
                rentmob=Long.parseLong(request.getParameter("txtrentmob"));
                rentaddhar=Long.parseLong(request.getParameter("txtrentaddhar"));
                
                  Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freesqldatabase.com:3306/sql12530100","sql12530100","DinPa5ELzd");
                String sql="update society set RentName=?,rentmob=?,rentaddhar=? where id=? ;";
                stmt=con.prepareStatement(sql);
                stmt.setLong(4,id);
                stmt.setString(1,rentn);
                stmt.setLong(2,rentmob);
                stmt.setLong(3,rentaddhar);
                stmt.execute();
                out.println("Successfully Update data");
            }
    catch(Exception e){%><h2><%
                out.println(e);%><br><%
                out.println("Failed To Saved Given Below Data");
            }%></h2>
            <h2><br>
                <%
                
                out.println("Rented Name :"+rentn);%><br><%
                out.println("ID :"+id);%><br>
            
                
                
                </h2>
            
        
                
                
                
                </body>
</html>
