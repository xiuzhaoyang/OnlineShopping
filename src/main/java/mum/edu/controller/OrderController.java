package mum.edu.controller;

import mum.edu.domain.Order;
import mum.edu.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by su on 10/16/16.
 */


@Controller
@RequestMapping(value="/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping("/list")
    public String list(Model model){
//        List<Order> list =  orderService.findAll();
//        model.addAttribute("list",list);
        return "order/list";
    }
}
