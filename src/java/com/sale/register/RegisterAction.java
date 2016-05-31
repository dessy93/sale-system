/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sale.register;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ivan93
 */
public class RegisterAction extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /** 
     * The doGet method of the servlet. <br> 
     * 
     * This method is called when a form has its tag value method equals to get. 
     *  
     * @param request the request send by the client to the server 
     * @param response the response send by the server to the client 
     * @throws ServletException if an error occurred 
     * @throws IOException if an error occurred 
     */  
    public void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
        this.doPost(request, response);  
    }  
  
    /** 
     * The doPost method of the servlet. <br> 
     * 
     * This method is called when a form has its tag value method equals to post. 
     *  
     * @param request the request send by the client to the server 
     * @param response the response send by the server to the client 
     * @throws ServletException if an error occurred 
     * @throws IOException if an error occurred 
     */  
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
String path = request.getContextPath();  
    request.setCharacterEncoding("UTF-8");  
        response.setContentType("text/html; charset=utf-8");  
        PrintWriter out = response.getWriter();  
        String username = request.getParameter("username");  
      
        String password = request.getParameter("password");  
        System.out.println("username = " + username +" pswd = " + password);  
         
        out.flush();  
        out.close();  
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
