package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static String url = "jdbc:mysql://localhost:3306/oop";
    private static String user = "root";
    private static String password = "1234";

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver"); // Make sure to use the updated driver class
        return DriverManager.getConnection(url, user, password);
    }
}











