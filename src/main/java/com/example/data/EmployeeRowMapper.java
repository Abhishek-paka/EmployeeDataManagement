package com.example.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.example.model.Employee;

public class EmployeeRowMapper implements RowMapper<Employee> {

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
		return new Employee(
				rs.getString(1),
				rs.getString(2),
				rs.getString(3),
				rs.getLong(4),
				rs.getString(5));
	}

}
