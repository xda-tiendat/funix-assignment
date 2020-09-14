/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datbt.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author xdati
 */
public class DBConnection {

    public static Connection makeConnection() throws ClassNotFoundException, SQLException {
        Connection conn = null;
        String DB_URL = "jdbc:sqlserver://localhost:1433;"
                + "databaseName=Task4DB;";
        String USER_NAME = "sa";
        String PASSWORD = "123456";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
        return conn;

    }
    
    public static void closeConnection (Connection conn, PreparedStatement ps, ResultSet rs) throws SQLException {
        if (rs != null) {
            rs.close();
        } 
        if (ps != null) {
            ps.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
}
