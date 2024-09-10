package com.example;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.admin.Admin;
import com.example.data.EmployeeRepo;
import com.example.model.Employee;

@Controller
public class MainController {
	
	@Autowired
	private EmployeeRepo repo;
	
	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	@RequestMapping("login")
	public ModelAndView index(ModelAndView model, HttpServletRequest request,
						@RequestParam("username") String username,
						@RequestParam("password") String password) {
		Admin admin = new Admin();
		if (admin.getUsername().equals(username) && 
				admin.getPassword().equals(password)){
			model.setViewName("home");
			return model;
		} else {
			model.addObject("message", "Invalid Login");
			return model;
		}
		
	}

	@RequestMapping("/register")
	public ModelAndView register(ModelAndView model) {
		model.addObject("pageName","Register");
		model.setViewName("register");
		return model;
	}

	@RequestMapping("/entry")
	public ModelAndView entry(ModelAndView model,
			@RequestParam("id") String id,
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("contact") long contact,
			@RequestParam("department") String department) {
		try {
			repo.insert(id, name, email, contact, department);
			model.addObject("message","Data Inserted Successfully");
			model.setViewName("message");			
			return model;
		} catch (DataIntegrityViolationException e) {
			model.addObject("message","Data Already Exists");
			model.setViewName("message");
			
			return model;
		}

	}
	
	@RequestMapping("/viewData")
	public ModelAndView viewData(ModelAndView model) {
		model.addObject("EmployeeData", repo.getData());
		model.setViewName("viewData");
		
		
		return model;
	}
	
	@RequestMapping("/delete")
	public String delete() {
		return "deleteByID";
	}
	
	
	@RequestMapping("/deleteByID")
	public ModelAndView deleteByID(ModelAndView model, @RequestParam("id") String id) {

		if(repo.deleteByID(id) != 0) {
			model.addObject("message","Deleted Successfully");
		} else {
			model.addObject("message","Deletion Falied");
		}
		model.setViewName("message");
		
		return model;
	}
	
	@RequestMapping("/update")
	public String update() {
		return "update";
	}
	
	@RequestMapping("/updateByID")
	public ModelAndView updateByID(ModelAndView model, @RequestParam("id") String id) {
		if (repo.isPresent(id)x) {
			List<Employee> list = repo.getDataByID(id);
			model.addObject("EmployeeData", list);
			model.setViewName("updatePage");
		} else {
			model.addObject("message", "No data found");
			model.setViewName("message");
		}
		
		return model;
		
	}
	
	@RequestMapping("/updateAction")
	public ModelAndView updateAction(ModelAndView model,
								@RequestParam("id") String id,
								@RequestParam("name") String name,
								@RequestParam("email") String email,
								@RequestParam("contact") long contact,
								@RequestParam("department") String department) {
		
		
		Employee employee = new Employee(id, name, email, contact, department);
		
		repo.updateByID(employee);
		
		model.addObject("message", "Data Updated Successfully");
		model.setViewName("message");
		
		return model;
		
	}
	
	@RequestMapping("/search")
	public ModelAndView search(ModelAndView model, @RequestParam("id") String id) {
		model.addObject("EmployeeData", repo.getDataByID(id));
		model.setViewName("employeeData");
		return model;
	}

}
