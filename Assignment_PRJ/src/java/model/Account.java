/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author USER
 */
public class Account {
    int id;
    String username;
    String password;
    String displayname;
    String email;
    int numberphone;
    String address;
    int status;

    public Account() {
    }

    public Account(int id, String username, String password, String displayname, String email, int numberphone, String address, int status) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.displayname = displayname;
        this.email = email;
        this.numberphone = numberphone;
        this.address = address;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDisplayname() {
        return displayname;
    }

    public void setDisplayname(String displayname) {
        this.displayname = displayname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getNumberphone() {
        return numberphone;
    }

    public void setNumberphone(int numberphone) {
        this.numberphone = numberphone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", password=" + password + ", displayname=" + displayname + ", email=" + email + ", numberphone=" + numberphone + ", address=" + address + ", status=" + status + '}';
    }
    
    
    
}
