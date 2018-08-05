package com.hire.pojo;

public class EmployeerPojo {

	private int emp_id;
	private String emp_name, emp_email, company_name, your_designation, emp_status,emp_salt,encrypt_pass;
	

	private long emp_phone;

	public int getEmp_id() {
		return emp_id;
	}


	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}

	public String getEmp_name() {
		return emp_name;
	}

	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}

	public String getEmp_email() {
		return emp_email;
	}

	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getYour_designation() {
		return your_designation;
	}

	public void setYour_designation(String your_designation) {
		this.your_designation = your_designation;
	}

	public String getEmp_status() {
		return emp_status;
	}

	public void setEmp_status(String emp_status) {
		this.emp_status = emp_status;
	}

	

	public long getEmp_phone() {
		return emp_phone;
	}

	public void setEmp_phone(long emp_phone) {
		this.emp_phone = emp_phone;
	}
	public String getEmp_salt() {
		return emp_salt;
	}

	public void setEmp_salt(String emp_salt) {
		this.emp_salt = emp_salt;
	}
	public String getEncrypt_pass() {
		return encrypt_pass;
	}


	public void setEncrypt_pass(String encrypt_pass) {
		this.encrypt_pass = encrypt_pass;
	}
}