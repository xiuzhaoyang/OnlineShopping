package mum.edu.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mum.edu.domain.Address;
import mum.edu.domain.Authority;
import mum.edu.domain.ContactInformation;
import mum.edu.domain.Credentials;
import mum.edu.domain.Customer;
import mum.edu.repository.AddressRepository;
import mum.edu.service.AddressService;
import mum.edu.service.ContactInformationService;
import mum.edu.service.CredentialsService;
import mum.edu.service.CustomerService;
import mum.edu.service.impl.CredentialsServiceImpl;

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
	public String listCustomers(Model model, Authentication authentication, HttpServletRequest httpServletRequest,
			Principal principal) {
		Credentials user = credentialsService.getUser(authentication.getName());
		Customer customer = customerService.getCustomerByUser(user);
		long customerId = customer.getCustomerId();
		List<Address> addresses = addressService.findAll();
		List<ContactInformation> contacts = ContactInformationService.findAll();
		model.addAttribute("user", user);
		model.addAttribute("customer", customer);
		model.addAttribute("addresses", addresses);
		model.addAttribute("contacts", contacts);
		System.out.println("Customer ID: " + customer.getCustomerId());

		return "profile/profile";
	}

}
