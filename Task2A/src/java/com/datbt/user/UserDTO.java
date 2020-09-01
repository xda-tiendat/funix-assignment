/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datbt.user;

/**
 *
 * @author xdati
 */
import java.util.List;
public class UserDTO {

    private String fullname;
    private int age;
    private String country;
    private String language;
    private List<String> courses;

    public UserDTO() {
    }

    public UserDTO(String fullname, int age, String country, String language, List<String> courses) {
        this.fullname = fullname;
        this.age = age;
        this.country = country;
        this.language = language;
        this.courses = courses;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public List<String> getCourses() {
        return courses;
    }

    public void setCourses(List<String> courses) {
        this.courses = courses;
    }
    
}