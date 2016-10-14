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

import mum.edu.domain.Credentials;
import mum.edu.repository.CredentialsRepository;
import mum.edu.service.CredentialsService;

@Controller
@RequestMapping({ "/users" })
public class CredentialsController {

	@Autowired
	private CredentialsService credentialsServices;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listUsers(Model model) {
		model.addAttribute("users", credentialsServices.findAll());
		System.out.println("You are here in USERS LIST");
		return "user/list";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getAddNewCredentialForm(@ModelAttribute("newCredential") Credentials newCredential) {
		return "user/add";
	}

}
