package com.hire.pojo;

public class JobsPostedPojo {

	private int job_id, company_id, job_cat_id, jobtype_id, city_id;
	private String job_code, job_position, salary_monthly, salary_ctc, experience, on_date_day, on_date_month,
			posted_on, posted_by, job_description, area_name;
	CityLocationsPojo clp;
	CompaniesPojo cp;
	JobCatogeriesPojo jcp;
	JobTypesPojo jtp;

	public int getJob_id() {
		return job_id;
	}

	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}

	public int getCompany_id() {
		return company_id;
	}

	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}

	public int getJob_cat_id() {
		return job_cat_id;
	}

	public void setJob_cat_id(int job_cat_id) {
		this.job_cat_id = job_cat_id;
	}

	public int getJobtype_id() {
		return jobtype_id;
	}

	public void setJobtype_id(int jobtype_id) {
		this.jobtype_id = jobtype_id;
	}

	public int getCity_id() {
		return city_id;
	}

	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}

	public String getJob_code() {
		return job_code;
	}

	public void setJob_code(String job_code) {
		this.job_code = job_code;
	}

	public String getJob_position() {
		return job_position;
	}

	public void setJob_position(String job_position) {
		this.job_position = job_position;
	}

	public String getSalary_monthly() {
		return salary_monthly;
	}

	public void setSalary_monthly(String salary_monthly) {
		this.salary_monthly = salary_monthly;
	}

	public String getSalary_ctc() {
		return salary_ctc;
	}

	public void setSalary_ctc(String salary_ctc) {
		this.salary_ctc = salary_ctc;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getOn_date_day() {
		return on_date_day;
	}

	public void setOn_date_day(String on_date_day) {
		this.on_date_day = on_date_day;
	}

	public String getOn_date_month() {
		return on_date_month;
	}

	public void setOn_date_month(String on_date_month) {
		this.on_date_month = on_date_month;
	}

	public String getPosted_on() {
		return posted_on;
	}

	public void setPosted_on(String posted_on) {
		this.posted_on = posted_on;
	}

	public String getPosted_by() {
		return posted_by;
	}

	public void setPosted_by(String posted_by) {
		this.posted_by = posted_by;
	}

	public String getJob_description() {
		return job_description;
	}

	public void setJob_description(String job_description) {
		this.job_description = job_description;
	}

	public CityLocationsPojo getClp() {
		return clp;
	}

	public void setClp(CityLocationsPojo clp) {
		this.clp = clp;
	}

	public CompaniesPojo getCp() {
		return cp;
	}

	public void setCp(CompaniesPojo cp) {
		this.cp = cp;
	}

	public JobCatogeriesPojo getJcp() {
		return jcp;
	}

	public void setJcp(JobCatogeriesPojo jcp) {
		this.jcp = jcp;
	}

	public JobTypesPojo getJtp() {
		return jtp;
	}

	public void setJtp(JobTypesPojo jtp) {
		this.jtp = jtp;
	}

	public String getArea_name() {
		return area_name;
	}

	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}

}