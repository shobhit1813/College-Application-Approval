<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->


<html>
    <style>
      
        body{
            background-image: url('verify.jpeg');
            background-size: 1400px 700px;  
        }
.loginbox{
    width: 320px;
    height: 300px;
    background:linear-gradient(75deg,white,black);
    border-style: solid;
    border-width:medium;
    color: black;
    left: 10%;
    top: 10%;
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
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class = "loginbox" style="margin-top: 250px; margin-left: 500px">
            <form action = "MailDispatcherServlet" method = "Post">
               <table>
                <tr>
                    <font>Email</font><br>
                 </tr>
                 <tr>
                    <input type = "email" name = "email" placeholder = "Enter the email">
                 </tr>  
                 <tr>
                     <input type = "submit" value = "submit">
                 </tr>
               </table>
            </form>
        </div>
    </body>
</html>
