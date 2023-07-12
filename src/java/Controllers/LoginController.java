/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DB.OrderFacade;
import DB.PlanFacade;
import DB.PostFacade;
import Models.User;
import DB.UserFacade;
import Models.Order;
import Utilities.Hashing;
import static Utilities.Hashing.hash;
import Models.Plan;
import Models.Post;
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
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.Random;
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
            case "resetpassword_handler":
                try {
                String op = request.getParameter("op");
                switch (op) {
                    case "reset":
                        String email = request.getParameter("uEmail");
                        UserFacade uf = new UserFacade();
                        User check = uf.checkEmail(email);
                        if (check != null) {
//                            try{
                            GmailController resetEmail = new GmailController();
                            resetEmail.sendMail("Reset Password",
                                    "Dear, \n"
                                    + "Click on this link to reset your account's password: \n"
                                    + "http://localhost:8080/OldCarShowroom/login/resetpassword.do?email=" + email + "\n"
                                    + "Best Regards, \n"
                                    + "OCSN",
                                    email);
                            String message = "Reset link sent! Please check your inbox to reset password.";
                            request.setAttribute("message", message);
                            request.getRequestDispatcher("/WEB-INF/views/login/forgotpassword.jsp").forward(request, response); //Hien trang thong bao loi
//                            }catch(Exception ex){
//                                ex.printStackTrace();
//                            }
                        } else {
                            String error = "The account is not exist! Please register a new account.";
                            request.setAttribute("error", error);
                            request.getRequestDispatcher("/WEB-INF/views/login/forgotpassword.jsp").forward(request, response); //Hien trang thong bao loi

                        }
                        break;

                }

            } catch (Exception ex) {

            }
            break;
            case "resetpassword":
                String uEmail = request.getParameter("email");
                request.setAttribute("uEmail", uEmail);
                request.getRequestDispatcher("/WEB-INF/views/login/resetpassword.jsp").forward(request, response); //Hien trang thong bao loi
                break;
            case "resetpassword_process":
                String email = request.getParameter("email");
                String uPass = request.getParameter("uPass");
                String re_uPass = request.getParameter("re_uPass");
                try {
                    String op = request.getParameter("op");
                    switch (op) {
                        case "save":
                            try {
                            if (!uPass.isEmpty() && uPass.matches(re_uPass)) {
                                UserFacade uf = new UserFacade();
                                String hashedpass = hash(uPass);
                                uf.resetPassword(hashedpass, email);
                                String message = "The password has been reset! Sign in to continue";
                                request.setAttribute("message1", message);
//                                response.sendRedirect(request.getContextPath() + "/login/login.do");
                                request.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(request, response); //Hien trang thong bao loi
                            } else {
                                String announce = "The password is not match. Please try again!";
                                request.setAttribute("announce", announce);
                            }
                            break;
                        } catch (Exception e) {

                        }
                    }
                    request.getRequestDispatcher("/WEB-INF/views/login/resetpassword.jsp").forward(request, response); //Hien trang thong bao loi
                } catch (Exception ex) {

                }
                break;
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
                User user = (User) session.getAttribute("User");
                if (user == null) {
                    request.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(request, response);
                    return;
                }
                if (user.getPlanId() != 0) {
                    PlanFacade pf = new PlanFacade();
                    Plan plan = pf.getUserPlan(user);
                    request.setAttribute("UserPlan", pf.getUserPlan(user));
                    if (plan != null) {
                        Calendar calendar = Calendar.getInstance();
                        calendar.setTime(user.getPlanStart());
                        calendar.add(Calendar.MONTH, plan.getPlanTime());
                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                        request.setAttribute("ExpDate", sdf.format((Date) calendar.getTime()));
                    }
                }
//                PostFacade pf = new PostFacade();
//                List<Post> pl = pf.listByUser(user.getUserID());
//                request.setAttribute("Post", pl);
//                OrderFacade of = new OrderFacade();
//                List<Order> ol = of.listUserOrders(user.getUserID());
//                  request.setAttribute("Order", ol);
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
        HttpSession session = request.getSession();

        switch (op) {
            case "login":
                try {
                String useremail = request.getParameter("userEmail");
                String userpass = request.getParameter("userPass");
                request.setAttribute("userEmail", useremail);
                String hashedpass = hash(userpass);
                //    String remember = request.getParameter("remember");
                UserFacade uf = new UserFacade();
                User user = uf.login(useremail, hashedpass);
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
                    session.setAttribute("User", user);
                    PlanFacade pf = new PlanFacade();
                    Plan plan = pf.getUserPlan(user);
                    session.setAttribute("UserPlan", plan);
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
                    requestDispatcher.forward(request, response);

                } else {
                    request.setAttribute("errorLogin", "Email or password is wrong, please enter again!");
                    request.getRequestDispatcher("/login/login.do").forward(request, response);
                }
            } catch (Exception ex) {
                //Cho hien lai login form
                request.setAttribute("error", ex.toString());
                request.getRequestDispatcher("/login/login.do").forward(request, response);
            }

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
                            String hashedpass = hash(userpass);
                            Date date = new Date();
                            User newUser = uf.register(useremail, hashedpass, username, userphone, useraddress, date);
                            HttpSession session = request.getSession();
                            session.setAttribute("User", newUser);
                            request.setAttribute("message", "Sign up success, please login to continue.");
                            new GmailController().sendMail("A new message", """
                                                    Dear  """ + newUser.getUserName() + """                                                              
                                                      
                                                        Your account has been successfully created,please login to continue
                                                        http://localhost:8080/OldCarShowroom/login/login.do
                                                        Thanks for using our service!
                                                        
                                                    Best regards,
                                                    OCSN
                                                        """, newUser.getUserEmail());

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
            switch (op) {
                case "forgetpass":
                    try {
//                    String useremail = request.getParameter("userEmail");
//                    user = uf.checkEmail(useremail);
//                    if (user != null) {
//                        RequestDispatcher dispatcher = null;
//                        int otpvalue = 0;
//                        HttpSession mySession = request.getSession();
//
//                        if (useremail != null || !useremail.equals("")) {
//                            // sending otp
//                            Random rand = new Random();
//                            otpvalue = rand.nextInt(1255650);
//
//                            String to = useremail;// change accordingly
//                            // Get the session object
//                            Properties props = new Properties();
//                            props.put("mail.smtp.host", "smtp.gmail.com");
//                            props.put("mail.smtp.socketFactory.port", "465");
//                            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//                            props.put("mail.smtp.auth", "true");
//                            props.put("mail.smtp.port", "465");
//                            Session session = Session.getDefaultInstance(props, new jakarta.mail.Authenticator() {
//                                protected PasswordAuthentication getPasswordAuthentication() {
//                                    return new PasswordAuthentication("mphamtran8@gmail.com", "vtdoarnanxzhpaon");
//                                }
//                            });
//                            // compose message
//                            try {
//                                MimeMessage message = new MimeMessage(session);
//                                message.setFrom(new InternetAddress(useremail));// change accordingly
//                                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
//                                message.setSubject("Hello");
//                                message.setText("your OTP is: " + otpvalue);
//                                // send message
//                                Transport.send(message);
//                                System.out.println("message sent successfully");
//                            } catch (MessagingException e) {
//                                throw new RuntimeException(e);
//                            }
//                            dispatcher = request.getRequestDispatcher("EnterOtp.jsp");
//                            request.setAttribute("message", "OTP is sent to your email id");
//                            //request.setAttribute("connection", con);
//                            mySession.setAttribute("otp", otpvalue);
//                            mySession.setAttribute("userEmail", useremail);
//                            dispatcher.forward(request, response);
//                            //request.setAttribute("status", "success");
//                        }
//
//                    }
                } catch (Exception e) {
                    request.setAttribute("message1", e.toString());
                    request.getRequestDispatcher("/user/forgetpass.do").forward(request, response);

                }
                break;
                case "changepassword":
                    try {
                    HttpSession session = request.getSession();
                    user = (User) session.getAttribute("User1");
                    String userpass = request.getParameter("userPass");
                    String re_pass = request.getParameter("re_pass");
                    if (!userpass.equals(re_pass)) {
                        session.setAttribute("User1", user);
                        request.setAttribute("message2", user.getUserName());
                        request.setAttribute("message1", "The password is not matched!!");
                        request.getRequestDispatcher("/user/forgetpass.do").forward(request, response);
                    } else {
                        user = uf.changepassword(userpass, user.getUserEmail());
                        request.setAttribute("message", "Password changed successfully! Please login again!!");
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
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
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
