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
            background-image :gradient
        }
    </style>
    <body>
        <div>
            <font>
            UserName: <%=
                   request.getSession().getAttribute("nm").toString()
                %>
            </font>
            <form action = "LogoutServlet" method = "post">
                <input type = "Submit" value = "LogOut">
            </form>
        </div>
    </body>
</html>
<%}
   
%>
