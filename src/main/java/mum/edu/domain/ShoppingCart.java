package mum.edu.domain;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

/**
 * Created by su on 10/6/16.
 */

@Entity(name = "SHOPPING_CART")
public class ShoppingCart {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="ID")
    private long id;

    public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	@Column(name="CSID")
    private long cuId;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "DATE", nullable=false)
    private Date date;


    @Column(name = "TOTAL")
    private double total;


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
