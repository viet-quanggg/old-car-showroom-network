/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import Models.Blog;
import Models.PricingPlan;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author _viet.quangg
 */
public class OrderFacade {
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<PricingPlan> listPlan() throws SQLException {
        List<PricingPlan> list = new ArrayList<>();
        con = DBContext.getConnection();
        ps = con.prepareStatement("select * from [Plan]");
        rs = ps.executeQuery();
        while (rs.next()) {
            PricingPlan plan = new PricingPlan();
            plan.setPlanId(rs.getInt(1));
            plan.setPlanName(rs.getString(2));
            plan.setPlanTime(rs.getInt(3));
            plan.setPlanLimit(rs.getInt(4));
            plan.setPlanPrice(rs.getDouble(5));
            list.add(plan);
        }
        con.close();
        return list;
    }
}
