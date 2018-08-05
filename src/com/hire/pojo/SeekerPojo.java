package com.hire.pojo;

import java.io.File;

public class SeekerPojo {

	private int seeker_id;
	private String seeker_name, seeker_email, seeker_password, seeker_experience, seeker_cur_company;
	private long seeker_mobile;
	private double seeker_cur_salary;
	private File seeker_resume;

	public int getSeeker_id() {
		return seeker_id;
	}

	public void setSeeker_id(int seeker_id) {
		this.seeker_id = seeker_id;
	}

	public String getSeeker_name() {
		return seeker_name;
	}

	public void setSeeker_name(String seeker_name) {
		this.seeker_name = seeker_name;
	}

	public String getSeeker_email() {
		return seeker_email;
	}

	public void setSeeker_email(String seeker_email) {
		this.seeker_email = seeker_email;
	}

	public String getSeeker_password() {
		return seeker_password;
	}

	public void setSeeker_password(String seeker_password) {
		this.seeker_password = seeker_password;
	}

	public String getSeeker_experience() {
		return seeker_experience;
	}

	public void setSeeker_experience(String seeker_experience) {
		this.seeker_experience = seeker_experience;
	}

	public String getSeeker_cur_company() {
		return seeker_cur_company;
	}

	public void setSeeker_cur_company(String seeker_cur_company) {
		this.seeker_cur_company = seeker_cur_company;
	}

	public long getSeeker_mobile() {
		return seeker_mobile;
	}

	public void setSeeker_mobile(long seeker_mobile) {
		this.seeker_mobile = seeker_mobile;
	}

	public double getSeeker_cur_salary() {
		return seeker_cur_salary;
	}

	public void setSeeker_cur_salary(double seeker_cur_salary) {
		this.seeker_cur_salary = seeker_cur_salary;
	}

	public File getSeeker_resume() {
		return seeker_resume;
	}

	public void setSeeker_resume(File seeker_resume) {
		this.seeker_resume = seeker_resume;
	}

}