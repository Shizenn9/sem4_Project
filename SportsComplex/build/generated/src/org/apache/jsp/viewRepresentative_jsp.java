package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class viewRepresentative_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("\t<!-- Boxicons -->\n");
      out.write("\t<script src=\"https://kit.fontawesome.com/c204b688ed.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("\t<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>\n");
      out.write("\t<!-- My CSS -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("\n");
      out.write("\t<title>Representative</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<!-- SIDEBAR -->\n");
      out.write("\t<section id=\"sidebar\">\n");
      out.write("\t\t<a href=\"#\" class=\"brand\">\n");
      out.write("\t\t\t<i class='bx bxs-smile'></i>\n");
      out.write("\t\t\t<span class=\"text\">Megah Holdings</span>\n");
      out.write("\t\t</a>\n");
      out.write("\t\t<ul class=\"side-menu top\">\n");
      out.write("\t\t\t<li>\n");
      out.write("\t\t\t\t<a href=\"dashboard.jsp\">\n");
      out.write("\t\t\t\t\t<i class='bx bxs-dashboard' ></i>\n");
      out.write("\t\t\t\t\t<span class=\"text\">Dashboard</span>\n");
      out.write("\t\t\t\t</a>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t\t<li>\n");
      out.write("\t\t\t\t<a href=\"HallServlet\">\n");
      out.write("\t\t\t\t\t<i class='bx bx-home-circle'></i>\n");
      out.write("\t\t\t\t\t<span class=\"text\">Hall</span>\n");
      out.write("\t\t\t\t</a>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t\t<li>\n");
      out.write("\t\t\t\t<a href=\"CourtServlet\">\n");
      out.write("\t\t\t\t\t<i class='bx bxs-shopping-bag-alt' ></i>\n");
      out.write("\t\t\t\t\t<span class=\"text\">Court</span>\n");
      out.write("\t\t\t\t</a>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t\t<li>\n");
      out.write("\t\t\t\t<a href=\"GameServlet\">\n");
      out.write("\t\t\t\t\t<i class='bx bx-joystick' ></i>\n");
      out.write("\t\t\t\t\t<span class=\"text\">Game</span>\n");
      out.write("\t\t\t\t</a>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t\t<li class=\"active\">\n");
      out.write("\t\t\t\t<a href=\"RepresentativeServlet\">\n");
      out.write("\t\t\t\t\t<i class='bx bxs-doughnut-chart' ></i>\n");
      out.write("\t\t\t\t\t<span class=\"text\">Representative</span>\n");
      out.write("\t\t\t\t</a>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t\t<li>\n");
      out.write("\t\t\t\t<a href=\"BookServlet\">\n");
      out.write("\t\t\t\t\t<i class='bx bxs-message-dots' ></i>\n");
      out.write("\t\t\t\t\t<span class=\"text\">Booking</span>\n");
      out.write("\t\t\t\t</a>\n");
      out.write("\t\t\t</li>\n");
      out.write("            <li>\n");
      out.write("\t\t\t\t<a href=\"StaffServlet\">\n");
      out.write("\t\t\t\t\t<i class='bx bx-user-circle'></i>\n");
      out.write("\t\t\t\t\t<span class=\"text\">Staff</span>\n");
      out.write("\t\t\t\t</a>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t\t<ul class=\"side-menu\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<li>\n");
      out.write("\t\t\t\t<a href=\"adminLogoutServlet\" class=\"logout\">\n");
      out.write("\t\t\t\t\t<i class='bx bxs-log-out-circle' ></i>\n");
      out.write("\t\t\t\t\t<span class=\"text\">Logout</span>\n");
      out.write("\t\t\t\t</a>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</section>\n");
      out.write("\t<!-- SIDEBAR -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<!-- CONTENT -->\n");
      out.write("\t<section id=\"content\">\n");
      out.write("\t\t<!-- NAVBAR -->\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- NAVBAR -->\n");
      out.write("\n");
      out.write("\t\t<!-- MAIN -->\n");
      out.write("\t\t<main>\n");
      out.write("\t\t\t<div class=\"head-title\">\n");
      out.write("\t\t\t\t<div class=\"left\">\n");
      out.write("\t\t\t\t\t<h1>Representative</h1>\n");
      out.write("\t\t\t\t\t<ul class=\"breadcrumb\">\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                <a href=\"addRepresentative.jsp\" class=\"btn-download\">\n");
      out.write("                    <span class=\"text\">Create</span>\n");
      out.write("                </a>\n");
      out.write("\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("            <div class=\"table-data\">\n");
      out.write("\t\t\t\t<div class=\"order\">\n");
      out.write("\t\t\t\t\t<div class=\"head\">\n");
      out.write("\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<table>\n");
      out.write("\t\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("                                                            <th>Representative ID</th>\n");
      out.write("                                                            <th>Phone Number</th>\n");
      out.write("                                                            <th>Email</th>\n");
      out.write("                                                            <th>First Name</th>\n");
      out.write("                                                            <th>Last Name</th>\n");
      out.write("                                                            <th>Password</th>\n");
      out.write("                                                            <th>Edit</th> \n");
      out.write("                                                            <th>Delete</th>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t</thead>\n");
      out.write("\t\t\t\t\t\t<tbody>\n");
      out.write("                                                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\t\t\t\t\t\t</tbody>\n");
      out.write("\t\t\t\t\t</table>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\t\t</main>\n");
      out.write("\t\t<!-- MAIN -->\n");
      out.write("\t</section>\n");
      out.write("\t<!-- CONTENT -->\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t<script src=\"script.js\"></script>\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representatives}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("representative");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("\t\t\t\t\t\t\t<tr>\n");
          out.write("                                                            <td><p>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.repId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p></td>\n");
          out.write("                                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.phoneNo}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.firstName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.lastName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                                            <td><span class=\"status pending\"><a href=\"editRepresentative.jsp?repId=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.repId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("&amp;email=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("&amp;phoneNo=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.phoneNo}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                                                                &amp;firstName=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.firstName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("&amp;lastName=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.lastName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("&amp;password=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"editButton\">Edit</a></span></td>\n");
          out.write("                                                            <td><form id=\"deleteForm");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.repId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" method=\"post\" action=\"RepresentativeServlet\">\n");
          out.write("                                                                    <input type=\"hidden\" name=\"repId\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.repId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\n");
          out.write("                                                                    <button type=\"button\" class=\"deleteButton\" onclick=\"confirmDelete(");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${representative.repId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(")\">Delete</button>\n");
          out.write("                                                                </form>\n");
          out.write("                                                            </td>    \n");
          out.write("\t\t\t\t\t\t\t</tr>\n");
          out.write("                                                    ");
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
