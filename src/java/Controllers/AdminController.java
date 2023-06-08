/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DB.AdminPageFacade;
import DB.UserFacade;
import Models.OrderList;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author _viet.quangg
 */
@WebServlet(name = "AdminController", urlPatterns = {"/admin"})
public class AdminController extends HttpServlet {

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
        AdminPageFacade apf = new AdminPageFacade();
        User user = null;
        switch (action) {
            case "dashboard":
                try {
                //count user in the system
                int countUser = apf.countUser();
                //count completed order
                int countComplete = apf.countCompleteOrders();
                //count the user account that was created last month
                int countUserlastMonth = apf.countUserlastMonth();
                //count the user account that was created this month
                int countUserthisMonth = apf.countUserthisMonth();
                //count the account this month
                int countAccthisMonth = apf.countAccthisMonth();
                //count the account last month
                int countAcclastMonth = apf.countAcclastMonth();
                //calculate the percent of orders
                int a = apf.countOrderThisMonth();
                int b = apf.countOrderLastMonth();
                int percent;
                if (b == 0) {
                    percent = a == 0 ? 0 : 100;
                } else if (b >= a) {
                    percent = (int) (((float) (b - a) / b) * 100);
                } else {
                    percent = (int) (((float) (a - b) / b) * 100);
                }
                /////////////////////////////////////////////////////
                //calculate the percent of users
                int c = countUserthisMonth;
                int d = countUserlastMonth;
                int percent1;
                if (d == 0) {
                    percent1 = c == 0 ? 0 : 100;
                } else if (d >= c) {
                    percent1 = (int) (((float) (d - c) / d) * 100);
                } else {
                    percent1 = (int) (((float) (c - d) / d) * 100);
                }
//                /////////////////////////////////////////////////////
                int e = apf.countAccthisMonth();
                int f = apf.countAcclastMonth();
                int percent2;
                if (f == 0) {
                    percent2 = e == 0 ? 0 : 100;
                } else if (f >= e) {
                    percent2 = (int) (((float) (f - e) / f) * 100);
                } else {
                    percent2 = (int) (((float) (e - f) / f) * 100);
                }
                ////////////////////////////////////////////////////////
                double completeSale = apf.countCompleteSaleSalary();
                double completeSalelastMonth = apf.countCompleteSaleSalarylastMonth();
                double g = completeSale;
                double h = completeSalelastMonth;
                int percent3 = 0;
                if (h == 0) {
                    percent3 = g == 0 ? 0 : 100;
                } else if (h >= g) {
                    percent3 = (int) (((float) (h - g) / h) * 100);
                } else {
                    percent3 = (int) (((float) (g - h) / h) * 100);
                }
                //List all the order
                List<OrderList> order = apf.listallOrder();
                //List all the order that is created this week
                List<OrderList> weekorder = apf.listOrderThisWeek();
                //
                request.setAttribute("percent", percent);
                request.setAttribute("percent1", percent1);
                request.setAttribute("percent2", percent2);
                request.setAttribute("percent3", percent3);
                request.setAttribute("orderList", order);
                request.setAttribute("countComplete", countComplete);
                request.setAttribute("completeSale", completeSale);
                request.setAttribute("completeSalelastMonth", completeSalelastMonth);
                request.setAttribute("countUser", countUser);
                request.setAttribute("completeSale", completeSale);
                request.setAttribute("userlastMonth", countUserlastMonth);
                request.setAttribute("userthisMonth", countUserthisMonth);
                request.setAttribute("acclastMonth", countAcclastMonth);
                request.setAttribute("accthisMonth", countAccthisMonth);
                request.setAttribute("weekOrder", weekorder);
                request.getRequestDispatcher("/WEB-INF/layouts/dashboard.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
            } catch (Exception e) {
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
            }
            break;
            case "setting":
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;
            case "table":
                try {
                List<User> staffList = apf.listallStaff();
                request.setAttribute("staffList", staffList);
                request.getRequestDispatcher("/WEB-INF/views/admin/table.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
            } catch (Exception e) {
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
            }
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
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
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
