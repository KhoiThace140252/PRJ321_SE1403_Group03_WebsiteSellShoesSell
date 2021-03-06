/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.admin;

import Dao.NhaCungCapDAO;
import Model.NhaCungCap;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Admin
 */
@WebServlet(name = "InsertSupplierController", urlPatterns = {"/InsertSupplierController"})
public class InsertSupplierController extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InsertSupplierController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InsertSupplierController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String idinsert = request.getParameter("InsertIdSupplier");//lay gia tri cua doi tuong InsertIdSupplier
        String nameinsert = request.getParameter("InsertNameSupplier");// lay gia tri cua doi tuong InsertNameSupplier
        String addressinsert = request.getParameter("InsertAddressSupplier"); // lay gia tri cua doi tuong InsertAddressSupplier
        String phoneinsert = request.getParameter("InsertPhoneSupplier");// lay gia tri cua doi tuong InsertPhoneSupplier
        String DIR = "images\\";
        String filename = "";
        try {
            filename = DIR + request.getParameter("InsertLogoSupplier");
        } catch (Exception e) {
        }

        String mota = request.getParameter("InsertDescriptionSupplier");// lay gia tri cua doi tuong InsertDescriptionSupplier
        NhaCungCap ncc = new NhaCungCap(idinsert, nameinsert, addressinsert, phoneinsert, filename, mota, "Already");
        new NhaCungCapDAO().add(ncc);
        response.sendRedirect("suppliers.jsp");// chuyen trang sang suppliers.jsp
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
