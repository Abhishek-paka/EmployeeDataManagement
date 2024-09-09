package com.example.admin;

import org.springframework.stereotype.Component;

@Component
public class Admin {
	private final String username = "admin@gmail.com";
	private final String password = "Admin@321";
	
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}

	
}
