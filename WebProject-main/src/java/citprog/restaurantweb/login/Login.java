/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package citprog.restaurantweb.login;

import java.io.*;
import java.util.*;

import citprog.restaurantweb.order.Order;
import citprog.restaurantweb.order.OrderManager;
import citprog.restaurantweb.resourcesmanagement.Menu;
import citprog.restaurantweb.resourcesmanagement.MenuDAO;
import citprog.restaurantweb.resourcesmanagement.MenuManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author buitu
 */
public class Login extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public Login() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String emailId = request.getParameter("emailId");
        String password = request.getParameter("password");
        AccountDAO accountDAO = new AccountDAO();
        Account account = accountDAO.login(emailId, password);
        if (account != null) {
            HttpSession session = request.getSession();
            session.setAttribute("account", account);
            ArrayList<Menu> menuList = MenuManager.getMenuList();
            ArrayList<Order> orderList = OrderManager.getOrders();

            for (Order order : orderList) {
                if (order.getEmail().equals(emailId)) {  
                    if (order.getCart() == null) {
                        break;
                    }
                    session.setAttribute("cartMap", order.getCart().getCartMap());
                    break;
                }
            }
            session.setAttribute("menuList", menuList);
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } else {
            request.setAttribute("status", "Invalid email or password.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
