package Controllers;

import Common.Common;
import DB.CarFacade;
import DB.CarFacade;
import DB.OrderFacade;
import DB.OrderFacade;
import DB.PostFacade;
import DB.PostFacade;
import DB.UserFacade;
import Models.Brand;
import Models.Color;
import Models.Order;
import Models.OrderList;
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
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author _viet.quangg
 */
@WebServlet(name = "OrderController", urlPatterns = {"/order"})
public class OrderController extends HttpServlet {

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
        List<PricingPlan> plan = null;
        OrderFacade of = new OrderFacade();
        //int orderId = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        if (user == null) {
            request.setAttribute("controller", "login");
            request.setAttribute("action", "login");
            request.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(request, response);
            return;
        }
        switch (action) {
            case "createad":
                createad(request, response);
                //   request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;
            case "postedad":
//                User user = (User) session.getAttribute("User");
//                if (user == null) {
//                    request.setAttribute("controller", "login");
//                    request.setAttribute("action", "login.do");
//                }
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;
            case "pricingplan":
                plan = of.listPlan();
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;
            case "ordermanager":
//                OrderFacade orderFacade = new OrderFacade();
                List<OrderList> orders = of.getAllOrders();
                request.setAttribute("orders", orders);
                String op = request.getParameter("op");
                if (op == null) {
                    op = "";
                }
                //int orderId = Integer.parseInt(request.getParameter("orderId"));
                switch (op) {
//
//                    default:
//                        request.setAttribute("controller", "error");
//                        request.setAttribute("action", "error");
//                        request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
//                }
                    case "denied":
                        int orderId1 = Integer.parseInt(request.getParameter("orderId"));
                        of.updateOrderStatus(orderId1, "cancel");
                        response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                        break;
                    case "success":
                        int orderId2 = Integer.parseInt(request.getParameter("orderId"));
                        of.updateOrderStatus(orderId2, "success");
                        response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                        break;
                    case "pending":
                        int orderId3 = Integer.parseInt(request.getParameter("orderId"));
                        of.updateOrderStatus(orderId3, "pending");
                        response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                        break;
                    case "inprocess":
                        int orderId4 = Integer.parseInt(request.getParameter("orderId"));
                        of.updateOrderStatus(orderId4, "in process");
                        response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                        break;
                    case "delete":
                        int orderId5 = Integer.parseInt(request.getParameter("orderId"));
                        of.Delete(orderId5);
                        response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                        break;
                    default:
                        request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                        break;

                }
                // request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                break;
            case "create_handler":
                create_handler(request, response);
                break;
            case "delete":
                int orderId5 = Integer.parseInt(request.getParameter("id"));
                of.Delete(orderId5);
                response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                break;
            default:
                //Show error page
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
        }

    }

    public void createad(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CarFacade cf = new CarFacade();
        List<Color> clist = cf.getAllColor();
        List<Brand> blist = cf.getAllBrand();
        request.setAttribute("clist", clist);
        request.setAttribute("blist", blist);
        request.setAttribute("controller", "order");
        request.setAttribute("action", "createad");
        request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
    }

    private void create_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String op = request.getParameter("op");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        if (user != null) {
            switch (op) {
                case "createcar":
                try {
//            boolean check = false;

                    String title = request.getParameter("title");
                    String carname = request.getParameter("carname");
                    String carprice = request.getParameter("carprice");
                    String brandid = request.getParameter("brandid");
                    String colorid = request.getParameter("colorid");
                    String description = request.getParameter("description");
                    String otherin = request.getParameter("otherin");
                    String caryear = request.getParameter("caryear");
                    request.setAttribute("title", title);
                    request.setAttribute("carname", carname);
                    request.setAttribute("carprice", carprice);
                    request.setAttribute("caryear", caryear);
                    request.setAttribute("brandid", brandid);
                    request.setAttribute("colorid", colorid);
                    request.setAttribute("description", description);
                    request.setAttribute("otherin", otherin);
                    if (title.isEmpty()) {
                        request.setAttribute("errorVT", "Please add a title!");
                    }
                    if (carname.isEmpty()) {
                        request.setAttribute("errorVN", "Please enter a name for the car!");
                    }
                    if (carprice.isEmpty() || !carprice.matches("-?\\d+(\\.\\d+)?")) {
                        request.setAttribute("errorVP", "Please enter a valid price!");
                    }

                    if (caryear == null || caryear.isEmpty() || !caryear.matches("^[0-9]+$")) {
                        request.setAttribute("errorVY", "Please choose a year!");
                    }

                    if (brandid == null || brandid.isEmpty() || brandid.equals("")) {
                        request.setAttribute("errorVB", "Please choose a brand!");
                    }
                    if (colorid == null || colorid.isEmpty() || colorid.equals("")) {
                        request.setAttribute("errorVC", "Please choose a color!");
                    }
                    if (description.isEmpty()) {
                        request.setAttribute("errorVD", "Please add a description!");
                    }
                    if (otherin.isEmpty()) {
                        otherin = "";
                    }
                    if (title.isEmpty() || carname.isEmpty() || carprice.isEmpty() || brandid.isEmpty() || colorid.isEmpty() || !colorid.matches("-?\\d+(\\.\\d+)?") || description.isEmpty()) {
                        createad(request, response);
                        return;
                    } else {

                        CarFacade cf = new CarFacade();
                        int carId = cf.addCar(user.getUserID(), Double.valueOf(carprice), Common.getFormatString(carname), Integer.parseInt(caryear), description, Integer.parseInt(brandid), Integer.parseInt(colorid));
                        if (carId == -1) {
                            break;
                        }
                        PostFacade pf = new PostFacade();
                        pf.addPost(user.getUserID(), carId, title, otherin);
                    }
                } catch (ServletException | IOException | NumberFormatException | SQLException e) {
                    request.setAttribute("error", e.toString());
                }
//                request.setAttribute("action", "createad");
//                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                createad(request, response);
                break;

            }
        }
        createad(request, response);
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
            Logger.getLogger(OrderController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(OrderController.class.getName()).log(Level.SEVERE, null, ex);
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
