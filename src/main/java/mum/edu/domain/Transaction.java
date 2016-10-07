package mum.edu.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by su on 10/6/16.
 */

@Entity( name = "TRANSACTION_T")
public class Transaction {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "ID")
    private long id;

    @Column (name = "ORDER_ID")
    private long orderId;

    @Column (name = "AMOUNT")
    private int amount;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "DATE", nullable=false)
    private Date date;

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

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
