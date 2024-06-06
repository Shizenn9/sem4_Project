import bean.BookingBean;
import dao.BookingDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BookingServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve form data
            String teamName = request.getParameter("formTeamName");
            String gameType = request.getParameter("formGameType");
            String bookingDate = request.getParameter("formBookingDate");
            String bookingTime = request.getParameter("formBookingTime");
            int phoneNo = Integer.parseInt(request.getParameter("formPhoneNo"));
            String hallName = request.getParameter("formHallName");
            String courtName = request.getParameter("formCourtName");

            // Create BookingBean object
            BookingBean booking = new BookingBean(teamName, gameType, bookingDate, bookingTime, phoneNo, hallName, courtName);

            // Call DAO to save booking
            BookingDao bookingDao = new BookingDao();
            int bookingId = bookingDao.saveBooking(booking);

            if (bookingId != -1) {
                // Set the booking ID and form data as request attributes
                request.setAttribute("bookingId", bookingId);
                request.setAttribute("formTeamName", teamName);
                request.setAttribute("formGameType", gameType);
                request.setAttribute("formBookingDate", bookingDate);
                request.setAttribute("formBookingTime", bookingTime);
                request.setAttribute("formPhoneNo", phoneNo);
                request.setAttribute("formHallName", hallName);
                request.setAttribute("formCourtName", courtName);

                // Set the success message attribute
                request.setAttribute("successMessage", "Booking saved successfully!");
            } else {
                // Set the error message attribute
                request.setAttribute("errorMessage", "Failed to save booking. Please try again.");
            }
        } catch (Exception e) {
            // Handle any exceptions that may occur during form data retrieval or processing
            e.printStackTrace(); // You can replace this with appropriate error handling
            request.setAttribute("errorMessage", "An error occurred. Please try again.");
        }

        // Forward the request to completeBooking.jsp
        request.getRequestDispatcher("completeBooking.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Booking Servlet";
    }
}
