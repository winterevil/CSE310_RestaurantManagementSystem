package savoria.lib;

import java.util.*;
import java.io.*;

public abstract class ObjectDAO<T> {
    protected String filePath;
    protected String header;
    
    public ObjectDAO(String filePath){
        this.filePath = filePath;
    }

    public ObjectDAO(String filePath, String header) {
        this.filePath = filePath;
        this.header = header;
    }

    public abstract ArrayList<T> Read();

    public void Save(ArrayList<T> objects) {
        File file = new File(filePath);
        try {
            FileWriter fw = new FileWriter(file);
            BufferedWriter bw = new BufferedWriter(fw);
            for (int i = 0; i < objects.size(); i++) {
                String line = objects.get(i).toString();
                bw.write(line);
            }
            bw.flush();
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void SaveWithHeader(ArrayList<T> objects) {
        File file = new File(filePath);
        try {
            FileWriter fw = new FileWriter(file);
            BufferedWriter bw = new BufferedWriter(fw);
            if(header == null || header.isEmpty()){
                System.out.println("Header is empty.");
                bw.close();
                return;
            }
            bw.write(header);
            bw.newLine();
            for (int i = 0; i < objects.size(); i++) {
                String line = objects.get(i).toString();
                bw.write(line);
            }
            bw.flush();
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
