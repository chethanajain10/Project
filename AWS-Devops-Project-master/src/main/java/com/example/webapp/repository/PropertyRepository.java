package com.example.webapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.webapp.model.Property;

public interface PropertyRepository extends JpaRepository<Property, Integer> {
	
}