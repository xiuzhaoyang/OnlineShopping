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

import mum.edu.domain.ContactInformation;
import mum.edu.service.ContactInformationService;

@Controller
@RequestMapping({ "/contactInformation" })
public class ContactInformationController {

	@Autowired
	private ContactInformationService contactInformationService;

	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String listContactInformations(Model model) {
		model.addAttribute("contactInformation", contactInformationService.findAll());
		return "contactInformation/list";
	}

	@RequestMapping("/{contactInformationId}")
	public String getContactInformationById(@PathVariable("contactInformationId") int contactInformationId,
			Model model) {
		ContactInformation contactInformation = contactInformationService
				.findByContactInformationId(contactInformationId);
		model.addAttribute("contactInformation", contactInformation);

		return "contactInformation/list";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getAddNewContactInformationForm(
			@ModelAttribute("newContactInformation") ContactInformationController newContactInformation) {
		return "contactInformation/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String processAddNewContactInformationForm(@ModelAttribute("newContactInformation") BindingResult result,
			HttpServletRequest request) {
		if (result.hasErrors()) {
			return "contactInformation/add";
		}
		return "redirect:/contactInformation/list";

	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String getEditContactInformationForm(
			@ModelAttribute("newContactInformation") ContactInformationController newContactInformation) {
		return "contactInformation/edit";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String processEditContactInformationForm(@ModelAttribute("newContactInformation") BindingResult result,
			HttpServletRequest request) {
		if (result.hasErrors()) {
			return "contactInformation/edit";
		}
		return "redirect:/profile/";

	}

}
