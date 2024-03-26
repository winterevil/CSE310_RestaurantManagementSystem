package savoria.admin.account;

import java.util.ArrayList;
import java.security.*;
import javax.xml.bind.DatatypeConverter;

public class AccountManager {
    @SuppressWarnings("unchecked")
    private static ArrayList<Account> accountList = AccountDAO.getInstance().Read();

    public AccountManager() {
        accountList = new ArrayList<>();
        restoreAccountList();
    }

    public static boolean addAccount(Account account) {
        if (findAccountByEmail(account.getEmail()) == null) {
            accountList.add(account);
            saveAccountList();
            return true;
        } else {
            return false;
        }
    }

    public static Account findAccountByID(int ID) {
        for (Account account : accountList) {
            if (account.getID() == ID) {
                return account;
            }
        }
        return null;
    }

    public static Account findAccountByEmail(String email) {
        for (Account account : accountList) {
            if (account.getEmail().equals(email)) {
                return account;
            }
        }
        return null;
    }

    public boolean deleteAccount(String email) {
        Account temp = findAccountByEmail(email);
        if (temp != null) {
            accountList.remove(temp);
            saveAccountList();
            return true;
        }
        return false;
    }

    public static void updateAccount(Account account) {
        for (Account acc : accountList) {
            if (acc.getID() == account.getID()) {
                acc.setName(account.getName());
                acc.setEmail(account.getEmail());
                acc.setPassword(account.getPassword());
                acc.setAddress(account.getAddress());
                acc.setIsAdmin(account.getIsAdmin());
                acc.setIsManager(account.getIsManager());
                acc.setIsStaff(account.getIsStaff());
                acc.setCode(account.getCode());
                break;
            }
        }
    }

    public static boolean isAdmin(String email) {
        Account account = findAccountByEmail(email);
        return account != null && account.getIsAdmin() == 1;
    }

    public static boolean isEmployee(String email) {
        Account account = findAccountByEmail(email);
        return account != null && (account.getIsManager() == 1 || account.getIsStaff() == 1);
    }

    @SuppressWarnings("unchecked")
    public static void restoreAccountList() {
        accountList = AccountDAO.getInstance().Read();
    }

    @SuppressWarnings("unchecked")
    public static void saveAccountList() {
        AccountDAO.getInstance().SaveWithHeader(accountList);
    }

    public ArrayList<Account> getAccountList() {
        return accountList;
    }

    public static Account login(String email, String password) {
        String hashedPassword = hashPasswordWithMD5(password);
        restoreAccountList();
        for (Account account : accountList) {
            if (account.getEmail().equals(email) && account.getPassword().equals(hashedPassword)) {
                if(account.getIsDisabled() == 1){
                    return null;
                }
                return account;
            }
        }
        return null;
    }

    public static int getTotalNumberOfAccounts() {
        int totalAccounts = 0;
        for (Account account : accountList) {
            if(account.getIsAdmin() == 0 && account.getIsManager() == 0 && account.getIsStaff() == 0){
                totalAccounts++;
            }
        }
        return totalAccounts;
    }

    public static int getTotalNumberOfOrders() {
        int totalOrders = 0;
        for (Account account : accountList) {
            totalOrders += account.getOrderCount();
        }
        return totalOrders;
    }

    public static void signUp(String name, String emailId, String password, String address, String role, String code) {
        String isAdmin = "0";
        String isManager = "0";
        String isStaff = "0";
        if ("isManager".equals(role)) {
            isManager = "1";
        } else if ("isStaff".equals(role)) {
            isStaff = "1";
        }

        String hashedPassword = hashPasswordWithMD5(password);
        Account account = new Account(0, name, emailId, hashedPassword, address, Integer.parseInt(isAdmin), Integer.parseInt(isManager), Integer.parseInt(isStaff), code);
        addAccount(account);
    }

    public static Account getUserWithHighestSpent(){
        Account highestSpent = accountList.get(0);
        for (Account account : accountList) {
            if (account.getSpent() > highestSpent.getSpent()) {
                highestSpent = account;
            }
        }
        return highestSpent;
    }

    public static void changePassword(String emailId, String newPassword) {
        String hashedPassword = hashPasswordWithMD5(newPassword);
        restoreAccountList();
        for (Account account : accountList) {
            if (account.getEmail().equals(emailId)) {
                account.setPassword(hashedPassword);
                saveAccountList();
                break;
            }
        }
    }

    private static String hashPasswordWithMD5(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(password.getBytes());
            byte[] digest = md.digest();
            return DatatypeConverter.printHexBinary(digest).toUpperCase();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void disableAccount(int customerId) {
        for (Account account : accountList) {
            if (account.getCustomerId() == customerId) {
                account.setIsDisabled(1);
                saveAccountList();
                break;
            }
        }
    }

    public static void enableAccount(int customerId) {
        for (Account account : accountList) {
            if (account.getCustomerId() == customerId) {
                account.setIsDisabled(0);
                saveAccountList();
                break;
            }
        }
    }
}
