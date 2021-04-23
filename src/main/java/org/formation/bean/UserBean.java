package org.formation.bean;

import java.io.Serializable;

import jakarta.annotation.ManagedBean;

@ManagedBean
public class UserBean implements Serializable {
    private String firstName = "";
    private String lastName = "";
    
    public UserBean() {
    	firstName = "";
    	lastName = "";
    }
    
    public String getFirstName() {
        return firstName;
    }
 
    public void setFirstName(String newValue) {
    	firstName = newValue;
    }
 
    public String getLastName() {
        return lastName;
    }
 
    public void setLastName(String newValue) {
    	lastName = newValue;
    }
    
    public String getGreeting() {
        return "Welcome to Jakarta EE " + firstName + " " + lastName + " !";
    }
}
