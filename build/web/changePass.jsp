<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
       <div>
           <form action = "passChangeServlet" method = "post">
                    <table>
                        <tr>
                            <td>Email</td>
                            <td><input type = "text" name = "vemail" value = "<% out.print(request.getAttribute("email"));%>"></td>
                        </tr>
                        <tr>
                           <td>
                               <p>New Password</p>
                           </td>
                           <td>
                                <input type = "text" name = "npass">
                           </td>
                        </tr>
                            <td>
                                <p>Confirm New Password</p> 
                            </td>
                            <td>
                                <input type = "text" name = "cnpass">
                            </td>
                        <tr>
                        <tr>
                            <input type = "submit" value = "Change">
                        </tr>
                            
                        </tr>
                   </table>
           </form>
        </div>
    </body>
</html>
