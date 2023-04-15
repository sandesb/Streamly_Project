/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import Hashing.HashingPassword;
import Model.login;
import Model.media;
import Model.signup;
import Model.video;
import Service.ServicesLogin;
import Service.ServicesUser;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author home
 */
public class mediaServ extends HttpServlet {

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
        doPost(request, response);
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
        String page = request.getParameter("page");
        System.out.println("\n\n HELLO");
  
//upload new media try
        if (page.equalsIgnoreCase("watchnow")) {
            /*signup is from ServicesLogin but sign is the instance*/
              int mid = Integer.parseInt(request.getParameter("mid"));
            media med = new ServicesUser().getMediaRow(mid);
            request.setAttribute("media",med);        
            System.out.println(request.getParameter("mid"));
            System.out.println("med="+med.getName());
              System.out.println("video="+med.getVideo());
//            med.setName(request.getParameter("name"));
//            med.setDes(request.getParameter("des"));
//            med.setGenre(request.getParameter("genre"));
//            med.setCateg(request.getParameter("categ"));
//            med.setYear(request.getParameter("year"));
//            med.setThumb(request.getParameter("thumb"));
//            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
//            List<media> userList = new ServicesLogin().getNewList(mid,med);
//            request.setAttribute("mediaList", userList);
            RequestDispatcher rd = request.getRequestDispatcher("watch.jsp");
            rd.forward(request, response);
            
        }
          if (page.equalsIgnoreCase("newlist1")) {
             System.out.println("mediaid="+request.getParameter("mid"));
            
            media med = new ServicesUser().getMediaRow(Integer.parseInt(request.getParameter("mid")));
            
            request.setAttribute("media",med);
            System.out.println(med.getName());
            RequestDispatcher rd = request.getRequestDispatcher("playlists.jsp?mid="+request.getParameter("mid"));
            rd.forward(request, response);
        }
          if (page.equalsIgnoreCase("newlist")) {
            System.out.println("new");
            int mid = Integer.parseInt(request.getParameter("mid"));
            media med = new ServicesUser().getMediaRow(mid);
            request.setAttribute("media",med);        
            System.out.println(request.getParameter("mid"));
            System.out.println("med="+med.getName());
            System.out.println("video="+med.getVideo());
            System.out.println(request.getParameter("thumb"));
            RequestDispatcher rd = request.getRequestDispatcher("movies.jsp");
            rd.forward(request, response);
        }
          if (page.equalsIgnoreCase("viewlist")) {
            System.out.println("new");
            int mid = Integer.parseInt(request.getParameter("mid"));
            media med = new ServicesUser().getMediaRow(mid);
            request.setAttribute("media",med);        
            System.out.println(request.getParameter("mid"));
            System.out.println("med="+med.getName());
            System.out.println("video="+med.getVideo());
            System.out.println(request.getParameter("thumb"));
            RequestDispatcher rd = request.getRequestDispatcher("watch.jsp");
            rd.forward(request, response);
        }
         if (page.equalsIgnoreCase("home")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media();
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            new ServicesLogin().insertMedia(med);
            System.out.println(request.getParameter("thumb"));
//                              request.setAttribute("name",med);

            List<media> userList = new ServicesLogin().getWatchList();

            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("homepage.jsp");
            rd.forward(request, response);            
        }
         if (page.equalsIgnoreCase("series")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media();
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            new ServicesLogin().insertMedia(med);
            System.out.println(request.getParameter("thumb"));
//                              request.setAttribute("name",med);

            List<media> userList = new ServicesLogin().getSeriesList();

            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("series.jsp");
            rd.forward(request, response);
            
        }
          if (page.equalsIgnoreCase("toystory")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media();
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            new ServicesLogin().insertMedia(med);
            System.out.println(request.getParameter("thumb"));
//                              request.setAttribute("name",med);

            List<media> userList = new ServicesLogin().getWatchList();

            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/watch/movie.jsp");
            rd.forward(request, response);
            
        }
           if (page.equalsIgnoreCase("mulan")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media();
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            new ServicesLogin().insertMedia(med);
            System.out.println(request.getParameter("thumb"));
//                              request.setAttribute("name",med);

            List<media> userList = new ServicesLogin().getWatchList();

            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/watch/movie.jsp");
            rd.forward(request, response);
            
        }
            if (page.equalsIgnoreCase("ilm")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media();
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            new ServicesLogin().insertMedia(med);
            System.out.println(request.getParameter("thumb"));
//                              request.setAttribute("name",med);

            List<media> userList = new ServicesLogin().getWatchList();

            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/watch/movie.jsp");
            rd.forward(request, response);
            
        }
             if (page.equalsIgnoreCase("wednesday")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media();
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            new ServicesLogin().insertMedia(med);
            System.out.println(request.getParameter("thumb"));
//                              request.setAttribute("name",med);

            List<media> userList = new ServicesLogin().getWatchList();

            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/watch/movie.jsp");
            rd.forward(request, response);
            
        }
            
    }
  @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

