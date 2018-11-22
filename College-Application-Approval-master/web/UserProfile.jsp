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
                <title>Profile Page</title>
                <style>
                    body{
                        margin:0;
                        padding:0;
                        background: url("edu6.jpeg");
                        background-size: cover;
                        font-family: sans-serif;   
                    }
                    .title{
                        text-align: center;
                        padding: 50px 0 20px;
                    }
                    .title h1{
                        margin: 0;
                        padding: 0;
                        color: #262626;
                        text-transform: uppercase;
                        font-size: 36px;
                    }
                    .container{
                        width: 50%;
                        height: 400px;
                        background-color: #fff;
                        margin: 0 auto;
                        border: 2px solid #fff;
                        box-shadow: 0 15px 40px rgba(0,0,0,0.5);
                    }
                    .container .left{
                        float:left;
                        width: 50%;
                        height: 400px;
                        background: url("profilr.jpg");
                        background-size: 300px 400px;
                        
                    }
                    .container .right{
                        float:right;
                        width: 50%;
                        height: 400px;
                        background-size: cover;
                        box-sizing: border-box;
                    }
                    .infoBox{
                        width:100%;
                        padding: 80px 40px;
                        box-sizing: border-box;
                        height: 400px;
                        background: #fff;
                    }   
                    
                    .infoBox p{
                        margin:0;
                        padding: 0;
                        font-weight: bold;
                        color: #a6af13;
                    }
                    .infoBox input{
                        width: 100%;
                        margin-bottom: 20px;
                        
                    }
                    .infoBox input[type = "text"]{
                        border: none;
                        border-bottom: 2px solid #a6af13;
                        outline: none;
                        height:40px;
                    }
                    .infoBox input[type = "text"]:focus{
                        border-bottom: 2px solid #262626;
                    }
                    .infoBox input[type = "submit"]{
                        border:none;
                        outline: none;
                        height: 40px;
                        color: #fff;
                        background:#262626;
                        cursor: pointer;
                    }
                    .infoBox input[type = "submit"]:hover{
                     background: #a6af13;   
                    }
                    .infobox 
                    {
                        color: #262626;
                        font-size: 12px;
                        font-weight: bold;
                    }
                    .image{
                        border-radius: 50%;
                        background-color:white;
                    }
                    
                    
                </style>
            </head>
                <div class = "title">
                    <h1><font style="color:#a6af13">Profile Info</h1>
                </div>
                <div class = "container">
                    <div class = "left">
                        <div class = "image">
                            
                        </div>
                    </div>
                    <div class = "right">
                        <div class = "infoBox">
                            <form>
                                <p>UserName</p>
                                <input type = "text" value = <%= request.getSession().getAttribute("nm").toString()
                                       %>>
                                <p>10th CGPA</p>
                                <input type="text"value = >
                                <p>12th Percentage</p>
                                <input type = "text">
                                <form action="LogoutServlet" method ="post"><input type = "submit" value="LogOut"></form>
                            </form>
                        </div>
                    </div>
                </div>
        </html>
<%}
 
%>
