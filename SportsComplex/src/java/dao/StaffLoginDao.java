package dao;

import bean.StaffLoginBean;
import java.sql.*;
import util.DBConnection;

public class StaffLoginDao {
    public String authenticateUser(StaffLoginBean staffLoginBean) {
        String userName = staffLoginBean.getEmail(); //Assign user entered values to temporary
        String password = staffLoginBean.getPassword();
        
        Connection conn = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String userNameDB = "";
        String passwordDB = "";
        
        try {
            conn = DBConnection.createConnection(); //Fetch database connection object
            statement = conn.createStatement();
            resultSet = statement.executeQuery("SELECT STAFF_EMAIL, STAFF_PASSWORD from STAFF");
            while (resultSet.next()) {
                userNameDB = resultSet.getString("STAFF_EMAIL");
                passwordDB = resultSet.getString("STAFF_PASSWORD");
                if (userName.equals(userNameDB) && password.equals(passwordDB)) {
                    return "SUCCESS";
                }
            }    
        } catch (SQLException e) {
            e.printStackTrace();
        }
       
        return "Invalid user credentials"; //Return appropriate message in case of failure
    }
}
