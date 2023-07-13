/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DB.AdminPageFacade;
import DB.BlogFacade;
import DB.BrandFacade;
import DB.CarFacade;
import DB.OrderFacade;
import Models.Blog;
import Models.Brand;
import Models.PricingPlan;
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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author _viet.quangg
 */
@WebServlet(name = "OCSNController", urlPatterns = {"/ocsn"})
public class OCSNController extends HttpServlet {

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
        BlogFacade bf = new BlogFacade();
        OrderFacade of = new OrderFacade();
        List<Blog> blog = null;
        List<PricingPlan> plan = null;
        switch (action) {
            case "index":
                try {
                String bid = request.getParameter("bid");
                blog = bf.listBlogRandomly();
                request.setAttribute("blog", blog);
                Blog b = bf.listBlogId(bid);
                request.setAttribute("bid", b);
                plan = of.listPlanActive();
                CarFacade cf = new CarFacade();
                List<Brand> bli = cf.getAllBrand();
                request.setAttribute("blist", bli);
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
            } catch (Exception e) {
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
            }
            break;
            case "aboutus":
                AdminPageFacade apf = new AdminPageFacade();
                List<User> teamMember = apf.listteamMember();
                request.setAttribute("teamMember", teamMember);
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                break;
            case "contact":
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                break;
            case "vendor":
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                break;
            case "send":
           try {
                String name = request.getParameter("Cname");
                String email = request.getParameter("Cemail");
                String subject = request.getParameter("Csubject");
                String message = request.getParameter("Cmessage");
                try {
                    GmailController gc = new GmailController();
                    gc.sendMail(subject,
                            "sender email: " + email + "\n"
                            + "sender name: " + name + "\n"
                            + "subject: " + subject + "\n"
                            + "message:" + message, "oldcarshowroomnetwork@gmail.com");
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                String announce = "Send successfully! We will contact you as soon as possible!";
                request.setAttribute("message", announce);
                request.getRequestDispatcher("/ocsn/contact.do").forward(request, response); //Hien trang thong bao loi
            } catch (Exception e) {
                e.printStackTrace();
            }
            break;

            default:
                //Show error page
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);

        }
    }

    protected void sendFeedback(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ops = request.getParameter("op");
        switch (ops) {
            case "send":
                try {
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String subject = request.getParameter("subjet");
                String message = request.getParameter("message");
                GmailController gc = new GmailController();
                gc.sendMail(subject,
                        "sender email: " + email + "\n"
                        + "sender name: " + name + "\n"
                        + "subject: " + subject + "\n"
                        + "message:" + message, "oldcarshowroomnetwork@gmail.com");
                String announce = "Send successfully! We will contact you as soon as possible!";
                request.setAttribute("message", announce);
                request.getRequestDispatcher("/ocsn/contact.do").forward(request, response); //Hien trang thong bao loi
            } catch (Exception e) {
                e.printStackTrace();
            }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(OCSNController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(OCSNController.class.getName()).log(Level.SEVERE, null, ex);
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
