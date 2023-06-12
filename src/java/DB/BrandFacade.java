
package DB;
import Models.Brand;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class BrandFacade {
    public BrandFacade() {
        }
    
    public Brand getBrandById(int brandId) throws SQLException {
        Brand brand = null;
        Connection con = DBContext.getConnection();
        try {
            PreparedStatement stm = con.prepareStatement("select * from [Brand] where brandId = " + brandId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                brand = new Brand(rs.getInt("brandId"), rs.getString("brandName"), rs.getDate("createDate"), rs.getDate("uploadDate"));
            }
            con.close();
        } catch (Exception e) {
        }
        return brand;
    }
    
    public List<Brand> getBrandList(int brandId) throws SQLException {
        List<Brand> list = null;
        Connection con = DBContext.getConnection();
        try {
            PreparedStatement stm = con.prepareStatement("select * from [Brand] where brandId = " + brandId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Brand brand = new Brand(rs.getInt("brandId"), rs.getString("brandName"), rs.getDate("createDate"), rs.getDate("uploadDate"));
                list.add(brand);
            }
            con.close();
        } catch (Exception e) {
        }
        return list;
    }
}
