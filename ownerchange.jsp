<%-- 
    Document   : dataentry1
    Created on : Nov 3, 2022, 11:15:11 AM
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
            String roomno="";
            String rentn="";
            String ownern="";
            long ownmob;
            long rentmob;
            long rentaddhar;
            long bill;
            try{
                id=Long.parseLong(request.getParameter("txtid"));
                roomno=request.getParameter("txtroomno");
                rentn=request.getParameter("txtrentn");
                ownern=request.getParameter("txtownern");
                
                ownmob=Long.parseLong(request.getParameter("txtownmob"));
                rentmob=Long.parseLong(request.getParameter("txtrentmob"));
                rentaddhar=Long.parseLong(request.getParameter("txtrentaddhar"));
                bill=Long.parseLong(request.getParameter("txtbill"));
                
                  Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freesqldatabase.com:3306/sql12530100","sql12530100","DinPa5ELzd");
                String sql="update society set Room_no=?,RentName=?,OwnerName=?,Ownermob=?,rentmob=?,rentaddhar=?,bill=? where id=? ;";
                stmt=con.prepareStatement(sql);
                stmt.setLong(8,id);
                stmt.setString(1,roomno);
                stmt.setString(2,rentn);
                stmt.setString(3,ownern);
                stmt.setLong(4,ownmob);
                stmt.setLong(5,rentmob);
                stmt.setLong(6,rentaddhar);
                stmt.setLong(7,bill);
                stmt.execute();
                out.println("Successfully Update data");
            }
    catch(Exception e){%><h2><%
                out.println(e);%><br><%
                out.println("Failed To Saved Given Below Data");
            }%></h2>
            <h2><br>
                <%
                
                    out.println("Owner Name : "+ownern);%><br><%
                out.println("Rented Name :"+rentn);%><br><%
                out.println("ID :"+id);%><br>
            
                
                
                </h2>
            
        
        
        
        
        
        
        
    </body>
</html>
