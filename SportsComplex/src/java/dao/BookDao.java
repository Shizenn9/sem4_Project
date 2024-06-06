package dao;

import bean.BookBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import util.DBConnection;

public class BookDao {
   public List<BookBean> getAllBooks() {
        List<BookBean> books = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "SELECT * FROM BOOKING";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                BookBean book = new BookBean();
                book.setBookId(rs.getInt("BOOKING_ID"));
                book.setTeamName(rs.getString("TEAM_NAME"));
                book.setPhoneNo(rs.getInt("PHONE_NO"));
                book.setGameName(rs.getString("GAME_NAME"));
                book.setBookingDate(rs.getString("BOOKING_DATE"));
                book.setBookingTime(rs.getString("BOOKING_TIME"));
                book.setHallName(rs.getString("HALL_NAME"));
                book.setCourtName(rs.getString("COURT_NAME"));
                books.add(book);
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

        return books;
    }
   
   public void deleteBook(int bookId) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "DELETE FROM BOOKING WHERE BOOKING_ID=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, bookId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
   
    public void insertBook(BookBean book) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        String url = "jdbc:derby://localhost:1527/sportscomplex";
        String username = "app";
        String password = "app";

        try {
            conn = DriverManager.getConnection(url, username, password);
            String sql = "INSERT INTO BOOKING (TEAM_NAME, PHONE_NO, GAME_NAME, BOOKING_DATE, BOOKING_TIME, HALL_NAME, COURT_NAME) " +
                         "VALUES (?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, book.getTeamName());
            pstmt.setInt(2, book.getPhoneNo());
            pstmt.setString(3, book.getGameName());
            pstmt.setString(4, book.getBookingDate());
            pstmt.setString(5, book.getBookingTime());
            pstmt.setString(6, book.getHallName());
            pstmt.setString(7, book.getCourtName());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


}
