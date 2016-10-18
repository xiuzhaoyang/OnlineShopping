package mum.edu.service.impl;

import mum.edu.domain.Order;
import mum.edu.repository.OrderRepository;
import mum.edu.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by su on 10/13/16.
 */

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

    private OrderRepository order;

    @Override
    public boolean createOrder(Order order) {

        return false;
    }

    @Override
    public List<Order> findAll() {
        Iterator<Order> iterable = order.findAll().iterator();
        List<Order> list = new ArrayList<>();
        while (iterable.hasNext()){
            list.add(iterable.next());
        }
        return list;
    }
}
