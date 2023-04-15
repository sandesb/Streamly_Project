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
public class catServ extends HttpServlet {

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String page = request.getParameter("page");
        System.out.println("\n\n HELLO");
  
//upload new media try
        if (page.equalsIgnoreCase("action")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
//           request.setAttribute("name",med);
            List<media> userList = new ServicesLogin().getActionList("action");

            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/action.jsp");
            rd.forward(request, response); 
        } 

        if (page.equalsIgnoreCase("animation")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getAnimeList("animation");
            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/animation.jsp");
            rd.forward(request, response);            
        } 
          if (page.equalsIgnoreCase("documentary")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getDocuList("documentary");
            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/docu.jsp");
            rd.forward(request, response);            
        } 
            if (page.equalsIgnoreCase("drama")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getDramaList("drama");
            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/drama.jsp");
            rd.forward(request, response);            
        } 
            if (page.equalsIgnoreCase("romance")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getRomanceList("romance");
            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/romance.jsp");
            rd.forward(request, response);            
        } 
             if (page.equalsIgnoreCase("adventure")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getAdventureList("adventure");
            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/adventure.jsp");
            rd.forward(request, response);            
        }
              if (page.equalsIgnoreCase("auto")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getAutoBiographyList("autobiography");
            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/auto.jsp");
            rd.forward(request, response);            
        } if (page.equalsIgnoreCase("comedy")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
//                              yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getComedyList("comedy");
            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/comedy.jsp");
            rd.forward(request, response);            
        }
        if (page.equalsIgnoreCase("crime")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
            // yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getCrimeList("crime");
            request.setAttribute("mediaList", userList);
            for (media m : userList) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/crime.jsp");
            rd.forward(request, response);
        }
        
        if (page.equalsIgnoreCase("fantasy")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
            // yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getFantasyList("fantasy");
            request.setAttribute("mediaList", userList);
            for (media m : userList) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/fantasy.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("family")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
            // yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getFamilyList("family");
            request.setAttribute("mediaList", userList);
            for (media m : userList) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/family.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("horror")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
            // yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getHorrorList("horror");
            request.setAttribute("mediaList", userList);
            for (media m : userList) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/horror.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("sci-fi")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
            // yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getSciFiList("sci-fi");
            request.setAttribute("mediaList", userList);
            for (media m : userList) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/scifi.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("mind")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
            // yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getMindList("mind");
            request.setAttribute("mediaList", userList);
            for (media m : userList) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/mind.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("steamy")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
            // yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getSteamyList("steamy");
            request.setAttribute("mediaList", userList);
            for (media m : userList) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/steamy.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("newrel")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media(request.getParameter("name"), page, page, page, page, page, page);
            // yeta Model ma bhako name halne request garna agadi
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("category"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            List<media> userList = new ServicesLogin().getNewReleasesList("newreleases");
            request.setAttribute("mediaList", userList);
            for (media m : userList) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("subpages/cat/newreleases.jsp");
            rd.forward(request, response);
        }

    }
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

