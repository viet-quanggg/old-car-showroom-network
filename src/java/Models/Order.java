
package Models;

import java.time.LocalDateTime;
import java.util.Date;

/**
 *
 * @author _viet.quangg
 */
public class Order {
    
    private int orderId;
    private Car car;
    private int userId;
    private int postId;
    private int userEmail;
    private String orderStatus;
    private String userName;
    private Date createdDate;
    private LocalDateTime orderApp = null;
    
    public Order() {
    }

    public Order(int orderId, Car car, int userId, int postId, String orderStatus, String userName, Date createdDate) {
        this.orderId = orderId;
        this.car = car;
        this.userId = userId;
        this.postId = postId;
        this.orderStatus = orderStatus;
        this.userName = userName;
        this.createdDate = createdDate;
    }

    public int getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(int userEmail) {
        this.userEmail = userEmail;
    }

    public Order(int orderId, Car car, int userId, int postId, int userEmail, String orderStatus, String userName, Date createdDate) {
        this.orderId = orderId;
        this.car = car;
        this.userId = userId;
        this.postId = postId;
        this.userEmail = userEmail;
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

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
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

    public LocalDateTime getOrderApp() {
        return orderApp;
    }

    public void setOrderApp(LocalDateTime orderApp) {
        this.orderApp = orderApp;
    }

   
    
}
