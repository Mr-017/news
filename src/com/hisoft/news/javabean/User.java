package com.hisoft.news.javabean;

/**
 * @Created by IntelliJ IDEA.
 * @Author: XiaoMing
 * @Date: 2021/6/24
 * @Time: 10:17
 * Come on, boy
 **/
public class User {
    private String username;
    private String city;
    private String[] language;

    public User() {
    }

    public User(String username, String city, String[] language) {
        this.username = username;
        this.city = city;
        this.language = language;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String[] getLanguage() {
        return language;
    }

    public void setLanguage(String[] language) {
        this.language = language;
    }
}
