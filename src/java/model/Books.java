/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author thanh.pham2_onemount
 */
public class Books {

    private int id;

    private String name;

    private String author;

    private String category;

    private String discription;

    private float price;

    private String img;
    
    public Books() {
    }

    public Books(int id, String name, String author, String category, String discription, float price, String img) {
        this.id = id;
        this.name = name;
        this.author = author;
        this.category = category;
        this.discription = discription;
        this.img = img;
        this.price = price;
    }

    public Books(String name, String author, String category, String discription, float price, String img) {
        this.name = name;
        this.author = author;
        this.category = category;
        this.discription = discription;
        this.img = img;
        this.price = price;
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

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

}
