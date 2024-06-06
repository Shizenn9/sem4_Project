package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class DashboardJer_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("  <title>Dashboard</title>\n");
      out.write("  <link rel=\"stylesheet\" href=\"style.css\" />\n");
      out.write("  <!-- Font Awesome Cdn Link -->\n");
      out.write("  <script src=\"https://kit.fontawesome.com/c204b688ed.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <nav>\n");
      out.write("      <div class=\"navbar\">\n");
      out.write("        <div class=\"logo\">\n");
      out.write("          <a href=\"index.html\">\n");
      out.write("            <img src=\"Images/megah_holdings.png\" />\n");
      out.write("           </a>\n");
      out.write("        </div>\n");
      out.write("        <ul>\n");
      out.write("          <li><a href=\"hall.html\">\n");
      out.write("            <i class=\"fa-solid fa-building-flag\" style=\"color: #E02E2E;\"></i>\n");
      out.write("            <span class=\"nav-item\">Hall</span>\n");
      out.write("          </a>\n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"court.html\">\n");
      out.write("            <i class=\"fa-regular fa-flag\" style=\"color: #E02E2E;\"></i>\n");
      out.write("            <span class=\"nav-item\">Court</span>\n");
      out.write("          </a>\n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"staff.html\">\n");
      out.write("            <i class=\"fa-solid fa-users\" style=\"color: #E02E2E;\"></i>\n");
      out.write("            <span class=\"nav-item\">Staff</span>\n");
      out.write("          </a>\n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"viewRepresentativeServlet\">\n");
      out.write("            <i class=\"fa-solid fa-person-chalkboard\" style=\"color: #E02E2E;\"></i>\n");
      out.write("            <span class=\"nav-item\">Representative</span>\n");
      out.write("          </a>\n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"booking.html\">\n");
      out.write("            <i class=\"fa-solid fa-people-group\" style=\"color: #E02E2E;\"></i>\n");
      out.write("            <span class=\"nav-item\">Booking</span>\n");
      out.write("          </a>\n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"Schedule.html\">\n");
      out.write("            <i class=\"fa-regular fa-calendar-days\" style=\"color: #E02E2E;\"></i>\n");
      out.write("            <span class=\"nav-item\">Schedule</span>\n");
      out.write("          </a>\n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"#\" class=\"logout\">\n");
      out.write("            <i class=\"fas fa-sign-out-alt\"></i>\n");
      out.write("            <span class=\"nav-item\">Log out</span>\n");
      out.write("          </a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <section class=\"main\">\n");
      out.write("      <div class=\"main-body\">\n");
      out.write("        <h1>Hello, staff#1</h1>\n");
      out.write("      \n");
      out.write("      <div class=\"job_card\">\n");
      out.write("        <div class=\"job_details\">\n");
      out.write("          <div class=\"img\">\n");
      out.write("            <i class=\"fa-solid fa-building-flag\" style=\"color: #E02E2E;\"></i>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"text\">\n");
      out.write("            <h2>Total Hall</h2>\n");
      out.write("            <span>Number of hall that is available</span>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"job_salary\">\n");
      out.write("          <h4>Total :</h4>\n");
      out.write("          <span>111</span>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("      <div class=\"job_card\">\n");
      out.write("        <div class=\"job_details\">\n");
      out.write("          <div class=\"img\">\n");
      out.write("            <i class=\"fa-regular fa-flag\" style=\"color: #E02E2E;\"></i>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"text\">\n");
      out.write("            <h2>Total Court</h2>\n");
      out.write("            <span>Total Court that is available</span>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"job_salary\">\n");
      out.write("          <h4>Total: </h4>\n");
      out.write("          <span>111</span>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <div class=\"job_card\">\n");
      out.write("        <div class=\"job_details\">\n");
      out.write("          <div class=\"img\">\n");
      out.write("            <i class=\"fa-solid fa-person-chalkboard\" style=\"color: #E02E2E;\"></i>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"text\">\n");
      out.write("            <h2>Total Representative</h2>\n");
      out.write("            <span>Total Representative that made a booking</span>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"job_salary\">\n");
      out.write("          <h4>Total: </h4>\n");
      out.write("          <span>111</span>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <div class=\"job_card\">\n");
      out.write("        <div class=\"job_details\">\n");
      out.write("          <div class=\"img\">\n");
      out.write("            <i class=\"fa-regular fa-futbol\" style=\"color: #E02E2E;\"></i>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"text\">\n");
      out.write("            <h2>Total Game </h2>\n");
      out.write("            <span>Total Game available</span>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"job_salary\">\n");
      out.write("          <h4>Total: </h4>\n");
      out.write("          <span>111</span>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <div class=\"job_card\">\n");
      out.write("        <div class=\"job_details\">\n");
      out.write("          <div class=\"img\">\n");
      out.write("            <i class=\"fa-solid fa-users\" style=\"color: #E02E2E;\"></i>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"text\">\n");
      out.write("            <h2>Total Staff</h2>\n");
      out.write("            <span>Total Staff in Megah Megah Holdings</span>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"job_salary\">\n");
      out.write("          <h4>Total: </h4>\n");
      out.write("          <span>111</span>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    </section>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
