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
import java.time.LocalDateTime;
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

    public List<PricingPlan> listPlanActive() throws SQLException {
        List<PricingPlan> list = new ArrayList<>();
        con = DBContext.getConnection();
        ps = con.prepareStatement("select * from [Plan] where [planStatus] = 'Active'");
        rs = ps.executeQuery();
        while (rs.next()) {
            PricingPlan plan = new PricingPlan();
            plan.setPlanId(rs.getInt(1));
            plan.setPlanName(rs.getString(2));
            plan.setPlanTime(rs.getInt(3));
            plan.setPlanLimit(rs.getInt(4));
            plan.setPlanStatus(rs.getString(5));
            plan.setPlanPrice(rs.getDouble(6));
            list.add(plan);
        }
        con.close();
        return list;
    }

    public List<PricingPlan> listAllPlan() throws SQLException {
        List<PricingPlan> list = new ArrayList<>();
        con = DBContext.getConnection();
        ps = con.prepareStatement("select * from [Plan] ");
        rs = ps.executeQuery();
        while (rs.next()) {
            PricingPlan plan = new PricingPlan();
            plan.setPlanId(rs.getInt(1));
            plan.setPlanName(rs.getString(2));
            plan.setPlanTime(rs.getInt(3));
            plan.setPlanLimit(rs.getInt(4));
            plan.setPlanStatus(rs.getString(5));
            plan.setPlanPrice(rs.getDouble(6));
            list.add(plan);
        }
        con.close();
        return list;
    }

    public List<PricingPlan> listPlanId(String id) throws SQLException {
        List<PricingPlan> list = new ArrayList<>();
        con = DBContext.getConnection();
        ps = con.prepareStatement("select * from [Plan] where planId = ? ");
        ps.setString(1, id);
        rs = ps.executeQuery();
        while (rs.next()) {
            PricingPlan plan = new PricingPlan();
            plan.setPlanId(rs.getInt(1));
            plan.setPlanName(rs.getString(2));
            plan.setPlanTime(rs.getInt(3));
            plan.setPlanLimit(rs.getInt(4));
            plan.setPlanStatus(rs.getString(5));
            plan.setPlanPrice(rs.getDouble(6));
            list.add(plan);
        }
        con.close();
        return list;
    }

    public void deletePlan(String id) throws SQLException {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            //Tạo connection để kết nối vào DBMS
            con = DBContext.getConnection();
            //Tạo đối tượng PreparedStatement
            PreparedStatement stm = con.prepareStatement("delete from [Plan] where planId = ?");
            stm.setString(1, id);
            //Thực thi lệnh sql
            int count = stm.executeUpdate();
            con.close();
        } catch (SQLException ex) {

        }
    }

    public void addPlan(PricingPlan plan) throws SQLException {
        try {
            Connection con = DBContext.getConnection();
            PreparedStatement stm = null;
            stm = con.prepareStatement("INSERT INTO [dbo].[Plan] ( [planName],[planTime],[planLimit],[planStatus],[planPrice])\n"
                    + "values\n"
                    + "(?,?,?,?,?)");
            stm.setString(1, plan.getPlanName());
            stm.setInt(2, plan.getPlanLimit());
            stm.setInt(3, plan.getPlanLimit());
            stm.setString(4, plan.getPlanStatus());
            stm.setDouble(5, plan.getPlanPrice());
            int count = stm.executeUpdate();
            con.close();
        } catch (SQLException e) {
            throw e;
        }

    }

//    public PricingPlan createPlan(String planName, int planTime, int planLimit, String planStatus, double planPrice) throws SQLException {
//        PricingPlan plan = new PricingPlan();
//        Connection con = DBContext.getConnection();
//        PreparedStatement stm = con.prepareStatement("INSERT INTO [dbo].[Plan] ( [planName],[planTime],[planLimit],[planStatus],[planPrice])\n"
//                + "values\n"
//                + "(?,?,?,?,?)");
//        stm.setString(1, planName);
//        stm.setInt(2, planTime);
//        stm.setInt(3, planLimit);
//        stm.setString(4, planStatus);
//        stm.setDouble(5, planPrice);
//        int count = stm.executeUpdate();
//        ResultSet rs = stm.executeQuery();
//        if (rs.next()) {
//            plan.setPlanName(rs.getString("planName"));
//            plan.setPlanTime(rs.getInt("planTime"));
//            plan.setPlanLimit(rs.getInt("planLimit"));
//            plan.setPlanStatus(rs.getString("planStatus"));
//            plan.setPlanPrice(rs.getDouble("planPrice"));
//        }
//        con.close();
//        return plan;
//    }
    public void addOrder(int postId, int userId) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = null;
        try {
            stm = con.prepareStatement("INSERT INTO [Order] (postId, orderStatus, orderDate, userId)"
                    + "VALUES (?,'Pending',CURRENT_TIMESTAMP,?)");
            stm.setInt(1, postId);
            stm.setInt(2, userId);
            int count = stm.executeUpdate();

        } catch (SQLException e) {
            throw e;
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        con.close();
    }

    public OrderList getOrderByPost(int postId) throws SQLException {
        OrderList orderlist = null;
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            con = DBContext.getConnection();
            String sql = "SELECT o.orderId, o.postId, c.carName, c.carPrice, o.userId, u.userName, o.orderStatus, o.orderDate FROM [Order] o LEFT JOIN [Post] p on o.postId = p.postId LEFT JOIN [Car] c on p.carId = c.carId LEFT JOIN [User] u on o.userId = u.userId where o.postId = " + postId;
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();

            if (rs.next()) {
                orderlist = new OrderList();
                orderlist.setOrderId(rs.getInt("orderId"));
                orderlist.setCreatedDate(rs.getDate("orderDate"));
                orderlist.setOrderStatus(rs.getString("orderStatus"));
                orderlist.setCarPrice(rs.getDouble("carPrice"));
                orderlist.setUserId(rs.getInt("userId"));
                orderlist.setUserName(rs.getString("userName"));
                orderlist.setCarName(rs.getString("carName"));
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

        return orderlist;
    }

    public List<OrderList> getAllOrders() throws SQLException {

        List<OrderList> orders = new ArrayList<>();
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            con = DBContext.getConnection();
            String sql = "SELECT o.orderId, o.postId, c.carName, c.carPrice, o.userId, u.userName, o.orderStatus, o.orderDate, u.userEmail FROM [Order] o LEFT JOIN [Post] p on o.postId = p.postId LEFT JOIN [Car] c on p.carId = c.carId LEFT JOIN [User] u on o.userId = u.userId";
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
                orderlist.setUserEmail(rs.getString("userEmail"));
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

    public List<Order> listOrders() throws SQLException {
        List<Order> orders = new ArrayList<>();
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        CarFacade cf = new CarFacade();
        try {
            con = DBContext.getConnection();
            String sql = "SELECT o.orderId, o.orderApp, o.postId, c.carId, c.carName, c.carPrice, o.userId, u.userName, o.orderStatus, o.orderDate FROM [Order] o LEFT JOIN [Post] p on o.postId = p.postId LEFT JOIN [Car] c on p.carId = c.carId LEFT JOIN [User] u on o.userId = u.userId";
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Order orderlist = new Order();
                if (rs.getObject("orderApp") != null) {
                    orderlist.setOrderApp(rs.getObject("orderApp", LocalDateTime.class));
                }
                orderlist.setOrderId(rs.getInt("orderId"));
                orderlist.setPostId(rs.getInt("postId"));
                orderlist.setCreatedDate(rs.getDate("orderDate"));
                orderlist.setOrderStatus(rs.getString("orderStatus"));
                orderlist.setCar(cf.getDetails(rs.getInt("carId")));
                orderlist.setUserId(rs.getInt("userId"));
                orderlist.setUserName(rs.getString("userName"));
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

    public int countOrder(int userId) throws SQLException {
        int count = 0;
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("SELECT COUNT(*) AS orderCount\n"
                + "FROM [Order] o\n"
                + "LEFT JOIN [Post] p ON o.postId = p.postId\n"
                + "LEFT JOIN [Car] c ON p.carId = c.carId\n"
                + "LEFT JOIN [User] u ON o.userId = u.userId\n"
                + "WHERE o.userId =?");
        stm.setInt(1, userId);
        ResultSet rs = stm.executeQuery();
        if (rs.next()) {

            count = rs.getInt("orderCount");
        }
        con.close();
        return count;
    }

    public List<Order> listUserOrders(int userId) throws SQLException {
        List<Order> orders = new ArrayList<>();
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        CarFacade cf = new CarFacade();
        try {
            con = DBContext.getConnection();
            String sql = "SELECT o.orderId, o.orderApp, o.postId, c.carId, c.carName, c.carPrice, o.userId, u.userName, o.orderStatus, o.orderDate FROM [Order] o LEFT JOIN [Post] p on o.postId = p.postId LEFT JOIN [Car] c on p.carId = c.carId LEFT JOIN [User] u on o.userId = u.userId where o.userId = " + userId;
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Order orderlist = new Order();
                if (rs.getObject("orderApp") != null) {
                    orderlist.setOrderApp(rs.getObject("orderApp", LocalDateTime.class));
                }
                orderlist.setOrderId(rs.getInt("orderId"));
                orderlist.setPostId(rs.getInt("postId"));
                orderlist.setCreatedDate(rs.getDate("orderDate"));
                orderlist.setOrderStatus(rs.getString("orderStatus"));
                orderlist.setCar(cf.getDetails(rs.getInt("carId")));
                orderlist.setUserId(rs.getInt("userId"));
                orderlist.setUserName(rs.getString("userName"));
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

    public void updateApp(LocalDateTime orderApp, int orderId) throws SQLException {
        con = DBContext.getConnection();
        ps = con.prepareStatement("UPDATE [Order] SET orderApp=? WHERE orderId=?");
        ps.setObject(1, orderApp);
        ps.setInt(2, orderId);
        ps.executeUpdate();
        con.close();
    }

//    public void deny(int orderId) throws SQLException {
//        con = DBContext.getConnection();
//        ps = con.prepareStatement("UPDATE [Order] SET orderStatus=? WHERE orderId=?");
//        ps.setString(1, "cancel");
//        ps.setInt(2, orderId);
//        ps.executeUpdate();
//        con.close();
//    }
//
//    public void success(int orderId) throws SQLException {
//        con = DBContext.getConnection();
//        ps = con.prepareStatement("UPDATE [Order] SET orderStatus=? WHERE orderId=?");
//        ps.setString(1, "success");
//        ps.setInt(2, orderId);
//        ps.executeUpdate();
//        con.close();
//    }
//
//    public void pending(int orderId) throws SQLException {
//        con = DBContext.getConnection();
//        ps = con.prepareStatement("UPDATE [Order] SET orderStatus=? WHERE orderId=?");
//        ps.setString(1, "cancel");
//        ps.setInt(2, orderId);
//        ps.executeUpdate();
//        con.close();
//    }
//
//    public void inprocess(int orderId) throws SQLException {
//        con = DBContext.getConnection();
//        ps = con.prepareStatement("UPDATE [Order] SET orderStatus=? WHERE orderId=?");
//        ps.setString(1, "cancel");
//        ps.setInt(2, orderId);
//        ps.executeUpdate();
//        con.close();
//    }
    public void Delete(int orderId) throws SQLException {
        con = DBContext.getConnection();
        ps = con.prepareStatement("DELETE FROM [Order] WHERE orderId = ?");
        ps.setInt(1, orderId);
        ps.executeUpdate();
        con.close();
    }

    public void updateOrderStatus(int orderId, String orderStatus) throws SQLException {
        con = DBContext.getConnection();
        ps = con.prepareStatement("UPDATE [Order] SET orderStatus=? WHERE orderId=?");
        ps.setString(1, orderStatus);
        ps.setInt(2, orderId);
        ps.executeUpdate();
        con.close();
    }

    public static void main(String[] args) throws SQLException {
        OrderFacade of = new OrderFacade();
//        PricingPlan newPlan = of.createPlan("Gold Package", 3, 15, "Active", 35);
        //of.addPlan("Gold Package", 3, 15, "Active", 35);
        List<OrderList> list = of.search("ma");
        System.out.println(list);
    }

    public List<OrderList> search(String searchQuery) throws SQLException {
        List<OrderList> orders = new ArrayList<>();
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            con = DBContext.getConnection();
            String sql = "SELECT o.orderId, c.carName, o.userId, c.carPrice, o.orderStatus, u.userName, o.orderDate FROM [Order] o JOIN [car] c ON o.postId = c.carId LEFT JOIN [User] u ON o.userId = u.userId WHERE c.carName LIKE '%" + searchQuery + "%'";
            stmt = con.prepareStatement(sql);
            //stmt.setString(1, searchQuery);

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
}
