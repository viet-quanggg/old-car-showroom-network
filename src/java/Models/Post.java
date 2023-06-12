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
public class Post {
    private int postId;
    private int userId;
    private int carId;
    private String postTitle = "";
    private String postDescript = "";
    private Date postDate;
    private String postStatus;

    public Post() {
    }

    public Post(int postId, int userId, int carId, Date postDate, String postStatus) {
        this.postId = postId;
        this.userId = userId;
        this.carId = carId;
        this.postDate = postDate;
        this.postStatus = postStatus;
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

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getPostDescript() {
        return postDescript;
    }

    public void setPostDescript(String postDescript) {
        this.postDescript = postDescript;
    }

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    public String getPostStatus() {
        return postStatus;
    }

    public void setPostStatus(String postStatus) {
        this.postStatus = postStatus;
    }
    
    
}