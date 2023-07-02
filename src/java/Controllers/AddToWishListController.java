/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DB.CarFacade;
import Models.Car;
import Models.wishlist.Wishlist;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phanh
 */
@WebServlet(name="AddToWishController", urlPatterns={"/addToWish"})
public class AddToWishListController extends HttpServlet {


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
        Cookie arr[] = request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie item : arr) {
                if (item.getName().equals("wish")) {
                    txt += item.getValue();
                    item.setMaxAge(0);
                    response.addCookie(item);
                }
            }
        }

        CarFacade cf = new CarFacade();
        List<Car> data = new ArrayList<>();
        try {
            data = cf.getCar();
        } catch (SQLException ex) {
            Logger.getLogger(AddToWishListController.class.getName()).log(Level.SEVERE, null, ex);
        }

        String xId = request.getParameter("id");

        Wishlist wish = new Wishlist(txt, data);
        boolean check = wish.checkExist(xId);

        if (!check) {
            if (txt.isEmpty()) {
                txt += xId + "";
            } else {
                txt += "-" + xId;
            }
        }

        Cookie c = new Cookie("wish", txt);
        c.setPath(request.getContextPath());
        c.setMaxAge(24 * 60 * 60);
        response.addCookie(c);

        request.setAttribute("data", wish);
        
        response.sendRedirect(request.getContextPath() +"/order/favorite.do");
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
