package mum.edu.controller;

import mum.edu.domain.Credentials;
import mum.edu.domain.ShoppingCart;
import mum.edu.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Role;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by su on 10/15/16.
 */

@Controller

@RequestMapping(value="/shopping-cart")
public class ShoppingCartController {
    @Autowired
    private ShoppingCartService cartService;


    @RequestMapping("/detail")
    public String listRoles(Model model) {
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        User user =  (User)auth.getPrincipal();
//        cartService.getShoppingCartByUId(user.getUserId());

        ShoppingCart cart = new ShoppingCart();



        model.addAttribute("cart",cart);

        return "shopping-cart/detail";
    }
    


    @RequestMapping("/order/complete")
    public String orderComplete(Model model){
        return "order/complete";
    }

}
