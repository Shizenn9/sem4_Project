import bean.StaffBean;
import dao.StaffDao;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StaffServlet")
public class StaffServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        StaffDao staffDao = new StaffDao();
        List<StaffBean> staffs = staffDao.getAllStaffs();
        request.setAttribute("staffs", staffs);
        request.getRequestDispatcher("viewStaff.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int staffId = Integer.parseInt(request.getParameter("staffId"));
        StaffDao staffDao = new StaffDao();
        staffDao.deleteStaff(staffId);
        response.sendRedirect("StaffServlet");
    }
}