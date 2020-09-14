/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datbt.model;

import java.io.Serializable;
import java.util.Set;

/**
 *
 * @author xdati
 */
public class Authenticator implements Serializable{

    static {
        initUser();
    }

    public static void initUser() {
        User test = new User("test", "test", "Bui Tien Dat", "test@gmail.com", "user");
        User test1 = new User("test1", "test1", "Bui Tien Dat", "test@gmail.com", "user");
        Constants.MAPUSER.put("test", test);
        Constants.MAPUSER.put("test1", test1);
    }

    public boolean findUserMap(String username) {
        boolean check = true;
        User user = Constants.MAPUSER.get(username);
        if (user != null) {
            // different null when user exist in map return true
        } else {
            check = false;
        }
        return check;
    }
    

    public User checkLogin(String username, String password) {
        User user = Constants.MAPUSER.get(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        } else {
            return null;
        }
    }
    
    public void showMap() {
        String str = null;
        Set set = Constants.MAPUSER.keySet();
        for (Object key : set) {
            System.out.println("Map show: " + key + " " + Constants.MAPUSER.get(key).getPassword());
        }
    }
    
    public void showMapCounter() {
        String str = null;
        Set set = Constants.COUNTER.keySet();
        for (Object key : set) {
            System.out.println("Map show: " + key + " " + Constants.COUNTER.get(key).getPassword());
        }
    }
    
    
    public int numCounter() {
        Constants.NUM = 0;
        Set set = Constants.COUNTER.keySet();
        for (Object key : set) {
            Constants.NUM++;
        }
        return Constants.NUM;
    }
    
    public void addUser(User user) {
        Constants.MAPUSER.put(user.getUsername(), user);
    }
    public void addCounter(User user) {
        if (user != null) {
            Constants.COUNTER.put(user.getUsername(), user);
        } 
    }
    public void reCounter(String key) {
        if (key != null) {
            Constants.COUNTER.remove(key);
        }
    }

}
