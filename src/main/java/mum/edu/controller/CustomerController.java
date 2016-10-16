package mum.edu.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mum.edu.domain.Authority;
import mum.edu.domain.Credentials;
import mum.edu.domain.Customer;
import mum.edu.service.CredentialsService;
import mum.edu.service.CustomerService;

@Controller
@RequestMapping({ "/customers" })
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@Autowired
	private CredentialsService credentialsService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listCustomers(Model model) {
		System.out.println("you are here in Customer List Section");
		model.addAttribute("customers", customerService.findAll());
		return "customer/list";
	}

	@RequestMapping("/{customerId}")
	public String getCustomerById(@PathVariable("customerId") int customerId, Model model) {
		Customer customer = customerService.findByCustomerId(customerId);
		model.addAttribute("customer", customer);

		return "customer/list";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getAddNewCustomerForm(@ModelAttribute("newCustomer") Customer newCustomer, Model model) {
		model.addAttribute("users", credentialsService.findAll());
		return "customer/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String processAddNewCustomerForm(@ModelAttribute("newCustomer") @Valid Customer customerToBeAdded,
			BindingResult result, HttpServletRequest request) {

		// Error caught by ControllerAdvice IF no authorization...
		customerService.saveFull(customerToBeAdded);

		return "redirect:/customer/list";

	}

	@RequestMapping(value = "/addCustomer", method = RequestMethod.GET)
	public String getNewCustomerForm(@ModelAttribute("newCustomer") Customer newCustomer, Model model) {
		return "customer/registerCustomer";
	}

	@RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
	public String processNewCustomerForm(@ModelAttribute("newCustomerFront") @Valid Credentials userToBeAdded,
			@Valid Customer customerAdd, BindingResult result, HttpServletRequest request) {

		Authority test = new Authority();
		test.setUsername(userToBeAdded.getUsername());
		test.setAuthority("ROLE_CUSTOMER");
		List<Authority> list = new ArrayList();
		list.add(test);

		userToBeAdded.setAuthority(list);
		userToBeAdded.setEnabled(true);
		userToBeAdded.setVerifyPassword(null);
		credentialsService.save(userToBeAdded);
		customerService.save(customerAdd);
		if (result.hasErrors()) {
			return "redirect:/login";
		}
		return "redirect:/login";

	}

}
