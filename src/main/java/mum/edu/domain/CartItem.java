package mum.edu.domain;

import javax.persistence.*;

/**
 * Created by su on 10/7/16.
 */

@Entity(name = "CART_ITEM")
public class CartItem {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name="ID")
    private long id;

    @Column (name = "CART_ID")
    private long cartId;

    @Column (name = "PRODUCT_ID")
    private long productId;

    @Column (name = "QUANTITY")
    private int quantity;

    @Column (name = "PRICE")
    private String price;
}
