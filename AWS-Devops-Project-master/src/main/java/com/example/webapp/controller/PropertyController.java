package com.example.webapp.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.webapp.model.Property;
import com.example.webapp.service.PropertyService;

@Controller
public class PropertyController {
	
	@Autowired
	PropertyService propertyService;
	
	@PostMapping("/saveProperty")
	public String saveProperty( Property property, Model m) {
		propertyService.saveProperty(property);
		return "redirect:/displayProperty";
	}
	
	@RequestMapping("/displayProperty")
	public String displayProperty(Model m) {
		List<Property> property = propertyService.getAllProperty();
		
		m.addAttribute("listProperty",property);
		return "adminPannel";
	
	}
	
	@GetMapping("/deleteProperty/{property_id}")
	public String deleteProperty(@PathVariable int property_id) {
		propertyService.deleteProperty(property_id);
		
		return "redirect:/displayProperty";
		
	}
	
	@GetMapping("/updateProperty/{property_id}")
	public String updateProperty(@PathVariable int property_id , Model m){
		Optional<Property> property = propertyService.getProperty(property_id);
		m.addAttribute("listProperty",property);
		return "updateProperty";	
	}
	
}
