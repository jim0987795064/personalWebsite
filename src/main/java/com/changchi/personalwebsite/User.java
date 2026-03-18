package com.changchi.personalwebsite;

public class User {
    private String id;
    private String name;

    public User(String id, String name) {
        this.id = id;
        this.name = name;
    }

    // Spring 需要這些 Getter 來產生 JSON
    public String getId() { return id; }
    public String getName() { return name; }
}