package com.example.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.model.Employee;

@Repository
public class EmployeeRepo implements EmployeeDAO {

	@Autowired
	private JdbcTemplate template;

	@Override
	public void insert(String id, String name, 
						String email, long contact, String department) {
		String query = "INSERT INTO Employee VALUES(?, ?, ?, ?, ?)";
		template.update(query, id, name, email, contact, department);
	}
	
	@Override
	public List<Employee> getData() {
		String query = "SELECT * FROM Employee";
		
		RowMapper<Employee> mapper = new EmployeeRowMapper();
		
		return template.query(query, mapper);
		
	}
	
	
	@Override
	public int deleteByID(String id) {
		String query = "DELETE FROM Employee WHERE Employee_ID = ?";
		
		return template.update(query, id);
	}

	@Override
	public List<Employee> getDataByID(String id) {
		String query = "SELECT * FROM Employee WHERE Employee_ID = ?";
		
		return template.query(query, new EmployeeRowMapper(), id);
	}

	@Override
	public void updateByID(Employee employee) {
		String query = "UPDATE Employee SET Employee_NAME = ? , EMAIL = ?, CONTACT = ?, DEPARTMENT = ? WHERE Employee_ID = ?";
		template.update(query, employee.getName(), employee.getEmail(), employee.getContact(), employee.getDepartment(), employee.getId());
		
	}

}
