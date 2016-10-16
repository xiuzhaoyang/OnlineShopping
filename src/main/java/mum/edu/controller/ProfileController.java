package mum.edu.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mum.edu.domain.Authority;
import mum.edu.domain.ContactInformation;
import mum.edu.domain.Credentials;
import mum.edu.domain.Customer;
import mum.edu.service.AddressService;
import mum.edu.service.ContactInformationService;
import mum.edu.service.CredentialsService;
import mum.edu.service.CustomerService;

@Controller
@RequestMapping({ "/profile" })
public class ProfileController {

	@Autowired
	private CustomerService customerService;

	@Autowired
	private CredentialsService credentialsService;

	@Autowired
	private AddressService addressService;

	@Autowired
	private ContactInformationService ContactInformationService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listCustomers(Model model, Authentication authentication) {
		System.out.println(authentication.getName());
		System.out.println(authentication.getPrincipal());
		System.out.println(authentication.getDetails());
		System.out.println(authentication.getCredentials());
		Credentials user = (Credentials) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println("you are here in Profile Section");
		System.out.println("Logged Username is : " + user.getUsername());
		return "customer/list";
	}

}
