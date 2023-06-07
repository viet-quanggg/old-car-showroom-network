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
                //count user in the system
                int countUser = apf.countUser();
                //count completed order
                int countComplete = apf.countCompleteOrders();
                //count the user account that was created yesterday
                int countUserYesterday = apf.countUserYesterday();
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
                double completeSale = apf.countCompleteSaleSalary();
                //List all the order
                List<OrderList> order = apf.listallOrder();
                //List all the order that is created this week
                List<OrderList> weekorder = apf.listOrderThisWeek();
                //
                request.setAttribute("percent", percent);
                request.setAttribute("orderList", order);
                request.setAttribute("countComplete", countComplete);
                request.setAttribute("countUser", countUser);
                request.setAttribute("completeSale", completeSale);
                request.setAttribute("userYesterday", countUserYesterday);
                request.setAttribute("weekOrder", weekorder);
                request.getRequestDispatcher("/WEB-INF/layouts/dashboard.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;
            case "setting":
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;
            case "table":
                List<User> staffList = apf.listallStaff();
                request.setAttribute("staffList", staffList);
                request.getRequestDispatcher("/WEB-INF/views/admin/table.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
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
