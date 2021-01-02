package com.rohit.webapp.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.rohit.webapp.model.StudentModel;



public interface StudentRepo extends CrudRepository<StudentModel, Integer>{

	//
	//List<StudentModel> findBySaddress(String address);
		
	@Query("from StudentModel where saddress=?1 order by sname")
	List<StudentModel> findBySaddressSorted(String saddress);
}
