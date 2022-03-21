package com.example.webapp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.webapp.model.Property;
import com.example.webapp.repository.PropertyRepository;

@Service
public class PropertyService {
	
	@Autowired
	PropertyRepository propertyRepository;
	
	public void saveProperty(Property property) {
		propertyRepository.save(property);
		
	}
	
	public List<Property> getAllProperty() {
		return propertyRepository.findAll();
	}
	
	public void deleteProperty(int id) {
		
		propertyRepository.deleteById(id);
		
	}
	
	public Optional<Property> getProperty(int id) {
		return propertyRepository.findById(id);
		
	}

}
