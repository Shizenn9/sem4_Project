package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.BookingDao;
import bean.BookingBean;

public final class complete_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <title>Booking Complete</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"title\">Booking Complete!</div>\n");
      out.write("        <p><b>KINDLY SHOW UP WITH THIS PAGE AS PROOF</b></p>\n");
      out.write("        <p>(screenshot recommended)</p>\n");
      out.write("        <div class=\"content\">\n");
      out.write("            ");

                BookingDao bookingDao = new BookingDao();
                BookingBean latestBooking = bookingDao.getLatestBooking();
                
                if (latestBooking != null) {
            
      out.write("\n");
      out.write("            <form action=\"#\" method=\"POST\">\n");
      out.write("                <div class=\"user-details\">\n");
      out.write("                    <div class=\"input-box\">\n");
      out.write("                        <span class=\"details\">Booking ID:</span>\n");
      out.write("                        ");
      out.print( latestBooking.getBookingId() );
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-box\">\n");
      out.write("                        <span class=\"details\">Team Name:</span>\n");
      out.write("                        ");
      out.print( latestBooking.getTeamName() );
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-box\">\n");
      out.write("                        <span class=\"details\">Game Type:</span>\n");
      out.write("                        ");
      out.print( latestBooking.getGameType() );
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-box\">\n");
      out.write("                        <span class=\"details\">Booking Date:</span>\n");
      out.write("                        ");
      out.print( latestBooking.getBookingDate() );
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-box\">\n");
      out.write("                        <span class=\"details\">Booking Time:</span>\n");
      out.write("                        ");
      out.print( latestBooking.getBookingTime() );
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-box\">\n");
      out.write("                        <span class=\"details\">Phone Number:</span>\n");
      out.write("                        ");
      out.print( latestBooking.getPhoneNo() );
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-box\">\n");
      out.write("                        <span class=\"details\">Hall Name:</span>\n");
      out.write("                        ");
      out.print( latestBooking.getHallName() );
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-box\">\n");
      out.write("                        <span class=\"details\">Court Name:</span>\n");
      out.write("                        ");
      out.print( latestBooking.getCourtName() );
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("            ");

                } else {
            
      out.write("\n");
      out.write("            <p>No booking found.</p>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
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
