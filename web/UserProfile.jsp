<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   response.setHeader("Cache-Control","no-store,no-cache,must-revalidate"); //HTTP 1.1 
 
   
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
        #a{
             text-decoration: none;
             width:100px;
        }
        body{
            background-image :linear-gradient(75deg,red,black);
            
        }
        #user{
            width:350px;
            margin-top:20px;
            margin-left:600px;
            height:500px;
            background-image: linear-gradient(75deg,yellow,green);
        }
        #profile{
            float:left;
            margin-top:20px;
            margin-left:300px;
            width:300px;
            height:500px;
            background-image:url("shobhit.jpg");
        }
   
 
.topnav {
  overflow: hidden;
  background-color: #333;
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
  background-color: #4CAF50;
  color: white;
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
    </style>
    <body>
        <div class = "topnav">
            <a class="active">Home</a>
            <a href =" ">Applied for</a>
            <a href =" ">Counseling</a>
            <a href ="UserProfile.jsp">Back</a>
        </div>
         <div id = "profile">
             
         </div>
        <div id = "user">
            <font class = "username">
            UserName:<font class = "unsername_in"> <%=
                   request.getSession().getAttribute("nm").toString()
                %>
            </font>
        </div>

    </body>
</html>
<%}
   
%>
