package mum.edu.service;

import mum.edu.domain.Order;

import java.util.List;

/**
 * Created by su on 10/13/16.
 */
public interface OrderService {
    public boolean createOrder(Order order);
    public List<Order> findAll();
}
