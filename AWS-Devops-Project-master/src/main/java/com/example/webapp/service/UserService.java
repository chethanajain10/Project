package com.example.webapp.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.webapp.model.User;
import com.example.webapp.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	UserRepository userRepository;

	public void saveUser(User user) {

		userRepository.save(user);

	}

	public Optional<User> getUser(String email, String password) {
		return userRepository.findByEmailAndPassword(email, password);
	}

	public Optional<User> getUserEmail(String email) {
		return userRepository.findByEmail(email);
	}

}
