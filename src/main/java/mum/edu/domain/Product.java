package mum.edu.domain;

import javax.persistence.*;

/**
 * Created by su on 10/6/16.
 */

@Entity(name = "PRODUCT")
public class Product {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name="ID")
    private long id;

    @Column(name="NAME")
    private String name;

    @Column(name="QUANTITY")
    private int quantity;

    @Column(name = "PRICE")
    private String price;

    @Column(name = "THUMBNAIL")
    private String thumbnail;

    @Column(name = "IMAGE")
    private String image;

    @Column(name = "VENDOR_ID")
    private long vendorId;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public long getVendorId() {
        return vendorId;
    }

    public void setVendorId(long vendorId) {
        this.vendorId = vendorId;
    }
}
