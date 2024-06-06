package dao;

import bean.RegisterBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;

public class RegisterDao {
    public String registerUser(RegisterBean registerBean) {
        String firstName = registerBean.getFirstName(); //Assign user entered values to temporary
        String lastName = registerBean.getLastName();
        String email = registerBean.getEmail();
        int phoneNo = registerBean.getPhoneNo();
        String pass = registerBean.getPassword();
        
        Connection conn;
        Statement statement;
        PreparedStatement pstmt;
        ResultSet resultSet, rs;
        String emailDB;
        String passwordDB;
        
        try {
            conn = DBConnection.createConnection(); //Fetch database connection object
            statement = conn.createStatement();       
            
            rs = statement.executeQuery("select REP_EMAIL from REPRESENTATIVE");
            /*TENGOK DEKAT SINI*/
            while (rs.next()) {
                emailDB = rs.getString("REP_EMAIL");
                if (email.equals(emailDB)) {
                    return "Email has already taken";
                }
            }

            pstmt = conn.prepareStatement("insert into REPRESENTATIVE " 
                    + "(REP_PHONENO, REP_EMAIL, REP_FIRSTNAME, REP_LASTNAME, REP_PASSWORD) "
                    + "values (?, ?, ?, ?, ?)");            
            pstmt.setInt(1, phoneNo);
            pstmt.setString(2, email); 
            pstmt.setString(3, firstName);
            pstmt.setString(4, lastName); 
            pstmt.setString(5, pass);
            pstmt.executeUpdate();
                    
            resultSet = statement.executeQuery("select REP_EMAIL, REP_PASSWORD from REPRESENTATIVE");
            while (resultSet.next()) {
                emailDB = resultSet.getString("REP_EMAIL");
                passwordDB = resultSet.getString("REP_PASSWORD");
                if (emailDB.equals(emailDB) && pass.equals(passwordDB)) {
                    return "SUCCESS";
                }
            }    
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return "Invalid user credentials"; //Return appropriate message in case of failure
    }
}
