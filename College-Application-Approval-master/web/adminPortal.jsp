<%-- 
    Document   : adminPortal
    Created on : Dec 2, 2018, 12:38:53 PM
    Author     : shobhit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN PORTAL</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            background-image: url(admin.jpg);
            background-size: cover;
            
            font-family: sans-serif;
    
}

.loginbox{
    width: 320px;
    height: 420px;
    background: #000;
    color: #fff;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
    opacity: 0.7;
    border-radius:30px;
        
        
}

.avatar{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}

h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}

.loginbox p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.loginbox input{
    width: 100%;
    margin-bottom: 20px;
}

.loginbox input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}
.loginbox input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #fb2525;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.loginbox input[type="submit"]:hover
{
    cursor: pointer;
    background: #ffc107;
    color: #000;
}
.loginbox a{
    text-decoration: none;
    font-size: 12px;
    line-height: 20px;
    color: darkgrey;
}

.loginbox a:hover
{
    color: #ffc107;
}



        </style>
    </head>
    
    <body>
           <div class="loginbox">
                <img src="avatar.png" class="avatar">
                    <h1>MANAGE HERE</h1>
                    <form action = "addColgServlet" method = "post">
                        <input type = "submit" value = "ADD COLLEGE">
                    </form>   
                     <form action = "adminCounselling" method = "post">
                        <input type = "submit" value = "COUNSELLING DATES">
                    </form>   
                    <form action = "addColgServlet" method = "post">
                        <input type = "submit" value = "CHECK REGISTRATIONS">
                    </form>   
                    <form action = "adminScholarship" method = "post">
                        <input type = "submit" value = "SET SCHOLARSHIP">
                    </form>   
                        
                    </form>

            </div>

    </body>
</html>
