/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DB.CarFacade;
import Models.Car;
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
@WebServlet(name = "CarController", urlPatterns = {"/cars"})
public class CarController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
            String controller = (String) request.getAttribute("controller");
            String action = (String) request.getAttribute("action");

            switch (action) {
                case "carlist":
                    CarFacade fa = new CarFacade();
                    List<Car> list = fa.getCar(); // danh sach tat ca trong db

                    String xpage = request.getParameter("page"); // lay ve 1 tham so ten la page
                    String xnumberPerPage = request.getParameter("numberPerPage"); // lay ve 1 tham so chua so luong phan tu trong 1 trang

                    int page = (xpage == null) ? 1 : Integer.parseInt(xpage); // danh dau so trang hien tai
                    int numberPerPage = (xnumberPerPage == null) ? 8 : Integer.parseInt(xnumberPerPage);
                    int size = list.size();

                    int numberOfPage = ((size % numberPerPage == 0) ? (size / numberPerPage) : (size / numberPerPage + 1));

                    int start = (page - 1) * numberPerPage;
                    int end = Math.min(page * numberPerPage, size);

                    List<Car> listByPage = fa.getListByPage(list, start, end);
                    request.setAttribute("listByPage", listByPage);
                    request.setAttribute("page", page);
                    request.setAttribute("numberOfPage", numberOfPage);
                    request.setAttribute("start", start + 1);
                    request.setAttribute("end", end);
                    request.setAttribute("numberPerPage", numberPerPage);
                    request.setAttribute("size", size);

                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                    break;
                case "cargrid":
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                    break;
                case "carsingle":
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                    break;
                case "comparecar":
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                    break;
                default:
                    //Show error page
                    request.setAttribute("controller", "error");
                    request.setAttribute("action", "error");
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
            }

//        request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CarController.class.getName()).log(Level.SEVERE, null, ex);
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
