package dao;

import bean.RepresentativeBean;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RepresentativeDao {

    public static List<RepresentativeBean> getAllRepresentatives() {
        List<RepresentativeBean> representatives = new ArrayList<>();

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnection.createConnection();
            stmt = conn.createStatement();
            String sql = "SELECT * FROM REPRESENTATIVE";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int repId = rs.getInt("REP_ID");
                int phoneNo = rs.getInt("REP_PHONENO");
                String email = rs.getString("REP_EMAIL");
                String firstName = rs.getString("REP_FIRSTNAME");
                String lastName = rs.getString("REP_LASTNAME");
                String password = rs.getString("REP_PASSWORD");

                RepresentativeBean representative = new RepresentativeBean(repId, phoneNo, email, firstName, lastName, password);
                representatives.add(representative);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return representatives;
    }

    public static boolean deleteRepresentative(int repId) {
        Connection conn = null;
        Statement stmt = null;

        try {
            conn = DBConnection.createConnection();
            stmt = conn.createStatement();
            String sql = "DELETE FROM REPRESENTATIVE WHERE REP_ID = " + repId;
            int rowsAffected = stmt.executeUpdate(sql);

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            // Close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static RepresentativeBean getRepresentativeById(int repId) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "SELECT * FROM REPRESENTATIVE WHERE REP_ID = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, repId);
            rs = stmt.executeQuery();

            if (rs.next()) {
                int phoneNo = rs.getInt("REP_PHONENO");
                String email = rs.getString("REP_EMAIL");
                String firstName = rs.getString("REP_FIRSTNAME");
                String lastName = rs.getString("REP_LASTNAME");
                String password = rs.getString("REP_PASSWORD");

                return new RepresentativeBean(repId, phoneNo, email, firstName, lastName, password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return null; // Return null if no representative found with the given ID
    }

    public static boolean updateRepresentative(RepresentativeBean representative) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "UPDATE REPRESENTATIVE SET REP_PHONENO = ?, REP_EMAIL = ?, REP_FIRSTNAME = ?, REP_LASTNAME = ?, REP_PASSWORD = ? WHERE REP_ID = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, representative.getPhoneNo());
            stmt.setString(2, representative.getEmail());
            stmt.setString(3, representative.getFirstName());
            stmt.setString(4, representative.getLastName());
            stmt.setString(5, representative.getPassword());
            stmt.setInt(6, representative.getRepId());

            int rowsAffected = stmt.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            // Close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    public static boolean addRepresentative(RepresentativeBean representative) {
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        conn = DBConnection.createConnection();
        String sql = "INSERT INTO REPRESENTATIVE (REP_PHONENO, REP_EMAIL, REP_FIRSTNAME, REP_LASTNAME, REP_PASSWORD) VALUES (?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, representative.getPhoneNo());
        pstmt.setString(2, representative.getEmail());
        pstmt.setString(3, representative.getFirstName());
        pstmt.setString(4, representative.getLastName());
        pstmt.setString(5, representative.getPassword());

        int rowsAffected = pstmt.executeUpdate();

        return rowsAffected > 0;
    } catch (SQLException e) {
        e.printStackTrace();
        return false;
    } finally {
        // Close resources
        try {
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
}
}
