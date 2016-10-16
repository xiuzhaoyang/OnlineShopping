package mum.edu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by su on 10/16/16.
 */


@Controller
@RequestMapping(value="/order")
public class OrderController {

    @RequestMapping("list")
    public String list(Model model){
        return "order/list";
    }


}
