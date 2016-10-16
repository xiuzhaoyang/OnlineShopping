package mum.edu.controller;

import mum.edu.domain.Credentials;
import mum.edu.domain.ShoppingCart;
import mum.edu.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Role;
import org.springframework.http.HttpRequest;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

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

//        cartService.addProductToCart(1,1);


        model.addAttribute("cart",cart);

        return "shopping-cart/detail";
    }
    


    @RequestMapping(value = "/complete",method = RequestMethod.POST,consumes = "application/json")
    public @ResponseBody String orderComplete(HttpRequest request,Model model){
        return "redirect:/order/list";
    }

}
