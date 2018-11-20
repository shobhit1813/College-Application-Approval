/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shobhit
 */
public class verifyServlet extends HttpServlet {

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
        System.out.println("lalala");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String otp = request.getParameter("token");
        
        try{
            System.out.println("try");
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?useSSL=true&verifyServerCertificate=false&allowMultiQueries=true","root","1810");
            PreparedStatement ps = con.prepareStatement("select * from userreg where token =?");
            ps.setString(1,otp);
            ResultSet rs = ps.executeQuery();
             System.out.println("before rs");
            if(rs.next()){
                  System.out.println("rs.next");
                 String npass = request.getParameter("npass");
                 String cnpass = request.getParameter("cnpass");
                 String email = request.getParameter("vemail");
               PreparedStatement psd = con.prepareStatement("update userreg  set pass=? ,cpass=? where email =?");
               System.out.println("chk1");
               psd.setString(3,email);
               System.out.println("chk2");
               psd.setString(1,npass);
               System.out.println("chk3");
               psd.setString(2,cnpass);
               System.out.println("email"+email);
               int i = psd.executeUpdate();
               if(i > 0){
                 RequestDispatcher rd = request.getRequestDispatcher("/login.html");
                 rd.forward(request, response);
                }
            }
            else{
                System.out.println("Cannot");
            }
        }
        catch(Exception e){
            
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
