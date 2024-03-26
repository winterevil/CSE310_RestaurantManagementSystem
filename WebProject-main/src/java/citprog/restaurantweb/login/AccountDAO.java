/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package citprog.restaurantweb.login;

import java.io.*;
import java.security.*;
import javax.xml.bind.DatatypeConverter;

/**
 *
 */
public class AccountDAO {

    private static String filePath = "E://credentials.csv";
    
    public AccountDAO() {
        File file = new File(filePath);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public Account login(String email, String password) {
        String line;
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new FileReader(filePath));
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length >= 8) {
                    int id = Integer.parseInt(parts[0]);
                    String name = parts[1];
                    String emailInFile = parts[2];
                    String passwordInFile = parts[3];
                    String address = parts[4];
                    int isAdmin = Integer.parseInt(parts[5]);
                    int isManager = Integer.parseInt(parts[6]);
                    int isStaff = Integer.parseInt(parts[7]);
    
                    String hashedPassword = hashPasswordWithMD5(password);
    
                    if (email.equals(emailInFile) && hashedPassword.equals(passwordInFile)) {
                        return new Account(id, name, emailInFile, passwordInFile, address, isAdmin, isManager, isStaff, "Verified");
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (reader != null) {
                    reader.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public void signUp(String name, String emailId, String password, String address, String role, String code) {
        String isAdmin = "0";
        String isManager = "0";
        String isStaff = "0";
        if ("isManager".equals(role)) {
            isManager = "1";
        } else if ("isStaff".equals(role)) {
            isStaff = "1";
        }

        String hashedPassword = hashPasswordWithMD5(password);

        FileWriter fileWriter = null;
        try {
            fileWriter = new FileWriter(filePath, true);
            fileWriter.append("0").append(",").append(name).append(",").append(emailId).append(",").append(hashedPassword).append(",").append(address).append(",").append(isAdmin)
                    .append(",").append(isManager).append(",").append(isStaff).append("\n");
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private String hashPasswordWithMD5(String password) {
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

    public void changePassword(String emailId, String newPassword) {
        String line;
        String output = "";
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new FileReader(filePath));
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length >= 8) {
                    String emailInFile = parts[2];
                    if (emailId.equals(emailInFile)) {
                        String hashedNewPassword = hashPasswordWithMD5(newPassword);
                        parts[3] = hashedNewPassword;
                    }
                    output += String.join(",", parts) + "\n";
                }
            }
            FileWriter fileWriter = new FileWriter(filePath);
            fileWriter.write(output);
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (reader != null) {
                    reader.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    
    public boolean checkAccountExist(String emailId) {
        String line;
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new FileReader(filePath));
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length >= 8) {
                    String emailInFile = parts[2];
                    if (emailId.equals(emailInFile)) {
                        return true;
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (reader != null) {
                    reader.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public Account getAccountByEmail(String emailId) {
        String line;
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new FileReader(filePath));
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length >= 8) {
                    int id = Integer.parseInt(parts[0]);
                    String name = parts[1];
                    String emailInFile = parts[2];
                    String passwordInFile = parts[3];
                    String address = parts[4];
                    int isAdmin = Integer.parseInt(parts[5]);
                    int isManager = Integer.parseInt(parts[6]);
                    int isStaff = Integer.parseInt(parts[7]);
                    if (emailId.equals(emailInFile)) {
                        return new Account(id, name, emailInFile, passwordInFile, address, isAdmin, isManager, isStaff, "Verified");
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (reader != null) {
                    reader.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
