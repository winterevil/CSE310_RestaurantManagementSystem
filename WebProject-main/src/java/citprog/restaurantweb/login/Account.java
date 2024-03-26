/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package citprog.restaurantweb.login;

/**
 *
 */
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

    public Account() {
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

    @Override
    public String toString() {
        return "Account [ID=" + ID + ", name=" + name + ", email=" + email + ", password=" + password + ", address="
                + address + ", isAdmin=" + isAdmin + ", isManager=" + isManager + ", isStaff=" + isStaff + ", code="
                + code + "]";
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
    
}
