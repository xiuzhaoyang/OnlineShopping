package mum.edu.domain;

import javax.persistence.*;

/**
 * Created by su on 10/6/16.
 */

@Entity( name = "ORDER_ITEM")
public class OrderItem {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column (name = "ID")
    private long id;

    @Column (name = "ORDER_ID")
    private long orderId;

    @Column (name = "PRODUCT_ID")
    private long productId;

    @Column (name = "PRICE")
    private String price;

    @Column (name = "QUANTITY")
    private int quantity;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getOrderId() {
        return orderId;
    }

    public void setOrderId(long orderId) {
        this.orderId = orderId;
    }

    public long getProductId() {
        return productId;
    }

    public void setProductId(long productId) {
        this.productId = productId;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
