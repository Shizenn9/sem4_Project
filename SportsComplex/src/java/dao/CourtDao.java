package dao;

import bean.CourtBean;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CourtDao {
    public List<CourtBean> getAllCourts() {
        List<CourtBean> courts = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "SELECT * FROM COURT";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                CourtBean court = new CourtBean();
                court.setCourtId(rs.getInt("COURT_ID"));
                court.setCourtName(rs.getString("COURT_NAME"));
                courts.add(court);
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

        return courts;
    }
    
    public void addHall(String courtName) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "INSERT INTO COURT (COURT_NAME) VALUES (?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, courtName);
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
    
    public void deleteCourt(int courtId) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "DELETE FROM COURT WHERE COURT_ID=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, courtId);
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
