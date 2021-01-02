package com.rohit.webapp.dao;

import org.springframework.data.repository.CrudRepository;

import com.rohit.webapp.model.Registration;

public interface RegistrationRepo extends CrudRepository<Registration, String> {

	public Registration findByEmail(String email);
	public Registration findByPassword(String password);
}
