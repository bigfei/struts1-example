package com.oracle.oats.otm.poc.model;

import java.util.Collection;

public class Department {

    private int id;
    private String name;

    //customers collection
    private Collection customers;

    public Department() {
    }

    public Department(int id, String name, Collection customers) {
        this.id = id;
        this.name = name;
        this.customers = customers;
    }

    public Collection getCustomers() {
        return customers;
    }

    public void setCustomers(Collection customers) {
        this.customers = customers;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}