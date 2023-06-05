/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

/**
 *
 * @author _viet.quangg
 */
import Models.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminPageFacade {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public int countUser() throws SQLException {
        con = DBContext.getConnection();
        ps = con.prepareStatement("select COUNT(userId) from dbo.[User] where userRole != 2");
        rs = ps.executeQuery();
        int count = 0;
        if (rs.next()) {
            count = rs.getInt(1);
        }
        con.close();
        return count;
    }
    
    public static void main(String[] args) throws SQLException {
        AdminPageFacade test = new AdminPageFacade();
        int count = test.countUser();
        System.out.println(count);
    }
}
