package mum.edu.controller;

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

import mum.edu.domain.Address;
import mum.edu.service.AddressService;

@Controller
@RequestMapping({ "/address" })
public class AddressController {

	@Autowired
	private AddressService addressService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listAddresss(Model model) {
		model.addAttribute("address", addressService.findAll());
		System.out.println("PRINT ADDRESS: " + addressService.findAll().toString());
		return "address/list";
	}

	@RequestMapping("/{addressId}")
	public String getAddressById(@PathVariable("addressId") int addressId, Model model) {
		Address address = addressService.findByAddressId(addressId);
		model.addAttribute("address", address);

		return "address/list";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getAddNewAddressForm(@ModelAttribute("newAddress") AddressController newAddress) {
		return "address/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String processAddNewAddressForm(@ModelAttribute("newAddress") BindingResult result,
			HttpServletRequest request) {
		if (result.hasErrors()) {
			return "address/add";
		}
		return "redirect:/address/list";

	}

}
