package citprog.restaurantweb.resourcesmanagement;

import java.io.*;
import java.util.*;
import savoria.lib.ObjectDAO;

@SuppressWarnings("rawtypes")
public class MenuDAO extends ObjectDAO {

    private static String filePath = "E://Menu.csv";
    private static MenuDAO instance;

    public MenuDAO() {
        super("E://Menu.csv", "id,product_name,ingredient,price,category,quantity,sku,stock,status,image");
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
}
