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
public class Blog {

   private int blogId;
   private String blogTitle;
   private String blogDetail;
   private String blogImage;
   private Date blogDate;
   private int userId;
   private String userName;
   

    public Blog() {
    }

    public Blog(int blogId, String blogTitle, String blogDetail, String blogImage, Date blogDate, int userId, String userName) {
        this.blogId = blogId;
        this.blogTitle = blogTitle;
        this.blogDetail = blogDetail;
        this.blogImage = blogImage;
        this.blogDate = blogDate;
        this.userId = userId;
        this.userName = userName;
    }

    public Blog(String blogTitle, String blogDetail, String blogImage, int userId) {
        this.blogTitle = blogTitle;
        this.blogDetail = blogDetail;
        this.blogImage = blogImage;
        this.userId = userId;
    }

    public int getBlogId() {
        return blogId;
    }

    public void setBlogId(int blogId) {
        this.blogId = blogId;
    }

    public String getBlogTitle() {
        return blogTitle;
    }

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle;
    }

    public String getBlogDetail() {
        return blogDetail;
    }

    public void setBlogDetail(String blogDetail) {
        this.blogDetail = blogDetail;
    }

    public String getBlogImage() {
        return blogImage;
    }

    public void setBlogImage(String blogImage) {
        this.blogImage = blogImage;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Date getBlogDate() {
        return blogDate;
    }

    public void setBlogDate(Date blogDate) {
        this.blogDate = blogDate;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public String toString() {
        return "Blog{" + "blogId=" + blogId + ", blogTitle=" + blogTitle + ", blogDetail=" + blogDetail + ", blogImage=" + blogImage + ", blogDate=" + blogDate + ", userId=" + userId + ", userName=" + userName + '}';
    }

    
    
   
}
