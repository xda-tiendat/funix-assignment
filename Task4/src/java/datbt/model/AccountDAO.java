/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datbt.model;

import datbt.connection.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author xdati
 */
public class AccountDAO {

    Connection conn = null; //mo ket noi sql 
    PreparedStatement ps = null; //nem cau lenh sql sang sql 
    ResultSet rs = null; //ket qua tra ve

    public AccountDTO checkLogin(String user, String pass) {
        try {
            String query = "select * from Account where Username = ? and Password = ?";
            conn = DBConnection.makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                AccountDTO acc = new AccountDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                return acc;
            }
        } catch (Exception e) {

        }
        return null;
    }
    
    public boolean findAccount(String username) {
        try {
            String query = "select * from Account where username = ?";
            conn = DBConnection.makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean insertAccount(String username, String password, String fullname, String role) {
        try {
            String query = "INSERT INTO Account VALUES(?,?,?,?)";
            conn = DBConnection.makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, fullname);
            ps.setString(4, role);
            int row = ps.executeUpdate();
            if (row > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
