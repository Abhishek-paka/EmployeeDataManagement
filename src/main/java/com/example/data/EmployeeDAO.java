package com.example.data;

import java.util.List;

import com.example.model.Employee;

public interface EmployeeDAO {

	public void insert(String id, String name, String email, long contact, String department);

	public List<Employee> getData();
	
	public int deleteByID(String id);
	
	public List<Employee> getDataByID(String id);
	
	public void updateByID(Employee employee);
	
	

	
//	public int getByID(String id);

}
