import dao.RepresentativeDao;
import bean.RepresentativeBean;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

public class RepresentativeServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve representative data from the database
            List<RepresentativeBean> representatives = RepresentativeDao.getAllRepresentatives();

            // Set the data as an attribute in the request
            request.setAttribute("representatives", representatives);

            // Forward the request to the viewRepresentative.jsp page
            RequestDispatcher dispatcher = request.getRequestDispatcher("viewRepresentative.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            // Redirect to an error page or display an error message
            response.getWriter().println("An error occurred while retrieving representative data.");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Get the representative ID to delete
            int repId = Integer.parseInt(request.getParameter("repId"));

            // Call the DAO method to delete the representative
            RepresentativeDao.deleteRepresentative(repId);

            // Redirect back to the RepresentativeServlet to refresh the list
            response.sendRedirect(request.getContextPath() + "/RepresentativeServlet");
        } catch (Exception e) {
            e.printStackTrace();
            // Redirect to an error page or display an error message
            response.getWriter().println("An error occurred while deleting the representative.");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
