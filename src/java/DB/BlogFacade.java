/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import Models.Blog;
import jakarta.servlet.http.Part;
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
        try {
            List<Blog> list = new ArrayList<>();
            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT b.blogId, b.blogTitle, b.blogDetail, b.blogImage, b.blogDate, u.userId, u.userName from [Blog] b join [User] u on b.userId = u.userId");
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
        } catch (Exception e) {

        }
        return null;
    }

    public List<Blog> listBlogRandomly() throws SQLException {
        try {
            List<Blog> list = new ArrayList<>();
            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT b.blogId, b.blogTitle, b.blogDetail, b.blogImage, b.blogDate, u.userId, u.userName \n"
                    + "from [Blog] b join [User] u \n"
                    + "on b.userId = u.userId \n"
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
        } catch (Exception e) {

        }
        return null;
    }

    public static void main(String[] args) throws SQLException {
        BlogFacade bf = new BlogFacade();
        List<Blog> blog = bf.blogPerPage(1, 8);
        for (Blog o : blog) {
            System.out.println(o);
        }
    }

    public List<Blog> listLatest() throws SQLException {
        List<Blog> list = new ArrayList<>();
        try {

            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT b.blogId, b.blogTitle, b.blogDetail, b.blogImage, b.blogDate, u.userId, u.userName from [Blog] b join [User] u on b.userId = u.userId order by blogId DESC");
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
        } catch (Exception e) {

        }
        return null;
    }

    public Blog listBlogId(String id) throws SQLException {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT b.blogId, b.blogTitle, b.blogDetail, b.blogImage, b.blogDate, u.userId, u.userName from [Blog] b join [User] u on b.userId= u.userId where blogId = ?");
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
        } catch (Exception e) {

        }
        return null;
    }

    public void create(Blog blog) throws SQLException {
        try (Connection con = DBContext.getConnection(); 
                PreparedStatement ps = con.prepareStatement("SET IDENTITY_INSERT [dbo].[Blog] ON;"
                + "INSERT INTO [dbo].[Blog](blogId, blogTitle, blogDetail, blogImage, userId, blogDate) VALUES ((SELECT MAX(blogId) FROM [dbo].[Blog]) + 1, ?, ?, ?, ?, CURRENT_TIMESTAMP);"
                + "SET IDENTITY_INSERT [dbo].[Blog] OFF;")) {
            ps.setString(1, blog.getBlogTitle());
            ps.setString(2, blog.getBlogDetail());
            ps.setString(3, blog.getBlogImage());
            ps.setInt(4, blog.getUserId());
            int count = ps.executeUpdate();
        } catch (Exception e) {
            // Handle the exception here
        }
    }

    public int countPage(String search) {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("select COUNT(*)\n"
                    + " from [Blog] \n"
                    + " where blogTitle like ?");
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public int countBlog() {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("select COUNT(*)\n"
                    + "from [blog]");
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }
    public int countBlogsearch(String search) {
        try {
            con = DBContext.getConnection();
            ps = con.prepareStatement("select COUNT(*)\n"
                    + "from [blog]"
                    + "WHERE blogTitle like '%"+search+"%'");
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public List<Blog> pagingBlog(int index) throws SQLException {
        List<Blog> list = new ArrayList<>();
        try {

            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT b.blogId, b.blogTitle, b.blogDetail, b.blogImage, b.blogDate, u.userId, u.userName \n"
                    + "from [Blog] b join [User] u \n"
                    + "on b.blogId = u.userId \n"
                    + "ORDER BY blogId\n"
                    + "OFFSET ? ROWS FETCH NEXT 4 ROWS ONLY");
            ps.setInt(1, (index - 1) * 4);
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
        } catch (Exception e) {

        }
        return null;
    }

    public List<Blog> blogPerPage(int index, int num) throws SQLException {
        List<Blog> list = new ArrayList<>();
        try {

            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT b.blogId, b.blogTitle, b.blogDetail, b.blogImage, b.blogDate, u.userId, u.userName \n"
                    + "from [Blog] b join [User] u \n"
                    + "on b.userId = u.userId \n"
                    + "ORDER BY blogId\n"
                    + "OFFSET ? ROWS FETCH NEXT ? ROWS ONLY");
            ps.setInt(1, (index - 1) * num);
            ps.setInt(2, num);
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
        } catch (Exception e) {

        }
        return null;
    }

    public void updateBlog(String blogTitle, String blogDetail, String blogImage, int userId, String blogId1) {
        try (Connection con = DBContext.getConnection(); PreparedStatement ps = con.prepareStatement("UPDATE [dbo].[Blog] SET blogTitle = ?, blogDetail = ?, blogImage = ?, userId = ?, blogDate = CURRENT_TIMESTAMP WHERE blogId = ?;")) {
            ps.setString(1, blogTitle);
            ps.setString(2, blogDetail);
            ps.setString(3, blogImage);
            ps.setInt(4, userId);
            ps.setString(5, blogId1);

            int count = ps.executeUpdate();

            if (count > 0) {
                // Blog updated successfully
                System.out.println("Blog updated successfully.");
                con.close();
            } else {
                // Blog update failed or no matching row found
                System.out.println("Failed to update the blog or no matching row found.");
            }
        } catch (Exception e) {
            // Handle the exception here
            e.printStackTrace();
        }

    }

    public List<Blog> blogPerPageuser(String id) throws SQLException {
        List<Blog> list = new ArrayList<>();
        try {

            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT b.blogId, b.blogTitle, b.blogDetail, b.blogImage, b.blogDate, u.userId, u.userName \n"
                    + "from [Blog] b join [User] u \n"
                    + "on b.userId = u.userId \n"
                    + "WHERE u.userId = ?\n"
                    + "ORDER BY blogId\n");
//                    + "OFFSET ? ROWS FETCH NEXT ? ROWS ONLY");
            ps.setString(1, id);
//            ps.setInt(2, (index - 1) * num);
//            ps.setInt(3, num);
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
        } catch (Exception e) {

        }
        return null;
    }

    public List<Blog> searchBlog(int index, int num, String search) throws SQLException {
        try {
            List<Blog> list = new ArrayList<>();
            con = DBContext.getConnection();
            con = DBContext.getConnection();
            ps = con.prepareStatement("SELECT b.blogId, b.blogTitle, b.blogDetail, b.blogImage, b.blogDate, u.userId, u.userName \n"
                    + "FROM [Blog] b JOIN [User] u \n"
                    + "ON b.userId = u.userId \n"
                    + "WHERE b.blogTitle LIKE '%"+search+"%'\n"
                    + "ORDER BY blogId\n"
                    + "OFFSET ? ROWS FETCH NEXT ? ROWS ONLY");
            ps.setInt(1, (index - 1) * num);
            ps.setInt(2, num);
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
        } catch (Exception e) {

        }
        return null;
    }
}
