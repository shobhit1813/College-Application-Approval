package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class personal_005fDetail_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Personal Detail</title>\n");
      out.write("<style>\n");
      out.write("              body{\n");
      out.write("                  background-image:url(\"regi.jpg\");\n");
      out.write("                  background-size:1500px 880px;\n");
      out.write("            }\n");
      out.write("            .avatar{\n");
      out.write("                    width: 100px;\n");
      out.write("                    height: 100px;\n");
      out.write("                    border-radius: 75%;\n");
      out.write("                    position: absolute;\n");
      out.write("                    top: -40px;\n");
      out.write("                    left: calc(50% - 50px);\n");
      out.write("            }\n");
      out.write("         .loginbox{\n");
      out.write("                    width: 320px;\n");
      out.write("                    height: 420px;\n");
      out.write("                    background: #000;\n");
      out.write("                    color: #fff;\n");
      out.write("                    top: 50%;\n");
      out.write("                    left: 50%;\n");
      out.write("                    position: absolute;\n");
      out.write("                    transform: translate(-50%,-50%);\n");
      out.write("                    box-sizing: border-box;\n");
      out.write("                    padding: 70px 30px;\n");
      out.write("                    opacity: 0.76;\n");
      out.write("                    border-radius:30px;\n");
      out.write("                }\n");
      out.write("                .loginbox p{\n");
      out.write("                    margin: 0;\n");
      out.write("                    padding: 0;\n");
      out.write("                    font-weight: bold;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                .loginbox input{\n");
      out.write("                    width: 100%;\n");
      out.write("                    margin-bottom: 20px;\n");
      out.write("                }\n");
      out.write("                .loginbox input[type=\"text\"], input[type=\"password\"] {\n");
      out.write("                    border: none;\n");
      out.write("                    border-bottom: 1px solid #fff;\n");
      out.write("                    background: transparent;\n");
      out.write("                    outline: none;\n");
      out.write("                    height: 40px;\n");
      out.write("                    color: #fff;\n");
      out.write("                    font-size: 16px;\n");
      out.write("                }\n");
      out.write("                .loginbox input[type=\"submit\"]{\n");
      out.write("                    border: none;\n");
      out.write("                    outline: none;\n");
      out.write("                    height: 40px;\n");
      out.write("                    background: #fb2525;\n");
      out.write("                    color: #fff;\n");
      out.write("                    font-size: 18px;\n");
      out.write("                    border-radius: 20px;\n");
      out.write("                }\n");
      out.write(".loginbox input[type=\"submit\"]:hover\n");
      out.write("{\n");
      out.write("    cursor: pointer;\n");
      out.write("    background: #ffc107;\n");
      out.write("    color: #000;\n");
      out.write("}\n");
      out.write("           \n");
      out.write("</style>\n");
      out.write("<script>\n");
      out.write("            function disableUserName(){\n");
      out.write("                document.getElementById(\"un\").disabled = true;\n");
      out.write("            }\n");
      out.write("</script>\n");
      out.write("<body onload = \"disableUserName()\">\n");
      out.write("    <div class=\"loginbox\">\n");
      out.write("        <img src = \"avtar2.png\" class = \"avatar\">\n");
      out.write("        <form action = \"ApplyServlet\" method = \"post\">\n");
      out.write("           <table>\n");
      out.write("               <p>UserName</p>\n");
      out.write("                <input type=\"text\" name=\"usnm\" id = \"un\">\n");
      out.write("                <p>Father's Name</p>\n");
      out.write("                <input type=\"text\" name=\"ftnm\" placeholder=\"Enter Username\" required>\n");
      out.write("                <p>Father's occupation</p>\n");
      out.write("                <select name = \"ftoccp\">\n");
      out.write("                    <option value = \"Business\">Business</option>\n");
      out.write("                    <option value = \"Govt\">Govt job</option>\n");
      out.write("                    <option value = \"Private\">Private job</option>\n");
      out.write("                    <option value =\"others\">Others</option>\n");
      out.write("                </select>\n");
      out.write("                <p>10th cgpa</p>\n");
      out.write("                <input type =\"text\" name=\"cgpa\" placeholder =\"Enter Cgpa\" required>\n");
      out.write("                <p>12th per</p>\n");
      out.write("                <input type =\"text\" name =\"twno\" placeholder=\"Enter Percentage\" required>\n");
      out.write("                <br>\n");
      out.write("                <input type = \"Submit\" value = \"Apply\">\n");
      out.write("           </table>\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</head>\n");
      out.write("</html>");
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
