package mum.edu.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by su on 10/6/16.
 */

@Entity( name = "ORDER_T")
public class Order {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column (name = "ID")
    private long id;

    @Column (name = "CUSTOMER_ID")
    private long customerId;

    @Column (name = "TRANSACTION_ID")
    private long transactionId;

    @Column (name = "PAYMENT_ID")
    private long paymentId;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "DATE", nullable=false)
    private Date date;

    @Column (name = "TOTAL")
    private String total;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(long customerId) {
        this.customerId = customerId;
    }

    public long getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(long transactionId) {
        this.transactionId = transactionId;
    }

    public long getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(long paymentId) {
        this.paymentId = paymentId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }
}
