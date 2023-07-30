/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DB.CarFacade;
import DB.OrderFacade;
import DB.PostFacade;
import Models.Car;
import Models.Image;
import Models.Post;
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
import java.io.File;
import java.util.List;

/**
 *
 * @author Dell
 */
@WebServlet(name = "PostController", urlPatterns = {"/post"})
public class PostController extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String controller = (String) request.getAttribute("controller");
        String action = (String) request.getAttribute("action");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        if (user == null) {
            request.setAttribute("controller", "login");
            request.setAttribute("action", "login");
            request.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(request, response);
            return;
        }
        switch (action) {
            case "delete":
                try {
                String carId = request.getParameter("carId").trim();
                if (carId != null && !carId.isEmpty() && carId.matches("^\\d+$")) {
                    PostFacade pf = new PostFacade();
                    int id = Integer.parseInt(carId);
                    Post post = pf.checkCarId(id);
                    if (post != null && (user.getUserRole() != 0 || (user.getUserID() == post.getUserId() && user.getPlanId() != 0))) {
                        OrderFacade of = new OrderFacade();
                        of.deleteByPost(post.getPostId());
                        pf.deletePost(post.getPostId());

                    }

                    CarFacade cf = new CarFacade();
                    Car car = cf.getDetails(id);
                    if (car != null) {
                        List<Image> list = car.getImage();
                        if (list != null && list.size() > 0) {
                            for (Image img : list) {
                                File file = new File(Common.getAbsolutePath(request, response, img.getUrl()));
                                if (file.exists()) {
                                    if (file.delete()) {
                                        cf.deleteCarImage(img.getId());
                                    } else {
                                        break;
                                    }
                                }
                            }
                        }
                        cf.deleteCar(id);
                    }
                }
            } catch (Exception e) {
                request.setAttribute("error", e.toString());
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                return;
            }
            response.sendRedirect(request.getContextPath() + "/cars/carlist.do");
            break;
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
        processRequest(request, response);
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
        processRequest(request, response);
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
