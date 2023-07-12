package Controllers;

import Utilities.Common;
import DB.CarFacade;
import DB.OrderFacade;
import DB.OrderFacade;
import DB.PostFacade;
import DB.PostFacade;
import DB.UserFacade;
import Models.Brand;
import Models.Car;
import Models.Color;
import Models.Order;
import Models.OrderList;
import Models.Post;
import Models.PricingPlan;
import Models.User;
import Models.Item;
import Models.Wishlist;
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
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
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
            throws ServletException, IOException, SQLException, Exception {

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
                try {
                PostFacade pf = new PostFacade();
                List<Post> pdata = null;
                if (user.getUserRole() == 0) {
                    pdata = pf.listByUser(user.getUserID());
                }
                if (user.getUserRole() == 1 || user.getUserRole() == 2) {
                    pdata = pf.getPostList();
                }
                request.setAttribute("pdata", pdata);
            } catch (Exception e) {
            }
            request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
            //in thong bao loi chi tiet cho developer
            break;
            case "pricingplan":
                plan = of.listPlanActive();
                request.setAttribute("plan", plan);
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;

            case "ordercar":
                if (user.getUserRole() != 0) {
                    response.sendRedirect(request.getContextPath() + "/cars/carlist.do");
                    return;
                }
                String pid = request.getParameter("postId").trim();
                if (pid != null && !pid.isEmpty() && pid.matches("^[1-9]\\d*$")) {
                    int id = Integer.parseInt(pid);
                    OrderList ol = of.getOrderByPost(id);
                    if (ol == null) {
                        PostFacade pf = new PostFacade();
                        Post post = pf.getDetails(id);
                        if (post != null) {
                            of.addOrder(id, user.getUserID());
                            CarFacade cf = new CarFacade();
                            cf.updateCarCondition(true, post.getCar().getCarID());
                            response.sendRedirect(request.getContextPath() + "/order/orderlist.do");
                            return;
                        }
                    }
                }
                response.sendRedirect(request.getContextPath() + "/order/orderlist.do");
                break;

            case "orderlist":
                List<Order> orderl = null;
                if (user.getUserRole() != 0) {
                    orderl = of.listOrders();
                } else {
                    orderl = of.listUserOrders(user.getUserID());
                }
                if (orderl != null) {
                    request.setAttribute("orders", orderl);
                } else {
                    request.setAttribute("action", "");
                }
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                break;

            case "removeorder":
                String oid = request.getParameter("orderId");
                if (oid != null && !oid.isEmpty() && oid.matches("^[1-9]\\d*$")) {
                    of.Delete(Integer.parseInt(oid));
                }
                response.sendRedirect(request.getContextPath() + "/order/orderlist.do");
                break;
            case "orderappoint":

                String appo = request.getParameter("appo");
                String orid = request.getParameter("orderId");
                try {
                    if (appo != null && !appo.isBlank() && appo.matches("\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}") && orid != null && !orid.isBlank() && orid.matches("^[1-9]\\d*$")) {

                        DateTimeFormatter formatter = DateTimeFormatter.ISO_LOCAL_DATE_TIME;
                        LocalDateTime ldt = LocalDateTime.parse(appo, formatter);
                        LocalDateTime minDateTime = ldt.withHour(8).withMinute(0);
                        LocalDateTime maxDateTime = ldt.withHour(18).withMinute(0);
                        if (ldt.isAfter(minDateTime) && ldt.isBefore(maxDateTime) && ldt.isBefore(LocalDateTime.now())) {
                            of.updateApp(ldt, Integer.parseInt(orid));
                            of.updateOrderStatus(Integer.parseInt(orid), "Cancelled");
                        }

                    }
                    /*
                else of.updateApp(null, Integer.parseInt((orid)));
                     */

                } catch (Exception e) {

                }
                response.sendRedirect(request.getContextPath() + "/order/orderlist.do");
                break;
            case "ordermanager":
                if (user.getUserRole() == 0) {
                    request.setAttribute("controller", "login");
                    request.setAttribute("action", "profile");
                    request.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(request, response);
                    return;
                }
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
                        of.updateOrderStatus(orderId1, "Cancelled");
                        response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                        new GmailController().sendMail("notification", """
                                                    Dear User,
                                                        
                                                       Your Order was Cancelled !
                                                        
                                                    Best regards,
                                                    OCSN
                                                        """, "nguyenvietquang099@gmail.com");
                        break;
                    case "success":
                        int orderId2 = Integer.parseInt(request.getParameter("orderId"));
                        of.updateOrderStatus(orderId2, "Complete");
                        response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                        new GmailController().sendMail("notification", """
                                                    Dear User,
                                                        
                                                       Your Order was Complete !
                                                        
                                                    Best regards,
                                                    OCSN
                                                        """, "nguyenvietquang099@gmail.com");
                        break;
                    case "pending":
                        int orderId3 = Integer.parseInt(request.getParameter("orderId"));
                        of.updateOrderStatus(orderId3, "Pending");
                        response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                        new GmailController().sendMail("notification", """
                                                    Dear User,
                                                        
                                                       Your Order was Pending !
                                                        
                                                    Best regards,
                                                    OCSN
                                                        """, "nguyenvietquang099@gmail.com");
                        break;
                    case "inprocess":
                        int orderId4 = Integer.parseInt(request.getParameter("orderId"));
                        of.updateOrderStatus(orderId4, "Processing");
                        response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                        new GmailController().sendMail("notification", """
                                                    Dear User,
                                                        
                                                       Your Order was In Process !
                                                        
                                                    Best regards,
                                                    OCSN
                                                        """, "nguyenvietquang099@gmail.com");
                        break;
//                    case "delete":
//                        int orderId5 = Integer.parseInt(request.getParameter("orderId"));
//                        of.Delete(orderId5);
//                        response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
//                        break;
                    case "search":
                        String searchQuery = request.getParameter("search").trim();

                        if (searchQuery == null || searchQuery.isEmpty()) {
                            List<OrderList> ship = of.getAllOrders();
                            request.setAttribute("orders", ship);
                        } else {
                            // Perform search logic and retrieve matching orders from the database
                            List<OrderList> search = of.search(searchQuery);

                            request.setAttribute("orders", search);
                        }
                        request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
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
            case "denied":
                int orderId1 = Integer.parseInt(request.getParameter("id"));
                of.updateOrderStatus(orderId1, "Cancelled");
                response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                break;
            case "success":
                int orderId2 = Integer.parseInt(request.getParameter("id"));
                of.updateOrderStatus(orderId2, "Complete");
                response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                break;
            case "pending":
                int orderId3 = Integer.parseInt(request.getParameter("id"));
                of.updateOrderStatus(orderId3, "Pending");
                response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                break;
            case "inprocess":
                int orderId4 = Integer.parseInt(request.getParameter("id"));
                of.updateOrderStatus(orderId4, "Processing");
                response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                break;
            case "delete":
                int orderId5 = Integer.parseInt(request.getParameter("id"));
                of.Delete(orderId5);
                response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
                break;
//            case "search":
//                String searchQuery = request.getParameter("search");
//                if(searchQuery != null)
//                {
//                // Perform search logic and retrieve matching orders from the database
//                List<OrderList> search = of.search(searchQuery);
//
//                request.setAttribute("orders", search);
//                }else{
//                
//                List<OrderList> search = of.getAllOrders();
//                request.setAttribute("orders", search);
//                }
//                response.sendRedirect(request.getContextPath() + "/order/ordermanager.do");
//                break;

            case "favorite": { //get duplicate
                try {//try it
                    getWishList(request, response);
                } catch (SQLException ex) {
                    Logger.getLogger(OrderController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
            break;
            case "removeWish":
                removeWish(request, response);
                response.sendRedirect(request.getContextPath() + "/order/favorite.do");

                break;
            case "status_handler":
                if (user.getUserRole() == 0) {
                    request.setAttribute("controller", "login");
                    request.setAttribute("action", "profile");
                    request.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(request, response);
                    return;
                }
                status_handler(request, response);
                break;
            case "postmanager":
                postmanager(request, response);
                break;
            case "update_handler":
                update_handler(request, response);
                break;
            default:
                //Show error page
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
        }

    }

    public void postmanager(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        if (user != null) {
            CarFacade cf = new CarFacade();
            List<Color> clist = cf.getAllColor();
            List<Brand> blist = cf.getAllBrand();
            String pid = request.getParameter("postId");

            try {
                //Neu khong lay duoc Post thi khong duoc vao postmanager
                if (pid != null && !pid.isBlank() && pid.matches("^\\d+$")) {
                    PostFacade pf = new PostFacade();
                    Post post = pf.getDetails(Integer.parseInt(pid));
                    if (post != null) {
                        //Neu User la Customer thi khong chinh sua duoc Post khong phai cua minh
                        if (!(user.getUserRole() == 0 && post.getUserId() != user.getUserID())) {
                            request.setAttribute("postId", post.getPostId());
                            request.setAttribute("carId", post.getCar().getCarID());
                            request.setAttribute("carShowroom", post.getCar().getCarShowroom());
                            request.setAttribute("carCondition", post.getCar().isCarCondition());
                            request.setAttribute("title", post.getPostTitle());
                            request.setAttribute("carname", post.getCar().getCarName());
                            request.setAttribute("carprice", post.getCar().getFormatPrice().toString().replaceAll("[^\\d]", ""));
                            request.setAttribute("caryear", post.getCar().getCarYear());
                            request.setAttribute("brandid", post.getCar().getBrand().getId());
                            request.setAttribute("colorid", post.getCar().getColor().getId());
                            request.setAttribute("description", post.getCar().getCarDescription());
                            request.setAttribute("engine", post.getCar().getEngine());
                            request.setAttribute("odo", post.getCar().getOdo());
                            String car_seat = post.getCar().getCar_seat().trim();
                            if (!car_seat.isBlank()) {
                                String cs = car_seat.substring(0, car_seat.indexOf(" "));
                                if (!cs.isBlank() && cs.matches("^\\d+$")) {
                                    request.setAttribute("car_seat", Integer.parseInt(cs));
                                }
                            }
                            request.setAttribute("otherin", post.getPostDescript());
                            request.setAttribute("clist", clist);
                            request.setAttribute("blist", blist);
                            request.setAttribute("controller", "order");
                            request.setAttribute("action", "postmanager");
                            request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                            return;
                        }
                    }
                }

            } catch (Exception e) {
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                return;
            }
            response.sendRedirect(request.getContextPath() + "/order/orderlist.do");
            return;
        }
        response.sendRedirect(request.getContextPath() + "/login/login_handler.do");
    }

    private void status_handler(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String postStatus = request.getParameter("postStatus");
        String pid = request.getParameter("postId");
        try {
            if (postStatus != null && !postStatus.isBlank() && pid != null && !pid.isBlank() && pid.matches("^\\d+$")) {
                PostFacade pf = new PostFacade();
                pf.updatePostStatus(Integer.parseInt(pid), postStatus);
            }

        } catch (Exception e) {

        }
        response.sendRedirect(request.getContextPath() + "/order/orderlist.do");
    }

    private void removeWish(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        Cookie arr[] = request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie item : arr) {
                if (item.getName().equals("wish")) {
                    txt = txt + item.getValue();
                    item.setMaxAge(0);
                    response.addCookie(item);
                }
            }
        }

        CarFacade cf = new CarFacade();
        List<Car> data = cf.getCar();

        Wishlist wish = new Wishlist(txt, data);
        String id_raw = request.getParameter("id");
        int id = 0;
        try {
            id = Integer.parseInt(id_raw);

        } catch (NumberFormatException e) {
            System.out.println(e);
        }

        wish.removeItem(id);

        List<Item> items = wish.getItems();
        txt = "";

        if (!items.isEmpty()) {
            txt = items.get(0).getCar().getCarID() + "";
            for (int i = 1; i < items.size(); i++) {
                txt += "-" + items.get(i).getCar().getCarID();
            }
        }

        Cookie c = new Cookie("wish", txt);
        c.setPath(request.getContextPath());
        c.setMaxAge(24 * 60 * 60);
        response.addCookie(c);

    }

    private void getWishList(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        Cookie arr[] = request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie item : arr) {
                if (item.getName().equals("wish")) {
                    txt = txt + item.getValue();
                }
            }
        }

        CarFacade cf = new CarFacade();
        List<Car> data = cf.getCar();

        Wishlist wish = new Wishlist(txt, data);

        request.setAttribute("data", wish);
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
                    String engine = request.getParameter("engine");
                    String car_seat = request.getParameter("car_seat");
                    String odo = request.getParameter("odo");
                    request.setAttribute("title", title);
                    request.setAttribute("carname", carname);
                    request.setAttribute("carprice", carprice);
                    request.setAttribute("caryear", caryear);
                    request.setAttribute("brandid", brandid);
                    request.setAttribute("colorid", colorid);
                    request.setAttribute("description", description);
                    request.setAttribute("engine", engine);
                    request.setAttribute("odo", odo);
                    request.setAttribute("car_seat", car_seat);
                    request.setAttribute("otherin", otherin);

                    if (title.isBlank()) {
                        request.setAttribute("errorVT", "Please add a title!");
                    }
                    if (carname.isBlank()) {
                        request.setAttribute("errorVN", "Please enter a name for the car!");
                    }
                    if (carprice.isBlank() || !carprice.matches("^0*[1-9]\\d*(\\.\\d+)?$")) {
                        request.setAttribute("errorVP", "Please enter a valid price!");
                    }

                    if (odo.isBlank() || !odo.matches("^(?!0+(\\.0+)?$)\\d*(\\.\\d+)?$")) {
                        request.setAttribute("errorVOD", "Please enter a valid mileage value!");
                    }

                    if (caryear == null || caryear.isEmpty() || !caryear.matches("^[0-9]+$")) {
                        request.setAttribute("errorVY", "Please choose a year!");
                    }

                    if (car_seat == null || car_seat.isEmpty() || !car_seat.matches("^[0-9]+$")) {
                        request.setAttribute("errorVCS", "Please specify the number of seats!");
                    } 

                    if (engine == null || engine.isEmpty() || engine.equals("")) {
                        request.setAttribute("errorVE", "Please choose a fuel type!");
                    }

                    if (brandid == null || brandid.isEmpty() || brandid.equals("")) {
                        request.setAttribute("errorVB", "Please choose a brand!");
                    }
                    if (colorid == null || colorid.isEmpty() || colorid.equals("")) {
                        request.setAttribute("errorVC", "Please choose a color!");
                    }
                    if (description.isBlank()) {
                        request.setAttribute("errorVD", "Please add a description!");
                    }
                    if (otherin.isEmpty()) {
                        otherin = "";
                    }
                    if (title.isBlank() || carname.isBlank() || carprice.isBlank() || odo.isBlank() || brandid.isBlank() || colorid.isBlank() || !carprice.matches("^0*[1-9]\\d*(\\.\\d+)?$") || !odo.matches("^(?!0+(\\.0+)?$)\\d*(\\.\\d+)?$") || description.isBlank() || brandid.equals("") || colorid.equals("") || car_seat.isBlank() || engine.isBlank()) {
                        createad(request, response);
                        return;
                    } else {

                        CarFacade cf = new CarFacade();
                        int carId = cf.addCar(user.getUserID(), Double.valueOf(carprice), Common.getFormatString(carname), Integer.parseInt(caryear), Common.getFormatString(description), Integer.parseInt(brandid), Integer.parseInt(colorid), Integer.parseInt(car_seat), Common.getFormatString(engine), Float.parseFloat(odo));
                        if (carId == -1) {
                            break;
                        }
                        PostFacade pf = new PostFacade();
                        pf.addPost(user.getUserID(), carId, Common.getFormatString(title), Common.getFormatString(otherin));
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

    private void update_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, Exception {
        String op = request.getParameter("op");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        if (user != null) {
            switch (op) {
                case "update":
                try {
                    request.setAttribute("postId", null);
                    request.setAttribute("carId", null);
                    request.setAttribute("carShowroom", null);
                    request.setAttribute("carCondition", null);
                    String postId = request.getParameter("postId");
                    String carId = request.getParameter("carId");
                    String carShowroom = request.getParameter("carShowroom");
                    String carCondition = request.getParameter("carCondition");
                    if (postId.isBlank() || carId.isBlank() || carShowroom.isBlank() || carCondition.isBlank() || !postId.matches("^\\d+$") || !carId.matches("^\\d+$")) {
                        response.sendRedirect(request.getContextPath() + "/order/postedad.do");

                    }
                    String title = request.getParameter("title");
                    String carname = request.getParameter("carname");
                    String carprice = request.getParameter("carprice");
                    String brandid = request.getParameter("brandid");
                    String colorid = request.getParameter("colorid");
                    String description = request.getParameter("description");
                    String otherin = request.getParameter("otherin");
                    String caryear = request.getParameter("caryear");
                    String engine = request.getParameter("engine");
                    String car_seat = request.getParameter("car_seat");
                    String odo = request.getParameter("odo");
                    request.setAttribute("postId", postId);
                    request.setAttribute("carId", carId);
                    request.setAttribute("carShowroom", carShowroom);
                    request.setAttribute("carCondition", carCondition);
                    request.setAttribute("title", title);
                    request.setAttribute("carname", carname);
                    request.setAttribute("carprice", carprice);
                    request.setAttribute("caryear", caryear);
                    request.setAttribute("brandid", brandid);
                    request.setAttribute("colorid", colorid);
                    request.setAttribute("description", description);
                    request.setAttribute("engine", engine);
                    request.setAttribute("odo", odo);
                    request.setAttribute("car_seat", car_seat);
                    request.setAttribute("otherin", otherin);

                    if (title.isEmpty()) {
                        request.setAttribute("errorVT", "Please add a title!");
                    }
                    if (carname.isEmpty()) {
                        request.setAttribute("errorVN", "Please enter a name for the car!");
                    }
                    if (carprice.isEmpty() || !carprice.matches("^0*[1-9]\\d*(\\.\\d+)?$")) {
                        request.setAttribute("errorVP", "Please enter a valid price!");
                    }

                    if (odo.isEmpty() || !odo.matches("^(?!0+(\\.0+)?$)\\d*(\\.\\d+)?$")) {
                        request.setAttribute("errorVOD", "Please enter a valid mileage value!");
                    }

                    if (caryear == null || caryear.isEmpty() || !caryear.matches("^[0-9]+$")) {
                        request.setAttribute("errorVY", "Please choose a year!");
                    }

                    if (car_seat == null || car_seat.isEmpty() || !car_seat.matches("^[0-9]+$")) {
                        request.setAttribute("errorVCS", "Please specify the number of seats!");
                    }

                    if (engine == null || engine.isEmpty() || engine.equals("")) {
                        request.setAttribute("errorVE", "Please choose a fuel type!");
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
                    if (otherin.isBlank()) {
                        otherin = "";
                    }
                    if (title.isBlank() || carname.isBlank() || carprice.isBlank() || odo.isBlank() || brandid.isBlank() || colorid.isBlank() || !carprice.matches("^0*[1-9]\\d*(\\.\\d+)?$") || description.isBlank() || brandid.equals("") || colorid.equals("") || car_seat.isBlank() || engine.isBlank() || !odo.matches("^(?!0+(\\.0+)?$)\\d*(\\.\\d+)?$")) {
                        CarFacade cf = new CarFacade();
                        List<Color> clist = cf.getAllColor();
                        List<Brand> blist = cf.getAllBrand();
                        request.setAttribute("clist", clist);
                        request.setAttribute("blist", blist);
                        request.setAttribute("controller", "order");
                        request.setAttribute("action", "postmanager");
                        request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                        return;
                    } else {
                        CarFacade cf = new CarFacade();
//                        Enumeration<String> headerNames = request.getHeaderNames();
//                        if (headerNames != null) {
//                            while (headerNames.hasMoreElements()) {
//                                String headerName = headerNames.nextElement();
//                                if (headerName.startsWith("Content-Disposition")) {
//                                    List<String> imageUrls = Common.saveImage(request, response, "Car");
//                                    if (imageUrls != null && imageUrls.size() > 0) {
//                                        for (String url : imageUrls) {
//                                            cf.addCar_Image(Integer.parseInt(carId), url);
//                                        }
//                                    }
//                                    break;
//                                }
//                            }
//                        }
                        cf.updateCar(Integer.parseInt(carId), Common.getFormatString(carShowroom), Double.parseDouble(carprice.replaceAll("[^\\d.]", "")), Common.getFormatString(carname), Boolean.parseBoolean(carCondition), Integer.parseInt(caryear), Common.getFormatString(description), Integer.parseInt(brandid), Integer.parseInt(colorid), Integer.parseInt(car_seat), engine, Float.parseFloat(odo));
                        PostFacade pf = new PostFacade();
                        pf.updatePost(Integer.parseInt(postId), title, otherin);
                    }
                } catch (IOException | NumberFormatException | SQLException e) {
                    request.setAttribute("error", e.toString());
                    request.setAttribute("controller", "error");
                    request.setAttribute("action", "error");
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                    return;
                }
                break;
            }
            CarFacade cf = new CarFacade();
            List<Color> clist = cf.getAllColor();
            List<Brand> blist = cf.getAllBrand();
            request.setAttribute("clist", clist);
            request.setAttribute("blist", blist);
            request.setAttribute("controller", "order");
            request.setAttribute("action", "postmanager");
            request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
            return;
        }

        response.sendRedirect(request.getContextPath() + "/login/login_handler.do");

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
            Logger.getLogger(OrderController.class
                    .getName()).log(Level.SEVERE, null, ex);

        } catch (Exception ex) {
            Logger.getLogger(OrderController.class
                    .getName()).log(Level.SEVERE, null, ex);
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

        } catch (Exception ex) {
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
