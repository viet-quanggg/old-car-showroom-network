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
public class User {
    private int userID;
    private String userPass;
    private String userName;
    private String userEmail;
    private String userAddress;
    private String userPhone;
    private Date timeCreated;
    private int userRole;
    private String userImage;
    private int totalUser;
    private int planId = 0;
    private Date planStart = null;

    public int getPlanId() {
        return planId;
    }

    public void setPlanId(int planId) {
        this.planId = planId;
    }

    public Date getPlanStart() {
        return planStart;
    }

    public void setPlanStart(Date planStart) {
        this.planStart = planStart;
    }

    public User() {
    }

    public User(int totalUser) {
        this.totalUser = totalUser;
    }

    public User(int userID, String userEmail, String userPass, String userName, String userAddress, String userPhone, Date timeCreated, int userRole, String userImage, int totalUser) {
        this.userID = userID;
        this.userPass = userPass;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userAddress = userAddress;
        this.userPhone = userPhone;
        this.timeCreated = timeCreated;
        this.userRole = userRole;
        this.userImage = userImage;
        this.totalUser = totalUser;
    }

    public User(int userID, String userEmail, String userPass, String userName, String userAddress, String userPhone, Date timeCreated, int userRole, String userImage) {
        this.userID = userID;
        this.userPass = userPass;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userAddress = userAddress;
        this.userPhone = userPhone;
        this.timeCreated = timeCreated;
        this.userRole = userRole;
        this.userImage = userImage;
    }


    
    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public int getUserRole() {
        return userRole;
    }

    public void setUserRole(int userRole) {
        this.userRole = userRole;
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }
    
    public int getTotalUser() {
        return totalUser;
    }

    public void setTotalUser(int totalUser) {
        this.totalUser = totalUser;
    }

    public Date getTimeCreated() {
        return timeCreated;
    }

    public void setTimeCreated(Date timeCreated) {
        this.timeCreated = timeCreated;
    }
    
    
    
    
}
