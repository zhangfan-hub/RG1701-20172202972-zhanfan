package DBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public static Connection getConnection() throws SQLException {
        String URL = "jdbc:mysql://localhost:3306/ordering_system?&useSSL=false&serverTimezone=UTC";
        Connection conn = DriverManager.getConnection(URL, "root", "123456");
        return conn;
    }
}