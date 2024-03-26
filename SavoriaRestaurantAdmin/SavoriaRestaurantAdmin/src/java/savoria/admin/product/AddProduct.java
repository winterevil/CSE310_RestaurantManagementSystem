/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package savoria.admin.product;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@jakarta.servlet.annotation.MultipartConfig
public class AddProduct extends HttpServlet {

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
        MenuManager.addMenuItem(menu);
        MenuManager.saveMenuList();
        System.out.println(menu);
        MenuDAO.readDetailMenuToJson();
        MenuDAO.readDetailMenuToJson();
        response.sendRedirect("app-ecommerce-product-list.jsp");
    }

}
