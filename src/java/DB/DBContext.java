/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author PHT
 */
public class DBContext {
    public static Connection getConnection() throws SQLException{
        String url = "jdbc:sqlserver://DESKTOP-6AI8D98\\\\SQLTHINGY:1433;databaseName=OldCarShowroom2;user=sa;password=12345";
        Connection con = null;
        try{
            //Loading a driver
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            //Creating a connection
            con =DriverManager.getConnection(url);
        } catch (Exception ex) {
            ex.printStackTrace();
            //Gay ra SQLException
            throw new SQLException(ex.getMessage());
        }
        return con;
    }
    
    public static void main(String[] args) {
        System.out.println("");
    }
}  
