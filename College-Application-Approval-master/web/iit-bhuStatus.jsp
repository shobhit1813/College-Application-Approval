<%-- 
    Document   : iit-bhuStatus
    Created on : Nov 23, 2018, 11:49:53 AM
    Author     : shobhit
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IIT-BHU SCHOLARSHIP STATUS</title>
        
    </head>
    
    <body> 
        <p><font color = red>IIT_BHU</font></p>
        <table name = "scholar" bgcolor = "red">

            <% 
                String name = request.getSession().getAttribute("nm").toString();
        System.out.println("Session-check "+name);
        try{
            Class.forName("com.myswl.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?useSSL=true&verifyServerCertificate=false&allowMultiQueries=true","root","1810");
            PreparedStatement ps = con.prepareStatement("select * from scholarship where colg_name = ?");
            ps.setString(1,"IIT-BHU");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                %>
                <tr><td><%rs.getInt("collg_name"); %></td></tr>
                <tr><td><%rs.getString("scholarship"); %></td></tr>
                <tr><td><%rs.getString("number"); %></td></tr>
                <%      
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
                %>
        </table>
    </body>
</html>
