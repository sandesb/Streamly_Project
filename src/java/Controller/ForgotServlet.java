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
import Service.EmailSender;
import Service.ServicesUser;
import Service.ServicesLogin;
import java.io.IOException;
import java.io.PrintWriter;
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
public class ForgotServlet extends HttpServlet {

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
        System.out.println(page);

            if (page.equalsIgnoreCase("forget")) {
            RequestDispatcher dispacher = request.getRequestDispatcher("pages/ForgetPassword.jsp");
            dispacher.forward(request, response);
        }  
          
        if (page.equalsIgnoreCase("sendOTP")) {
            PrintWriter out = response.getWriter();
            login user = new ServicesUser().GetUser(request.getParameter("email"));

            String OTP = (request.getParameter("OTP") != null) ? request.getParameter("OTP") : "0";

            if (Integer.parseInt(OTP) == 256734) {
                RequestDispatcher dispacher = request.getRequestDispatcher("pages/ResetPassword.jsp");
                dispacher.forward(request, response);

            } else {
                if (user != null) {

                    HttpSession s = request.getSession(true);
                    s.setAttribute("Email", user.getEmail());
                    System.out.println(user.getEmail());
                    new EmailSender().EmailSpecifier(user.getEmail(), "One Time Password", "Your OTP is: 256734");
                    RequestDispatcher dispacher = request.getRequestDispatcher("pages/enterOTP.jsp");
                    dispacher.forward(request, response);
                } else {
                    out.println("No user with such email exists");
                    RequestDispatcher dispacher = request.getRequestDispatcher("signup.jsp");
                    dispacher.forward(request, response);
                }
            }

        }
         if (page.equalsIgnoreCase("resetPassword")) {

            PrintWriter out = response.getWriter();

            String nPassword = request.getParameter("NewPassword");
            String cPassword = request.getParameter("ConfirmPassword");

            if (nPassword.equals(cPassword)) {
                HttpSession s = request.getSession();
                new EmailSender().ResetPassword(nPassword, s.getAttribute("Email").toString());

                s.invalidate();

                RequestDispatcher dispacher = request.getRequestDispatcher("login.jsp");
                dispacher.forward(request, response);
            } else {
                out.println("Password do not match");
                RequestDispatcher dispacher = request.getRequestDispatcher("pages/ResetPassword.jsp");
                dispacher.forward(request, response);
            }
        }
    }
    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
