<%-- 
    Document   : adminRegister
    Created on : Dec 2, 2018, 3:11:12 PM
    Author     : shobhit
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Registration</title>
        
        <style>   
         body{
               background: url("adminRegister.jpg");
               background-size: cover;
            }
           
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 50%;
    margin-left: 500px;
    margin-top: 200px;
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
    color: grey;
}

</style>
    </head>
    <body>
        <div class = "div">
            <table name = "scholar" id = "customers" >
                <tr>
                    <th><font color = red>FirstName</font></th>
                    <th><font color = red>LastName</font></th>
                    <th><font color = red>Email</font></th>
                    <th><font color = red>City</font></th>
                    <th><font color = red>Gender</font></th>
                </tr>
                <tr>
                <% 
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?useSSL=true&verifyServerCertificate=false&allowMultiQueries=true","root","1810");
                PreparedStatement ps = con.prepareStatement("select fname,lname,email,city,Gender from userreg");
                ResultSet rs = ps.executeQuery();
                
                while(rs.next()){
                    %>
                </tr>
                    <tr><td><%= rs.getString(1) %></td>
                    <td><%=rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><%=rs.getString(4) %></td>
                    <td><%=rs.getString(5) %></td>
                    </tr>
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
