/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import Models.Blog;
import Models.Order;
import Models.OrderList;
import Models.PricingPlan;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author _viet.quangg
 */
public class OrderFacade {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<PricingPlan> listPlan() throws SQLException {
        List<PricingPlan> list = new ArrayList<>();
        con = DBContext.getConnection();
        ps = con.prepareStatement("select * from [Plan]");
        rs = ps.executeQuery();
        while (rs.next()) {
            PricingPlan plan = new PricingPlan();
            plan.setPlanId(rs.getInt(1));
            plan.setPlanName(rs.getString(2));
            plan.setPlanTime(rs.getInt(3));
            plan.setPlanLimit(rs.getInt(4));
            plan.setPlanPrice(rs.getDouble(5));
            list.add(plan);
        }
        con.close();
        return list;
    }

    public List<OrderList> getAllOrders() throws SQLException {

    List<OrderList> orders = new ArrayList<>();
    Connection con = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        con = DBContext.getConnection();
        String sql = "SELECT o.orderId, c.carName, o.userId, c.carPrice, o.orderStatus, u.userName, o.orderDate FROM [Order] o JOIN [car] c ON o.postId = c.carId LEFT JOIN [User] u ON o.userId = u.userId";
        stmt = con.prepareStatement(sql);
        rs = stmt.executeQuery();

        while (rs.next()) {
            OrderList orderlist = new OrderList();
            orderlist.setOrderId(rs.getInt("orderId"));
            orderlist.setCreatedDate(rs.getDate("orderDate"));
            orderlist.setOrderStatus(rs.getString("orderStatus"));
            orderlist.setCarPrice(rs.getDouble("carPrice"));
            orderlist.setUserId(rs.getInt("userId"));
            orderlist.setUserName(rs.getString("userName"));
            orderlist.setCarName(rs.getString("carName"));
            orders.add(orderlist);
        }
    } catch (SQLException e) {
        throw e;
    } finally {
        if (rs != null) {
            rs.close();
        }
        if (stmt != null) {
            stmt.close();
        }
        if (con != null) {
            con.close();
        }
    }

    return orders;
}
      public void deny(int orderId) throws SQLException {
        con = DBContext.getConnection();
        ps = con.prepareStatement("UPDATE [Order] SET orderStatus=? WHERE orderId=?");
        ps.setString(1, "cancel");
        ps.setInt(2, orderId);
        ps.executeUpdate();
        con.close();
    }

    public void success(int orderId) throws SQLException {
        con = DBContext.getConnection();
        ps = con.prepareStatement("UPDATE [Order] SET orderStatus=? WHERE orderId=?");
        ps.setString(1, "success");
        ps.setInt(2, orderId);
        ps.executeUpdate();
        con.close();
    }
}
