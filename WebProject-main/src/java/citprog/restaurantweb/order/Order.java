package citprog.restaurantweb.order;

import citprog.restaurantweb.resourcesmanagement.Menu;
import java.util.*;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author Admin
 */
public class Order {

    private int ID;
    private int order;
    private String name;
    private String email;
    private String avatar;
    private int payment;
    private int status;
    private double spent;
    private String method;
    private String date;
    private String time;
    private int methodNumber;
    private Cart cart;
    private HashMap<Menu, Integer> orderItem;

    public Order(int ID, int order, String name, String email, String avatar, int payment, int status, double spent,
            String method, String date, String time, int methodNumber, Cart cart, HashMap<Menu, Integer> orderItem) {
        if (ID == 0) {
            this.ID = randInt(100000, 999999);
        } else {
            this.ID = ID;
        }
        if (order == 0) {
            this.order = randInt(1000, 9999);
        } else {
            this.order = order;
        }
        this.name = name;
        this.email = email;
        this.avatar = avatar;
        this.payment = payment;
        this.status = status;
        this.spent = spent;
        this.method = method;
        this.date = date;
        this.time = time;
        this.methodNumber = methodNumber;
        this.cart = cart;
        this.orderItem = orderItem;
    }

    public Order() {
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getPayment() {
        return payment;
    }

    public void setPayment(int payment) {
        this.payment = payment;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public double getSpent() {
        return spent;
    }

    public void setSpent(double spent) {
        this.spent = spent;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getMethodNumber() {
        return methodNumber;
    }

    public void setMethodNumber(int methodNumber) {
        this.methodNumber = methodNumber;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();

        sb.append(ID).append(",").append(order).append(",").append(name).append(",").append(email).append(",")
                .append(avatar).append(",").append(payment).append(",").append(status).append(",").append(spent)
                .append(",").append(method).append(",").append(date).append(",").append(time).append(",")
                .append(methodNumber).append(",");
        ;
        if (cart != null && cart.getCartMap() != null) {
            sb.append(cart);
        } else {
            sb.append("null");
        }
        sb.append(",");
        if (orderItem != null) {
            sb.append(toStringCart());
        } else {
            sb.append("null");
        }
        sb.append("\n");
        return sb.toString();
    }

    public String toStringCart() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<Menu, Integer> entry : orderItem.entrySet()) {
            Menu menu = entry.getKey();
            int quantity = entry.getValue();
            sb.append(menu.toStringCart());
            sb.append("!");
            sb.append(quantity).append("-");

        }
        return sb.toString();
    }

    public static int randInt(int min, int max) {
        Random rand = new Random();
        int randomNum = rand.nextInt((max - min) + 1) + min;
        return randomNum;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public HashMap<Menu, Integer> getOrderItem() {
        return orderItem;
    }

    public void setOrderItem(HashMap<Menu, Integer> orderItem) {
        this.orderItem = orderItem;
    }

    

    
}
