/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

/**
 *
 * @author _viet.quangg
 */
import Models.OrderList;
import Models.PricingPlan;
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

    public void updatePlan(PricingPlan plan) throws SQLException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("UPDATE [Plan] set planName = ?, planTime = ?, planLimit = ?, planStatus = ?, planPrice = ? WHERE planId = ?");
        stm.setString(1, plan.getPlanName());
        stm.setInt(2, plan.getPlanTime());
        stm.setInt(3, plan.getPlanLimit());
        stm.setString(4, plan.getPlanStatus());
        stm.setDouble(5, plan.getPlanPrice());
        stm.setInt(6, plan.getPlanId());
        //Thực thi lệnh sql
        int count = stm.executeUpdate();
        //Đóng kết nối

        con.close();
    }

    public int countUser() throws SQLException {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("select COUNT(userId) from dbo.[User] where userRole != 2");
            rs = ps.executeQuery();
            int count = 0;
            if (rs.next()) {
                count = rs.getInt(1);
            }
            con.close();
            return count;
        } catch (Exception e) {

        }
        return 0;
    }

    public int countUserlastMonth() throws SQLException {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT COUNT(*) \n"
                    + "FROM [User] \n"
                    + "WHERE MONTH(timeCreated) = MONTH(DATEADD(month, -1, GETDATE())) AND YEAR(timeCreated) = YEAR(DATEADD(month, -1, GETDATE()))\n"
                    + "and userRole !=2");
            rs = ps.executeQuery();
            int count = 0;
            if (rs.next()) {
                count = rs.getInt(1);
            }
            con.close();
            return count;
        } catch (Exception e) {

        }
        return 0;
    }

    public int countUserthisMonth() throws SQLException {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT COUNT(*) \n"
                    + "FROM [User] \n"
                    + "WHERE MONTH(timeCreated) = MONTH(CURRENT_TIMESTAMP) AND YEAR(timeCreated) = YEAR(CURRENT_TIMESTAMP)\n"
                    + "and userRole !=2");
            rs = ps.executeQuery();
            int count = 0;
            if (rs.next()) {
                count = rs.getInt(1);
            }
            con.close();
            return count;
        } catch (Exception e) {

        }
        return 0;
    }

    public int countAcclastMonth() throws SQLException {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT COUNT(userId) \n"
                    + "FROM [User] \n"
                    + "WHERE MONTH(timeCreated) = MONTH(DATEADD(month, -1, GETDATE())) AND YEAR(timeCreated) = YEAR(DATEADD(month, -1, GETDATE()))");
            rs = ps.executeQuery();
            int count = 0;
            if (rs.next()) {
                count = rs.getInt(1);
            }
            con.close();
            return count;
        } catch (Exception e) {

        }
        return 0;
    }

    public int countAccthisMonth() throws SQLException {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT COUNT(userId) \n"
                    + "FROM [User] \n"
                    + "WHERE MONTH(timeCreated) = MONTH(CURRENT_TIMESTAMP) AND YEAR(timeCreated) = YEAR(CURRENT_TIMESTAMP)");
            rs = ps.executeQuery();
            int count = 0;
            if (rs.next()) {
                count = rs.getInt(1);
            }
            con.close();
            return count;
        } catch (Exception e) {

        }
        return 0;
    }

    public List<OrderList> listallOrder() throws SQLException {
        try {
            List<OrderList> list = new ArrayList<>();
            con = DBContext.getConnection();
            ps = con.prepareStatement("select o.orderId,c.carName, o.userId, c.carPrice, o.orderStatus, u.userName from [Post] p join [Order] o on p.postId = o.postId left join [car] c  on p.carId = c.carId left join [User] u on o.userId =u.userId");
            rs = ps.executeQuery();
            while (rs.next()) {
                OrderList listOrder = new OrderList();
                listOrder.setOrderId(rs.getInt(1));
                listOrder.setCarName(rs.getString(2));
                listOrder.setUserId(rs.getInt(3));
                listOrder.setCarPrice(rs.getDouble(4));
                listOrder.setOrderStatus(rs.getString(5));
                listOrder.setUserName(rs.getString(6));
                list.add(listOrder);
            }
            con.close();
            return list;
        } catch (Exception e) {

        }
        return null;
    }

    public List<OrderList> listOrderThisWeek() throws SQLException {
        try {
            List<OrderList> list = new ArrayList<>();
            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT o.orderId, o.orderDate\n"
                    + "FROM [Order] o join [Post] p on o.postId = p.postId\n"
                    + "WHERE o.orderDate BETWEEN DATEADD(MONTH, -1, GETDATE()) AND GETDATE()");
            rs = ps.executeQuery();
            while (rs.next()) {
                OrderList listOrder = new OrderList();
                listOrder.setOrderId(rs.getInt(1));
                listOrder.setCreatedDate(rs.getDate(2));
                list.add(listOrder);
            }
            con.close();
            return list;
        } catch (Exception e) {

        }
        return null;
    }

    public int countOrderLastMonth() throws SQLException {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT count(orderId)\n"
                    + "FROM [Order] o join [Post] p on o.postId = p.postId\n"
                    + "WHERE MONTH(o.orderDate) = MONTH(DATEADD(month, -1, GETDATE())) \n"
                    + "AND YEAR(o.orderDate) = YEAR(DATEADD(month, -1, GETDATE()))");
            rs = ps.executeQuery();
            int count = 0;
            if (rs.next()) {
                count = rs.getInt(1);
            }
            con.close();
            return count;
        } catch (Exception e) {

        }
        return 0;
    }

    public int countOrderThisMonth() throws SQLException {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT count(orderId)\n"
                    + "FROM [Order] o join [Post] p on o.postId = p.postId\n"
                    + "WHERE YEAR(orderDate) = YEAR(GETDATE()) AND MONTH(orderDate) = MONTH(GETDATE())");
            rs = ps.executeQuery();
            int count = 0;
            if (rs.next()) {
                count = rs.getInt(1);
            }
            con.close();
            return count;
        } catch (Exception e) {

        }
        return 0;
    }

    public int countCompleteOrders() throws SQLException {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("select count(orderId) from [Order] where orderStatus = 'Complete'");
            rs = ps.executeQuery();
            int count = 0;
            if (rs.next()) {
                count = rs.getInt(1);
            }
            con.close();
            return count;
        } catch (Exception e) {

        }
        return 0;
    }

//    public int countUserYesterday() throws SQLException {
//        con = DBContext.getConnection();
//        ps = con.prepareStatement("SELECT COUNT(*) \n"
//                + "FROM [User]\n"
//                + "WHERE DATEDIFF(day, timeCreated, GETDATE()) = 1");
//        rs = ps.executeQuery();
//        int count = 0;
//        if (rs.next()) {
//            count = rs.getInt(1);
//        }
//        con.close();
//        return count;
//    }
    public double countCompleteSaleSalary() throws SQLException {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("sum(c.carPrice)\n"
                    + "from [Order] o join [Post] p on o.postId = p.postId join [Car] c on p.carId = c.carId \n"
                    + "where o.orderStatus = 'Complete' \n"
                    + "and MONTH(orderDate) = MONTH(CURRENT_TIMESTAMP) \n"
                    + "AND YEAR(orderDate) = YEAR(CURRENT_TIMESTAMP)");
            rs = ps.executeQuery();
            double count = 0;
            if (rs.next()) {
                count = rs.getDouble(1);
            }
            con.close();
            return count;
        } catch (Exception e) {

        }
        return 0;
    }

    public double countCompleteSaleSalarylastMonth() throws SQLException {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("select c.carPrice\n"
                    + "from [Order] o join [Post] p \n"
                    + "on o.postId = p.postId\n"
                    + "join [Car] c \n"
                    + "on p.carId = c.carId\n"
                    + "join [User] u \n"
                    + "on o.userId = u.userId\n"
                    + "where o.orderStatus ='Complete'\n"
                    + "and MONTH(orderDate) = MONTH(DATEADD(month, -1, GETDATE())) AND YEAR(orderDate) = YEAR(DATEADD(month, -1, GETDATE()))");
            rs = ps.executeQuery();
            double count = 0;
            if (rs.next()) {
                count = rs.getDouble(1);
            }
            con.close();
            return count;
        } catch (Exception e) {

        }
        return 0;
    }

    public List<User> listallStaff() throws SQLException {
        try {
            List<User> list = new ArrayList<>();
            con = DBContext.getConnection();
            ps = con.prepareStatement("select userId, userName, userEmail,userPhone,userAddress, userRole, timeCreated \n"
                    + "from [User] \n"
                    + "where userRole = 1");
            rs = ps.executeQuery();
            while (rs.next()) {
                User listStaff = new User();
                listStaff.setUserID(rs.getInt(1));
                listStaff.setUserName(rs.getString(2));
                listStaff.setUserEmail(rs.getString(3));
                listStaff.setUserPhone(rs.getString(4));
                listStaff.setUserAddress(rs.getString(5));
                listStaff.setUserRole(rs.getInt(6));
                listStaff.setTimeCreated(rs.getDate(7));
                list.add(listStaff);
            }
            con.close();
            return list;
        } catch (Exception e) {

        }
        return null;
    }

    public static void main(String[] args) throws SQLException {
        AdminPageFacade test = new AdminPageFacade();
        int count = test.countAccthisMonth();
        double sale = test.countOrderThisMonth();
        List<OrderList> order = test.listallOrder();
        int c = test.countUserthisMonth();
        int d = test.countUserlastMonth();
//        PricingPlan u = new PricingPlan("Wood", 2,4,"Active",12,2);
//        test.updatePlan(u);
        int percent1;
        if (d == 0) {
            percent1 = c == 0 ? 0 : 100;
        } else if (d >= c) {
            percent1 = (int) (((float) (d - c) / d) * 100);
        } else {
            percent1 = (int) (((float) (c - d) / d) * 100);
        }
        for (OrderList o : order) {
            System.out.println(o);
        }
        System.out.println(count);
        System.out.println(sale);

    }
}
