<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   response.setHeader("Cache-Control","no-store"); //HTTP 1.1 
   response.setHeader("Cache-Control","no-cache"); 
   response.setHeader("Pragma","no-cache"); //HTTP 1.0 
   response.setDateHeader ("Expires", 0); 
  
   if(session.getAttribute("nm") == null){
       response.sendRedirect("login.html");
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
    </style>
    <body>
        <div>
            <font>
            UserName: <%=
                   request.getSession().getAttribute("nm").toString()
                %>
            </font>
            <a href ="login.html" id = "a">LogOut</a>
        </div>
    </body>
</html>
<%}
    else{
       response.sendRedirect("login.html");
}
%>
