package savoria.admin.account;

import java.util.*;

public class Account {

    private int ID;
    private String name;
    private String email;
    private String password;
    private String address;
    private int isAdmin;
    private int isManager;
    private int isStaff;
    private String code;
    private String avatarImage;
    private int customerId;
    private String country;
    private String countryCode;
    private double spent;
    private int orderCount;
    private int isDisabled;

    public Account() {
    }

    public Account(int iD, String name, String email, String password, String address, int isAdmin, int isManager,
            int isStaff, String code, String avatarImage, int customerId, String country, String countryCode, double spent,
            int orderCount, int isDisabled) {
        ID = iD;
        this.name = name;
        this.email = email;
        this.password = password;
        this.address = address;
        this.isAdmin = isAdmin;
        this.isManager = isManager;
        this.isStaff = isStaff;
        this.code = code;
        this.avatarImage = avatarImage;
        this.customerId = customerId;
        if (customerId == 0) {
            this.customerId = randInt(1, 1000000);
        } else {
            this.customerId = customerId;
        }
        this.country = country;
        this.countryCode = countryCode;
        this.spent = spent;
        this.orderCount = orderCount;
        this.isDisabled = isDisabled;
        if (isAdmin == 1 || isManager == 1 || isStaff == 1) {
            this.isDisabled = 0;
        }
    }

    public Account(int ID, String name, String email, String password, String address, int isAdmin, int isManager, int isStaff, String code) {
        this.ID = ID;
        this.email = email;
        this.password = password;
        this.isAdmin = isAdmin;
        this.isManager = isManager;
        this.isStaff = isStaff;
        this.name = name;
        this.address = address;
        this.code = code;
        this.isDisabled = 0;
    }

    public int getIsDisabled() {
        return isDisabled;
    }

    public void setIsDisabled(int isDisabled) {
        this.isDisabled = isDisabled;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public double getSpent() {
        return spent;
    }

    public void setSpent(int spent) {
        this.spent = spent;
    }

    public int getOrderCount() {
        return orderCount;
    }

    public void setOrderCount(int orderCount) {
        this.orderCount = orderCount;
    }

    public int getID() {
        return ID;
    }

    public void setID(int iD) {
        ID = iD;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public int getIsManager() {
        return isManager;
    }

    public void setIsManager(int isManager) {
        this.isManager = isManager;
    }

    public int getIsStaff() {
        return isStaff;
    }

    public void setIsStaff(int isStaff) {
        this.isStaff = isStaff;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getAvatarImage() {
        return avatarImage;
    }

    public void setAvatarImage(String avatarImage) {
        this.avatarImage = avatarImage;
    }

    public static int randInt(int min, int max) {
        Random rand = new Random();
        int randomNum = rand.nextInt((max - min) + 1) + min;
        return randomNum;
    }

    @Override
    public String toString() {
        return ID + "," + name + "," + email + "," + password + "," + country + "," + isAdmin + "," + isManager + ","
                + isStaff + "," + avatarImage + "," + customerId + "," + spent + "," + countryCode + ","
                + orderCount + "," + address + "," + isDisabled + "\n";
    }
}
