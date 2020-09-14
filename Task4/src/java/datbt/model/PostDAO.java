/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datbt.model;

import datbt.connection.DBConnection;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author xdati
 */
public class PostDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public PostDTO searchPostById(int id) throws SQLException {
        try {
            String query = " select * from Posts where id = ?";
            conn = DBConnection.makeConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                PostDTO postDTO = new PostDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getString(7));
                return postDTO;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConnection.closeConnection(conn, ps, rs);
        }
        return null;
    }
    public List<PostDTO> searchPostByAuthor(String username) throws SQLException {
        try {
            String query = " select * from Posts where username = ?";
            conn = DBConnection.makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            List<PostDTO> listPostAuthor = new ArrayList<>();
            while (rs.next()) {
                PostDTO postDTO = new PostDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getString(7));
                listPostAuthor.add(postDTO);
            }
            return listPostAuthor;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConnection.closeConnection(conn, ps, rs);
        }
        return null;
    }
    

    public List<PostDTO> getTop3(int index) throws SQLException {
        try {
            String query = "SELECT * FROM \n"
                    + "(SELECT ROW_NUMBER() OVER (ORDER BY id DESC) AS r , * \n"
                    + "FROM Posts WHERE status = ? ) as x\n"
                    + "WHERE r BETWEEN ? * 3 - 2 AND ? * 3";
            conn = DBConnection.makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "published");
            ps.setInt(2, index);
            ps.setInt(3, index);
            rs = ps.executeQuery();
            List<PostDTO> list = new ArrayList<>();
            while (rs.next()) {
                PostDTO postDTO = new PostDTO(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("summary"),
                        rs.getString("description"),
                        rs.getString("username"),
                        rs.getDate("timepost"),
                        rs.getString("status"));
                list.add(postDTO);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConnection.closeConnection(conn, ps, rs);
        }
        return null;
    }

    public boolean doInsertPost(String title, String summary, String des, String author, Date timepost, String status) throws SQLException {

        try {
            String query = "INSERT INTO Posts (title, summary, description, username, timepost, status)"
                    + "VALUES (?,?,?,?,?,?)";
            conn = DBConnection.makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, summary);
            ps.setString(3, des);
            ps.setString(4, author);
            ps.setDate(5, timepost);
            ps.setString(6, status);

            int row = ps.executeUpdate();
            return row > 0;

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConnection.closeConnection(conn, ps, rs);
        }
        return false;
    }
    
    public boolean doUpdatePost(int id, String title, String summary, String des, String author, Date timepost, String status) throws SQLException {

        try {
            String query = "UPDATE Posts SET title=?, summary=?, description=?, timepost=?, status=? "
                    + "WHERE id=? and username=?";
            conn = DBConnection.makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, summary);
            ps.setString(3, des);
            ps.setDate(4, timepost);
            ps.setString(5, status);
            ps.setInt(6, id);
            ps.setString(7, author);
            
            int row = ps.executeUpdate();
            return row > 0;

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConnection.closeConnection(conn, ps, rs);
        }
        return false;
    }

    public Map<Integer, String> doLoadTitle() throws SQLException {
        try {
            String query = "SELECT id, title FROM (SELECT ROW_NUMBER() OVER (ORDER BY id DESC) AS r, *\n"
                    + " FROM Posts WHERE status = 'published' ) as x\n"
                    + " WHERE r BETWEEN 1 AND 10";
            conn = DBConnection.makeConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Map<Integer, String> mapTitle = new HashMap<Integer, String>();
            while (rs.next()) {
                int id = rs.getInt("id");
                String title = rs.getString("title");
                mapTitle.put(id, title);
            }
            return mapTitle;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConnection.closeConnection(conn, ps, rs);
        }
        return null;
    }

    //chuc nang phan trang/ dem so trang
    public int doCount(String status) throws SQLException {

        try {
            String query = "select count (*) from Posts where status = ?";
            conn = DBConnection.makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            rs = ps.executeQuery();
            List<PostDTO> list = new ArrayList<>();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConnection.closeConnection(conn, ps, rs);
        }
        return 0;
    }

}
