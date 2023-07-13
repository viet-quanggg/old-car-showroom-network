package Controllers;

import DB.PlanFacade;
import DB.PostFacade;
import DB.UserFacade;
import Models.Plan;
import Models.User;
import Utilities.Common;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "PlanController", urlPatterns = {"/plan"})
public class PlanController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        String controller = (String) request.getAttribute("controller");
        String action = (String) request.getAttribute("action");
        PlanFacade pf = new PlanFacade();
        Plan plan = new Plan();
        HttpSession session = request.getSession();
        switch (action) {
            case "planlist":
                request.setAttribute("PlanList", pf.getPlanList());
                break;
            case "buyplan":
                String pID = request.getParameter("planId");
                User user = (User) session.getAttribute("User");
                int id = 0;
                if (user == null || user.getUserRole() != 0) {
                    request.setAttribute("controller", "login");
                    request.setAttribute("action", "login");
                    request.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(request, response);
                    return;
                }
                try {
                    if (!pID.isBlank() && user != null) {
                        id = Integer.parseInt(pID);
                    }
                    user.setPlanId(id);
                    UserFacade uf = new UserFacade();
                    plan = pf.getUserPlan(user);
                    user.setPostLimit(plan.getPlanLimit());
                    user = uf.updatePlan(user);
                    
//                    if (user.getPlanId() != 0 && user.getPlanStart() != null && plan != null) {
//                        session.setAttribute("countPost", "");
//
//                        Date startDate = user.getPlanStart();
//                        Date endDate = Common.countDate(user.getPlanStart(), plan.getPlanLimit());
//
//                        PostFacade pof = new PostFacade();
//                        if (user.getPlanId() != 3) {
//                            int countPost = plan.getPlanLimit() - pof.countPost(user.getUserID(), startDate, endDate);
//                            if (countPost <= 0) {
//                                user.setPlanId(0);
//                                user = uf.updatePlan(user);
//                                session.setAttribute("User", user);
//
//                            } else {
//                                session.setAttribute("countPost", countPost);
//                            }
//                        } else {
//                            session.setAttribute("countPost", "infinite");
//                        }
//                        session.setAttribute("UserPlan", plan);
//                    }

                    session.setAttribute("User", user);
                    session.setAttribute("UserPlan", plan);
                } catch (NumberFormatException e) {
                    System.err.println("Parse plan ID !" + e);
                }
                response.sendRedirect(request.getContextPath() + "/ocsn/index.do");

                break;
            case "getplan":
                Plan userplan = (Plan) session.getAttribute("UserPlan");
                request.setAttribute("UserPlan", userplan);
            default:
                //Show error page
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(PlanController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(PlanController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(PlanController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(PlanController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
