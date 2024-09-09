package com.example.model;

public class Employee {

	
	private String id;
	private String name;
	private String email;
	private long contact;
	private String department;

	public Employee() {
	}

	public Employee(String id, String name, String email, long contact, String department) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.department = department;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getContact() {
		return contact;
	}

	public void setContact(long contact) {
		this.contact = contact;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", email=" + email + ", contact=" + contact + ", department="
				+ department + "]";
	}

}
