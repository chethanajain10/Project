package com.example.webapp.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.webapp.model.Property;
import com.example.webapp.model.User;
import com.example.webapp.service.PropertyService;
import com.example.webapp.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	@Autowired
	PropertyService propertyService;

	@RequestMapping("/userLogin")
	public String userLogin() {
		return "userLoginForm";
	}

	@RequestMapping("/userRegister")
	public String userRegister() {
		return "userRegisterForm";
	}

	@RequestMapping("/adminLogin")
	public String adminLogin() {
		return "adminLoginForm";
	}

	@PostMapping("/processUserLoginForm")
	public String processLoginForm(String email, String password, Model m) {

		Optional<User> optonal = userService.getUser(email, password);

		if (optonal.isEmpty()) {
			m.addAttribute("login_error", "Invalid username or password");
			return "userLoginForm";
		} else {
			List<Property> property = propertyService.getAllProperty();
			System.out.println(property);
			m.addAttribute("username",email);
			m.addAttribute("listProperty", property);
			return "userPannel";
		}

	}

	@PostMapping("/userRegister")
	public String registerUser(User user, Model m) {
		Optional<User> optional = userService.getUserEmail(user.getEmail());

		if (optional.isEmpty()) {
			userService.saveUser(user);
			m.addAttribute("succsess_Register", "New user Registered Successfully");
			return "userLoginForm";
		}

		m.addAttribute("error_register", "User with given E-mail already exists.");
		return "userRegisterForm";

	}

	@PostMapping("/processAdminLoginForm")
	public String processAdminLoginForm(HttpServletRequest request, Model m) {
		String aname = request.getParameter("admin_name");
		String apassword = request.getParameter("admin_password");

		System.out.println(aname + " " + apassword);
		if (aname != null) {
			List<Property> property = propertyService.getAllProperty();
			
			m.addAttribute("listProperty", property);

			return "adminPannel";

		} else {

			m.addAttribute("admin_error", "Invalid Admin Name and Password");

			return "adminLoginForm";

		}

	}

}
