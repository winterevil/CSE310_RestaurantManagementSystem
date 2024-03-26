/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package citprog.restaurantweb.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import citprog.restaurantweb.order.Cart;
import citprog.restaurantweb.order.Order;
import citprog.restaurantweb.order.OrderDAO;
import citprog.restaurantweb.order.OrderManager;
import citprog.restaurantweb.resourcesmanagement.Menu;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

/**
 *
 * @author Admin
 */
@WebServlet(name = "AddToCart", urlPatterns = {"/AddToCart"})
public class AddToCart extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // check session
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("account") == null) {
            response.sendRedirect("login.jsp");
        } else {
            // add to cart
            HttpSession session = request.getSession();
            Menu menu = (Menu) session.getAttribute("menu");
            Account account = (Account) request.getSession().getAttribute("account");
            Order newOrder = null;
            ArrayList<Order> orderList = OrderManager.getOrders();
            for (Order order : orderList) {

                if (!order.getEmail().equals(account.getEmail())) {
                } else {
                    String email = account.getEmail();
                    newOrder = OrderManager.findOrderByEmail(email);
                    break;
                }

            }
            if (newOrder == null) {
                newOrder = new Order();
                newOrder.setEmail(account.getEmail());
                newOrder.setName(account.getName());

            }

            Cart cart = newOrder.getCart();

            if (cart == null) {
                cart = new Cart();
            }
            if (cart.getCartMap()==null){
                HashMap<Menu, Integer> cartMap = new HashMap<>();
                cart.setCartMap(cartMap);
            }
            String quaString = request.getParameter("number");
            int quantity = Integer.parseInt(quaString);
            cart.setQuantityOrder(quantity);
            
            HashMap<Menu, Integer> cartMap = cart.getCartMap();
            System.out.println(menu.toString());
            cartMap.put(menu, cartMap.getOrDefault(menu, 0) + quantity);
            cart.setCartMap(cartMap);
            newOrder.setCart(cart);
            OrderManager.getInstance().addToList(newOrder);
            OrderDAO.getInstance().SaveWithHeader(orderList);
            session.setAttribute("cartMap", cartMap);
            
            response.sendRedirect("menu-1.jsp");
        }
    }

}
