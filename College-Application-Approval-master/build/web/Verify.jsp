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
    <style>
       
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
    opacity: 0.5;
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
body{
    background-image: url('edu6.jpeg');
    background-size: cover;
}    
.change{
    font-family: sans-serif;
    font-size: 30px;
    color : red;
}


        </style>
    <body>
        <div class="loginbox">
            <p class = "change">Verify Token</p>
            <form  method = "post" action = "verifyServlet">
                <table>
                    <tr>
                        <td><p>Email</p></td>
                        <td><input type = "text" name = "vemail" value = "<% out.print(request.getAttribute("email")); %>"></td>
                    </tr>
                    <tr>
                        <td><p>Enter Token</p></td>
                        <td><input type = "text" name = "token"></td>
                        <td><input type = "submit" value = "Submit"></td>
                    </tr>
                    <div id = "hide">
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
                            
                        </tr>
                    </div>
                </table>
            </form>
        </div>
    </body>
</html>
