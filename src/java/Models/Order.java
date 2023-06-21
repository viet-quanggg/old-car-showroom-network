/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.Date;

/**
 *
 * @author _viet.quangg
 */
public class Order {
    private int orderID;
    private float orderTotal;
    private boolean orderStatus;
    private Date orderDate;
    private int userId;
    private int postId;
    private String orderStatuss;
    
    public Order() {
    }

    public Order(int orderID, float orderTotal, boolean orderStatus, Date orderDate) {
        this.orderID = orderID;
        this.orderTotal = orderTotal;
        this.orderStatus = orderStatus;
        this.orderDate = orderDate;
    }

   

    public String getOrderStatuss() {
        return orderStatuss;
    }

    public void setOrderStatuss(String orderStatuss) {
        this.orderStatuss = orderStatuss;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public float getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(float orderTotal) {
        this.orderTotal = orderTotal;
    }

    public boolean isOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(boolean orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }
    
    
}
