/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package savoria.admin.order;

import java.util.*;
import savoria.admin.product.Menu;

/**
 *
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
    private ArrayList<Menu> orderDetail;

    public Order(int ID, int order, String name, String email, String avatar, int payment, int status, double spent,
            String method, String date, String time, int methodNumber, ArrayList<Menu> orderDetail) {
        if (ID == 0) {
            this.ID = randInt(1, 1000000);
        } else {
            this.ID = ID;
        }
        this.order = order;
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
        this.orderDetail = orderDetail;
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
        sb.append(ID).append(",").append(order).append(",").append(name).append(",").append(email).append(",").append(avatar).append(",").append(payment).append(",").append(status).append(",").append(spent).append(",").append(method).append(",").append(date).append(",").append(time).append(",").append(methodNumber).append(",");
        for (Menu menu : orderDetail) {
            sb.append(menu.getName()).append(";");
        }
        sb.append("\n");
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

    public ArrayList<Menu> getOrderDetail() {
        return orderDetail;
    }

    public void setOrderDetail(ArrayList<Menu> orderDetail) {
        this.orderDetail = orderDetail;
    }
}
