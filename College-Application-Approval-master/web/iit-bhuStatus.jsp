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
                color: black;
            }
            
            .div{
                background-color: #a6af13;
                width: 400px;
                margin-left: 400px;
                opacity: 0.6;
            }
            
            
            body{
                background-image: url("siitbh.jpg");
                background-size: cover;
            }
            
        </style>
    </head>
    
    <body bgcolor = black> 
        <p><font color = grey>IIT_BHU Scholarship Criteria</font></p>
          <div class = "div">
            <table name = "scholar" class = "tbh" >
                <tr>
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
                    %>
                </tr>
                    <tr><td><%= rs.getDouble(2) %></td>
                    <td><%=rs.getDouble(3) %></td></tr>
                    <%      
                }
            }
            catch(Exception e){
                System.out.println(e);
            }
                    %>
            </table>
          </div>  
    </body>
</html>
