package dao;

import bean.BookingBean;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BookingDao {

    public int saveBooking(BookingBean booking) {
        String teamName = booking.getTeamName();
        int phoneNo = booking.getPhoneNo();
        String gameName = booking.getGameType();
        String bookingDate = booking.getBookingDate();
        String bookingTime = booking.getBookingTime();
        String hallName = booking.getHallName();
        String courtName = booking.getCourtName();

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int bookingId = -1;

        try {
            conn = DBConnection.createConnection();
            pstmt = conn.prepareStatement("INSERT INTO BOOKING (TEAM_NAME, PHONE_NO, GAME_NAME, BOOKING_DATE, BOOKING_TIME, HALL_NAME, COURT_NAME) VALUES (?, ?, ?, ?, ?, ?, ?)", PreparedStatement.RETURN_GENERATED_KEYS);

            pstmt.setString(1, teamName);
            pstmt.setInt(2, phoneNo);
            pstmt.setString(3, gameName);
            pstmt.setString(4, bookingDate);
            pstmt.setString(5, bookingTime);
            pstmt.setString(6, hallName);
            pstmt.setString(7, courtName);

            // Execute SQL statement
            int rowsAffected = pstmt.executeUpdate();

            // Check if the booking was successfully saved
            if (rowsAffected > 0) {
                rs = pstmt.getGeneratedKeys();
                if (rs.next()) {
                    bookingId = rs.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return bookingId;
    }
}
