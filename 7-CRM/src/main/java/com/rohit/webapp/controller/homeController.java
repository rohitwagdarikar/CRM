package com.rohit.webapp.controller;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rohit.webapp.dao.FacultyRepo;
import com.rohit.webapp.dao.RegistrationRepo;
import com.rohit.webapp.dao.StudentRepo;
import com.rohit.webapp.model.FacultyModel;
import com.rohit.webapp.model.Registration;
import com.rohit.webapp.model.StudentModel;



@Controller
public class homeController {

	@Autowired
	StudentRepo srepo;
	
	@Autowired
	FacultyRepo frepo;
	
	@Autowired
	RegistrationRepo regrepo;
	
	@RequestMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login.jsp");
		return mv;
	}
	
	@RequestMapping("registration")
	public ModelAndView registration(Registration reg)
	{
		regrepo.save(reg);
		ModelAndView mv= new ModelAndView();
		mv.setViewName("login.jsp");
		return mv;
	}
	
	@RequestMapping("loginVerification")
	public ModelAndView loginVerification(@RequestParam("email") String email, @RequestParam("password") String password)
	{
		Registration reg;
		reg = regrepo.findByEmail(email);
		ModelAndView mv = new ModelAndView();
		if(reg.getEmail().equals(email) && reg.getPassword().equals(password))
		{
			mv.setViewName("dashboard.jsp");
			return mv;
		}else
		{
			mv.setViewName("login.jsp");
			return mv;	
		}
		
		
	}
	
	@RequestMapping("getFaculty")
	public ModelAndView getFaculty(int fid)
	{
		frepo.deleteById(fid);
		FacultyModel faculty= frepo.findById(fid).orElse(null);
		ModelAndView mv = new ModelAndView();
		mv.addObject("faculty", faculty);
		mv.setViewName("search_result.jsp");
		return mv;
		
	}
	
	@RequestMapping("getStudentByAddress")
	public ModelAndView getStudentByAddress(String saddress)
	{
		List<StudentModel> student = srepo.findBySaddressSorted(saddress);
		//List<StudentModel> student = srepo.findBySaddress(saddress);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("search_result.jsp");
		mv.addObject("studentAddress",student);
		return mv;
		
	}
	
}
