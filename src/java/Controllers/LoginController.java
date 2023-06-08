/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import Models.User;
import DB.UserFacade;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author _viet.quangg
 */
@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

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
        HttpSession session = request.getSession();
        String controller = (String) request.getAttribute("controller");
        String action = (String) request.getAttribute("action");
        switch (action) {
            case "login":
                //Hien login form
                //Forward request & response to the main layout
                request.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(request, response); //Hien trang thong bao loi
                break;
            case "login_handler":
                //Xu ly login form
                login_handler(request, response);
                //Forward request & response to the main layout
                //request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                break;
            case "register": {
                request.getRequestDispatcher("/WEB-INF/views/login/register.jsp").forward(request, response); //Hien trang thong bao loi
                break;
            }
            case "register_handler": {
                register_handler(request, response);
                break;
            }
            case "forgotpassword": {
                request.getRequestDispatcher("/WEB-INF/views/login/forgotpassword.jsp").forward(request, response); //Hien trang thong bao loi
                break;
            }
            case "forgotpassword_handler": {
                forgotpassword_handler(request, response);
                break;
            }
            case "logout": {
                logout(request, response);
                break;
            }
            case "profile":
                session = request.getSession();
                if (session.getAttribute("User") == null) {
                    request.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(request, response);
                    return;
                }
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); 
                //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;
            case "update_profile":
                session = request.getSession();
                if (session.getAttribute("User") == null) {
                    request.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(request, response);
                    return;
                }
                request.setAttribute("action", "updateprofile");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;

            case "privacy":
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;
            default:
                //Show error page
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);

        }
    }

    protected void login_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");
        switch (op) {
            case "login":
                doPost(request, response);
                break;
            case "cancel":
                //quay ve home page
                response.sendRedirect(request.getContextPath() + "/ocsn/index.do");
                break;
        }
    }

    private void register_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String op = request.getParameter("op");
        switch (op) {
            case "register":
                try {
//            boolean check = false;
                String useremail = request.getParameter("userEmail");
                String userpass = request.getParameter("userPass");
                String re_pass = request.getParameter("re_pass");
                String username = request.getParameter("userName");
                String userphone = request.getParameter("userPhone");
                String useraddress = request.getParameter("userAddress");
                String agree = request.getParameter("termsAndPrivacy");
                UserFacade uf = new UserFacade();
                User user = uf.checkEmail(useremail);
                request.setAttribute("userEmail", useremail);
                request.setAttribute("userName", username);
                request.setAttribute("userPhone", userphone);
                request.setAttribute("userAddress", useraddress);

                if (useremail.isEmpty()) {
                    request.setAttribute("errorE", "please fill in  your Email!");
                    //  request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (userpass.isEmpty()) {
                    request.setAttribute("errorPa", "please  fill in your Password!");
                    // request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (re_pass.isEmpty()) {
                    request.setAttribute("errorR", "please repeat your password!");
                    // request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (username.isEmpty()) {
                    request.setAttribute("errorN", "please fill in your User name!");
                    //  request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (userphone.isEmpty()) {
                    request.setAttribute("errorPh", "please fill in your phone!");
                    //    request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (useraddress.isEmpty()) {
                    request.setAttribute("errorA", "please fill in your address!");
                    //  request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (useremail.isEmpty() || userpass.isEmpty() || re_pass.isEmpty() || username.isEmpty() || userphone.isEmpty() || useraddress.isEmpty()) {
                    request.getRequestDispatcher("/login/register.do").forward(request, response);

                } else {
                    if (user != null) {
//                    check = true;
                        request.setAttribute("errorE", "Email already exist!");
                        request.getRequestDispatcher("/login/register.do").forward(request, response);
                    } else {
                        if (!userpass.equals(re_pass)) {
                            request.setAttribute("errorR", "Password and Re-password doest not match!");
                            request.getRequestDispatcher("/login/register.do").forward(request, response);

                        } else if (agree == null || !agree.equals("agree")) {
                            request.setAttribute("errorT", "Agree to Terms and Privacy Policy to continue!");
                            request.getRequestDispatcher("/login/register.do").forward(request, response);

                        } else {
                            Date date = new Date();
                            User newUser = uf.register(useremail, userpass, username, userphone, useraddress, date);
                            HttpSession session = request.getSession();
                            session.setAttribute("User", newUser);
                            request.setAttribute("message", "Sign up success, please login to continue.");
                            request.getRequestDispatcher("/login/login.do").forward(request, response);
                        }
                    }
                }
            } catch (Exception e) {
                request.setAttribute("error", e.toString());
                request.getRequestDispatcher("/login/register.do").forward(request, response);
            }
            break;

        }
    }

    protected void logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Xoa session
        HttpSession session = request.getSession();
        session.invalidate();
        //Quay ve home page
        response.sendRedirect(request.getContextPath() + "/ocsn/index.do");
    }

    private void forgotpassword_handler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String op = request.getParameter("op");
            UserFacade uf = new UserFacade();
            User user = new User();
            HttpSession session = request.getSession();
            switch (op) {
                case "forgetpass":
                    try {
                    String email = request.getParameter("email");
                    String phone = request.getParameter("userPhone");
                    //    user = uf.forgotpass(email, phone);
                    if (user != null) {
                        session.setAttribute("User1", user);
                        request.setAttribute("message2", user.getUserName());
                        request.getRequestDispatcher("/user/forgetpass.do").forward(request, response);
                    } else {
                        //Cho hien lai login form
                        request.setAttribute("message1", "Email hoặc số điện thoại không trùng khớp! Vui lòng thử lại!");
                        request.getRequestDispatcher("/user/forgetpass.do").forward(request, response);
                    }
                } catch (Exception e) {
                    request.setAttribute("message1", e.toString());
                    request.getRequestDispatcher("/user/forgetpass.do").forward(request, response);

                }
                break;
                case "changepassword":
                    try {
                    user = (User) session.getAttribute("User1");
                    String userpass = request.getParameter("userPass");
                    String re_pass = request.getParameter("re_pass");
                    if (!userpass.equals(re_pass)) {
                        session.setAttribute("User1", user);
                        request.setAttribute("message2", user.getUserName());
                        request.setAttribute("message1", "Mật khẩu không trùng khớp!");
                        request.getRequestDispatcher("/user/forgetpass.do").forward(request, response);
                    } else {
                        user = uf.changepassword(userpass, user.getUserEmail());
                        request.setAttribute("message", "Đổi mật khẩu thành công!vui lòng đăng nhập lại");
                        request.getRequestDispatcher("/user/login.do").forward(request, response);
                    }
                } catch (Exception e) {
                }
                break;
            }
        } catch (Exception e) {
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
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
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
            String useremail = request.getParameter("userEmail");
            String userpass = request.getParameter("userPass");
            request.setAttribute("userEmail", useremail);

            //    String remember = request.getParameter("remember");
            UserFacade uf = new UserFacade();
            User user = uf.login(useremail, userpass);
            // String remember = request.getParameter("remember");
            if (user != null) {
                //Neu login thanh cong:
                //Luu user vao session
                if (request.getParameter("remember") != null && request.getParameter("remember").equals("on")) {
                    String remember = request.getParameter("remember");
                    System.out.println("remember : " + remember);
                    Cookie cUserName = new Cookie("cookuser", useremail.trim());
                    Cookie cPassword = new Cookie("cookpass", userpass.trim());
                    Cookie cRemember = new Cookie("cookrem", remember.trim());
                    cUserName.setMaxAge(60 * 60 * 24 * 15);// 15 days
                    cPassword.setMaxAge(60 * 60 * 24 * 15);
                    cRemember.setMaxAge(60 * 60 * 24 * 15);
                    response.addCookie(cUserName);
                    response.addCookie(cPassword);
                    response.addCookie(cRemember);

                }
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("User", user);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
                requestDispatcher.forward(request, response);

            } else {
                //Cho hien lai login form
                request.setAttribute("error", "Email or password is wrong, please enter again!");
                request.getRequestDispatcher("/login/login.do").forward(request, response);
            }
        } //   if (!check.isEmpty()) {}
        catch (Exception ex) {
            //Cho hien lai login form
            request.setAttribute("error", ex.toString());
            request.getRequestDispatcher("/login/login.do").forward(request, response);
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
