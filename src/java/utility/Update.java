/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utility;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author aditya
 */
@WebServlet(name = "Update", urlPatterns = {"/Update"})
public class Update extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession();
            String name= (String) session.getAttribute("name");
            String pwd =request.getParameter("password");
            String sem = request.getParameter("sem");
            String email = request.getParameter("email");
            String contact = request.getParameter("contact");
            out.print("User Details Updated"+contact);
            if(name.length() > 5 && pwd.length() > 5 && sem != null && email.length() > 5 && contact.length() > 5 ) {
                try {
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1?zeroDateTimeBehavior=convertToNull","root","");
                    PreparedStatement ps = con.prepareStatement("UPDATE `user` SET `name`=?,`password`=?,`semester`=?,`email`=?,`contact`=? WHERE `name`=?;");
                    ps.setString(1, name);
                    ps.setString(2, pwd);                    
                    ps.setInt(3, Integer.parseInt(sem));
                    ps.setString(4, email);
                    ps.setString(5, contact);
                    ps.setString(6,name);
                    int x = ps.executeUpdate();
                    if(x > 0) {
                        out.print("User Details Updated");
                        response.sendRedirect("index.jsp");
                    } else {
                        out.print("Incorrect user details");
                    }
                } catch (Exception e) {
                    out.print(""+e);
                }  
            } else {
                out.print("Input for Registration is incorrect");
                
            }
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
