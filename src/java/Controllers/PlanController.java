package Controllers;

import DB.PlanFacade;
import DB.UserFacade;
import Models.Plan;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        String controller = (String) request.getAttribute("controller");
        String action = (String) request.getAttribute("action");
        PlanFacade pf = new PlanFacade();
                            Plan plan = new Plan();


        switch (action) {
            case "planlist":
                request.setAttribute("PlanList", pf.getPlanList());
                break;
            case "buyplan":
                String pID = request.getParameter("planId");
                HttpSession session = request.getSession();
                User user = (User) session.getAttribute("User");
                int id = 0;
                try {
                    if (!pID.isBlank() && user != null) {
                        id = Integer.parseInt(pID);
                    }
                    user.setPlanId(id);
                    UserFacade uf = new UserFacade();
                    uf.updatePlan(user);
                    plan =pf.getUserPlan(user);
                    session.setAttribute("User", user);
                    session.setAttribute("UserPlan", plan);
                } catch (NumberFormatException e) {
                    System.err.println("Parse plan ID !" + e);
                }
                Date date = user.getPlanStart();
                LocalDate expDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
                expDate = expDate.plusMonths(plan.getPlanLimit());
                request.setAttribute("ExpDate", expDate);

                response.sendRedirect(request.getContextPath() + "/ocsn/index.do");

                break;
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
