/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;


/**
 *
 * @author shobhit
 */
public class Registration extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        String fn = request.getParameter("fname");
        String ln = request.getParameter("lname");
        String em = request.getParameter("email");
        String pass = request.getParameter("pass");
        String cpass = request.getParameter("cpass");
        String city = request.getParameter("city");
        String mobile = request.getParameter("mbno");
        String gen = request.getParameter("Gender");
        
        try{
            
           Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?useSSL=true&verifyServerCertificate=false&allowMultiQueries=true","root","1810");
            PreparedStatement ps = con.prepareStatement("insert into userreg values(?,?,?,?,?,?,?,?)");
            ps.setString(1,fn);
            ps.setString(2,ln);
            ps.setString(3,em);
            ps.setString(4,pass);
            ps.setString(5,cpass);
            ps.setString(6,city);
            ps.setString(7,mobile);
            ps.setString(8,gen);
            
            int i = ps.executeUpdate();
            System.out.println("shobhit");
            if(i > 0)
            {
                //out.println("Registration Successfull");
                RequestDispatcher rd = request.getRequestDispatcher("/login.html");
                 rd.forward(request, response);
            }
           
        }
        catch(Exception ex){
            System.out.print(ex);
        }
        out.close();
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
