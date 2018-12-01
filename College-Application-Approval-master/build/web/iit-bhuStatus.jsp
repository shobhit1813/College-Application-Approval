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
            body{
               background: url("edu5.jpeg");
            }
           
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 50%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}

</style>

    </head>
    
    <body bgcolor = black> 
        <p><font color = grey>IIT_BHU Scholarship Criteria</font></p>
          <div class = "div">
            <table name = "scholar" id = "customers" >
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
