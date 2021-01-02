package com.rohit.webapp.dao;

import org.springframework.data.repository.CrudRepository;

import com.rohit.webapp.model.FacultyModel;

public interface FacultyRepo extends CrudRepository<FacultyModel, Integer> {

}
