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
import java.util.ArrayList;
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
            user.setUserRole(rs.getInt("userRole"));
            user.setUserImage(rs.getString("userImage"));
        }
        con.close();
        return user;
    }

    public User register(String userEmail, String userPass, String userName, String userPhone, String userAddress) throws SQLException {
        User user = null;
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("INSERT INTO [User] VALUES (?, ?, ?, ?, ?, 0,'');");
        stm.setString(1, userEmail);
        stm.setString(2, userPass);
        stm.setString(3, userName);
        stm.setString(4, userPhone);
        stm.setString(5, userAddress);
        int count = stm.executeUpdate();
        con.close();
        return user;
    }
    
    public ArrayList<User> userList() throws SQLException {
        User user = null;
        ArrayList<User> list = new ArrayList<>();
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from [User]");
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

    public void update(User user) throws SQLException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("update [User] set EMAIL = ?, ACCOUNTPASS = ?, ACCOUNT_NAME = ?, ACCOUNT_PHONE = ?, ACCOUNT_ADDRESS = ? where ACCOUNT_ID = ?");
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

}
