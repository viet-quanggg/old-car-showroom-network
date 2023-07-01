package DB;

import Models.Plan;
import Models.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PlanFacade {

    public PlanFacade() {
    }

    public List<Plan> getPlanList() throws SQLException {
        List<Plan> list = null;
        Connection con = DBContext.getConnection();
        try {
            PreparedStatement stm = con.prepareStatement("select * from [Plan]");
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Plan plan = new Plan(rs.getInt("planId"), rs.getString("planName"), rs.getInt("planTime"), rs.getInt("planLimit"), rs.getDouble("planPrice"));
                list.add(plan);
            }
            con.close();
        } catch (Exception e) {
        }
        return list;
    }

    public Plan getUserPlan(User user) throws SQLException {
        Plan plan = null;
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from [Plan] where planId=?");
        stm.setInt(1, user.getPlanId());
        ResultSet rs = stm.executeQuery();
        if (rs.next()) {
            plan = new Plan(rs.getInt("planId"), rs.getString("planName"), rs.getInt("planTime"), rs.getInt("planLimit"), rs.getDouble("planPrice"));
        }
        con.close();
        return plan;
    }
}
