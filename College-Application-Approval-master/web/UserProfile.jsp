<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  
 
   
   if(session.getAttribute("nm") == null){
        RequestDispatcher rd = request.getRequestDispatcher("login.html");
        rd.forward(request, response);
   }
   HttpSession nsession = request.getSession(false);
   if(nsession != null){
      
        %>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        .tb{
            
        }
        #a{
             text-decoration: none;
             width:100px;
        }
        body{
            background-image:url("pers.jpeg");
            background-size: 1400px 800px;
            
        }
        #user{
            width:350px;
            margin-top:20px;
            margin-left:600px;
            height:500px;
            background-image: linear-gradient(50deg,white,black);
            box-shadow: 5px 5px black;
        }
        #profile{
            float:left;
            margin-top:20px;
            margin-left:300px;
            width:300px;
            height:500px;
            background-image: url("divuser.jpg");
            background-size: 300px 500px;
             box-shadow: 0px 5px #4d4d4d;
        }
   
 
.topnav {
  overflow: hidden;
  background-color: black;
  margin-top:-10px;
  margin-left:  -8px;
  width:100vw;
  opacity:0.7;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: greenyellow;
  color: brown;
}
#user font.username{
    font-family: "Times Header";
    margin-top:20px;
    margin-left:100px;
    font-size:30px; 
}
#user.username font.usename_in{
    margin-left: 1000px;
}
#avtardiv{
    border-radius: 100%;
    background-color: yellow;
    background-size: 30px 30px;
}
img{
    border-radius:25%;
    margin-left: 50px;
    margin-top: 100px;
}
.usename_in{
    top: -40;
    margin-top: 100px;
}
.user{
    margin-left: 1200px;
}
form{
    margin-left:1270px;
    margin-top: -40px;
}
    </style>
    <body>
        <div class = "topnav">
            <a class="active">Home</a>
            <a href ="Apply.html">Applied for</a>
            <a href =" ">Counseling</a>
            <a href ="UserProfile.jsp">Back</a>
            <p class = "user"><font color="red"><%= 
                request.getSession().getAttribute("nm").toString()
                %></font></p>
            <form  id = "form" action = "LogoutServlet" method = "POST">
            <input type="submit" value = "LogOut">
            </form>
        </div>
        
         <div id = "profile">
             <img src = "shobhit.jpg" style="width:200px">
             <font class = "username">
         </div>
        <div id = "user">
            <table class = "tb"> 
               <tr>
                   <td>     
                        <p class ="username_in" text> <%=
                                     request.getSession().getAttribute("nm").toString()
                                 %>
                        </p>
                   </td>             
                </tr>    
                </p>
           </table>
        </div>

    </body>
</html>
<%}
 
%>
