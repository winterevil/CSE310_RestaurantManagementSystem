/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package citprog.restaurantweb.order;

import citprog.restaurantweb.resourcesmanagement.Menu;
import java.util.*;

/**
 *
 * @author Admin
 */
public class Cart {
    private HashMap<Menu,Integer> cartMap;
//    private double totalPrice;
    private int quantityOrder;
    
    public Cart(){
        cartMap = new HashMap<>();
    }

    public Cart(HashMap<Menu, Integer> cartMap) {
        this.cartMap = cartMap;
    }

    public HashMap<Menu, Integer> getCartMap() {
        return cartMap;
    }

    public void setCartMap(HashMap<Menu, Integer> cartMap) {
        this.cartMap = cartMap;
    }

//    public double getTotalPrice() {
//        return totalPrice;
//    }
//
//    public void setTotalPrice(double totalPrice) {
//        this.totalPrice = totalPrice;
//    }
    
    public int getQuantityOrder(){
        return quantityOrder;
    }
    
    public void setQuantityOrder(int quantityOrder){
        this.quantityOrder = quantityOrder;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<Menu, Integer> entry : cartMap.entrySet()) {
            Menu menu = entry.getKey();
            int quantity = entry.getValue();
            sb.append(menu.toStringCart());
            sb.append("!");
            sb.append(quantity).append("-");

        }
        //sb.append(quantityOrder).append("!");
//        sb.append(totalPrice);
        return sb.toString();
    }
    
    
}
