package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import bean.GameBean;
import java.util.List;

public final class viewGame_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>Game</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\" />\n");
      out.write("        <!-- Font Awesome Cdn Link -->\n");
      out.write("        <script src=\"https://kit.fontawesome.com/c204b688ed.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css\" />\n");
      out.write("        <script>\n");
      out.write("            function confirmDelete(gameId) {\n");
      out.write("                var confirmed = confirm(\"Are you sure you want to delete this game?\");\n");
      out.write("                if (confirmed) {\n");
      out.write("                    // If confirmed, submit the form\n");
      out.write("                    document.getElementById(\"deleteForm\" + gameId).submit();\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <nav>\n");
      out.write("          <div class=\"navbar\">\n");
      out.write("            <div class=\"logo\">\n");
      out.write("              <a href=\"index.html\">\n");
      out.write("                <img src=\"Images/megah_holdings.png\" />\n");
      out.write("               </a>\n");
      out.write("            </div>\n");
      out.write("            <ul>\n");
      out.write("              <li><a href=\"HallServlet\">\n");
      out.write("                <i class=\"fa-solid fa-building-flag\" style=\"color: #E02E2E;\"></i>\n");
      out.write("                <span class=\"nav-item\">Hall</span>\n");
      out.write("              </a>\n");
      out.write("              </li>\n");
      out.write("              <li><a href=\"CourtServlet\">\n");
      out.write("                <i class=\"fa-regular fa-flag\" style=\"color: #E02E2E;\"></i>\n");
      out.write("                <span class=\"nav-item\">Court</span>\n");
      out.write("              </a>\n");
      out.write("              </li>\n");
      out.write("              <li><a href=\"GameServlet\">\n");
      out.write("                <i class=\"fa-solid fa-gamepad\" style=\"color: #E02E2E;\"></i>\n");
      out.write("                <span class=\"nav-item\">Game</span>\n");
      out.write("              </a>\n");
      out.write("              </li>\n");
      out.write("              <li><a href=\"staff.html\">\n");
      out.write("                <i class=\"fa-solid fa-users\" style=\"color: #E02E2E;\"></i>\n");
      out.write("                <span class=\"nav-item\">Staff</span>\n");
      out.write("              </a>\n");
      out.write("              </li>\n");
      out.write("              <li><a href=\"RepresentativeServlet\">\n");
      out.write("                <i class=\"fa-solid fa-person-chalkboard\" style=\"color: #E02E2E;\"></i>\n");
      out.write("                <span class=\"nav-item\">Representative</span>\n");
      out.write("              </a>\n");
      out.write("              </li>\n");
      out.write("              <li><a href=\"booking.html\">\n");
      out.write("                <i class=\"fa-solid fa-people-group\" style=\"color: #E02E2E;\"></i>\n");
      out.write("                <span class=\"nav-item\">Booking</span>\n");
      out.write("              </a>\n");
      out.write("              </li>\n");
      out.write("              <li><a href=\"#\" class=\"logout\">\n");
      out.write("                <i class=\"fas fa-sign-out-alt\"></i>\n");
      out.write("                <span class=\"nav-item\">Log out</span>\n");
      out.write("              </a>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <section class=\"main\">\n");
      out.write("          <div class=\"main-body\">\n");
      out.write("            <h1>Games</h1>\n");
      out.write("            <div class=\"create\">\n");
      out.write("              <a href=\"addGame.jsp\" class=\"editButton\">Create</a>\n");
      out.write("            </div>\n");
      out.write("            <table class=\"table\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                     <th>Game ID</th>\n");
      out.write("                     <th>Game Name</th>\n");
      out.write("                     <th>Action</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("      </div>\n");
      out.write("    </body>\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${games}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("game");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                            <tr>\n");
          out.write("                                <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${game.gameId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${game.gameName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                <td>\n");
          out.write("                                    <a class=\"editButton\" href=\"editGame.jsp?gameId=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${game.gameId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("&amp;gameName=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${game.gameName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">Edit</a>\n");
          out.write("                                    <form id=\"deleteForm");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${game.gameId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" method=\"post\" action=\"GameServlet\">\n");
          out.write("                                        <input type=\"hidden\" class=\"editButton\" name=\"courtId\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${game.gameId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\n");
          out.write("                                        <button type=\"button\" class=\"deleteButton\" onclick=\"confirmDelete(");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${game.gameId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(")\">Delete</button>\n");
          out.write("                                    </form>\n");
          out.write("                                </td>\n");
          out.write("                            </tr>\n");
          out.write("                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
