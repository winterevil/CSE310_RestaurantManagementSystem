package savoria.admin.product;

import java.util.*;

public class MenuManager {

    @SuppressWarnings("unchecked")
    private static ArrayList<Menu> menuList = MenuDAO.getInstance().Read();

    public static boolean addMenuItem(Menu menuItem) {
        Menu tempItem = findMenuItemByID(menuItem.getID());
        if (tempItem == null) {
            menuList.add(menuItem);
            saveMenuList();
            return true;
        } else {
            return false;
        }
    }

    public static Menu findMenuItemByID(int ID) {
        for (Menu menu : menuList) {
            if (menu.getID() == ID) {
                return menu;
            }
        }
        return null;
    }

    public static boolean deleteMenuItemById(int ID) {
        Menu temp = findMenuItemByID(ID);
        if (temp != null) {
            menuList.remove(temp);
            saveMenuList();
            return true;
        }
        return false;
    }

    public static boolean deleteMenuItemByName(String name) {
        Menu temp = findMenuItemByName(name);
        if (temp != null) {
            menuList.remove(temp);
            saveMenuList();
            return true;
        }
        return false;
    }

    public static Menu findMenuItemByName(String name) {
        for (Menu menu : menuList) {
            if (menu.getName().equals(name)) {
                System.out.println(menu);
                return menu;
            }
        }
        return null;
    }

    public static ArrayList<Menu> getTopMenuItems(int n){
        ArrayList<Menu> topMenuItems = new ArrayList<Menu>();
        ArrayList<Menu> sortedMenuList = new ArrayList<Menu>(menuList);
        sortedMenuList.sort((m1, m2) -> {
            int compare = Double.compare(m2.getPrice(),m1.getPrice());
            return compare;
        });
        for (int i = 0; i < n; i++) {
            System.out.println(sortedMenuList.get(i));
            topMenuItems.add(sortedMenuList.get(i));
        }
        return topMenuItems;
            
    }

    public static int getTotalNumberOfMenuItems() {
        return menuList.size();
    }

    @SuppressWarnings("unchecked")
    public static void restoreMenuList() {
        menuList = MenuDAO.getInstance().Read();
    }

    @SuppressWarnings("unchecked")
    public static void saveMenuList() {
        MenuDAO.getInstance().SaveWithHeader(menuList);
    }

    public static ArrayList<Menu> getMenuList() {
        return menuList;
    }

    public static boolean updateMenuItem(Menu menuItem) {
        Menu temp = findMenuItemByName(menuItem.getName());
        if (temp != null) {
            temp.setName(menuItem.getName());
            temp.setIngredient(menuItem.getIngredient());
            temp.setPrice(menuItem.getPrice());
            temp.setCategory(menuItem.getCategory());
            temp.setQuantity(menuItem.getQuantity());
            temp.setStock(menuItem.getStock());
            temp.setSku(menuItem.getSku());
            temp.setStatus(menuItem.getStatus());
            temp.setImage(menuItem.getImage());
            saveMenuList();
            return true;
        }
        return false;
    }
}
