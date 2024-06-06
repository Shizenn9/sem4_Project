import bean.HallBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import util.DBConnection;

public class HallDao {
    public List<HallBean> getAllHalls() {
        List<HallBean> halls = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "SELECT * FROM HALL";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                HallBean hall = new HallBean();
                hall.setHallId(rs.getInt("HALL_ID"));
                hall.setHallName(rs.getString("HALL_NAME"));
                halls.add(hall);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return halls;
    }
    
    public void addHall(String hallName) {
    Connection conn = null;
    PreparedStatement pstmt = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "INSERT INTO HALL (HALL_NAME) VALUES (?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, hallName);
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

    public void deleteHall(int hallId) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "DELETE FROM HALL WHERE HALL_ID=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, hallId);
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
