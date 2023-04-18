package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"css/materialize.min.css\"\n");
      out.write("\tmedia=\"screen,projection\" />\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"css/custom.css\"\n");
      out.write("\tmedia=\"screen,projection\" />\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("<meta charset=\"ISO-8859-1\">\n");
      out.write("<title>ICAB!</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <center>   \n");
      out.write("        <div id=\"menu\">\n");
      out.write("          \n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("        </center>\n");
      out.write("\t<div class=\"red accent-4 lighten-3 z-depth-2\">\n");
      out.write("\t\t<h1 class=\"pink-text text-lighten-5 \" align=\"center\"\n");
      out.write("\t\t\tstyle=\"margin-top: 0px;\">WELCOME TO ADMIN LOGIN PAGE</h1>\n");
      out.write("            \n");
      out.write("\t\t\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<div id=\"container center-align\">\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("\t\t\t<div class=\"col s5 m4 l3 offset-s1 offset-m2 offset-l3 mycard\">\n");
      out.write("\t\t\t\t<div class=\"card hoverable\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col s5 m4 l3 offset-s1 offset-m2 mycard\">\n");
      out.write("\t\t\t\t<div class=\"card hoverable\">\n");
      out.write("\t\t\t\t\t<div class=\"card-image waves-effect waves-block waves-light\">\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("        <center>\n");
      out.write("        <form method=\"post\" action=\"adminback.jsp\" style=\"width: 400px\" >\n");
      out.write("            <br>username<input type=\"text\" name=\"username\"><br>\n");
      out.write("         <br>password<input type=\"password\" name=\"password\"><br>\n");
      out.write("                <br><input type=\"submit\" value=\"submit\"><br>\n");
      out.write("        </form>\n");
      out.write("    </center>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("</body>\n");
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
