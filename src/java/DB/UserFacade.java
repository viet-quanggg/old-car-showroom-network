/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import DB.DBContext;
import Models.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Dell
 */
public class UserFacade {

    public int totalAccount() throws SQLException {
        int total = 0;
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        Statement stm = con.createStatement();
        //Thực thi lệnh sql
        ResultSet rs = stm.executeQuery("SELECT COUNT(userId) as Total FROM [User]");
        //Load dữ liệu vào đối tượng toy nếu có
        if (rs.next()) {
            total = rs.getInt("Total");
        }
        con.close();
        return total;
    }

    public User login(String userEmail, String userPass) throws SQLException {
        User user = null;
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from [User] where userEmail= ? and userPass= ?");
        stm.setString(1, userEmail);
        stm.setString(2, userPass);
        ResultSet rs = stm.executeQuery();
        if (rs.next()) {
            user = new User();
            user.setUserID(rs.getInt("userId"));
            user.setUserEmail(rs.getString("userEmail"));
            user.setUserPass(rs.getString("userPass"));
            user.setUserName(rs.getString("userName"));
            user.setUserPhone(rs.getString("userPhone"));
            user.setUserAddress(rs.getString("userAddress"));
            user.setTimeCreated(rs.getDate("timeCreated"));
            user.setUserRole(rs.getInt("userRole"));
            user.setUserImage(rs.getString("userImage"));

        }
        con.close();
        return user;
    }

    public User register(String userEmail, String userPass, String userName, String userPhone, String userAddress, Date timeCreated) throws SQLException {
        User user = new User();
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("INSERT INTO [User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[timeCreated],[userRole],[userImage]) VALUES (?, ?, ?, ?, ?, ?, 0,'');");
        stm.setString(1, userEmail);
        stm.setString(2, userPass);
        stm.setString(3, userName);
        stm.setString(4, userPhone);
        stm.setString(5, userAddress);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stm.setString(6, sdf.format(timeCreated));
        int count = stm.executeUpdate();

        stm = con.prepareStatement("Select * from [User] where userEmail = ?");
        stm.setString(1, userEmail);
        ResultSet rs = stm.executeQuery();
        int id = 0;
        if (rs.next()) {
            user.setUserID(rs.getInt("userId"));
            user.setUserEmail(rs.getString("userEmail"));
            user.setUserPass(rs.getString("userPass"));
            user.setUserName(rs.getString("userName"));
            user.setUserPhone(rs.getString("userPhone"));
            user.setUserAddress(rs.getString("userAddress"));
            user.setTimeCreated(rs.getDate("timeCreated"));
            user.setUserRole(rs.getInt("userRole"));
            user.setUserImage("");
        }
        con.close();
        return user;
    }

    public User registerStaff(String userEmail, String userPass, String userName, String userPhone, String userAddress, Date timeCreated) throws SQLException {
        User user = new User();
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("INSERT INTO [User] ([userEmail],[userPass],[userName],[userPhone],[userAddress],[timeCreated],[userRole],[userImage]) VALUES (?, ?, ?, ?, ?, ?, 1,'');");
        stm.setString(1, userEmail);
        stm.setString(2, userPass);
        stm.setString(3, userName);
        stm.setString(4, userPhone);
        stm.setString(5, userAddress);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stm.setString(6, sdf.format(timeCreated));
        int count = stm.executeUpdate();

        stm = con.prepareStatement("Select * from [User] where userEmail = ?");
        stm.setString(1, userEmail);
        ResultSet rs = stm.executeQuery();
        int id = 0;
        if (rs.next()) {
            user.setUserID(rs.getInt("userId"));
            user.setUserEmail(rs.getString("userEmail"));
            user.setUserPass(rs.getString("userPass"));
            user.setUserName(rs.getString("userName"));
            user.setUserPhone(rs.getString("userPhone"));
            user.setUserAddress(rs.getString("userAddress"));
            user.setTimeCreated(rs.getDate("timeCreated"));
            user.setUserRole(rs.getInt("userRole"));
            user.setUserImage("");

        }
        con.close();
        return user;
    }

//    public ArrayList<User> userList() throws SQLException {
//        User user = null;
//        ArrayList<User> list = new ArrayList<>();
//        Connection con = DBContext.getConnection();
//        PreparedStatement stm = con.prepareStatement("select * from [User]");
//        ResultSet rs = stm.executeQuery();
//        if (rs.next()) {
//            user = new User();
//            user.setUserID(rs.getInt("userId"));
//            user.setUserEmail(rs.getString("userEmail"));
//            user.setUserPass(rs.getString("userPass"));
//            user.setUserName(rs.getString("userName"));
//            user.setUserPhone(rs.getString("userPhone"));
//            user.setUserAddress(rs.getString("userAddress"));
//            user.setTimeCreated(rs.getDate("timeCreated"));
//            user.setUserRole(rs.getInt("userRole"));
//            user.setUserImage(rs.getString("userImage"));
//            list.add(user);
//        }
//        con.close();
//        return list;
//    }
    public ArrayList<User> userListId(String id) throws SQLException {
        User user = null;
        ArrayList<User> list = new ArrayList<>();
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from [User] where userId = ?");
        stm.setString(1, id);
        ResultSet rs = stm.executeQuery();
        if (rs.next()) {
            user = new User();
            user.setUserID(rs.getInt("userId"));
            user.setUserEmail(rs.getString("userEmail"));
            user.setUserPass(rs.getString("userPass"));
            user.setUserName(rs.getString("userName"));
            user.setUserPhone(rs.getString("userPhone"));
            user.setUserAddress(rs.getString("userAddress"));
            user.setTimeCreated(rs.getDate("timeCreated"));
            user.setUserRole(rs.getInt("userRole"));
            user.setUserImage(rs.getString("userImage"));
            if (rs.getObject("planId") != null) {
                user.setPlanId(rs.getInt("planId"));
            }
            if (rs.getObject("planStart") != null) {
                user.setPlanStart(rs.getDate("planStart"));
            }
            list.add(user);
        }
        con.close();
        return list;
    }

    public User getUser(int userID) throws SQLException {
        User user = null;
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from [User] where userID = ?");
        stm.setInt(1, userID);
        ResultSet rs = stm.executeQuery();
        if (rs.next()) {
            user = new User();
            user.setUserID(rs.getInt("userId"));
            user.setUserEmail(rs.getString("userEmail"));
            user.setUserPass(rs.getString("userPass"));
            user.setUserName(rs.getString("userName"));
            user.setUserPhone(rs.getString("userPhone"));
            user.setUserAddress(rs.getString("userAddress"));
            user.setTimeCreated(rs.getDate("timeCreated"));
            user.setUserRole(rs.getInt("userRole"));
            user.setUserImage(rs.getString("userImage"));
            if (rs.getObject("planId") != null) {
                user.setPlanId(rs.getInt("planId"));
            }
            if (rs.getObject("planStart") != null) {
                user.setPlanStart(rs.getDate("planStart"));
            }
        }
        con.close();
        return user;
    }

    public ArrayList<User> userList() throws SQLException {
        User user = null;
        ArrayList<User> list = new ArrayList<>();
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from [User] where userRole=0");
        ResultSet rs = stm.executeQuery();
        while (rs.next()) {
            user = new User();
            user.setUserID(rs.getInt("userId"));
            user.setUserEmail(rs.getString("userEmail"));
            user.setUserPass(rs.getString("userPass"));
            user.setUserName(rs.getString("userName"));
            user.setUserPhone(rs.getString("userPhone"));
            user.setUserAddress(rs.getString("userAddress"));
            user.setTimeCreated(rs.getDate("timeCreated"));
            user.setUserRole(rs.getInt("userRole"));
            user.setUserImage(rs.getString("userImage"));
            if (rs.getObject("planId") != null) {
                user.setPlanId(rs.getInt("planId"));
            }
            if (rs.getObject("planStart") != null) {
                user.setPlanStart(rs.getDate("planStart"));
            }
            list.add(user);
        }
        con.close();
        return list;
    }

    public ArrayList<User> SearchUser(String searchQuery) throws SQLException {
        User user = null;
        ArrayList<User> list = new ArrayList<>();
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from [User] where userRole=0 and userName like ?");
        stm.setString(1, "%"+ searchQuery + "%");
        ResultSet rs = stm.executeQuery();
        while (rs.next()) {
            user = new User();
            user.setUserID(rs.getInt("userId"));
            user.setUserEmail(rs.getString("userEmail"));
            user.setUserPass(rs.getString("userPass"));
            user.setUserName(rs.getString("userName"));
            user.setUserPhone(rs.getString("userPhone"));
            user.setUserAddress(rs.getString("userAddress"));
            user.setTimeCreated(rs.getDate("timeCreated"));
            user.setUserRole(rs.getInt("userRole"));
            user.setUserImage(rs.getString("userImage"));
            if (rs.getObject("planId") != null) {
                user.setPlanId(rs.getInt("planId"));
            }
            if (rs.getObject("planStart") != null) {
                user.setPlanStart(rs.getDate("planStart"));
            }
            list.add(user);
        }
        con.close();
        return list;
    }

    public User checkEmail(String userEmail) throws SQLException {
        User user = null;
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from [User] where userEmail= ?");
        stm.setString(1, userEmail);
        ResultSet rs = stm.executeQuery();
        if (rs.next()) {
            user = new User();
            user.setUserID(rs.getInt("userId"));
            user.setUserEmail(rs.getString("userEmail"));
            user.setUserPass(rs.getString("userPass"));
            user.setUserName(rs.getString("userName"));
            user.setUserPhone(rs.getString("userPhone"));
            user.setUserAddress(rs.getString("userAddress"));
            user.setTimeCreated(rs.getDate("timeCreated"));
            user.setUserRole(rs.getInt("userRole"));
            user.setUserImage(rs.getString("userImage"));
        }
        con.close();
        return user;
    }

    public User forgetpass(String email, String accountPhone) throws SQLException {
        User user = null;
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from account where email= ? and userPhone= ?");
        stm.setString(1, email);
        stm.setString(2, accountPhone);
        ResultSet rs = stm.executeQuery();
        if (rs.next()) {
            user = new User();
            user.setUserID(rs.getInt("userId"));
            user.setUserEmail(rs.getString("userEmail"));
            user.setUserPass(rs.getString("userPass"));
            user.setUserName(rs.getString("userName"));
            user.setUserPhone(rs.getString("userPhone"));
            user.setUserAddress(rs.getString("userAddress"));
            user.setUserRole(rs.getInt("userRole"));
            user.setUserImage(rs.getString("userImage"));

        }
        con.close();
        return user;
    }

    public User changepassword(String accountpass, String email) throws SQLException {
        User user = null;
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("UPDATE [User] set userPass =? where userEmail = ?");
        stm.setString(1, accountpass);
        stm.setString(2, email);
        con.close();
        return user;
    }

    public User updatePlan(User user) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("UPDATE [User] set planId =? , planStart = CURRENT_TIMESTAMP where userId=?");
        stm.setInt(1, user.getPlanId());
        stm.setInt(2, user.getUserID());
        int count = stm.executeUpdate();
        con.close();
        return user;
    }

    public void update(User user) throws SQLException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("update [User] set userEmail = ?, userPass = ?, userName = ?, userPhone = ?, userAddress = ? where userId = ?");
        stm.setString(1, user.getUserEmail());
        stm.setString(2, user.getUserPass());
        stm.setString(3, user.getUserName());
        stm.setString(4, user.getUserPhone());
        stm.setString(5, user.getUserAddress());
        stm.setInt(6, user.getUserID());
        //Thực thi lệnh sql
        int count = stm.executeUpdate();
        //Đóng kết nối
        con.close();
    }

    public boolean addUser(User user) {

        Connection con = null;
        PreparedStatement ps = null;
        try {
            // Get a database connection
            con = DBContext.getConnection();

            // Prepare the SQL statement for inserting a new user record
            String sql = "INSERT INTO [User] ([userName], [userEmail],[userPass],[userPhone], [userAddress],[timeCreated],[userRole]) VALUES (?,?,1,1,0,CURRENT_TIMESTAMP,0)";
            ps = con.prepareStatement(sql);
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getUserEmail());
            ps.setString(3, user.getUserImage());
            // Execute the SQL statement
            int rowsInserted = ps.executeUpdate();

            // Close the resources
            ps.close();
            con.close();

            // Check if the user record was inserted successfully
            return (rowsInserted > 0);
        } catch (SQLException ex) {
            System.err.println("Error adding user to database: " + ex.getMessage());
            return false;
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
            } catch (Exception e) {
            }
            try {
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
            }
        }
    }

    public void deleteUser(String id) throws SQLException {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            //Tạo connection để kết nối vào DBMS
            con = DBContext.getConnection();
            //Tạo đối tượng PreparedStatement
            PreparedStatement stm = con.prepareStatement("delete from [User] where userId = ?");
            stm.setString(1, id);
            //Thực thi lệnh sql
            int count = stm.executeUpdate();
            con.close();
        } catch (SQLException ex) {

        }
    }
 public ArrayList<User> getAll() throws SQLException {
        User user = null;
        ArrayList<User> list = new ArrayList<>();
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from [User]");
        ResultSet rs = stm.executeQuery();
        while (rs.next()) {
            user = new User();
            user.setUserID(rs.getInt("userId"));
            user.setUserEmail(rs.getString("userEmail"));
            user.setUserPass(rs.getString("userPass"));
            user.setUserName(rs.getString("userName"));
            user.setUserPhone(rs.getString("userPhone"));
            user.setUserAddress(rs.getString("userAddress"));
            user.setTimeCreated(rs.getDate("timeCreated"));
            user.setUserRole(rs.getInt("userRole"));
            user.setUserImage(rs.getString("userImage"));
            if (rs.getObject("planId") != null) {
                user.setPlanId(rs.getInt("planId"));
            }
            if (rs.getObject("planStart") != null) {
                user.setPlanStart(rs.getDate("planStart"));
            }
            list.add(user);
        }
        con.close();
        return list;
    }
}
