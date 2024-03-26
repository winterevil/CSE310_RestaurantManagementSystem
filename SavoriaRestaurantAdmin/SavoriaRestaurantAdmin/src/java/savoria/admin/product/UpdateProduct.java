/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package savoria.admin.product;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

/**
 *
 * @author buitu
 */
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)  
public class UpdateProduct extends HttpServlet {

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
            out.println("<title>Servlet UpdateProduct</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateProduct at " + request.getContextPath() + "</h1>");
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
        String name = request.getParameter("productTitle");
        String productDescription = request.getParameter("productSummaryDescription");
        String SKU = request.getParameter("productSku");
        int productSku = Integer.parseInt(SKU);
        String quantity = request.getParameter("quantity");
        int productQuantity = Integer.parseInt(quantity);
        String category = request.getParameter("category");
        String price = request.getParameter("productPrice");
        double productPrice = Double.parseDouble(price);
        String switchValue = request.getParameter("switchValue");
        int stock = Integer.parseInt(switchValue);
        String statusString = request.getParameter("status");
        int status = Integer.parseInt(statusString);
        Part imagePart = request.getPart("image");
        String imageName = imagePart.getSubmittedFileName();
        InputStream imageContent = imagePart.getInputStream();
        String SAVE_DIR = "E:\\Web Project\\SavoriaRestaurant\\web\\assets\\images\\food";
        File file = new File(SAVE_DIR + File.separator + imageName);
        try (FileOutputStream fos = new FileOutputStream(file)) {
            int data;
            while ((data = imageContent.read()) != -1) {
                fos.write(data);
            }
        }
        Menu menu = new Menu(0, name, productDescription, productPrice, category, productQuantity, stock, productSku, status, imageName);
        if (MenuManager.updateMenuItem(menu)) {
            response.sendRedirect("app-ecommerce-product-list.jsp");
        } else {
            request.setAttribute("message", "Update failed! Check your input again!");
            response.sendRedirect("app-ecommerce-product-edit.jsp");
        }
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
        String name = request.getParameter("productTitle");
        String productDescription = request.getParameter("productSummaryDescription");
        String SKU = request.getParameter("productSku");
        int productSku = Integer.parseInt(SKU);
        String quantity = request.getParameter("quantity");
        int productQuantity = Integer.parseInt(quantity);
        String category = request.getParameter("category");
        String price = request.getParameter("productPrice");
        double productPrice = Double.parseDouble(price);
        String switchValue = request.getParameter("switchValue");
        int stock = Integer.parseInt(switchValue);
        String statusString = request.getParameter("status");
        int status = Integer.parseInt(statusString);
        Part imagePart = request.getPart("image");
        String imageName = imagePart.getSubmittedFileName();
        InputStream imageContent = imagePart.getInputStream();
        String SAVE_DIR = "E:\\Web Project\\SavoriaRestaurant\\web\\assets\\images\\food";
        File file = new File(SAVE_DIR + File.separator + imageName);
        try (FileOutputStream fos = new FileOutputStream(file)) {
            int data;
            while ((data = imageContent.read()) != -1) {
                fos.write(data);
            }
        }
        Menu menu = new Menu(0, name, productDescription, productPrice, category, productQuantity, stock, productSku, status, imageName);
        if (MenuManager.updateMenuItem(menu)) {
            response.sendRedirect("app-ecommerce-product-list.jsp");
        } else {
            request.setAttribute("message", "Update failed! Check your input again!");
            response.sendRedirect("app-ecommerce-product-edit.jsp");
        }
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
