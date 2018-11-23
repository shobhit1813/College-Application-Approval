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
        
        <style>
            .tbh{
               
                width: 400px;
                height:400px;
                margin-top: 60px;
                margin-left: 400px;
                font-family: sans-serif;
                color: red;
            }
            
        </style>
    </head>
    
    <body> 
        <p><font color = red>IIT_BHU</font></p>
        <table name = "scholar" class = "tbh">
            <tr>
                <td>
                    Shobhit
                </td>
            </tr>
            <% 
                String name = request.getSession().getAttribute("nm").toString();
        System.out.println("Session-check "+name);
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?useSSL=true&verifyServerCertificate=false&allowMultiQueries=true","root","1810");
            PreparedStatement ps = con.prepareStatement("select * from scholarship where collg_name = ?");
            ps.setString(1,"IIT-BHU");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                System.out.println("ayush");
                %>
                <tr><td><font color = "red"><%= rs.getString(1) %></font></td></tr>
                <tr><td><%= rs.getDouble(2) %></td></tr>
                <tr><td><%=rs.getDouble(3) %></td></tr>
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
