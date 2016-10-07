package mum.edu.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by su on 10/6/16.
 */

@Entity(name = "SHOPPING_CART")
public class ShoppingCart {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="ID")
    private long id;

    @Column(name="CU_ID")
    private long cuId;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "DATE", nullable=false)
    private Date date;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getCuId() {
        return cuId;
    }

    public void setCuId(long cuId) {
        this.cuId = cuId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
