import bean.HallBean;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HallServlet")
public class HallServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        HallDao hallDao = new HallDao();
        List<HallBean> halls = hallDao.getAllHalls();
        request.setAttribute("halls", halls);
        request.getRequestDispatcher("viewHall.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int hallId = Integer.parseInt(request.getParameter("hallId"));
        HallDao hallDao = new HallDao();
        hallDao.deleteHall(hallId);
        response.sendRedirect("HallServlet");
    }
}
