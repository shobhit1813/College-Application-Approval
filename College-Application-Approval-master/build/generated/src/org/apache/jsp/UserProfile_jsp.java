package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UserProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');

   response.setHeader("Cache-Control","no-store,no-cache,must-revalidate"); //HTTP 1.1 
 
   
   if(session.getAttribute("nm") == null){
        RequestDispatcher rd = request.getRequestDispatcher("login.html");
        rd.forward(request, response);
   }
   HttpSession nsession = request.getSession(false);
   if(nsession != null){
      
        
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        .tb{\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        #a{\n");
      out.write("             text-decoration: none;\n");
      out.write("             width:100px;\n");
      out.write("        }\n");
      out.write("        body{\n");
      out.write("            background-image:url(\"pers.jpeg\");\n");
      out.write("            background-size: 1400px 800px;\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        #user{\n");
      out.write("            width:350px;\n");
      out.write("            margin-top:20px;\n");
      out.write("            margin-left:600px;\n");
      out.write("            height:500px;\n");
      out.write("            background-image: linear-gradient(50deg,red,black);\n");
      out.write("            box-shadow: 5px 5px black;\n");
      out.write("        }\n");
      out.write("        #profile{\n");
      out.write("            float:left;\n");
      out.write("            margin-top:20px;\n");
      out.write("            margin-left:300px;\n");
      out.write("            width:300px;\n");
      out.write("            height:500px;\n");
      out.write("            background-image: url(\"divuser.jpg\");\n");
      out.write("            background-size: 300px 500px;\n");
      out.write("             box-shadow: 0px 5px #4d4d4d;\n");
      out.write("        }\n");
      out.write("   \n");
      out.write(" \n");
      out.write(".topnav {\n");
      out.write("  overflow: hidden;\n");
      out.write("  background-color: black;\n");
      out.write("  margin-top:-10px;\n");
      out.write("  margin-left:  -8px;\n");
      out.write("  \n");
      out.write("  opacity:0.7;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a {\n");
      out.write("  float: left;\n");
      out.write("  color: #f2f2f2;\n");
      out.write("  text-align: center;\n");
      out.write("  padding: 14px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  font-size: 17px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a:hover {\n");
      out.write("  background-color: #ddd;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a.active {\n");
      out.write("  background-color: greenyellow;\n");
      out.write("  color: brown;\n");
      out.write("}\n");
      out.write("#user font.username{\n");
      out.write("    font-family: \"Times Header\";\n");
      out.write("    margin-top:20px;\n");
      out.write("    margin-left:100px;\n");
      out.write("    font-size:30px; \n");
      out.write("}\n");
      out.write("#user.username font.usename_in{\n");
      out.write("    margin-left: 1000px;\n");
      out.write("}\n");
      out.write("#avtardiv{\n");
      out.write("    border-radius: 100%;\n");
      out.write("    background-color: yellow;\n");
      out.write("    background-size: 30px 30px;\n");
      out.write("}\n");
      out.write("img{\n");
      out.write("    border-radius:25%;\n");
      out.write("    margin-left: 50px;\n");
      out.write("    margin-top: 100px;\n");
      out.write("}\n");
      out.write(".usename_in{\n");
      out.write("    top: -40;\n");
      out.write("    margin-top: 100px;\n");
      out.write("}\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        <div class = \"topnav\">\n");
      out.write("            <a class=\"active\">Home</a>\n");
      out.write("            <a href =\" \">Applied for</a>\n");
      out.write("            <a href =\" \">Counseling</a>\n");
      out.write("            <a href =\"UserProfile.jsp\">Back</a>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("         <div id = \"profile\">\n");
      out.write("             <img src = \"shobhit.jpg\" style=\"width:200px\">\n");
      out.write("             <font class = \"username\">\n");
      out.write("         </div>\n");
      out.write("        <div id = \"user\">\n");
      out.write("            <table class = \"tb\"> \n");
      out.write("               <tr>\n");
      out.write("                   <td>     \n");
      out.write("                        <p class =\"username_in\" text> ");
      out.print(
                                     request.getSession().getAttribute("nm").toString()
                                 );
      out.write("\n");
      out.write("                        </p>\n");
      out.write("                   </td>             \n");
      out.write("                </tr>    \n");
      out.write("                </p>\n");
      out.write("           </table>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
}
else{
    System.out.println("Cannot Access");
} 

      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
