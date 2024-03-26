package savoria.lib;

import java.util.*;

public abstract class ObjectManager<T> {

    protected ArrayList<T> objects;

    public ObjectManager() {
        objects = new ArrayList<T>();
    }

    public abstract T findById(int id);
    public abstract boolean addToList(T object);
    public abstract boolean removeFromList(int id);
    public abstract void saveList();
    public abstract void restoreList();
}
