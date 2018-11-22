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

  
 
//   
//   if(session.getAttribute("nm") == null){
//        RequestDispatcher rd = request.getRequestDispatcher("login.html");
//        rd.forward(request, response);
//   }
//   HttpSession nsession = request.getSession(false);
//   if(nsession != null){
//      
//        
      out.write("\n");
      out.write("        <html>\n");
      out.write("            <head>\n");
      out.write("                <title>Profile Page</title>\n");
      out.write("                <style>\n");
      out.write("                    body{\n");
      out.write("                        margin:0;\n");
      out.write("                        padding:0;\n");
      out.write("                        background: url(\"edu6.jpeg\");\n");
      out.write("                        background-size: cover;\n");
      out.write("                        font-family: sans-serif;   \n");
      out.write("                    }\n");
      out.write("                    .title{\n");
      out.write("                        text-align: center;\n");
      out.write("                        padding: 50px 0 20px;\n");
      out.write("                    }\n");
      out.write("                    .title h1{\n");
      out.write("                        margin: 0;\n");
      out.write("                        padding: 0;\n");
      out.write("                        color: #262626;\n");
      out.write("                        text-transform: uppercase;\n");
      out.write("                        font-size: 36px;\n");
      out.write("                    }\n");
      out.write("                    .container{\n");
      out.write("                        width: 50%;\n");
      out.write("                        height: 400px;\n");
      out.write("                        background-color: #fff;\n");
      out.write("                        margin: 0 auto;\n");
      out.write("                        border: 2px solid #fff;\n");
      out.write("                        box-shadow: 0 15px 40px rgba(0,0,0,0.5);\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                </style>\n");
      out.write("            </head>\n");
      out.write("                <div class = \"title\">\n");
      out.write("                    <h1>Profile Info</h1>\n");
      out.write("                </div>\n");
      out.write("                <div class = \"container\">\n");
      out.write("                    <div class = \"left\"></div>\n");
      out.write("                    <div class = \"right'></div>\n");
      out.write("                </div>\n");
      out.write("        </html>\n");
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
