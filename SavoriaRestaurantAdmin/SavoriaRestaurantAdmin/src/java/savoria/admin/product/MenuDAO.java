package savoria.admin.product;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVRecord;
import org.apache.commons.csv.CSVPrinter;

import java.io.*;
import java.util.*;
import savoria.lib.ObjectDAO;

@SuppressWarnings("rawtypes")
public class MenuDAO extends ObjectDAO {

    private static String filePath = "D://Menu.csv";
    private static MenuDAO instance;

    public MenuDAO() {
        super("D://Menu.csv", "id,product_name,ingredient,price,category,quantity,sku,stock,status,image");
        File file = new File(filePath);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public ArrayList Read() {
        ArrayList<Menu> menuList = new ArrayList<>();
        File file = new File(filePath);
        try {
            FileReader fr = new FileReader(file);
            BufferedReader br = new BufferedReader(fr);
            br.readLine();
            String line;
            while ((line = br.readLine()) != null) {
                String[] parts = line.split(",");
                int ID = Integer.parseInt(parts[0]);
                String name = parts[1];
                String ingredient = parts[2];
                double price = Double.parseDouble(parts[3]);
                String category = parts[4];
                int quantity = Integer.parseInt(parts[5]);
                int sku = Integer.parseInt(parts[6]);
                int stock = Integer.parseInt(parts[7]);
                int status = Integer.parseInt(parts[8]);
                String image = parts[9];
                Menu menuItem = new Menu(ID, name, ingredient, price, category, quantity, stock, sku, status, image);
                menuList.add(menuItem);
            }
            br.close();
            return menuList;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static MenuDAO getInstance() {
        if (instance == null) {
            instance = new MenuDAO();
        }
        return instance;
    }

    public static ArrayList<Menu> readMenuItems() {
        ArrayList<Menu> menuList = new ArrayList<>();
        File file = new File(filePath);
        try {
            FileReader fr = new FileReader(file);
            BufferedReader br = new BufferedReader(fr);
            br.readLine();
            String line;
            while ((line = br.readLine()) != null) {
                String[] parts = line.split(",");
                int ID = Integer.parseInt(parts[0]);
                String name = parts[1];
                String ingredient = parts[2];
                double price = Double.parseDouble(parts[3]);
                String category = parts[4];
                int quantity = Integer.parseInt(parts[5]);
                int sku = Integer.parseInt(parts[6]);
                int stock = Integer.parseInt(parts[7]);
                int status = Integer.parseInt(parts[8]);
                String image = parts[9];
                Menu menuItem = new Menu(ID, name, ingredient, price, category, quantity, stock, sku, status, image);
                menuList.add(menuItem);
            }
            br.close();
            return menuList;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void saveMenuItems(List<Menu> menuItems) {
        File file = new File(filePath);
        try {
            FileWriter fw = new FileWriter(file);
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write("id,product_name,ingredient,price,category,quantity,sku,stock,status,image");
            bw.newLine();
            for (int i = 0; i < menuItems.size(); i++) {
                String line = menuItems.get(i).toString();
                bw.write(line);
            }
            bw.flush();
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @SuppressWarnings("deprecation")
    public static void readDetailMenuToJson() {
        String csvFilePath = "D://Menu.csv";
        String jsonFilePath = "E://Web Project//SavoriaRestaurant//web//assets//json//ecommerce-product-list.json";

        try {
            Reader in = new FileReader(csvFilePath);
            Iterable<CSVRecord> records = CSVFormat.DEFAULT.withFirstRecordAsHeader().parse(in);

            ObjectMapper mapper = new ObjectMapper();
            ArrayNode arrayNode = mapper.createArrayNode();

            for (CSVRecord record : records) {
                ObjectNode node = mapper.createObjectNode();
                node.put("id", Integer.parseInt(record.get("id")));
                node.put("product_name", record.get("product_name"));
                node.put("category", record.get("category"));
                node.put("stock", Integer.parseInt(record.get("stock")));
                node.put("sku", Integer.parseInt(record.get("sku")));
                node.put("price", record.get("price"));
                node.put("qty", Integer.parseInt(record.get("quantity")));
                node.put("status", Integer.parseInt(record.get("status")));
                node.put("image", record.get("image"));
                node.put("product_brand", record.get("ingredient"));
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

    @SuppressWarnings("deprecation")
    public void readDetailMenuToCsv() {
        String jsonFilePath = "assets/json/ecommerce-product-list.json";
        String csvFilePath = "D://Menu.csv";

        try {
            ObjectMapper mapper = new ObjectMapper();
            Reader jsonReader = new FileReader(jsonFilePath);
            JsonNode rootNode = mapper.readTree(jsonReader);

            FileWriter out = new FileWriter(csvFilePath);
            CSVPrinter printer = new CSVPrinter(out, CSVFormat.DEFAULT.withHeader("id", "product_name", "product_brand", "price", "category", "qty", "stock", "sku", "status", "image"));

            JsonNode dataNode = rootNode.get("data");
            for (JsonNode itemNode : dataNode) {
                printer.printRecord(
                        itemNode.get("id").asText(),
                        itemNode.get("product_name").asText(),
                        itemNode.get("product_brand").asText(),
                        itemNode.get("price").asText(),
                        itemNode.get("category").asText(),
                        itemNode.get("qty").asText(),
                        itemNode.get("stock").asText(),
                        itemNode.get("sku").asText(),
                        itemNode.get("status").asText(),
                        itemNode.get("image").asText()
                );
            }

            printer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
