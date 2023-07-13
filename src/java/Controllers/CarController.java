/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DB.CarFacade;
import DB.PostFacade;
import Models.Brand;
import Models.Car;
import Models.Color;
import Models.Compare;
import Models.Line;
import Models.Post;
import Models.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author _viet.quangg
 */
@WebServlet(name = "CarController", urlPatterns = {"/cars"})
public class CarController extends HttpServlet {

    private void getDetails(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String xID = request.getParameter("carId");

        int id = 0;
        try {
            id = Integer.parseInt(xID);
        } catch (NumberFormatException e) {
            System.err.println("Parse Car ID !" + e);
        }

        CarFacade cf = new CarFacade();
        PostFacade pf = new PostFacade();
        Car car = cf.getDetails(id);
        List<Brand> bl = cf.getAllBrand();
        Post post = pf.checkCarId(id);

        request.setAttribute("data", car);
        request.setAttribute("pdata", post);
        request.setAttribute("blist", bl);
        request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String action = (String) request.getAttribute("action");

            switch (action) {
                case "carlist":
                    getListing(request, response);
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                case "cargrid":
                    getListing(request, response);
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                    break;
                case "carsingle":
                    getDetails(request, response);
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                    break;
                case "compare":
                    compare(request, response);
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                    break;
                case "removeCompare":
                    removeCompare(request, response);
                    response.sendRedirect(request.getContextPath() + "/cars/compare.do");
                    break;
                default:
                    //Show error page
                    request.setAttribute("controller", "error");
                    request.setAttribute("action", "error");
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
            }

        } catch (SQLException ex) {
            Logger.getLogger(CarController.class.getName()).log(Level.SEVERE, null, ex);
        }

//        request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
    }

    private void removeCompare(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        Cookie arr[] = request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie item : arr) {
                if (item.getName().equals("compare")) {
                    txt = txt + item.getValue();
                    item.setMaxAge(0);
                    response.addCookie(item);
                }
            }
        }

        CarFacade cf = new CarFacade();
        List<Car> data = cf.getCar();

        Compare compare = new Compare(txt, data);
        String id_raw = request.getParameter("id");
        int id = 0;
        try {
            id = Integer.parseInt(id_raw);

        } catch (NumberFormatException e) {
            System.out.println(e);
        }

        compare.removeItem(id);

        List<Line> items = compare.getItems();
        txt = "";

        if (!items.isEmpty()) {
            txt = items.get(0).getCar().getCarID() + "";
            for (int i = 1; i < items.size(); i++) {
                txt += "-" + items.get(i).getCar().getCarID();
            }
        }

        Cookie c = new Cookie("compare", txt);
        c.setPath(request.getContextPath());
        c.setMaxAge(24 * 60 * 60);
        response.addCookie(c);

    }

    private void compare(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        Cookie arr[] = request.getCookies();
        int count = 0;
        String txt = "";
        if (arr != null) {
            for (Cookie item : arr) {
                if (item.getName().equals("compare")) {
                    txt = txt + item.getValue();
                }
            }
        }

        CarFacade cf = new CarFacade();
        List<Car> data = cf.getCar();

        Compare compare = new Compare(txt, data);
        request.setAttribute("data", compare);
    }

    protected void getListing(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        CarFacade cf = new CarFacade();

        String xPage = request.getParameter("page");
        String xNumberPerPage = request.getParameter("numberPerPage");
        String xSort = request.getParameter("sort");
        String[] xCid = request.getParameterValues("cid");
        String[] xBid = request.getParameterValues("bid");
        String xSearch = request.getParameter("search");

        int[] cid = (xCid != null) ? convertToInt(xCid) : new int[0];
        boolean[] cChecked = getCheckedCid(cf.getAllColor(), cid);

        int[] bid = (xBid != null) ? convertToInt(xBid) : new int[0];
        boolean[] bChecked = getCheckedBid(cf.getAllBrand(), bid);

        /* Pagination */
        List<Car> data = pagination(request, xPage, xNumberPerPage, xSort, cid, bid, xSearch);
        /* Pagination */

        if (data == null) {
            response.sendRedirect(request.getContextPath() + "/ocsn/index.do");
            return;
        }

        request.setAttribute("data", data);

        request.setAttribute("cChecked", cChecked);
        request.setAttribute("colorid", getResponseMessage(cid, "cid"));

        request.setAttribute("bChecked", bChecked);
        request.setAttribute("brandid", getResponseMessage(bid, "bid"));

    }

    private List<Car> pagination(HttpServletRequest request, String xPage, String xNumberPerPage, String xSort, int[] cid, int[] bid, String xSearch) throws SQLException {
        CarFacade fa = new CarFacade();
        List<Car> allCar = fa.getActiveCar();

        allCar = (cid.length != 0) ? filterColor(allCar, cid) : allCar;
        allCar = (bid.length != 0) ? filterBrand(allCar, bid) : allCar;
        allCar = (xSearch != null && !xSearch.isEmpty()) ? fa.getBySearch(xSearch) : allCar;

        allCar = (xSort != null) ? sorting(xSort, allCar) : allCar;

        int page = (xPage == null) ? 1 : Integer.parseInt(xPage);
        int numberPerPage = (xNumberPerPage == null) ? 9 : Integer.parseInt(xNumberPerPage);
        int size = allCar.size();

        int numberOfPage = ((size % numberPerPage == 0) ? (size / numberPerPage) : (size / numberPerPage + 1));

        int start = (page - 1) * numberPerPage;
        int end = Math.min(page * numberPerPage, size);

        List<Car> result = fa.getListByPage(allCar, start, end);

        request.setAttribute("numberOfPage", numberOfPage);
        request.setAttribute("size", size);
        request.setAttribute("start", start + 1);
        request.setAttribute("end", end);

        request.setAttribute("page", page);
        request.setAttribute("numberPerPage", numberPerPage);
        request.setAttribute("sort", xSort);
        request.setAttribute("search", xSearch);

        return result;

    }

    private List<Car> sorting(String xsort, List<Car> before) {
        switch (xsort) {
            case "price":
                // sắp xếp giảm dần theo giá
                Collections.sort(before, new Comparator<Car>() {
                    @Override
                    public int compare(Car o1, Car o2) {
                        if (o1.getCarPrice() > o2.getCarPrice()) {
                            return -1;
                        }
                        return 1;
                    }
                });
                break;

            case "name":
                // sắp xếp tên tăng dần theo bảng  chữ cái
                Collections.sort(before, new Comparator<Car>() {
                    @Override
                    public int compare(Car o1, Car o2) {
                        if (o1.getCarName().compareTo(o2.getCarName()) > 0) {
                            return 1;
                        }
                        return -1;
                    }
                });

                break;
            default:
                // không làm gì cả :>
                break;
        }
        return before;
    }

    private List<Car> filterColor(List<Car> before, int[] cid) {
        List<Car> after = new ArrayList<>();

        if (cid != null && cid.length > 0) {
            for (Car car : before) {
                for (int id : cid) {
                    if (car.getColor().getId() == id) {
                        after.add(car);
                    }
                }
            }
        }

        return after;
    }

    private List<Car> filterBrand(List<Car> before, int[] bid) {
        List<Car> after = new ArrayList<>();

        if (bid != null && bid.length > 0) {
            for (Car car : before) {
                for (int id : bid) {
                    if (car.getBrand().getId() == id) {
                        after.add(car);
                    }
                }
            }
        }

        return after;
    }

    private boolean[] getCheckedCid(List<Color> before, int[] x) {
        boolean[] checked = new boolean[before.size()];
        for (int i = 0; i < checked.length; i++) {
            checked[i] = isCheck(before.get(i).getId(), x);
        }

        return checked;
    }

    private boolean[] getCheckedBid(List<Brand> before, int[] x) {
        boolean[] checked = new boolean[before.size()];
        for (int i = 0; i < checked.length; i++) {
            checked[i] = isCheck(before.get(i).getId(), x);
        }

        return checked;
    }

    private String getResponseMessage(int[] x, String type) {
        String s = "";

        if (x.length > 0) {
            s += "&" + type + "=";
        }

        for (int i = 0; i < x.length; i++) {
            if (i == x.length - 1) {
                s += x[i];
            } else {
                s += x[i] + "&" + type + "=";
            }
        }

        return s;
    }

    private int[] convertToInt(String[] x) {
        int[] id = new int[x.length];

        for (int i = 0; i < id.length; i++) {
            id[i] = Integer.parseInt(x[i]);
        }

        return id;
    }

    private boolean isCheck(int x, int[] before) {
        if (before == null) {
            return false;
        } else {
            for (int i = 0; i < before.length; i++) {
                if (before[i] == x) {
                    return true;
                }
            }
        }
        return false;
    }

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
