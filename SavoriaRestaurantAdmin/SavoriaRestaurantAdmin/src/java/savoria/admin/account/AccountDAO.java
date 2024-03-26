package savoria.admin.account;

import java.io.*;
import java.util.*;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVRecord;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;

import savoria.lib.ObjectDAO;

@SuppressWarnings("rawtypes")
public class AccountDAO extends ObjectDAO {

    private static String filePath = "D://credentials.csv";
    private static AccountDAO instance;

    public AccountDAO() {
        super("D://credentials.csv", "id,name,email,password,country,isAdmin,isManager,isStaff,image,customer_id,spent,country_code,order,address,isDisabled");
        File file = new File(filePath);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static AccountDAO getInstance() {
        if (instance == null) {
            instance = new AccountDAO();
        }
        return instance;
    }

    public static ArrayList<Account> readAccounts() {
        ArrayList<Account> accounts = new ArrayList<>();
        String line;
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new FileReader(filePath));
            reader.readLine();
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length >= 8) {
                    int counter = 0;
                    int id = Integer.parseInt(parts[counter++]);
                    String name = parts[counter++];
                    String emailInFile = parts[counter++];
                    String passwordInFile = parts[counter++];
                    String country = parts[counter++];
                    int isAdmin = Integer.parseInt(parts[counter++]);
                    int isManager = Integer.parseInt(parts[counter++]);
                    int isStaff = Integer.parseInt(parts[counter++]);
                    String image = parts[counter++];
                    int customer_id = Integer.parseInt(parts[counter++]);
                    double spent = Double.parseDouble(parts[counter++]);
                    String country_code = parts[counter++];
                    int order = Integer.parseInt(parts[counter++]);
                    String address = parts[counter++];
                    int isDisabled = Integer.parseInt(parts[counter]);
                    accounts.add(new Account(id, name, emailInFile, passwordInFile, address, isAdmin, isManager, isStaff, "Verified", image, customer_id, country, country_code, spent, order, isDisabled));
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
        return accounts;
    }

    @Override
    public ArrayList Read() {
        return readAccounts();
    }

    @SuppressWarnings("deprecation")
    public static void readToJson() {
        String csvPath = "D://credentials.csv";
        String jsonFilePath = "E://Web Project//SavoriaRestaurant//web//assets//json//ecommerce-customer-all.json";

        try {
            Reader in = new FileReader(csvPath);
            Iterable<CSVRecord> records = CSVFormat.DEFAULT.withFirstRecordAsHeader().parse(in);

            ObjectMapper mapper = new ObjectMapper();
            ArrayNode arrayNode = mapper.createArrayNode();

            for (CSVRecord record : records) {
                if (record.get("isAdmin").equals("0") && record.get("isManager").equals("0") && record.get("isStaff").equals("0")) {
                    ObjectNode node = mapper.createObjectNode();
                    node.put("id", Integer.parseInt(record.get("id")));
                    node.put("customer", record.get("name"));
                    node.put("customer_id", Integer.parseInt(record.get("customer_id")));
                    node.put("email", record.get("email"));
                    node.put("isDisabled", Integer.parseInt(record.get("isDisabled")));
                    node.put("country", record.get("country"));
                    node.put("country_code", record.get("country_code"));
                    node.put("order", Integer.parseInt(record.get("order")));
                    node.put("total_spent", record.get("spent"));
                    node.put("image", record.get("image"));
                    arrayNode.add(node);
                }
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
}
