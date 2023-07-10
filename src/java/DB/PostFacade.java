package DB;

import Models.Post;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PostFacade {

    public PostFacade() {
    }
    
    public Post getDetails(int postId) throws SQLException {
        Post post = null;
        Connection con = DBContext.getConnection();
        try {
            CarFacade cf = null;
            PreparedStatement stm = con.prepareStatement("select * from [Post] where postId = " + postId);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                post = new Post();
                cf = new CarFacade();
                post.setPostId(rs.getInt("postId"));
                post.setUserId(rs.getInt("userId"));
                post.setCar(cf.getDetails(rs.getInt("carId")));
                post.setPostTitle(rs.getString("postTitle"));
                post.setPostDescript(rs.getString("postDescript"));
                post.setPostDate(rs.getDate("postDate"));
                post.setPostStatus(rs.getString("postStatus"));
            }
            if (stm != null) {
                stm.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (Exception e) {
        }
        con.close();
        return post;
    }

    public List<Post> getPostList() throws SQLException {
        ArrayList<Post> list = null;
        Connection con = DBContext.getConnection();
        try {
            CarFacade cf = null;
            PreparedStatement stm = con.prepareStatement("select * from [Post]");
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                if (list == null) list = new ArrayList<>();
                cf = new CarFacade();
                Post post = new Post();
                post.setPostId(rs.getInt("postId"));
                post.setUserId(rs.getInt("userId"));
                post.setCar(cf.getDetails(rs.getInt("carId")));
                post.setPostTitle(rs.getString("postTitle"));
                post.setPostDescript(rs.getString("postDescript"));
                post.setPostDate(rs.getDate("postDate"));
                post.setPostStatus(rs.getString("postStatus"));
                list.add(post);
            }
            if (stm != null) {
                stm.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (Exception e) {
        }
        con.close();
        return list;
    }
    
    public List<Post> listByUser(int userId) throws SQLException {
        ArrayList<Post> list = null;
        Connection con = DBContext.getConnection();
        try {
            CarFacade cf = null;
            PreparedStatement stm = con.prepareStatement("select * from [Post] where userId = " + userId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                if (list == null) list = new ArrayList<>();
                cf = new CarFacade();
                Post post = new Post();
                post.setPostId(rs.getInt("postId"));
                post.setUserId(rs.getInt("userId"));
                post.setCar(cf.getDetails(rs.getInt("carId")));
                post.setPostTitle(rs.getString("postTitle"));
                post.setPostDescript(rs.getString("postDescript"));
                post.setPostDate(rs.getDate("postDate"));
                post.setPostStatus(rs.getString("postStatus"));
                list.add(post);
            }
            if (stm != null) {
                stm.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (Exception e) {
        }
        con.close();
        return list;
    }

    public Post checkCarId(int carId) throws SQLException {
        Post post = null;
        Connection con = DBContext.getConnection();
        try {
            CarFacade cf = null;
            PreparedStatement stm = con.prepareStatement("select * from [Post] where carId = " + carId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                cf = new CarFacade();
                post = new Post();
                post.setPostId(rs.getInt("postId"));
                post.setUserId(rs.getInt("userId"));
                post.setCar(cf.getDetails(rs.getInt("carId")));
                post.setPostTitle(rs.getString("postTitle"));
                post.setPostDescript(rs.getString("postDescript"));
                post.setPostDate(rs.getDate("postDate"));
                post.setPostStatus(rs.getString("postStatus"));
            }
            if (stm != null) {
                stm.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (Exception e) {
        }
        con.close();
        return post;
    }

    public void addPost(int userId, int carId, String postTitle, String postDescript) throws SQLException {
        Connection con = DBContext.getConnection();
        try {
            PreparedStatement stm = con.prepareStatement("INSERT INTO [Post] (userId, carId, postTitle, postDescript, postDate, postStatus)"
                    + "VALUES (?,?,?,?,CURRENT_TIMESTAMP,'Inactive')");
            stm.setInt(1, userId);
            stm.setInt(2, carId);
            stm.setString(3, postTitle);
            stm.setString(4, postDescript);
            int count = stm.executeUpdate();
            if (stm != null) {
                stm.close();
            }
        } catch (Exception e) {
        }
        con.close();
    }
    
    public void updatePost(int postId, String postTitle, String postDescript) throws SQLException {
        Connection con = DBContext.getConnection();
        try {
            PreparedStatement stm = con.prepareStatement("Update [Post] set postTitle = ?, set postDescript = ? where postId = ?");
            stm.setString(1, postTitle);
            stm.setString(2, postDescript);
            stm.setInt(3, postId);
            int count = stm.executeUpdate();
            if (stm != null) {
                stm.close();
            }
        } catch (Exception e) {
        }
        con.close();
    }
    
    public void updatePostStatus(int postId, String postStatus) throws SQLException {
        Connection con = DBContext.getConnection();
        try {
            PreparedStatement stm = con.prepareStatement("Update [Post] set postStatus = ? where postId = ?"
                    + "VALUES (?,?,?,?,CURRENT_TIMESTAMP,'Inactive')");
            stm.setString(1, postStatus);
            stm.setInt(2, postId);
            int count = stm.executeUpdate();
            if (stm != null) {
                stm.close();
            }
        } catch (Exception e) {
        }
        con.close();
    }
}
