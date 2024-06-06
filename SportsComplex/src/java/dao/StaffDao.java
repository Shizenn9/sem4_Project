package dao;

import bean.StaffBean;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class StaffDao {
    public List<StaffBean> getAllStaffs() {
        List<StaffBean> staffs = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "SELECT * FROM STAFF";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                StaffBean staff = new StaffBean();
                staff.setStaffId(rs.getInt("STAFF_ID"));
                staff.setName(rs.getString("STAFF_NAME"));
                staff.setAddress(rs.getString("STAFF_ADDRESS"));
                staff.setPosition(rs.getString("STAFF_POSITION"));
                staff.setPhoneNo(rs.getInt("STAFF_PHONENO"));
                staff.setEmail(rs.getString("STAFF_EMAIL"));
                staff.setPassword(rs.getString("STAFF_PASSWORD"));

                
                staffs.add(staff);
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

        return staffs;
    }
    
    public void deleteStaff(int staffId) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "DELETE FROM STAFF WHERE STAFF_ID=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, staffId);
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
