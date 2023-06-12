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

    public List<Post> getPostList() throws SQLException {
        ArrayList<Post> list = null;
        Connection con = DBContext.getConnection();
        try {
            PreparedStatement stm = con.prepareStatement("select * from [Post]");
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Post post = new Post();
                post.setPostId(rs.getInt("postId"));
                post.setUserId(rs.getInt("userId"));
                post.setCarId(rs.getInt("carId"));
                post.setPostTitle(rs.getString("postTitle"));
                post.setPostDescript(rs.getString("postDescript"));
                post.setPostDate(rs.getDate("postDate"));
                post.setPostStatus(rs.getString("postStatus"));
                list.add(post);
            }
            con.close();
        } catch (Exception e) {
        }
        return list;
    }

    public Post checkCarId(int carId) throws SQLException {
        Post post = null;
        Connection con = DBContext.getConnection();
        try {
            PreparedStatement stm = con.prepareStatement("select * from [Post] where carId = " + carId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                post = new Post();
                post.setPostId(rs.getInt("postId"));
                post.setUserId(rs.getInt("userId"));
                post.setCarId(rs.getInt("carId"));
                post.setPostTitle(rs.getString("postTitle"));
                post.setPostDescript(rs.getString("postDescript"));
                post.setPostDate(rs.getDate("postDate"));
                post.setPostStatus(rs.getString("postStatus"));
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
            
        } catch (Exception e) {
        }
        con.close();
    }
}
