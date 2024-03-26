/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package citprog.restaurantweb.order;

/**
 *
 * @author Admin
 */
import savoria.lib.ObjectManager;
import java.util.*;

import citprog.restaurantweb.resourcesmanagement.Menu;
import citprog.restaurantweb.resourcesmanagement.MenuManager;

public class OrderManager extends ObjectManager<Order> {

    @SuppressWarnings("unchecked")
    private static ArrayList<Order> orders = OrderDAO.getInstance().Read();
    private static OrderManager instance;

    public OrderManager() {
        super();
    }

    @Override
    public Order findById(int id) {
        for (Order order : orders) {
            if (order.getID() == id) {
                return order;
            }
        }
        return null;
    }

    public static OrderManager getInstance() {
        if (instance == null) {
            instance = new OrderManager();
        }
        return instance;
    }

    public static Order findOrderByEmail(String email) {
        for (Order order : orders) {
            if (order.getEmail().equals(email)) {
                return order;
            }
        }
        return null;
    }

    @Override
    public boolean addToList(Order object) {
        Order tempOrder = findById(object.getID());
        if (tempOrder == null) {
            orders.add(object);
            saveList();
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean removeFromList(int id) {
        Order temp = findById(id);
        if (temp != null) {
            orders.remove(temp);
            saveList();
            return true;
        }
        return false;
    }

    public static ArrayList<Order> getOrders() {
        return orders;
    }

    @SuppressWarnings("unchecked")
    @Override
    public void saveList() {
        // Debug log cart
        OrderDAO.getInstance().SaveWithHeader(orders);
    }

    @SuppressWarnings("unchecked")
    @Override
    public void restoreList() {
        orders = OrderDAO.getInstance().Read();
    }

    public static int getCartMapSize(String name, String email) {
        for (Order order : orders) {
            if (order.getName().equals(name) && order.getEmail().equals(email)) {
                Cart cart = order.getCart();
                if (cart == null) {
                    return 0;
                } else {
                    HashMap<Menu, Integer> cartMap = cart.getCartMap();
                    if (cartMap == null) {
                        return 0;
                    } else {
                        return cartMap.size();
                    }
                }
            }
        }
        return 0;
    }

    public static HashMap<Menu, Integer> getCartMap(String name, String email) {
        for (Order order : orders) {
            if (order.getName().equals(name) && order.getEmail().equals(email)) {
                if (order.getCart() == null) {
                    return null;
                } else {
                    return order.getCart().getCartMap();
                }
            }
        }
        return null;
    }

    public static void deleteCartItem(String name, String email, String menu) {
        for (Order order : orders) {
            if (order.getName().equals(name) && order.getEmail().equals(email)) {
                if (order.getCart() == null) {
                    return;
                } else {
                    Cart cart = order.getCart();
                    HashMap<Menu, Integer> cartMap = cart.getCartMap();
                    Menu temp = MenuManager.findMenuItemByName(menu);
                    cartMap.remove(temp);
                }
            }
        }
    }

    public static void checkout(String name, String email) {
        for (Order order : orders) {
            if (order.getName().equals(name) && order.getEmail().equals(email)) {
                HashMap<Menu, Integer> cartMap = order.getCart().getCartMap();
                order.setOrderItem(cartMap);
                for (Map.Entry<Menu, Integer> entry : cartMap.entrySet()) {
                    System.out.println(entry.getKey().getName() + " " + entry.getValue());
                }
                HashMap<Menu, Integer> orderItem = order.getOrderItem();
                for (Map.Entry<Menu, Integer> entry : orderItem.entrySet()) {
                    System.out.println(entry.getKey().getName() + " " + entry.getValue());
                }
                order.getCart().setCartMap(null);

            }
        }
    }
}
