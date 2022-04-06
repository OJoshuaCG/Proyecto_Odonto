/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//MySQL imports
import java.io.*;
import java.net.*;
import java.sql.*;


/**
 *
 * @author PC
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            
            if(request.getParameter("btnLogin") != null){
                String usuario = request.getParameter("txtUsuario");
                String pass = request.getParameter("txtPass");
                
                //if(usuario.equals("admin")) response.sendRedirect("a");
                
                Connection con = null;
                ResultSet rs = null;
                Statement inst = null;

                String strcon = "jdbc:mysql//localhost/odonto?user=root&password=&PRT=3306";

                try{
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    //Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(strcon);
                    inst = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

                }catch( java.lang.ClassNotFoundException | SQLException e){
                }

                //Sintaxis MySQL: CALL obtenerProductosPorEstado('disponible');
                String SP = "SP_IniciarSesion('"+usuario+"','"+pass+"')";

                try{
                    rs = inst.executeQuery(SP);

                    if(rs!=null){
                       response.sendRedirect("home.jsp");
                    } else {
                       response.sendRedirect("index.jsp");
                    }

                    rs.close();
                    inst.close();
                    con.close();
                }catch(SQLException e){
                    response.sendRedirect("index.jsp");
                }
            }
            
        }
    }
    
    protected void DBConn(String usuario, String contra){
        Connection con = null;
        ResultSet rs = null;
        Statement inst = null;
        
        String strcon = "jdbc:mysql//127.0.0.1:3306/odonto";
        String user = "root";
        String password = "";
        
        try{
            //Class.forName("com.mysql.jdbc.Driver").newInstance();
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(strcon,user,password);
            inst = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

        }catch(java.lang.ClassNotFoundException | SQLException e){
        }
        
        //Sintaxis MySQL: CALL obtenerProductosPorEstado('disponible');
        String SP = "SP_IniciarSesion('"+usuario+"','"+contra+"')";
        
        try{
            rs = inst.executeQuery(SP);
            
            if(rs!=null){
               //response.sendRedirect("a");
            }
            
            rs.close();
            inst.close();
            con.close();
        }catch(SQLException e){}
    
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
