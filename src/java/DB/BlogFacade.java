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
        ps = con.prepareStatement("select * from [Blog]");
        rs = ps.executeQuery();
        while (rs.next()) {
            Blog blog = new Blog();
            blog.setBlogId(rs.getInt(1));
            blog.setBlogTitle(rs.getString(2));
            blog.setBlogDetail(rs.getString(3));
            blog.setBlogImage(rs.getString(4));
            blog.setUserId(rs.getInt(5));
            blog.setBlogDate(rs.getDate(6));
            list.add(blog);
        }
        con.close();
        return list;
    }

    public static void main(String[] args) throws SQLException {
        BlogFacade bf = new BlogFacade();
        List<Blog> blog = bf.listBlog();
        for(Blog o : blog){
            System.out.println(o);
        }
    }

    public List<Blog> listLatest() throws SQLException {
        List<Blog> list = new ArrayList<>();
        con = DBContext.getConnection();
        ps = con.prepareStatement("select * from [Blog] order by blogId desc");
        rs = ps.executeQuery();
        while (rs.next()) {
            Blog blog = new Blog();
            blog.setBlogId(rs.getInt(1));
            blog.setBlogTitle(rs.getString(2));
            blog.setBlogDetail(rs.getString(3));
            blog.setBlogImage(rs.getString(4));
            blog.setUserId(rs.getInt(5));
            blog.setBlogDate(rs.getDate(6));
            list.add(blog);
        }
        con.close();
        return list;
    }
}
