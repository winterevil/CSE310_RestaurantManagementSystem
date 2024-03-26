package savoria.admin.product;

import java.util.*;

public class Menu {

    private int ID;
    private String name;
    private String ingredient;
    private double price;
    private String category;
    private int quantity;
    private int stock;
    private int sku;
    private int status;
    private String image;

    public Menu() {
    }

    public Menu(int ID, String name, String ingredient, double price, String category, int quantity) {
        if (ID == 0) {
            this.ID = randInt(100000, 999999);
        } else {
            this.ID = ID;
        }
        this.name = name;
        this.ingredient = ingredient;
        this.price = price;
        this.category = category;
        this.quantity = quantity;
    }

    public Menu(int ID, String name, String ingredient, double price, String category, int quantity, int stock, int sku, int status, String image) {
        if (ID == 0) {
            this.ID = randInt(100000, 999999);
        } else {
            this.ID = ID;
        }
        this.name = name;
        this.ingredient = ingredient;
        this.price = price;
        this.category = category;
        this.quantity = quantity;
        this.stock = stock;
        this.sku = sku;
        this.status = status;
        this.image = image;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getSku() {
        return sku;
    }

    public void setSku(int sku) {
        this.sku = sku;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getID() {
        return ID;
    }

    public void setID(int iD) {
        ID = randInt(0, 1000000);
    }

    public String getIngredient() {
        return ingredient;
    }

    public void setIngredient(String ingredient) {
        this.ingredient = ingredient;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return ID + "," + name + "," + ingredient + "," + price + "," + category + "," + quantity + "," + sku + "," + stock + "," + status + "," + image + "\n";
    }

    public static int randInt(int min, int max) {
        Random rand = new Random();
        int randomNum = rand.nextInt((max - min) + 1) + min;
        return randomNum;
    }
}
