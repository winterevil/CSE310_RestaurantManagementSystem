package savoria.admin.order;

import savoria.lib.ObjectManager;
import java.util.*;

public class OrderManager extends ObjectManager<Order> {
    @SuppressWarnings("unchecked")
    private static ArrayList<Order> orders = OrderDAO.getInstance().Read();

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

    public static int getPendingOrders() {
        int count = 0;
        for (Order order : orders) {
            if (order.getStatus() == 2) {
                count++;
            }
        }
        return count;
    }

    public static int getPaidOrders() {
        int count = 0;
        for (Order order : orders) {
            if (order.getStatus() == 1) {
                count++;
            }
        }
        return count;
    }

    public static int getFailedOrders() {
        int count = 0;
        for (Order order : orders) {
            if (order.getStatus() == 3) {
                count++;
            }
        }
        return count;
    }

    public static int getCancelOrders() {
        int count = 0;
        for (Order order : orders) {
            if (order.getStatus() == 4) {
                count++;
            }
        }
        return count;
    }

    @SuppressWarnings("unchecked")
    @Override
    public void saveList() {
        OrderDAO.getInstance().SaveWithHeader(orders);
    }

    @SuppressWarnings("unchecked")
    @Override
    public void restoreList() {
        orders = OrderDAO.getInstance().Read();
    }

}
