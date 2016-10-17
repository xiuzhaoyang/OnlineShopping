package mum.edu.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mum.edu.domain.Customer;
import mum.edu.domain.Vendor;
import mum.edu.service.CustomerService;
import mum.edu.service.VendorService;

@Controller
@RequestMapping({ "/vendor" })
public class VendorController {

	@Autowired
	private VendorService vendorService;

	@RequestMapping("list")
	public String vendorlist() {
		return "vendor/list";
	}

	@RequestMapping(value = "/vendorRegister", method = RequestMethod.GET)
	public String getAddNewCustomerForm(@ModelAttribute("newVendor") Vendor newVendor, Model model) {
		return "vendor/vendorRegister";
	}

	@RequestMapping(value = "/vendorRegister", method = RequestMethod.POST)
	public String processingAddNewCustomerForm(@ModelAttribute("newVendor") @Valid Vendor vendorAdd, Model model) {
		vendorService.save(vendorAdd);

		return "redirect:/vendor/list";
	}

	@RequestMapping("product")
	public String product() {
		return "vendor/product";
	}

	@RequestMapping("approvalPage")
	public String waitApproval() {
		return "vendor/waitApproval";
	}

}
