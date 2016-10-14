package mum.edu.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mum.edu.domain.Member;

@Controller
@RequestMapping({ "/roles" })
public class RoleController {

	@RequestMapping("/list")
	public String listRoles(Model model) {
		System.out.println("you are here in ADD ROLE SECTION");
		return "role/list";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addRole(@ModelAttribute("newRole") Member newMember) {
		System.out.println("you are here in ADD ROLE SECTION");
		return "role/add";
	}

	@RequestMapping("/edit/{$roleId}")
	public String editRole(Model model) {
		System.out.println("you are here in ADD ROLE SECTION");
		return "role/edit";
	}

}
