/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.text.NumberFormat;
import java.util.Date;
import java.util.Locale;

/**
 *
 * @author _viet.quangg
 */
public class OrderList {
    private int orderId;
    private String carName;
    private int userId;
    private double carPrice;
    private String orderStatus;
    private String userName;
    private Date createdDate;

    public OrderList() {
    }

    public OrderList(int orderId, String carName, int userId, double carPrice, String orderStatus, String userName, Date createdDate) {
        this.orderId = orderId;
        this.carName = carName;
        this.userId = userId;
        this.carPrice = carPrice;
        this.orderStatus = orderStatus;
        this.userName = userName;
        this.createdDate = createdDate;
    }
    

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public double getCarPrice() {
        return carPrice;
    }

    public void setCarPrice(double carPrice) {
        this.carPrice = carPrice;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }
    
    @Override
    public String toString() {
        return "OrderList{" + "orderId=" + orderId + ", carName=" + carName + ", userId=" + userId + ", carPrice=" + carPrice + ", orderStatus=" + orderStatus + ", userName=" + userName + '}';
    }
    
    public String getFormatPrice() {
        Locale localeVN = new Locale("vi", "VN");
        NumberFormat vn = NumberFormat.getInstance(localeVN);
        return vn.format(this.carPrice);
    }
}
