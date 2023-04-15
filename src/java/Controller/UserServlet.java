/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import Hashing.HashingPassword;
import Model.login;
import Model.signup;
import Model.video;
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
public class UserServlet extends HttpServlet {

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
        System.out.println(page);
        if(page.equalsIgnoreCase("existing")) {
            String email = request.getParameter("username");
            System.out.println("in here");
            String password = HashingPassword.hashPassword(request.getParameter("password")); 
            System.out.println("\n\n------Password----");
            System.out.println(password);
            System.out.println(email + " " + password + " ");
            
            login user = new ServicesUser().getUser(email, password);
//            System.out.println("user:"+user.getFullname());
            if (user != null) {                
                session.setAttribute("uid", user.getUid());
                session.setAttribute("email", user.getEmail());
                session.setAttribute("fullname", user.getFullname());

//                request.setAttribute("user", user);
                request.setAttribute("msg", "Login Successful!");
//                
//                 response.sendRedirect("index.jsp");
//                    s.setAttribute("username", uname);
                
//                response.sendRedirect("/Stream/admin.jsp");

//            signup admin = new signup();
//            signup is data type from model
//                session.setAttribute("uid", user.getUid());

                request.setAttribute("user", user);

            List<login> userList = new ServicesUser().getUserList();
            request.setAttribute("userList", userList);
           
            RequestDispatcher rd = request.getRequestDispatcher("/UserServlet?page=userPro");
            rd.forward(request, response);
//                rd.forward(request, response);
            } else {
                System.out.println("wwq");
                session.setAttribute("error_msg", "Invalid username or passowrd");;
                request.setAttribute("msg", "Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("login_1.jsp");
                rd.forward(request, response);
            } 
        } // --------- existing page ends here --------- 
                  if (page.equalsIgnoreCase("userPro")){
//            int id = Integer.parseInt( request.getParameter("uid") );
             System.out.println("Getting the session id: "  + session.getAttribute("id"));
            List<login> userList = new ServicesUser().getUserList();
            request.setAttribute("userList", userList);
           
            RequestDispatcher rd = request.getRequestDispatcher("profile1.jsp");
            rd.forward(request, response);
                  
//                rd.forward(request, response);
            }
          if (page.equalsIgnoreCase("userEdit"))

        {
            int uid = Integer.parseInt(request.getParameter("edit"));           
            login user = new ServicesUser().getUserRow(uid);
            request.setAttribute("user", user);
            RequestDispatcher rd = request.getRequestDispatcher("editprofile.jsp");
            rd.forward(request, response);
        }
           if (page.equalsIgnoreCase("editProfile"))

        {
            System.out.println("editprofile");
            int uid = Integer.parseInt(request.getParameter("edit"));
            login user = new login();
            user.setFullname(request.getParameter("fullname"));
            user.setUid(Integer.parseInt(request.getParameter("edit")));

            System.out.println(user.getFullname());
            new ServicesUser().editProfile(user);
            request.setAttribute("user", user);
            RequestDispatcher rd = request.getRequestDispatcher("/UserServlet?page=userEdit&edit="+uid);
            rd.forward(request, response);
        }
//
         
          if (page.equalsIgnoreCase("signUp")) {
            /*signup is from UserServices but sign is the instance*/
            signup sign = new signup();
            sign.setFullname(request.getParameter("fullname"));
            sign.setEmail(request.getParameter("email"));
            sign.setPassword(HashingPassword.hashPassword(request.getParameter("password")));
            new ServicesUser().insertUser(sign);
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }      
          
         
        if ( page.equalsIgnoreCase("register") ) {
                                
                RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
                rd.forward(request, response);
                
            } 
        if ( page.equalsIgnoreCase("login") ) {
                                
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
                
            }
             if(page.equalsIgnoreCase("verifyUsername")) {
             String username = request.getParameter("email");
             login user = new ServicesUser().getUserId(username);
             
             if (user != null) {
                 session.setAttribute("id", user.getUid());
                 request.setAttribute("user", user);
                 RequestDispatcher rd = request.getRequestDispatcher("NewPassword.jsp");
                 rd.forward(request, response);
             }
             session.setAttribute("status", "Enter A Valid Email");
             RequestDispatcher rd = request.getRequestDispatcher("ForgotPassword.jsp");
             rd.forward(request, response);             
         }
                 
             if(page.equalsIgnoreCase("changePassword")) {
             String password = HashingPassword.hashPassword(request.getParameter("password")); 

             int id = Integer.parseInt( request.getParameter("id") );
             System.out.println("Getting the session id: "  + session.getAttribute("id"));
             System.out.println("Getting id: " + id);
             
             new ServicesUser().updatePassword(id, password);
             
             RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
             rd.forward(request, response);
             
         }
        
    }
    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
