/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DB.UserFacade;
import Models.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

/**
 *
 * @author _viet.quangg
 */
@WebServlet(name = "UserController", urlPatterns = {"/user"})
public class UserController extends HttpServlet {

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
        switch (action) {
            case "dashboard":
                request.getRequestDispatcher("/WEB-INF/layouts/dashboard.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;
            case "setting":
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;
            case "update":
                updateUser_handler(request, response);
                break;
            case "change":
                changeUser_handler(request, response);
                break;
            default:
                //Show error page
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);

        }

    }

    protected void changeUser_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");
        HttpSession session = request.getSession();
        switch (op) {
            case "change":
                try {
//            boolean check = false;
//                String useremail = request.getParameter("userEmail");
//                String userpass = request.getParameter("userPass");

                String userpass = request.getParameter("userPass");
                String newpass = request.getParameter("newPass");
                String re_pass = request.getParameter("re_pass");
                UserFacade uf = new UserFacade();
                User user = (User) session.getAttribute("User");
                if (userpass.isEmpty()) {
                    request.setAttribute("ePa", "please  fill in your Password!");
                }

                if (newpass.isEmpty()) {
                    request.setAttribute("errorNP", "please fill in your new password!");
                }
                if (re_pass.isEmpty()) {
                    request.setAttribute("eR", "please repeat your password!");
                }
                if (userpass.isEmpty() || newpass.isEmpty() || re_pass.isEmpty()) {
                    request.getRequestDispatcher("/login/update_profile.do").forward(request, response);
                } else {
                    
                    if (!userpass.equals(user.getUserPass())) {
                        request.setAttribute("ePa", "The Password is incorrect!");
                        request.getRequestDispatcher("/login/register.do").forward(request, response);
                    }else if (userpass.equals(newpass)) {
                        request.setAttribute("errorNP", "The New Password is the same!");
                        request.getRequestDispatcher("/login/register.do").forward(request, response);
                    } else if (!newpass.equals(re_pass)) {
                        request.setAttribute("eR", "New Password and Re-password do not match!");
                        request.getRequestDispatcher("/login/register.do").forward(request, response);
                    } else {
                        
                        user.setUserPass(newpass);
                        uf.update(user);
                        session.setAttribute("User", user);
                        request.setAttribute("messageC", "The update is a success.");
                        request.getRequestDispatcher("/login/update_profile.do").forward(request, response);

                    }
                }
            } catch (Exception e) {
                request.setAttribute("error", e.toString());
                request.getRequestDispatcher("/login/update_profile.do").forward(request, response);
            }
            break;

        }
    }

    protected void updateUser_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");
        HttpSession session = request.getSession();
        switch (op) {
            case "update":
                try {
//            boolean check = false;
//                String useremail = request.getParameter("userEmail");
//                String userpass = request.getParameter("userPass");

                String username = request.getParameter("userName");
                String userphone = request.getParameter("userPhone");
                String useraddress = request.getParameter("userAddress");

                UserFacade uf = new UserFacade();

//                if (useremail.isEmpty()) {
//                    request.setAttribute("errorE", "please fill in  your Email!");
//                }
//                if (userpass.isEmpty()) {
//                    request.setAttribute("errorPa", "please  fill in your Password!");
//                }
                if (username.isEmpty()) {
                    request.setAttribute("errorN", "please fill in your User name!");
                }
                if (userphone.isEmpty()) {
                    request.setAttribute("errorPh", "please fill in your phone!");
                }
                if (useraddress.isEmpty()) {
                    request.setAttribute("errorA", "please fill in your address!");
                }
                if (/*useremail.isEmpty() || userpass.isEmpty() ||*/username.isEmpty() || userphone.isEmpty() || useraddress.isEmpty()) {
                    request.getRequestDispatcher("/login/update_profile.do").forward(request, response);
                } else {
                    User user = (User) session.getAttribute("User");
//                    user.setUserEmail(useremail);
//                    user.setUserPass(userpass);
                    user.setUserName(username);
                    user.setUserPhone(userphone);
                    user.setUserAddress(useraddress);
                    uf.update(user);

                    session.setAttribute("User", user);
                    request.setAttribute("messageU", "The update is a success.");
                    request.getRequestDispatcher("/login/update_profile.do").forward(request, response);

                }

            } catch (Exception e) {
                request.setAttribute("error", e.toString());
                request.getRequestDispatcher("/login/update_profile.do").forward(request, response);
            }
            break;
            case "cancel": {
                response.sendRedirect(request.getContextPath() + "/user/info.do");
                break;
            }

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
