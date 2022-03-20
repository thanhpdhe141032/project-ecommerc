/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author thanh.pham2_onemount
 */
public class Clothes {
    private int id;
    
    private String name; 
    
    private String size; 
    
    private String gender;
    
    private String description;
    
    private String brand;
    
    private float price;
    
    private String img;

    public Clothes() {
    }

    public Clothes(int id, String name, String size, String gender, String description, String brand, float price, String img ) {
        this.id = id;
        this.name = name;
        this.size = size;
        this.gender = gender;
        this.description = description;
        this.brand = brand;
        this.price = price;
        this.img = img;
    }
    
    public Clothes(String name, String size, String gender, String description, String brand, float price, String img ) {
        this.name = name;
        this.size = size;
        this.gender = gender;
        this.description = description;
        this.brand = brand;
        this.price = price;
        this.img = img;
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

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    
    
    
}
