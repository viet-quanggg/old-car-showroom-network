/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import Models.Brand;
import Models.Car;
import Models.Color;
import Models.Image;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 *
 * @author ADMIN
 */
public class CarFacade {

    public int addCar(int ownerID, Double carPrice, String carName, int carYear, String carDescription, int brandID, int colorID) throws SQLException {
        Connection con = DBContext.getConnection();
        int id = -1;
        try {
            String sql = "INSERT INTO [Car] ("
                    + "[ownerId], "
                    + "[carShowroom], "
                    + "[carPrice], "
                    + "[carName], "
                    + "[carYear], "
                    + "[carDescription], "
                    + "[carCondition], "
                    + "[createDate], "
                    + "[updateDate], "
                    + "[brandID], "
                    + "[colorID]) VALUES (?,'',?,?,?,?,0,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,?,?)";
            PreparedStatement stm = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setInt(1, ownerID);
            stm.setDouble(2, carPrice);
            stm.setString(3, carName);
            stm.setInt(4, carYear);
            stm.setString(5, carDescription);
            stm.setInt(6, brandID);
            stm.setInt(7, colorID);
            int count = stm.executeUpdate();
            if (count > 0) {
                ResultSet rs = stm.getGeneratedKeys();
                if (rs.next()) {
                    id = rs.getInt(1);
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return id;
    }

    public List<Car> getCar() throws SQLException {
        List<Car> list = null;

        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        try {

            String sql = "SELECT [carId]\n"
                    + "      ,c.[ownerId]\n"
                    + "      ,c.[carShowroom]\n"
                    + "      ,c.[carPrice]\n"
                    + "      ,c.[carName]\n"
                    + "      ,c.[carYear]\n"
                    + "      ,c.[carDescription]\n"
                    + "      ,c.[carCondition]\n"
                    + "      ,c.[createDate]\n"
                    + "      ,c.[updateDate]\n"
                    + "      ,c.[brandID]\n"
                    + "      ,c.[colorID]\n"
                    + "      ,b.[name]\n"
                    + "      ,b.[createDate] as 'brandCreateDate'\n"
                    + "      ,b.[updateDate] as 'brandUpdateDate'\n"
                    + "      ,color.[color]\n"
                    + "      ,color.[createDate] as 'colorCreateDate'\n"
                    + "  FROM [dbo].[Car] c inner join [dbo].[Brand] b\n"
                    + "  on c.brandID =  b.id inner join [dbo].[color] color\n"
                    + "  on c.colorID =  color.id \n"
                    + "  ORDER BY updateDate DESC, createDate DESC, carId DESC";

            PreparedStatement stm = con.prepareStatement(sql);
            //Thực thi lệnh sql
            ResultSet rs = stm.executeQuery();
            //Load dữ liệu vào đối tượng toy nếu có
            list = new ArrayList<>();
            while (rs.next()) {

                String sql1 = "SELECT * FROM Car_Image WHERE carID = ? ";

                PreparedStatement stm1 = con.prepareStatement(sql1);
                //Thực thi lệnh sql
                stm1.setInt(1, rs.getInt("carID"));
                ResultSet rs1 = stm1.executeQuery();

                List<Image> image = new ArrayList<>();
                while (rs1.next()) {
                    image.add(new Image(rs1.getInt("id"), rs1.getString("url"), rs1.getInt("carID")));
                }

                Brand brand = new Brand(rs.getInt("brandID"), rs.getString("name"),
                        rs.getDate("brandCreateDate"), rs.getDate("brandUpdateDate"), 0);

                Color color = new Color(rs.getInt("colorID"), rs.getString("color"), rs.getDate("colorCreateDate"));

                Car car = new Car(rs.getInt("carID"), rs.getInt("ownerId"), rs.getString("carShowroom"),
                        rs.getDouble("carPrice"), rs.getString("carName"), rs.getInt("carYear"),
                        rs.getString("carDescription"), rs.getBoolean("carCondition"),
                        rs.getDate("createDate"), rs.getDate("updateDate"), brand, image, color);

                list.add(car);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        con.close();
        return list;
    }

    public List<Car> getListByPage(List<Car> list,
            int start, int end) {
        List<Car> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public List<Color> getAllColor() {
        List<Color> list = new ArrayList<>();

        try {

            Connection con = DBContext.getConnection();

            String sql = "SELECT [id]\n"
                    + "      ,[color]\n"
                    + "      ,[createDate]\n"
                    + "  FROM [dbo].[Color]";

            PreparedStatement st = con.prepareStatement(sql);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                list.add(new Color(rs.getInt(1), rs.getString(2), rs.getDate(3)));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Brand> getAllBrand() {
        List<Brand> list = new ArrayList<>();

        try {

            Connection con = DBContext.getConnection();

            String sql = "SELECT id, name, b.createDate, b.updateDate, count(c.carId) AS 'numberOfCar'\n"
                    + "  FROM [dbo].[Brand] b inner join [dbo].Car c\n"
                    + "  on b.id = c.brandID\n"
                    + "  GROUP BY id, name, b.createDate, b.updateDate\n"
                    + "  ORDER BY name ASC";

            PreparedStatement st = con.prepareStatement(sql);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                list.add(new Brand(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getDate(4), rs.getInt(5)));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Car> getBySearch(String x) throws SQLException {
        List<Car> list = new ArrayList<>();

        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        try {

            String sql = "SELECT [carId]\n"
                    + "      ,c.[ownerId]\n"
                    + "      ,c.[carShowroom]\n"
                    + "      ,c.[carPrice]\n"
                    + "      ,c.[carName]\n"
                    + "      ,c.[carYear]\n"
                    + "      ,c.[carDescription]\n"
                    + "      ,c.[carCondition]\n"
                    + "      ,c.[createDate]\n"
                    + "      ,c.[updateDate]\n"
                    + "      ,c.[brandID]\n"
                    + "      ,c.[colorID]\n"
                    + "      ,b.[name]\n"
                    + "      ,b.[createDate] as 'brandCreateDate'\n"
                    + "      ,b.[updateDate] as 'brandUpdateDate'\n"
                    + "      ,color.[color]\n"
                    + "      ,color.[createDate] as 'colorCreateDate'\n"
                    + "  FROM [dbo].[Car] c inner join [dbo].[Brand] b\n"
                    + "  on c.brandID =  b.id inner join [dbo].[color] color\n"
                    + "  on c.colorID =  color.id \n"
                    + "  WHERE carPrice LIKE ? OR carName LIKE ? OR carYear LIKE ? OR carCondition LIKE ? OR b.[name] LIKE ? OR color.[color] LIKE ? \n"
                    + "  ORDER BY updateDate DESC, createDate DESC, carId DESC";

            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, "%" + x + "%");
            stm.setString(2, "%" + x + "%");
            stm.setString(3, "%" + x + "%");
            stm.setString(4, "%" + x + "%");
            stm.setString(5, "%" + x + "%");
            stm.setString(6, "%" + x + "%");

            //Thực thi lệnh sql
            ResultSet rs = stm.executeQuery();
            //Load dữ liệu vào đối tượng toy nếu có
            list = new ArrayList<>();
            while (rs.next()) {

                String sql1 = "SELECT * FROM Car_Image WHERE carID = ? ";

                PreparedStatement stm1 = con.prepareStatement(sql1);
                //Thực thi lệnh sql
                stm1.setInt(1, rs.getInt("carID"));
                ResultSet rs1 = stm1.executeQuery();

                List<Image> image = new ArrayList<>();
                while (rs1.next()) {
                    image.add(new Image(rs1.getInt("id"), rs1.getString("url"), rs1.getInt("carID")));
                }

                Brand brand = new Brand(rs.getInt("brandID"), rs.getString("name"),
                        rs.getDate("brandCreateDate"), rs.getDate("brandUpdateDate"), 0);

                Color color = new Color(rs.getInt("colorID"), rs.getString("color"), rs.getDate("colorCreateDate"));

                Car car = new Car(rs.getInt("carID"), rs.getInt("ownerId"), rs.getString("carShowroom"),
                        rs.getDouble("carPrice"), rs.getString("carName"), rs.getInt("carYear"),
                        rs.getString("carDescription"), rs.getBoolean("carCondition"),
                        rs.getDate("createDate"), rs.getDate("updateDate"), brand, image, color);

                list.add(car);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        con.close();

        return list;
    }

    public Car getDetails(int id) throws SQLException {

        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        try {

            String sql = "SELECT [carId]\n"
                    + "      ,c.[ownerId]\n"
                    + "      ,c.[carShowroom]\n"
                    + "      ,c.[carPrice]\n"
                    + "      ,c.[carName]\n"
                    + "      ,c.[carYear]\n"
                    + "      ,c.[carDescription]\n"
                    + "      ,c.[carCondition]\n"
                    + "      ,c.[createDate]\n"
                    + "      ,c.[updateDate]\n"
                    + "      ,c.[brandID]\n"
                    + "      ,c.[colorID]\n"
                    + "      ,b.[name]\n"
                    + "      ,b.[createDate] as 'brandCreateDate'\n"
                    + "      ,b.[updateDate] as 'brandUpdateDate'\n"
                    + "      ,color.[color]\n"
                    + "      ,color.[createDate] as 'colorCreateDate'\n"
                    + "  FROM [dbo].[Car] c inner join [dbo].[Brand] b\n"
                    + "  on c.brandID =  b.id inner join [dbo].[color] color\n"
                    + "  on c.colorID =  color.id\n"
                    + "  WHERE carId = ? ";

            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, id);

            //Thực thi lệnh sql
            ResultSet rs = stm.executeQuery();
            //Load dữ liệu vào đối tượng toy nếu có

            if (rs.next()) {

                String sql1 = "SELECT * FROM Car_Image WHERE carID = ? ";

                PreparedStatement stm1 = con.prepareStatement(sql1);
                //Thực thi lệnh sql
                stm1.setInt(1, rs.getInt("carID"));
                ResultSet rs1 = stm1.executeQuery();

                List<Image> image = new ArrayList<>();
                while (rs1.next()) {
                    image.add(new Image(rs1.getInt("id"), rs1.getString("url"), rs1.getInt("carID")));
                }

                Brand brand = new Brand(rs.getInt("brandID"), rs.getString("name"),
                        rs.getDate("brandCreateDate"), rs.getDate("brandUpdateDate"), 0);

                Color color = new Color(rs.getInt("colorID"), rs.getString("color"), rs.getDate("colorCreateDate"));

                Car car = new Car(rs.getInt("carID"), rs.getInt("ownerId"), rs.getString("carShowroom"),
                        rs.getDouble("carPrice"), rs.getString("carName"), rs.getInt("carYear"),
                        rs.getString("carDescription"), rs.getBoolean("carCondition"),
                        rs.getDate("createDate"), rs.getDate("updateDate"), brand, image, color);

                return car;

            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        con.close();

        return null;
    }

    public List<Brand> getTopXBrand(int x) {
        List<Brand> list = new ArrayList<>();

        try {

            Connection con = DBContext.getConnection();

            String sql = "SELECT TOP(?) id, name, b.createDate, b.updateDate, count(c.carId) AS 'numberOfCar'\n"
                    + "  FROM [dbo].[Brand] b inner join [dbo].Car c\n"
                    + "  on b.id = c.brandID\n"
                    + "  GROUP BY id, name, b.createDate, b.updateDate\n"
                    + "  ORDER BY numberOfCar DESC";

            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, x);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                list.add(new Brand(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getDate(4), rs.getInt(5)));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Car> getRelatedCar(int bid) throws SQLException {
        List<Car> list = new ArrayList<>();

        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        try {

            String sql = "SELECT [carId]\n"
                    + "      ,c.[ownerId]\n"
                    + "      ,c.[carShowroom]\n"
                    + "      ,c.[carPrice]\n"
                    + "      ,c.[carName]\n"
                    + "      ,c.[carYear]\n"
                    + "      ,c.[carDescription]\n"
                    + "      ,c.[carCondition]\n"
                    + "      ,c.[createDate]\n"
                    + "      ,c.[updateDate]\n"
                    + "      ,c.[brandID]\n"
                    + "      ,c.[colorID]\n"
                    + "      ,b.[name]\n"
                    + "      ,b.[createDate] as 'brandCreateDate'\n"
                    + "      ,b.[updateDate] as 'brandUpdateDate'\n"
                    + "      ,color.[color]\n"
                    + "      ,color.[createDate] as 'colorCreateDate'\n"
                    + "  FROM [dbo].[Car] c inner join [dbo].[Brand] b\n"
                    + "  on c.brandID =  b.id inner join [dbo].[color] color\n"
                    + "  on c.colorID =  color.id \n"
                    + "  WHERE c.brandID IN (?)\n"
                    + "  ORDER BY updateDate DESC, createDate DESC, carId DESC";

            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, bid);

            //Thực thi lệnh sql
            ResultSet rs = stm.executeQuery();
            //Load dữ liệu vào đối tượng toy nếu có
            list = new ArrayList<>();
            while (rs.next()) {

                String sql1 = "SELECT * FROM Car_Image WHERE carID = ? ";

                PreparedStatement stm1 = con.prepareStatement(sql1);
                //Thực thi lệnh sql
                stm1.setInt(1, rs.getInt("carID"));
                ResultSet rs1 = stm1.executeQuery();

                List<Image> image = new ArrayList<>();
                while (rs1.next()) {
                    image.add(new Image(rs1.getInt("id"), rs1.getString("url"), rs1.getInt("carID")));
                }

                Brand brand = new Brand(rs.getInt("brandID"), rs.getString("name"),
                        rs.getDate("brandCreateDate"), rs.getDate("brandUpdateDate"), 0);

                Color color = new Color(rs.getInt("colorID"), rs.getString("color"), rs.getDate("colorCreateDate"));

                Car car = new Car(rs.getInt("carID"), rs.getInt("ownerId"), rs.getString("carShowroom"),
                        rs.getDouble("carPrice"), rs.getString("carName"), rs.getInt("carYear"),
                        rs.getString("carDescription"), rs.getBoolean("carCondition"),
                        rs.getDate("createDate"), rs.getDate("updateDate"), brand, image, color);

                list.add(car);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        con.close();

        return list;
    }

}
