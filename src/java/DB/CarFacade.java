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
                        rs.getDate("brandCreateDate"), rs.getDate("brandUpdateDate"));

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

//    public List<Car> getProductWithBrand(String carBrand) throws SQLException {
//        List<Car> list = null;
//        //Tạo connection để kết nối vào DBMS
//        Connection con = DBContext.getConnection();
//        //Tạo đối tượng PreparedStatement
//        PreparedStatement stm = con.prepareStatement("SELECT * FROM Car WHERE carBrand= ?");
//        stm.setString(1, carBrand);
//        //Thực thi lệnh sql
//        ResultSet rs = stm.executeQuery();
//        //Load dữ liệu vào đối tượng toy nếu có
//        list = new ArrayList<>();
//        while (rs.next()) {
//            Car cars = new Car();
//            cars.setCarID(rs.getInt("CarID"));
//            cars.setCarShowroom(rs.getString("carShowroom"));
//            cars.setCarPrice(rs.getFloat("carPrice"));
//            cars.setCarName(rs.getString("carName"));
//            cars.setCarBrand(rs.getString("carBrand"));
//            cars.setCarYear(rs.getInt("carYear"));
//            cars.setCarDescription(rs.getString("carDescription"));
//            cars.setCarImage(rs.getString("carImage"));
//            cars.setCarCondition(false);
//
//            list.add(cars);
//        }
//        con.close();
//        return list;
//    }
//
//    public List<Car> getProductWithName(String carName) throws SQLException {
//        List<Car> list = null;
//        //Tạo connection để kết nối vào DBMS
//        Connection con = DBContext.getConnection();
//        //Tạo đối tượng PreparedStatement
//        PreparedStatement stm = con.prepareStatement("SELECT * FROM Car WHERE carName= ?");
//        stm.setString(1, carName);
//        //Thực thi lệnh sql
//        ResultSet rs = stm.executeQuery();
//        //Load dữ liệu vào đối tượng toy nếu có
//        list = new ArrayList<>();
//        while (rs.next()) {
//            Car cars = new Car();
//            cars.setCarID(rs.getInt("CarID"));
//            cars.setCarShowroom(rs.getString("carShowroom"));
//            cars.setCarPrice(rs.getFloat("carPrice"));
//            cars.setCarName(rs.getString("carName"));
//            cars.setCarBrand(rs.getString("carBrand"));
//            cars.setCarYear(rs.getInt("carYear"));
//            cars.setCarDescription(rs.getString("carDescription"));
//            cars.setCarImage(rs.getString("carImage"));
//            cars.setCarCondition(false);
//
//            list.add(cars);
//        }
//        con.close();
//        return list;
//    }
//
//    public List<Car> getCarWithID(int carID) throws SQLException {
//        List<Car> list = null;
//        //Tạo connection để kết nối vào DBMS
//        Connection con = DBContext.getConnection();
//        //Tạo đối tượng PreparedStatement
//        PreparedStatement stm = con.prepareStatement("SELECT * FROM Car WHERE carID= ?");
//        stm.setInt(1, carID);
//        //Thực thi lệnh sql
//        ResultSet rs = stm.executeQuery();
//        //Load dữ liệu vào đối tượng toy nếu có
//        list = new ArrayList<>();
//        while (rs.next()) {
//            Car cars = new Car();
//            cars.setCarID(rs.getInt("CarID"));
//            cars.setCarShowroom(rs.getString("carShowroom"));
//            cars.setCarPrice(rs.getFloat("carPrice"));
//            cars.setCarName(rs.getString("carName"));
//            cars.setCarBrand(rs.getString("carBrand"));
//            cars.setCarYear(rs.getInt("carYear"));
//            cars.setCarDescription(rs.getString("carDescription"));
//            cars.setCarImage(rs.getString("carImage"));
//            cars.setCarCondition(false);
//
//            list.add(cars);
//        }
//        con.close();
//        return list;
//    }
//    public List<String> getCarBrand() throws SQLException {
//        List<String> categories = new ArrayList<String>();
//        //Tạo connection để kết nối vào DBMS
//        Connection con = DBContext.getConnection();
//        //Tạo đối tượng statement
//        Statement stm = con.createStatement();
//        //Thực thi lệnh SELECT
//        ResultSet rs = stm.executeQuery("SELECT DISTINCT carBrand FROM Car");
//        while (rs.next()) {
//            categories.add(rs.getString("carBrand"));
//        }
//        con.close();
//        return categories;
//    }
//    public int getCount(String search, String carBrand) throws SQLException {
//        //Tạo connection để kết nối vào DBMS
//        Connection con = DBContext.getConnection();
//        //Tạo đối tượng PreparedStatement
//        PreparedStatement stm = con.prepareStatement("select count(*) from Products where name like ? and category like ?");
//        stm.setString(1, "%" + search + "%");
//        stm.setString(2, "%" + carBrand + "%");
//        //Thực thi lệnh SELECT
//        ResultSet rs = stm.executeQuery();
//        while (rs.next()) {
//            return rs.getInt(1);
//        }
//        con.close();
//        return 0;
//    }
//    public void create(Car car) throws SQLException {
//        //Tạo connection để kết nối vào DBMS
//        Connection con = DBContext.getConnection();
//        //Tạo đối tượng PreparedStatement
//        PreparedStatement stm = con.prepareStatement("insert Car values(?,?,?,?,?,?,?,?,?)");
//        stm.setInt(1, car.getCarID());
//        stm.setString(2, car.getCarShowroom());
//        stm.setFloat(3, car.getCarPrice());
//        stm.setString(4, car.getCarName());
//        stm.setString(5, car.getCarBrand());
//        stm.setInt(6, car.getCarYear());
//        stm.setString(7, car.getCarDescription());
//        stm.setString(8, car.getCarImage());
//        stm.setBoolean(9, car.isCarCondition());
//
//        //Thực thi lệnh sql
//        int count = stm.executeUpdate();
//        //Đóng kết nối
//        con.close();
//    }
//
//    public void update(Car car) throws SQLException {
//        // Tạo connection để kết nối vào DBMS
//        Connection con = DBContext.getConnection();
//        // Tạo đối tượng PreparedStatement
//        PreparedStatement stm = con.prepareStatement("update Car set carShowroom=?, carPrice=?, carName=?, carBrand=?, carYear=?, carDescription=?, carImage=?, carCondition=? where carID=?");
//        stm.setInt(1, car.getCarID());
//        stm.setString(2, car.getCarShowroom());
//        stm.setFloat(3, car.getCarPrice());
//        stm.setString(4, car.getCarName());
//        stm.setString(5, car.getCarBrand());
//        stm.setInt(6, car.getCarYear());
//        stm.setString(7, car.getCarDescription());
//        stm.setString(8, car.getCarImage());
//        stm.setBoolean(9, car.isCarCondition());
//        stm.setInt(12, car.getCarID()); // set the product ID to update
//
//        // Thực thi lệnh sql
//        int count = stm.executeUpdate();
//        // Đóng kết nối
//        con.close();
//    }
//
//    public void delete(int carID) throws SQLException {
//        // Tạo connection để kết nối vào DBMS
//        Connection con = DBContext.getConnection();
//        // Tạo đối tượng PreparedStatement
//        PreparedStatement stm = con.prepareStatement("delete from Products where id=?");
//        stm.setInt(1, carID); // set the product ID to delete
//        // Thực thi lệnh sql
//        int count = stm.executeUpdate();
//        // Đóng kết nối
//        con.close();
//    }
//    // Get car in carlist
//    public List<Car> getCarShop(String search, String carBrand, String sort, int index, int pageSize) throws SQLException {
//        List<Car> list = null;
//        //Tạo connection để kết nối vào DBMS
//        Connection con = DBContext.getConnection();
//        //Tạo đối tượng PreparedStatement
//        PreparedStatement stm = con.prepareStatement(""
//                + "with x as (select ROW_NUMBER()over (order by " + sort + " asc) as row,* from Car where carName like ? and carBrand like ?)\n"
//                + "select * from x where row between ? and ?");
//        stm.setString(1, "%" + search + "%");
//        stm.setString(2, "%" + carBrand + "%");
//        stm.setInt(3, index * pageSize - (pageSize - 1));
//        stm.setInt(4, index * pageSize);
//        //Thực thi lệnh sql
//        ResultSet rs = stm.executeQuery();
//        //Load dữ liệu vào đối tượng toy nếu có
//        list = new ArrayList<>();
//        while (rs.next()) {
//            Car cars = new Car();
//            cars.setCarID(rs.getInt("CarID"));
//            cars.setCarShowroom(rs.getString("carShowroom"));
//            cars.setCarPrice(rs.getFloat("carPrice"));
//            cars.setCarName(rs.getString("carName"));
//            cars.setCarBrand(rs.getString("carBrand"));
//            cars.setCarYear(rs.getInt("carYear"));
//            cars.setCarDescription(rs.getString("carDescription"));
//            cars.setCarImage(rs.getString("carImage"));
//            cars.setCarCondition(false);
//
//            list.add(cars);
//        }
//        con.close();
//        return list;
//    }
}
