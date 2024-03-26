/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package citprog.restaurantweb.order;

/**
 *
 * @author Admin
 */
import java.util.*;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVRecord;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;

import java.io.*;

import citprog.restaurantweb.resourcesmanagement.Menu;
import citprog.restaurantweb.resourcesmanagement.MenuManager;
import static java.awt.SystemColor.menu;
import savoria.lib.ObjectDAO;

/**
 *
 */
@SuppressWarnings("rawtypes")
public class OrderDAO extends ObjectDAO {

    private String filePath = "E:\\Order.csv";
    private static OrderDAO instance;

    public OrderDAO() {
        super("E:\\Order.csv", "id,order,customer,email,avatar,payment,status,spent,method,date,time,method_number");
    }

    public static OrderDAO getInstance() {
        if (instance == null) {
            instance = new OrderDAO();
        }
        return instance;
    }

    @Override
    public ArrayList Read() {
        ArrayList<Order> orderList = new ArrayList<>();
        File file = new File(filePath);
        try {
            FileReader fr = new FileReader(file);
            BufferedReader br = new BufferedReader(fr);
            br.readLine();
            String line;
            while ((line = br.readLine()) != null) {
                String[] parts = line.split(",");
                int counter = 0;
                int ID = Integer.parseInt(parts[0]);
                int order = Integer.parseInt(parts[1]);
                String name = parts[2];
                String email = parts[3];
                String avatar = parts[4];
                int payment = Integer.parseInt(parts[5]);
                int status = Integer.parseInt(parts[6]);
                double spent = Double.parseDouble(parts[7]);
                String method = parts[8];
                String date = parts[9];
                String time = parts[10];
                int methodNumber = Integer.parseInt(parts[11]);
                String menus = parts[12];
                String orderItems = parts[13];
                System.out.println(orderItems);
                System.out.println("menu: " + menus);
                Order orderItem;
                if (!menus.equals("null")) {
                    String[] products = menus.split("-");

                    HashMap<Menu, Integer> cartItem = new HashMap<>();
                    String[] product = new String[2 * products.length];
                    int k = 0;
                    for (int i = 0; i < products.length; i++) {

                        product[k] = products[i].split("!")[0];

                        product[k + 1] = products[i].split("!")[1];
                        k += 2;
                    }

                    int h = 0;
                    for (int j = 0; j < products.length; j++) {

                        String[] parts2 = product[h].split(":");
                        Menu menu = new Menu(Integer.parseInt(parts2[0]), parts2[1], parts2[2],
                                Double.parseDouble(parts2[3]), parts2[4], Integer.parseInt(parts2[5]));
                        cartItem.put(menu, Integer.parseInt(product[h + 1]));
                        h += 2;

                    }
                    Cart cart = new Cart(cartItem);

                    orderItem = new Order(ID, order, name, email, avatar, payment, status, spent, method, date,
                            time, methodNumber, cart, null);

                } else {
                    orderItem = new Order(ID, order, name, email, avatar, payment, status, spent, method, date,
                            time, methodNumber, null, null);
                }

                if (!orderItems.equals("null")) {
                    String[] products = orderItems.split("-");
                    for (int i = 0; i < products.length; i++) {
                        System.out.println(products[i]);
                    }

                    HashMap<Menu, Integer> cartItem = new HashMap<>();
                    String[] product = new String[2 * products.length];
                    int k = 0;
                    for (int i = 0; i < products.length; i++) {
                        product[k] = products[i].split("!")[0];
                        System.out.println(product[k]);
                        product[k + 1] = products[i].split("!")[1];
                        k += 2;
                    }

                    int h = 0;
                    for (int j = 0; j < products.length; j++) {

                        String[] parts2 = product[h].split(":");
                        Menu menu = new Menu(Integer.parseInt(parts2[0]), parts2[1], parts2[2],
                                Double.parseDouble(parts2[3]), parts2[4], Integer.parseInt(parts2[5]));
                        cartItem.put(menu, Integer.parseInt(product[h + 1]));
                        h += 2;

                    }

                    orderItem.setOrderItem(cartItem);

                } else {
                    orderItem.setOrderItem(null);
                }
                orderList.add(orderItem);
            }

            br.close();
            return orderList;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    @SuppressWarnings("deprecation")
    public static void readToJson() {
        String csvFilePath = "D://Order.csv";
        String jsonFilePath = "E://Web Project//SavoriaRestaurant//web//assets//json//ecommerce-customer-order.json";
        try {
            Reader in = new FileReader(csvFilePath);
            Iterable<CSVRecord> records = CSVFormat.DEFAULT.withFirstRecordAsHeader().parse(in);

            ObjectMapper mapper = new ObjectMapper();
            ArrayNode arrayNode = mapper.createArrayNode();

            for (CSVRecord record : records) {
                ObjectNode node = mapper.createObjectNode();
                node.put("id", Integer.parseInt(record.get("id")));
                node.put("order", record.get("order"));
                node.put("customer", record.get("customer"));
                node.put("email", record.get("email"));
                node.put("avatar", record.get("avatar"));
                node.put("payment", Integer.parseInt(record.get("payment")));
                node.put("status", Integer.parseInt(record.get("status")));
                node.put("spent", record.get("spent"));
                node.put("method", record.get("method"));
                node.put("date", record.get("date"));
                node.put("time", record.get("time"));
                node.put("method_number", Integer.parseInt(record.get("method_number")));
                arrayNode.add(node);
            }

            ObjectNode rootNode = mapper.createObjectNode();
            rootNode.set("data", arrayNode);

            try (FileWriter file = new FileWriter(jsonFilePath)) {
                file.write(rootNode.toString());
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void saveToCsv() {
        String csvFilePath = "D://Order.csv";
        String jsonFilePath = "E://Web Project//SavoriaRestaurant//web//assets//json//ecommerce-customer-order.json";
        try {
            Reader in = new FileReader(jsonFilePath);
            ObjectMapper mapper = new ObjectMapper();
            ArrayNode arrayNode = mapper.createArrayNode();
            ObjectNode rootNode = mapper.createObjectNode();
            @SuppressWarnings("deprecation")
            Iterable<CSVRecord> records = CSVFormat.DEFAULT.withFirstRecordAsHeader().parse(in);
            for (CSVRecord record : records) {
                ObjectNode node = mapper.createObjectNode();
                node.put("id", Integer.parseInt(record.get("id")));
                node.put("order", record.get("order"));
                node.put("name", record.get("name"));
                node.put("email", record.get("email"));
                node.put("avatar", record.get("avatar"));
                node.put("payment", Integer.parseInt(record.get("payment")));
                node.put("status", Integer.parseInt(record.get("status")));
                node.put("spent", record.get("spent"));
                node.put("method", record.get("method"));
                node.put("date", record.get("date"));
                node.put("time", record.get("time"));
                node.put("method_number", Integer.parseInt(record.get("method_number")));
                arrayNode.add(node);
            }
            rootNode.set("data", arrayNode);
            try (FileWriter file = new FileWriter(csvFilePath)) {
                file.write(rootNode.toString());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void detailMenuToJson(ArrayList<Menu> menuItems) {
        String jsonFilePath = "E://Web Project//SavoriaRestaurant//web//assets//json//ecommerce-order-detail.json";
        ObjectMapper mapper = new ObjectMapper();
        ArrayNode arrayNode = mapper.createArrayNode();

        for (Menu menu : menuItems) {
            ObjectNode node = mapper.createObjectNode();
            node.put("id", menu.getID());
            node.put("product_name", menu.getName());
            node.put("product_info", menu.getIngredient());
            node.put("image", menu.getImage());
            node.put("qty", menu.getQuantity());
            node.put("price", menu.getPrice());
            arrayNode.add(node);
        }

        try (FileWriter file = new FileWriter(jsonFilePath)) {
            file.write(arrayNode.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
