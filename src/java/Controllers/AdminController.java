/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DB.AdminPageFacade;
import DB.OrderFacade;
import DB.PlanFacade;
import DB.UserFacade;
import Models.OrderList;
import Models.Plan;
import Models.PricingPlan;
import Models.User;
import static Utilities.Hashing.hash;
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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.apache.jasper.tagplugins.jstl.core.Catch;

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
            throws ServletException, IOException, SQLException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        String controller = (String) request.getAttribute("controller");
        String action = (String) request.getAttribute("action");
        AdminPageFacade apf = new AdminPageFacade();
        OrderFacade of = new OrderFacade();
        UserFacade uf = new UserFacade();
        User user = null;
        switch (action) {
            case "userlist":
                ArrayList<User> userl = uf.userList();
                for (int i = 0; i < userl.size(); i++) {
                    if (userl.get(i).getUserEmail().contains("?")) {
                        userl.remove(i);
                        i--;
                    }
                }
                request.setAttribute("UserL", userl);
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                break;
            case "searchuser":
                String searchQuery = request.getParameter("search").trim();

                if (searchQuery == null || searchQuery.isEmpty()) {
                    response.sendRedirect(request.getContextPath() + "/admin/userlist.do");
//                    ArrayList<User> listuser = uf.userList();
//                    request.setAttribute("UserL", listuser);
                } else {
                    // Perform search logic and retrieve matching orders from the database
                    ArrayList<User> search = uf.SearchUser(searchQuery);
                    if (search.size() > 0) {
                        for (int i = 0; i < search.size(); i++) {
                            if (search.get(i).getUserEmail().contains("?")) {
                                search.remove(i);
                                i--;
                            }
                        }
                    }
                    request.setAttribute("UserL", search);
                }
                request.setAttribute("action", "userlist");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                break;
//Hien trang thong bao loi               
            //
            case "edit":
                String xID = request.getParameter("userID");

                int id = 0;
                try {
                    id = Integer.parseInt(xID);
                } catch (NumberFormatException e) {
                    System.err.println("Parse User ID !" + e);
                }

                user = uf.getUser(id);
                request.setAttribute("userData", user);
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                break;
            case "edit_handler":
                int userid = Integer.parseInt(request.getParameter("userId"));
                String username = request.getParameter("userName");
                String userphone = request.getParameter("userPhone");
                String useraddress = request.getParameter("userAddress");
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

                if (username.isEmpty() || userphone.isEmpty() || useraddress.isEmpty()) {
                    request.getRequestDispatcher("/admin/edit.do?userID=" + userid).forward(request, response);
                } else {
                    user = uf.getUser(userid);
                    user.setUserName(username);
                    user.setUserPhone(userphone);
                    user.setUserAddress(useraddress);
                    uf.update(user);
                    request.setAttribute("messageEU", "The update is a success.");
                    request.getRequestDispatcher("/admin/userlist.do").forward(request, response);

                }
                break;
            case "view":
                String vID = request.getParameter("userID");

                int view = 0;
                try {
                    view = Integer.parseInt(vID);
                } catch (NumberFormatException e) {
                    System.err.println("Parse User ID !" + e);
                }

                user = uf.getUser(view);
                PlanFacade pf = new PlanFacade();
                Plan plan = pf.getUserPlan(user);
                if (plan != null) {
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(user.getPlanStart());
                    calendar.add(Calendar.MONTH, plan.getPlanTime());
                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    request.setAttribute("ExpDate",sdf.format((Date) calendar.getTime()));
                }
                request.setAttribute("userData", user);
                request.setAttribute("UserPlan", plan);
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);

                break;
            case "delete":
                int deleteid = Integer.parseInt(request.getParameter("userID"));
                user = uf.getUser(deleteid);
                user.setUserEmail(user.getUserEmail().replace("@", "?"));
                uf.update(user);
                request.getRequestDispatcher("/admin/userlist.do").forward(request, response);
                break;
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
                List<PricingPlan> planList = of.listAllPlan();
                request.setAttribute("planList", planList);
                request.setAttribute("staffList", staffList);
                request.getRequestDispatcher("/WEB-INF/views/admin/table.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
            } catch (Exception e) {
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
            }
            break;
            case "create":
                try {
                List<User> staffList = apf.listallStaff();
                request.setAttribute("staffList", staffList);
                request.getRequestDispatcher("/WEB-INF/views/admin/create.jsp").forward(request, response); //Hien trang thong bao loi
            } catch (Exception e) {
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
            }
            break;
            case "createplan":
                try {
                List<PricingPlan> planList = of.listAllPlan();
                request.setAttribute("planList", planList);
                request.getRequestDispatcher("/WEB-INF/views/admin/createplan.jsp").forward(request, response); //Hien trang thong bao loi
            } catch (Exception e) {
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
            }
            break;

            case "register_handler":
                register_handler(request, response);

                break;
            case "delete_handler":
                try {
                String userId = request.getParameter("id");
//                UserFacade uf = new UserFacade();
                uf.deleteUser(userId);
                response.sendRedirect(request.getContextPath() + "/admin/create.do");
                break;

            } catch (Exception ex) {

            }
            break;
            case "delete_plan":
                try {
                String planId = request.getParameter("pid");
//                UserFacade uf = new UserFacade();
                of.deletePlan(planId);
                response.sendRedirect(request.getContextPath() + "/admin/table.do");
                break;

            } catch (Exception ex) {

            }
            break;
            case "updateplan":
                try {
                String planId = request.getParameter("pid");
                List<PricingPlan> uPlan = of.listPlanId(planId);
                request.setAttribute("uPlan", uPlan);
                request.getRequestDispatcher("/WEB-INF/views/admin/updateplan.jsp").forward(request, response); //Hien trang thong bao loi
            } catch (Exception ex) {

            }
            break;
            case "updatestaff":
                try {
                String userId = request.getParameter("uid");
                List<User> uUser = uf.userListId(userId);
                request.setAttribute("uUser", uUser);
                request.getRequestDispatcher("/WEB-INF/views/admin/updatestaff.jsp").forward(request, response); //Hien trang thong bao loi
            } catch (Exception ex) {

            }
            break;
            case "update_handler":
                update_handler(request, response);
                break;
            case "update_plan":
                update_plan(request, response);
                break;
            case "create_plan":
                create_plan(request, response);
                break;
            default:
                //Show error page
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);

        }
    }

    private void create_plan(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String op = request.getParameter("op");
        switch (op) {
            case "create":
            try {
                String pName = request.getParameter("pName");
                int pTime = Integer.parseInt(request.getParameter("pTime"));
                int pLimit = Integer.parseInt(request.getParameter("pLimit"));
                String pStatus = null;
                String temp = request.getParameter("pStatus");
                switch (temp) {
                    case "active":
                        pStatus = "Active";
                        break;
                    case "deactivate":
                        pStatus = "Deactivate";
                        break;
                    default:
                        break;
                }
                double pPrice = Double.parseDouble(request.getParameter("pPrice"));
                if (pName.isEmpty() || pName == null) {
                    request.setAttribute("errorN", "please fill in the Plan Name");
                    //  request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (pTime < 0) {
                    request.setAttribute("errorT", "The Plan Duration must greater than 0!");
                    // request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (pLimit < 0) {
                    request.setAttribute("errorL", "The Limit Post must greater than 0!");
                    //  request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (pStatus.isEmpty() || pStatus == null) {
                    request.setAttribute("errorS", "The Status of the plan can not be empty");
                    //    request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (pPrice < 0) {
                    request.setAttribute("errorP", "The Plan Price must greater than 0!");
                }
                if (pName.isEmpty() || pName == null || pTime < 0 || pLimit < 0 || pStatus.isEmpty() || pStatus == null || pPrice < 0) {
                    request.getRequestDispatcher("/admin/createplan.do").forward(request, response);

                } else {
                    PricingPlan newPlan = new PricingPlan(pName, pTime, pLimit, pStatus, pPrice);
                    OrderFacade of = new OrderFacade();
                    of.addPlan(newPlan);
                    request.setAttribute("message", "Create Successfully!");
                    request.getRequestDispatcher("/admin/createplan.do").forward(request, response);
                }
            } catch (Exception e) {
                request.setAttribute("error", e.toString());
                request.getRequestDispatcher("/admin/createplan.do").forward(request, response);
            }
            break;

        }

    }

    private void update_plan(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String op = request.getParameter("op");
        switch (op) {
            case "update":
            try {
                AdminPageFacade apf = new AdminPageFacade();
                int id = Integer.parseInt(request.getParameter("pId"));
                String pName = request.getParameter("pName");
                int pTime = Integer.parseInt(request.getParameter("pTime"));
                int pLimit = Integer.parseInt(request.getParameter("pLimit"));
                String pStatus = null;
                String temp = request.getParameter("pStatus");
                switch (temp) {
                    case "active":
                        pStatus = "Active";
                        break;
                    case "deactivate":
                        pStatus = "Deactivate";
                        break;
                    default:
                        break;
                }
                double pPrice = Double.parseDouble(request.getParameter("pPrice"));
                if (pName.isEmpty()) {
                    request.setAttribute("errorN", "please fill in the Plan Name");
                    //  request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (pTime < 0) {
                    request.setAttribute("errorT", "The Plan Duration must greater than 0!");
                    // request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (pLimit < 0) {
                    request.setAttribute("errorL", "The Limit Post must greater than 0!");
                    //  request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (pStatus.isEmpty()) {
                    request.setAttribute("errorS", "The Status of the plan can not be empty");
                    //    request.getRequestDispatcher("/login/register.do").forward(request, response);
                }
                if (pPrice < 0) {
                    request.setAttribute("errorP", "The Plan Price must greater than 0!");
                }
                if (pName.isEmpty() || pTime < 0 || pLimit < 0 || pStatus.isEmpty() || pPrice < 0) {
                    request.getRequestDispatcher("/admin/updateplan.do").forward(request, response);

                } else {
                    PricingPlan uPlan = new PricingPlan(pName, pTime, pLimit, pStatus, pPrice, id);
                    apf.updatePlan(uPlan);
                    request.setAttribute("message", "Update Successfully!");
                    request.getRequestDispatcher("/admin/updateplan.do").forward(request, response);
                }
            } catch (Exception e) {
                request.setAttribute("error", e.toString());
                request.getRequestDispatcher("/admin/updateplan.do").forward(request, response);
            }
            break;

        }

    }

    private void update_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String op = request.getParameter("op");
        switch (op) {
            case "update":
                try {
//            boolean check = false;
                int id = Integer.parseInt(request.getParameter("uid"));
                String useremail = request.getParameter("userEmail");
                String userpass = request.getParameter("userPass");
                String re_pass = request.getParameter("re_pass");
                String hashedpass = hash(userpass);
                String username = request.getParameter("userName");
                String userphone = request.getParameter("userPhone");
                String useraddress = request.getParameter("userAddress");
                User uUser = new User(useremail, hashedpass, username, userphone, useraddress, id);
                UserFacade uf = new UserFacade();
//                uUser = uf.checkEmail(useremail);
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
                    request.getRequestDispatcher("/admin/updatestaff.do").forward(request, response);

                } else {

                    if (!userpass.equals(re_pass)) {
                        request.setAttribute("errorR", "Password and Re-password doest not match!");
                        request.getRequestDispatcher("/admin/updatestaff.do").forward(request, response);

                    } else {
                        uf.update(uUser);
                        request.setAttribute("message", "Update Successfully!");
                        request.getRequestDispatcher("/admin/updatestaff.do").forward(request, response);
                    }
                }

            } catch (Exception e) {
                request.setAttribute("error", e.toString());
                request.getRequestDispatcher("/admin/updatestaff.do").forward(request, response);
            }
            break;

        }
    }

    private void register_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String op = request.getParameter("op");
        switch (op) {
            case "create":
                try {
//            boolean check = false;
                String useremail = request.getParameter("userEmail");
                String userpass = request.getParameter("userPass");
                String re_pass = request.getParameter("re_pass");
                String username = request.getParameter("userName");
                String userphone = request.getParameter("userPhone");
                String useraddress = request.getParameter("userAddress");
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
                    request.getRequestDispatcher("/admin/create.do").forward(request, response);

                } else {
                    if (user != null) {
//                    check = true;
                        request.setAttribute("errorE", "Email already exist!");
                        request.getRequestDispatcher("/admin/create.do").forward(request, response);
                    } else {
                        if (!userpass.equals(re_pass)) {
                            request.setAttribute("errorR", "Password and Re-password doest not match!");
                            request.getRequestDispatcher("/admin/create.do").forward(request, response);

                        } else {
                            Date date = new Date();
                            User newUser = uf.registerStaff(useremail, userpass, username, userphone, useraddress, date);
//                            HttpSession session = request.getSession();
//                            session.setAttribute("User", newUser);
                            request.setAttribute("message", "Create Successfully!");
                            request.getRequestDispatcher("/admin/create.do").forward(request, response);
                        }
                    }
                }
            } catch (Exception e) {
                request.setAttribute("error", e.toString());
                request.getRequestDispatcher("/admin/create.do").forward(request, response);
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
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
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
        } catch (ParseException ex) {
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
