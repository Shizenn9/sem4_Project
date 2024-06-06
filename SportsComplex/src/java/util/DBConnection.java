package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection createConnection() {
        Connection conn = null;
        String connectionString = "jdbc:derby://localhost:1527/sportscomplex;create=true;user=app;password=app";
        
        try {
            try {
                //Load the driver
                Class.forName("org.apache.derby.jdbc.ClientDriver");
            }
            catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            //Connect to the sample database
            conn = DriverManager.getConnection(connectionString);
            System.out.println("Printing connection object " + conn);
        } catch (Exception ex) {
             ex.printStackTrace();
        }        
        return conn;
    }
}