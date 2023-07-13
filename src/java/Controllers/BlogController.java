/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DB.BlogFacade;
import Models.Blog;
import Models.User;
import static com.google.common.io.Files.getFileExtension;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import org.apache.tomcat.jni.SSLContext;

/**
 *
 * @author _viet.quangg
 */
@WebServlet(name = "BlogController", urlPatterns = {"/blog"})
@MultipartConfig
public class BlogController extends HttpServlet {

    protected String UP_LOAD_PATH = "/Users/_viet.quangg/Study/Subject Term 5/SWP391/latest/old-car-showroom-network/web/images/blog";

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
        List<Blog> blog = null;
        List<Blog> latest = null;
        HttpSession session = request.getSession();
        switch (action) {
            case "bloglist":
                try {
                String indexPage = request.getParameter("index");
                if (indexPage == null) {
                    indexPage = "1";
                }
                int index = Integer.parseInt(indexPage);

                String blogPerPage = request.getParameter("blogPerPage");
                if (blogPerPage == null) {
                    blogPerPage = "4";
                }
                int num = Integer.parseInt(blogPerPage);

                int countPage = bf.countBlog();
                int endPage = countPage / num;
                if (endPage % num != 0) {
                    endPage++;
                }
                blog = bf.blogPerPage(index, num);
                int currentPage = index;
//
//                blog = bf.pagingBlog(index);
                latest = bf.listLatest();
                request.setAttribute("currentPage", currentPage);
                request.setAttribute("endPage", endPage);
                request.setAttribute("latest", latest);
                request.setAttribute("blog", blog);
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
            } catch (Exception e) {
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
            }
            break;
            case "search_blog":
                String searchQuery = request.getParameter("search").trim();

                if (searchQuery == null || searchQuery.isEmpty()) {
//                    List<Blog> ship = bf.listBlog();
                    request.setAttribute("action", "bloglist");
                    processRequest(request, response);
                    return;
//                    response.sendRedirect(request.getContextPath() + "/blog/bloglist.do");
//                    request.setAttribute("blog", ship);
                } else {
                    // Perform search logic and retrieve matching orders from the database
                    List<Blog> search = bf.searchBlog(searchQuery);

                    request.setAttribute("blog", search);
                }
                request.setAttribute("action", "bloglist");

                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                break;
            case "search_blog1":
                String searchQuery1 = request.getParameter("search").trim();

                if (searchQuery1 == null || searchQuery1.isEmpty()) {
//                    List<Blog> ship = bf.listBlog();
                    request.setAttribute("action", "bloglist");
                    processRequest(request, response);
                    return;
//                    response.sendRedirect(request.getContextPath() + "/blog/bloglist.do");
//                    request.setAttribute("blog", ship);
                } else {
                    // Perform search logic and retrieve matching orders from the database
                    List<Blog> search = bf.searchBlog(searchQuery1);

                    request.setAttribute("blog", search);
                }
                request.setAttribute("action", "bloggrid");

                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                break;
            case "bloggrid":
                try {
                String indexPage = request.getParameter("index");
                if (indexPage == null) {
                    indexPage = "1";
                }
                int index = Integer.parseInt(indexPage);

                String blogPerPage = request.getParameter("blogPerPage");
                if (blogPerPage == null) {
                    blogPerPage = "2";
                }
                int num = Integer.parseInt(blogPerPage);

                int countPage = bf.countBlog();
                int endPage = countPage / num;
                if (endPage % num != 0) {
                    endPage++;
                }
                blog = bf.blogPerPage(index, num);
                int currentPage = index;

//                blog = bf.listBlog();
                latest = bf.listLatest();

                request.setAttribute("currentPage", currentPage);
                request.setAttribute("endPage", endPage);
                request.setAttribute("latest", latest);
                request.setAttribute("blog", blog);
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);

                //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
            } catch (Exception e) {
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
            }
            break;
            case "blogsingle":
                try {
                String bid = request.getParameter("bid");
                Blog b = bf.listBlogId(bid);
                request.setAttribute("bid", b);
                blog = bf.listBlog();
                request.setAttribute("blog", blog);
                latest = bf.listBlogRandomly();
                request.setAttribute("latest", latest);
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
            } catch (Exception e) {
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
            }
            break;
            case "blogedit":
                String blogId = request.getParameter("blid");

                // Call the method to fetch the blog details based on blogId
                try {
                    var blogs = bf.listBlogId(blogId);
                    // Set the blog object as an attribute in the request
                    request.setAttribute("blog", blogs);
                    // Forward the request to the JSP file for rendering
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                } catch (ServletException | IOException | SQLException e) {
                    request.setAttribute("controller", "error");
                    request.setAttribute("action", "error");
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                }
                //request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;

            case "edit_blog_handler":
                String opp = request.getParameter("op");
                switch (opp) {
                    case "edit_blog":
                        User user = (User) session.getAttribute("User");

                        String blogTitle = request.getParameter("blogtitle");
                        String blogDetail = request.getParameter("blogdetail");
                        int userId = Integer.parseInt(request.getParameter("userId"));
                        String role = request.getParameter("userrole");
                        String blogId1 = request.getParameter("blogid");
                        Part part = request.getPart("blogimage");
                        String blogImage = part.getSubmittedFileName();
                        String uploadPath = UP_LOAD_PATH + blogImage;
                        FileOutputStream fos = new FileOutputStream(uploadPath);
                        InputStream is = part.getInputStream();
                        byte[] data = new byte[is.available()];
                        is.read(data);
                        fos.write(data);
                        fos.close();
                        String inputImage = request.getContextPath() + "/images/blog/" + blogImage;
                        bf.updateBlog(blogTitle, blogDetail, inputImage, userId, blogId1);
                        request.setAttribute("message", "Create successfully");
                        if (role.equals("0")) {
                            request.getRequestDispatcher("/blog/bloglistuser.do?uid=" + userId).forward(request, response);
                        } else {
                            request.getRequestDispatcher("/blog/bloglist.do").forward(request, response);
                        }
                        break;
                    default:
                        // Handle unexpected values of op here
                        Logger.getLogger(BlogController.class.getName()).warning("Unexpected value of 'op' parameter: " + opp);
                        response.sendRedirect(request.getContextPath() + "/error.jsp");
                        break;
                }
                break;
            case "blogcreate":

                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); //Hien trang thong bao loi
                //in thong bao loi chi tiet cho developer
                break;
            case "create_blog_handler":
                String op = request.getParameter("op");
                switch (op) {
                    case "create_blog":
                       try {
                        User user = (User) session.getAttribute("User");
                        // Validate the required form fields
                        String blogTitle = request.getParameter("blogtitle");
                        String blogDetail = request.getParameter("blogdetail");
                        int userId = user.getUserID();
                        //get blog image
                        Part part = request.getPart("blogimage");
                        String blogImage = part.getSubmittedFileName();
                        String uploadPath = UP_LOAD_PATH + blogImage;

                        FileOutputStream fos = new FileOutputStream(uploadPath);
                        InputStream is = part.getInputStream();
                        byte[] data = new byte[is.available()];
                        is.read(data);
                        fos.write(data);
                        fos.close();
                        if (blogTitle == null || blogTitle.isEmpty()
                                || blogDetail == null || blogDetail.isEmpty()
                                || blogImage == null) {
                            throw new IllegalArgumentException("Missing or invalid input field(s)");
                        }

                        String inputImage = request.getContextPath() + "/images/blog/" + blogImage;
                        Blog newBlog = new Blog(blogTitle, blogDetail, inputImage, userId);
                        bf.create(newBlog);
                        request.setAttribute("message", "Create successfully");
                        request.getRequestDispatcher("/blog/blogcreate.do").forward(request, response);
                    } catch (Exception ex) {
                        // Log the exception
                        ex.printStackTrace();
                        request.setAttribute("controller", "error");
                        request.setAttribute("action", "error");
                        request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                    }
                    break;
                    default:
                        // Handle unexpected values of op here
                        Logger.getLogger(BlogController.class.getName()).warning("Unexpected value of 'op' parameter: " + op);
                        response.sendRedirect(request.getContextPath() + "/error.jsp");
                        break;
                }
            case "bloglistuser":
                
                try {
                String id = request.getParameter("uid");
                String indexPage = request.getParameter("index");
                if (indexPage == null) {
                    indexPage = "1";
                }
                int index = Integer.parseInt(indexPage);

                String blogPerPage = request.getParameter("blogPerPage");
                if (blogPerPage == null) {
                    blogPerPage = "4";
                }
                int num = Integer.parseInt(blogPerPage);

                int countPage = bf.countBlog();
                int endPage = countPage / num;
                if (endPage % num != 0) {
                    endPage++;
                }
                blog = bf.blogPerPageuser(id);
                int currentPage = index;

                latest = bf.listLatest();
                request.setAttribute("currentPage", currentPage);
                request.setAttribute("endPage", endPage);
                request.setAttribute("latest", latest);
                request.setAttribute("blog", blog); // Renamed attribute to "blogList" for consistency
                request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response); // Display main.jsp
            } catch (Exception e) {
                request.setAttribute("controller", "error");
                request.setAttribute("action", "error");
                //  request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
            }
            break;

        }

    }

    private String convertISToString(InputStream is) throws IOException {
        int buffersize = 1024;
        char[] buffer = new char[buffersize];
        StringBuilder out = new StringBuilder();
        Reader in = new InputStreamReader(is, StandardCharsets.UTF_8);
        for (int numRead; (numRead = in.read(buffer, 0, buffer.length)) > 0;) {
            out.append(buffer, 0, numRead);
        }
        return out.toString();
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
            Logger.getLogger(BlogController.class
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
            Logger.getLogger(BlogController.class
                    .getName()).log(Level.SEVERE, null, ex);
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
