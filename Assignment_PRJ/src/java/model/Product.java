
package model;

public class Product {
    int id;
    String name;
    int category_id;
    int quantity;
    int price;
    String description;
    byte[] imagine;
    byte[] imagine2;
    byte[] imagine3;
    String created_date;

    public Product() {
    }

    public Product(int id, String name, int category_id, int quantity, int price, String description, byte[] imagine, byte[] imagine2, byte[] imagine3, String created_date) {
        this.id = id;
        this.name = name;
        this.category_id = category_id;
        this.quantity = quantity;
        this.price = price;
        this.description = description;
        this.imagine = imagine;
        this.imagine2 = imagine2;
        this.imagine3 = imagine3;
        this.created_date = created_date;
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

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public byte[] getImagine() {
        return imagine;
    }

    public void setImagine(byte[] imagine) {
        this.imagine = imagine;
    }

    public byte[] getImagine2() {
        return imagine2;
    }

    public void setImagine2(byte[] imagine2) {
        this.imagine2 = imagine2;
    }

    public byte[] getImagine3() {
        return imagine3;
    }

    public void setImagine3(byte[] imagine3) {
        this.imagine3 = imagine3;
    }

    public String getCreated_date() {
        return created_date;
    }

    public void setCreated_date(String created_date) {
        this.created_date = created_date;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", category_id=" + category_id + ", quantity=" + quantity + ", price=" + price + ", description=" + description + ", imagine=" + imagine + ", imagine2=" + imagine2 + ", imagine3=" + imagine3 + ", created_date=" + created_date + '}';
    }

   
}
