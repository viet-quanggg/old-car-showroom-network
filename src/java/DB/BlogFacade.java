/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import Models.Blog;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author _viet.quangg
 */
public class BlogFacade {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Blog> listBlog() throws SQLException {
        List<Blog> list = new ArrayList<>();
        con = DBContext.getConnection();
        ps = con.prepareStatement("SELECT b.blogId, b.blogTitle, b.blogDetail, b.blogImage, b.blogDate, u.userId, u.userName from [Blog] b join [User] u on b.blogId = u.userId");
        rs = ps.executeQuery();
        while (rs.next()) {
            Blog blog = new Blog();
            blog.setBlogId(rs.getInt(1));
            blog.setBlogTitle(rs.getString(2));
            blog.setBlogDetail(rs.getString(3));
            blog.setBlogImage(rs.getString(4));
            blog.setBlogDate(rs.getDate(5));
            blog.setUserId(rs.getInt(6));
            blog.setUserName(rs.getString(7));
            list.add(blog);
        }
        con.close();
        return list;
    }

    public List<Blog> listBlogRandomly() throws SQLException {
        List<Blog> list = new ArrayList<>();
        con = DBContext.getConnection();
        ps = con.prepareStatement("SELECT b.blogId, b.blogTitle, b.blogDetail, b.blogImage, b.blogDate, u.userId, u.userName \n"
                + "from [Blog] b join [User] u \n"
                + "on b.blogId = u.userId \n"
                + "ORDER BY NEWID();");
        rs = ps.executeQuery();
        while (rs.next()) {
            Blog blog = new Blog();
            blog.setBlogId(rs.getInt(1));
            blog.setBlogTitle(rs.getString(2));
            blog.setBlogDetail(rs.getString(3));
            blog.setBlogImage(rs.getString(4));
            blog.setBlogDate(rs.getDate(5));
            blog.setUserId(rs.getInt(6));
            blog.setUserName(rs.getString(7));
            list.add(blog);
        }
        con.close();
        return list;
    }

    public static void main(String[] args) throws SQLException {
        BlogFacade bf = new BlogFacade();
        List<Blog> blog = bf.listBlog();
        for (Blog o : blog) {
            System.out.println(o);
        }
    }

    public List<Blog> listLatest() throws SQLException {
        List<Blog> list = new ArrayList<>();
        con = DBContext.getConnection();
        ps = con.prepareStatement("SELECT b.blogId, b.blogTitle, b.blogDetail, b.blogImage, b.blogDate, u.userId, u.userName from [Blog] b join [User] u on b.blogId = u.userId order by blogId DESC");
        rs = ps.executeQuery();
        while (rs.next()) {
            Blog blog = new Blog();
            blog.setBlogId(rs.getInt(1));
            blog.setBlogTitle(rs.getString(2));
            blog.setBlogDetail(rs.getString(3));
            blog.setBlogImage(rs.getString(4));
            blog.setBlogDate(rs.getDate(5));
            blog.setUserId(rs.getInt(6));
            blog.setUserName(rs.getString(7));
            list.add(blog);
        }
        con.close();
        return list;
    }

    public Blog listBlogId(String id) throws SQLException {
        con = DBContext.getConnection();
        ps = con.prepareStatement("SELECT b.blogId, b.blogTitle, b.blogDetail, b.blogImage, b.blogDate, u.userId, u.userName from [Blog] b join [User] u on b.blogId = u.userId where blogId = ?");
        ps.setString(1, id);
        rs = ps.executeQuery();
        while (rs.next()) {
            Blog blog = new Blog();
            blog.setBlogId(rs.getInt(1));
            blog.setBlogTitle(rs.getString(2));
            blog.setBlogDetail(rs.getString(3));
            blog.setBlogImage(rs.getString(4));
            blog.setBlogDate(rs.getDate(5));
            blog.setUserId(rs.getInt(6));
            blog.setUserName(rs.getString(7));
            return blog;
        }
        con.close();
        return null;
    }

    public void create(Blog blog) throws SQLException {
        con = DBContext.getConnection();
        ps = con.prepareStatement("INSERT [dbo].[Blog](blogTitle,blogDetail,blogImage,userId ,blogDate) \n"
                + "values(?,?,?,?,CURRENT_TIMESTAMP)");
        ps.setString(1, blog.getBlogTitle());
        ps.setString(2, blog.getBlogDetail());
        ps.setString(3, blog.getBlogImage());
        ps.setInt(4, blog.getUserId());
        int count = ps.executeUpdate();
        con.close();
    }
}
