/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package savoria.admin.order;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import savoria.admin.account.Account;
import savoria.admin.account.AccountManager;

/**
 *
 * @author buitu
 */
@WebServlet(name = "GetOrderDetail", urlPatterns = {"/GetOrderDetail"})
public class GetOrderDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String customerEmail = request.getParameter("customerEmail");
        System.out.println(customerEmail);
       Account account = AccountManager.findAccountByEmail(customerEmail);
        Order order = OrderManager.findOrderByEmail(customerEmail);
        request.setAttribute("order", order);
        request.setAttribute("account", account);
        OrderDAO.getInstance().detailMenuToJson(order.getOrderDetail());
        request.getRequestDispatcher("app-ecommerce-order-detail.jsp").forward(request, response);  
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
}
