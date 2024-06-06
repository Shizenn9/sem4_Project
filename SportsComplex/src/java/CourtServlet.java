import dao.CourtDao;
import bean.CourtBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import javax.servlet.annotation.WebServlet;

@WebServlet("/CourtServlet")
public class CourtServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CourtDao courtDao = new CourtDao();
        List<CourtBean> courts = courtDao.getAllCourts();
        request.setAttribute("courts", courts);
        request.getRequestDispatcher("viewCourt.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int courtId = Integer.parseInt(request.getParameter("courtId"));
        CourtDao courtDao = new CourtDao();
        courtDao.deleteCourt(courtId);
        response.sendRedirect("CourtServlet");
    }
}