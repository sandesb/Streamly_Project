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
import Service.FavServices;
import Service.ServicesUser;
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
public class LoginServ extends HttpServlet {

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
                HttpSession session = request.getSession();

        System.out.println("\n\n HELLO");
        System.out.println(""+page);
        
        if(page.equalsIgnoreCase("existing")) {
            String email = request.getParameter("username");
            System.out.println("in here");
            String password = HashingPassword.hashPassword(request.getParameter("password")); 
            System.out.println("\n\n------Password----");
            System.out.println(password);
            System.out.println(email + " " + password + " ");
            
            login user = new ServicesLogin().getUser(email, password);
//            System.out.println("Fullname "+user.getFullname());
            
            if (user != null) {
                
                
                session.setAttribute("uid", user.getUid());
                session.setAttribute("email", user.getFullname());
                //System.out.println(session.getAttribute("user"));
                request.setAttribute("msg", "Login Successful!");
                System.out.println(request.getAttribute("msg"));
//                
        List<signup> userList = new ServicesLogin().getUserList();
            request.setAttribute("userList", userList);
//                 response.sendRedirect("index.jsp");
//                 s.setAttribute("username", uname);
                
//                 response.sendRedirect("/Stream/admin.jsp");

//                 signup admin = new signup();
//                 signup is data type from model

           
//            for( signup u : userList ) {
//                System.out.println("User " + u.getEmail());
//            }
            RequestDispatcher rd = request.getRequestDispatcher("/LoginServ?page=adminDash");
            rd.forward(request, response);
//                rd.forward(request, response);
            } else {
                System.out.println("wwq");
                request.setAttribute("msg", "Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("admin-out.jsp");
                rd.forward(request, response);
            } 
        } // --------- existing page ends here --------- 
        
                  if (page.equalsIgnoreCase("adminDash")) {

        List<signup> userList = new ServicesLogin().getUserList();
            request.setAttribute("userList", userList);
//            for( signup u : userList ) {
//                System.out.println("User " + u.getEmail());
//            }
            RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
            rd.forward(request, response);
                  }
//        }

//          if (page.equalsIgnoreCase("signUp")) {
//            /*signup is from ServicesLogin but sign is the instance*/
//            signup sign = new signup();
//            sign.setFullname(request.getParameter("fullname"));
//            sign.setEmail(request.getParameter("email"));
//            sign.setPassword(HashingPassword.hashPassword(request.getParameter("password")));
//            new ServicesLogin().insertUser(sign);
//            RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
//            rd.forward(request, response);
//        }      
          // --------- signUp ends here --------- 
          if (page.equalsIgnoreCase("editUser")) {
              System.out.println("mediaid="+request.getParameter("mid"));
            
            media med = new ServicesUser().getMediaRow(Integer.parseInt(request.getParameter("edit")));
            
            request.setAttribute("media",med);
            System.out.println(med.getName());
            RequestDispatcher rd = request.getRequestDispatcher("general.jsp?edit="+request.getParameter("edit"));
            rd.forward(request, response);
        } 
          if (page.equalsIgnoreCase("newlist")) {
            System.out.println("mediaid="+request.getParameter("mid"));
            int uid = (int) session.getAttribute("uid");
            media med = new ServicesUser().getMediaRow(Integer.parseInt(request.getParameter("mid")));
            new ServicesLogin().insertSave(uid,med.getMid());
            System.out.println(request.getParameter("thumb"));
            request.setAttribute("media",med);
            
            List<media> mediaList = new ServicesLogin().getSaveList(uid);
            request.setAttribute("mediaList", mediaList);
            
            for( media m : mediaList ) {
                System.out.println("Media name: " + m.getName());
            }
            
            
            RequestDispatcher rd = request.getRequestDispatcher("LoginServ?page=savelist");
            rd.forward(request, response);
        }
          
          //upload new media try
        if (page.equalsIgnoreCase("media")) {
            /*signup is from ServicesLogin but sign is the instance*/
            media med = new media();
//                              yeta Model ma bhako name halne request garna agadi
            
//                              request.setAttribute("name",med);

            List<media> userList = new ServicesLogin().getMediaList();

            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("projects.jsp");
            rd.forward(request, response);
        } 
          
          
           if (page.equalsIgnoreCase("userEdit")) {
               System.out.println("new");
            media med = new media();
            
            String edit = request.getParameter("edit");
            System.out.println(request.getParameter("mid"));
            med.setName(request.getParameter("name"));
            med.setDes(request.getParameter("des"));
            med.setGenre(request.getParameter("genre"));
            med.setCateg(request.getParameter("categ"));
            med.setYear(request.getParameter("year"));
            med.setThumb(request.getParameter("thumb"));
            med.setVideo(request.getParameter("video"));
            System.out.println(request.getParameter("thumb"));
            new ServicesUser().editUser(edit, med);
            List<media> userList = new ServicesLogin().getMediaList();
            request.setAttribute("userList", userList);
            RequestDispatcher rd = request.getRequestDispatcher("LoginServ?page=mediaList");
            rd.forward(request, response);
            
//            try {
//                new ServicesUser().editUser(mid, med);
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//            List<media> userList = new ServicesLogin().getMediaList();
//            request.setAttribute("mediaList", userList);
////     
//            RequestDispatcher rd = request.getRequestDispatcher("LoginServ?page=mediaList");
////            RequestDispatcher rd = request.getRequestDispatcher("general.jsp?edit="+request.getParameter("edituser"));
//
//            rd.forward(request, response);
        }
           
           if (page.equalsIgnoreCase("delete")) {
               int id = Integer.parseInt(request.getParameter("edituser"));
               System.out.println("delete");
               new ServicesUser().deleteUser(id);
            RequestDispatcher rd = request.getRequestDispatcher("LoginServ?page=mediaList");
            rd.forward(request, response);
        } 
           if (page.equalsIgnoreCase("deleteSave")) {
               int mid = Integer.parseInt(request.getParameter("mid"));
               int uid = (int) session.getAttribute("uid");

               System.out.println("delete");
               new ServicesUser().deleteSave(mid,uid);
            RequestDispatcher rd = request.getRequestDispatcher("LoginServ?page=savelist");
            rd.forward(request, response);
        }
            if (page.equalsIgnoreCase("savelist")) {
            /*signup is from ServicesLogin but sign is the instance*/
//                               media med = new media();
//                             sout 
            int uid = (int) session.getAttribute("uid");

            List<media> mediaList = new ServicesLogin().getSaveList(uid);

            request.setAttribute("mediaList", mediaList);
            
            for( media m : mediaList ) {
                System.out.println("Media name: " + m.getName());
            }
            
            
            RequestDispatcher rd = request.getRequestDispatcher("playlists.jsp");
            rd.forward(request, response);
            
        }
    
         
          
//          Cookie servlet
          if (page.equalsIgnoreCase("fav")) {
            Cookie cookie = new Cookie("favmovie",request.getParameter("fav"));
            response.addCookie(cookie);
            System.out.println(cookie);
            
            RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
            rd.forward(request, response);
        }
        //upload try
        if (page.equalsIgnoreCase("video")) {
            /*signup is from ServicesLogin but sign is the instance*/
            video video = new video();
//                              yeta Model ma bhako name halne request garna agadi
            video.setMovie_desc(request.getParameter("desc"));
            video.setThumbnail(request.getParameter("thumb"));
            video.setVideo(request.getParameter("image"));
            new ServicesLogin().insertUser(video);
            System.out.println(request.getParameter("image"));
            
            System.out.println(request.getParameter("thumb"));
//                              request.setAttribute("name",med);

            List<video> userList = new FavServices().getVideoList();

            request.setAttribute("videoList", userList);
            
            RequestDispatcher rd = request.getRequestDispatcher("image.jsp");
            rd.forward(request, response);
            
//            RequestDispatcher rd = request.getRequestDispatcher("image.jsp?movieThumb=" + request.getParameter("image") );

            rd.forward(request, response);
        }  
//          //upload content try
//        if (page.equalsIgnoreCase("content")) {
//            /*signup is from ServicesLogin but sign is the instance*/
//            content cont = new content();
////                              yeta Model ma bhako name halne request garna agadi
//            cont.setName(request.getParameter("name"));
//            cont.setDesc(request.getParameter("desc"));
//            cont.setCateg(request.getParameter("categ"));
//            cont.setGenre(request.getParameter("genre"));
//            cont.setThumb(request.getParameter("thumb"));
//            cont.setVideo(request.getParameter("video"));
//            new ServicesLogin().insertContent(cont);
//            System.out.println(request.getParameter("thumb"));
//            request.setAttribute("name",cont);
//            RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
//            
//            rd.forward(request, response);
//        } 
        
        //upload new media try
        if (page.equalsIgnoreCase("media")) {
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

            List<media> userList = new ServicesLogin().getMediaList();

            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("projects.jsp");
            rd.forward(request, response);
        } 
        
        if (page.equalsIgnoreCase("mediaList")) {
            /*signup is from ServicesLogin but sign is the instance*/
//                               media med = new media();
//                             sout 
            System.out.println("The user is: ");
            List<media> userList = new ServicesLogin().getMediaList();

            request.setAttribute("mediaList", userList);
            for( media m : userList ) {
                System.out.println("Name: " + m.getName());
            }
            RequestDispatcher rd = request.getRequestDispatcher("projects.jsp");
            rd.forward(request, response);
            
        } 
        
//         if (page.equalsIgnoreCase("getcateg")) {
//            /*signup is from ServicesLogin but sign is the instance*/
//            String cat=request.getParameter("cat");
////                              yeta Model ma bhako name halne request garna agadi
//            List<content> cont = new ServicesLogin().viewCateg(cat);
//            
//            System.out.println(request.getParameter("thumb"));
//             System.out.println(cont.isEmpty());
//             request.setAttribute("name",cont);
//            RequestDispatcher rd = request.getRequestDispatcher("view.jsp");
//            rd.forward(request, response);
//        } 
         
         
             
        if ( page.equalsIgnoreCase("register") ) {
                                
                RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
                rd.forward(request, response);
                
            } 
        if ( page.equalsIgnoreCase("login") ) {
                                
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
                
            } 
        if ( page.equalsIgnoreCase("logout")) {
         new ServicesUser().logout(request, response);


        }
        
    }
    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
