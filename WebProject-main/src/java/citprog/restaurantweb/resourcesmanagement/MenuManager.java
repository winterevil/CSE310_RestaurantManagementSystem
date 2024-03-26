package citprog.restaurantweb.resourcesmanagement;

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

    public static Menu findMenuItemByName(String name) {
        for (Menu menu : menuList){
            if (menu.getName().equals(name)){
                return menu;
            }
        }
        return null;
    }

    public static boolean deleteMenuItem(int ID) {
        Menu temp = findMenuItemByID(ID);
        if (temp != null) {
            menuList.remove(temp);
            saveMenuList();
            return true;
        }
        return false;
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
}
