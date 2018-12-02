<%-- 
    Document   : iit-kharagpur
    Created on : Dec 2, 2018, 11:34:13 AM
    Author     : shobhit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : iit-bhuStatus
    Created on : Nov 23, 2018, 11:49:53 AM
    Author     : shobhit
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IIT-BHU COUNSELLING STATUS</title>
        
        <style>
            body{
               background: url("edu5.jpg");
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
    
    <body bgcolor = black> 
        <p><h1><center><font color = green>IIT_BHU Counselling Criteria</font></center></h1></p>
          <div class = "div">
            <table name = "scholar" id = "customers" >
                <tr>
                    <th><font color = red>INSTITUTE</font></th>
                    <th><font color = red>CITY</font></th>
                    <th><font color = red>Date</font></th>
                    <th><font color = red>TIME</font></th>
                </tr>
                <tr>
                <% 
                    String name = request.getSession().getAttribute("nm").toString();
            System.out.println("Session-check "+name);
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?useSSL=true&verifyServerCertificate=false&allowMultiQueries=true","root","1810");
                PreparedStatement ps = con.prepareStatement("select * from counselling where college_name = ?");
                ps.setString(1,"IIT_BHU");
                ResultSet rs = ps.executeQuery();
                
                while(rs.next()){
                    %>
                </tr>
                    <tr><td><%= rs.getString(1) %></td>
                    <td><%=rs.getString(2) %></td>
                    <td><%=rs.getString(3) %></td>
                     <td><%=rs.getString(4) %></td>
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

