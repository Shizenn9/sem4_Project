package dao;

import bean.LoginBean;
import java.sql.*;
import util.DBConnection;

public class LoginDao {
    public String authenticateUser(LoginBean loginBean) {
        String userName = loginBean.getEmail(); //Assign user entered values to temporary
        String password = loginBean.getPassword();
        
        Connection conn = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String userNameDB = "";
        String passwordDB = "";
        
        try {
            conn = DBConnection.createConnection(); //Fetch database connection object
            statement = conn.createStatement();
            resultSet = statement.executeQuery("select REP_EMAIL, REP_PASSWORD from REPRESENTATIVE");
            while (resultSet.next()) {
                userNameDB = resultSet.getString("REP_EMAIL");
                passwordDB = resultSet.getString("REP_PASSWORD");
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
