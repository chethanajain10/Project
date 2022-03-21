package com.example.webapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.example.webapp.*")
public class RealEstateWebAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(RealEstateWebAppApplication.class, args);
	}

}
