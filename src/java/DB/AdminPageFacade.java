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

    public List<OrderList> listallOrder() throws SQLException {
        List<OrderList> list = new ArrayList<>();
        con = DBContext.getConnection();
        ps = con.prepareStatement("select o.orderId,c.carName, o.userId, c.carPrice, o.orderStatus, u.userName from [Post] p join [Order] o on p.postId = o.orderId left join [car] c  on p.postId = c.carId left join [User] u on o.userId =u.userId");
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
    }

    public List<OrderList> listOrderThisWeek() throws SQLException {
        List<OrderList> list = new ArrayList<>();
        con = DBContext.getConnection();
        ps = con.prepareStatement("SELECT o.orderId, o.orderDate\n"
                + "FROM [Order] o join [Post] p on o.postId = p.postId\n"
                + "WHERE DATEPART(week, orderDate) = DATEPART(week, GETDATE())\n"
                + "  AND DATEPART(year, orderDate) = DATEPART(year, GETDATE())");
        rs = ps.executeQuery();
        while (rs.next()) {
            OrderList listOrder = new OrderList();
            listOrder.setOrderId(rs.getInt(1));
            listOrder.setCreatedDate(rs.getDate(2));
            list.add(listOrder);
        }
        con.close();
        return list;
    }

    public int countOrderLastMonth() throws SQLException {
        con = DBContext.getConnection();
        ps = con.prepareStatement("SELECT count(orderId)\n"
                + "FROM [Order] o join [Post] p on o.postId = p.postId\n"
                + "WHERE orderDate >= DATEADD(MONTH, -1, DATEADD(DAY, 1, EOMONTH(GETDATE(), -1)))\n"
                + "AND orderDate < DATEADD(DAY, 1, EOMONTH(GETDATE(), -1))");
        rs = ps.executeQuery();
        int count = 0;
        if (rs.next()) {
            count = rs.getInt(1);
        }
        con.close();
        return count;
    }

    public int countOrderThisMonth() throws SQLException {
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
    }

    public int countCompleteOrders() throws SQLException {
        con = DBContext.getConnection();
        ps = con.prepareStatement("select count(orderId) from [Order] where orderStatus = 'Complete'");
        rs = ps.executeQuery();
        int count = 0;
        if (rs.next()) {
            count = rs.getInt(1);
        }
        con.close();
        return count;
    }

    public int countUserYesterday() throws SQLException {
        con = DBContext.getConnection();
        ps = con.prepareStatement("SELECT COUNT(*) \n"
                + "FROM [User]\n"
                + "WHERE DATEDIFF(day, timeCreated, GETDATE()) = 1");
        rs = ps.executeQuery();
        int count = 0;
        if (rs.next()) {
            count = rs.getInt(1);
        }
        con.close();
        return count;
    }

    public double countCompleteSaleSalary() throws SQLException {
        con = DBContext.getConnection();
        ps = con.prepareStatement("select distinct sum(carPrice) from [Order] o join [Post] p on o.postId = p.postId join [Car] c on p.carId = c.carId where o.orderStatus = 'Complete'");
        rs = ps.executeQuery();
        double count = 0;
        if (rs.next()) {
            count = rs.getDouble(1);
        }
        con.close();
        return count;
    }

    public List<User> listallStaff() throws SQLException {
        List<User> list = new ArrayList<>();
        con = DBContext.getConnection();
        ps = con.prepareStatement("select userId, userName, userEmail, userRole, timeCreated \n"
                + "from [User] \n"
                + "where userRole = 1");
        rs = ps.executeQuery();
        while (rs.next()) {
            User listStaff = new User();
            listStaff.setUserID(rs.getInt(1));
            listStaff.setUserName(rs.getString(2));
            listStaff.setUserEmail(rs.getString(3));
            listStaff.setUserRole(rs.getInt(4));
            listStaff.setTimeCreated(rs.getDate(5));
            list.add(listStaff);
        }
        con.close();
        return list;
    }

    public static void main(String[] args) throws SQLException {
        AdminPageFacade test = new AdminPageFacade();
        int count = test.countUserYesterday();
        List<OrderList> order = test.listallOrder();
        for (OrderList o : order) {
            System.out.println(o);
        }
        System.out.println(count);

    }
}
