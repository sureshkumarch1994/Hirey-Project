package com.hire.action;

import java.io.File;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.hire.dao.ConnectionDAO;
import com.hire.pojo.CityLocationsPojo;
import com.hire.pojo.JobCatogeriesPojo;
import com.hire.pojo.JobTypesPojo;
import com.hire.pojo.JobsPostedPojo;
import com.hire.service.EmployeerRegMail;
import com.hire.service.HIde;
import com.hire.service.PasswordGenerator;
import com.hire.service.PasswordUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import javassist.bytecode.Descriptor.Iterator;

//Author: Suresh Kumar Ch
//Created: 13/07/2018
//Role: To load stuff presented in home page

public class MainAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;

	/*------------------------------------------------------------------------------------
	---------------------------- PRIVATE DATA MEMBERS ------------------------------------
	------------------------------------------------------------------------------------*/
	ConnectionDAO dao = new ConnectionDAO();
	private Map<String, Object> session = ActionContext.getContext().getSession();
	private int selected_city, selected_jobtype, selected_jobcategory, id;
	private String seeker_name, seeker_email, seeker_password, seeker_experience, seeker_cur_company;
	private long seeker_mobile;
	private double seeker_cur_salary;
	private File seeker_resume;
	private String emp_name, emp_email, company_name, your_designation, emp_password,your_password;
	private long emp_phone;
	List<JobTypesPojo> jobTypesList = new ArrayList<JobTypesPojo>();
	List<JobCatogeriesPojo> jobCatogeriesList = new ArrayList<JobCatogeriesPojo>();
	List<CityLocationsPojo> cityLocationsList = new ArrayList<CityLocationsPojo>();
	List<JobsPostedPojo> jobsPostedList = new ArrayList<JobsPostedPojo>();
	List<String> salpass = new ArrayList<String>();

	/*------------------------------------------------------------------------------------
	---------------------------- PUBLIC METHODS WRITTEN HERE -----------------------------
	------------------------------------------------------------------------------------*/

	/* to load index.jsp page */
	public String reloadHome() {
		System.out.println("hello");
		jobTypesList = dao.getAllJobTypes();
		jobCatogeriesList = dao.getAllJobCatogeries();
		cityLocationsList = dao.getAllCities();
		return SUCCESS;
	}

	/* to search jobs based on location, job type and sector */
	public String searchJobs() {
		session.put("selected_city", selected_city);
		session.put("selected_jobtype", selected_jobtype);
		session.put("selected_jobcategory", selected_jobcategory);
		jobsPostedList = dao.getSearchJobs(selected_city, selected_jobtype, selected_jobcategory);
		jobTypesList = dao.getAllJobTypes();
		jobCatogeriesList = dao.getAllJobCatogeries();
		cityLocationsList = dao.getAllCities();
		return SUCCESS;
	}

	/* to load full job description of selected job */
	public String viewJobDescription() {
		jobsPostedList = dao.viewJobDescription(id);
		jobTypesList = dao.getAllJobTypes();
		jobCatogeriesList = dao.getAllJobCatogeries();
		cityLocationsList = dao.getAllCities();
		return SUCCESS;
	}

	/* for new job seeker registration */
	public String jobSeekerRegistration() {
		int result = dao.checkForJobseekerReg(seeker_email);
		if (result == 0) {
			int status = dao.jobSeekerRegistration(seeker_name, seeker_email, seeker_password, seeker_experience,
					seeker_cur_company, seeker_mobile, seeker_cur_salary, seeker_resume);
			System.out.println(status);
			if (status == 1) {
				addActionMessage("Successfully registered, Login to continue.");
				return SUCCESS;
			} else {
				addActionMessage("Sorry error occured, Please try again.");
				return ERROR;
			}
		} else {
			addActionMessage("You have already registered with us, Try forgot password.");
			return ERROR;
		}
	}

	/* for job seeker login checking */
	public String jobSeekerLogin() {
		String nameOfSeeker = dao.jobSeekerLogin(seeker_email, seeker_password);
		if (nameOfSeeker != null) {
			session.put("nameOfSeeker", nameOfSeeker);
			return SUCCESS;
		} else {
			addActionMessage("Invalid Username or Password");
			return ERROR;
		}
	}

	/* for job seeker log out */
	public String jobSeekerLogout() {
		if (session.containsKey("nameOfSeeker")) {
			session.remove("nameOfSeeker");
			session.remove("seeker_id");
			session.clear();
		}
		return SUCCESS;
	}

	/* for new employeer registration */
	public String employeerReg() throws NoSuchAlgorithmException, InvalidKeySpecException {
		System.out.println("hello");
		int result = dao.checkForEmployeerReg(emp_email);
		if (result == 0) {
			PasswordUtils pu=new PasswordUtils();
			String sall=pu.getSalt(20);
			
			System.out.println(your_designation);
			System.out.println(your_password);
			String newpass=pu.generateSecurePassword(your_password, sall);
			System.out.println(your_designation);
			System.out.println("hi");
			int status = dao.addNewEmployeer(emp_name, emp_email, company_name, your_designation, emp_phone,newpass,sall);
			if (status == 1) {
				return SUCCESS;
			} else {
				return ERROR;
			}
		} else {
			return ERROR;
		}
	}


	/* for employeer login */
	public String employeerLogin() {
		String salt = "",existingpass="";
		String[] sal=dao.getSaltPassword(emp_email);
		salt=sal[0];
		existingpass=sal[1];
		String nameOfEmployeer = dao.employeerLogin(salt,existingpass, emp_password);
		if (nameOfEmployeer != null) { 
			session.put("nameOfEmployeer", nameOfEmployeer);
			return SUCCESS;
		} else {
			addActionMessage("Invalid Username or Password");
			return ERROR;
		}
	}

	/* for job seeker log out */
	public String employeerLogout() {
		if (session.containsKey("nameOfEmployeer")) {
			session.remove("nameOfEmployeer");
			session.remove("emp_id");
			session.clear();
		}
		return SUCCESS;
	}

	public String applyJob() {
		String nameOfSeeker = (String) session.get("nameOfSeeker");
		if (nameOfSeeker.length() != 0) {
			int seeker_id = (int) session.get("seeker_id");
			dao.applyJob(seeker_id, id);
		}
		int sc = (int) session.get("selected_city");
		int sjt = (int) session.get("selected_jobtype");
		int sjc = (int) session.get("selected_jobcategory");
		jobsPostedList = dao.getSearchJobs(sc, sjt, sjc);
		jobTypesList = dao.getAllJobTypes();
		jobCatogeriesList = dao.getAllJobCatogeries();
		cityLocationsList = dao.getAllCities();
		return SUCCESS;
	}
	public String filterJobs()
	{
		jobsPostedList= dao.filterjo(id);
		jobTypesList=dao.getAllJobTypes();
		jobCatogeriesList = dao.getAllJobCatogeries();
		cityLocationsList=dao.getAllCities();
		
		return SUCCESS;
		
	}
	
	/* forgot password */
	public String forgotpass()
	{
		String maill=dao.checkEmail(emp_email);
		if(maill.equals(emp_email))
		{
		PasswordGenerator pg=new PasswordGenerator();
		String newpass=pg.makepassword(5);
		EmployeerRegMail erm=new EmployeerRegMail();
		erm.sendMsg(emp_email, emp_name, newpass);
		dao.updateforgot(emp_email,newpass);
		return SUCCESS;
		
	}
		else
		{
			addActionError("Please kindly register");
		return ERROR;
	}
		
	}

	/*------------------------------------------------------------------------------------
	---------------------------- PUBLIC GETTERS AND SETTERS ------------------------------
	------------------------------------------------------------------------------------*/

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<JobTypesPojo> getJobTypesList() {
		return jobTypesList;
	}

	public void setJobTypesList(List<JobTypesPojo> jobTypesList) {
		this.jobTypesList = jobTypesList;
	}

	public List<JobCatogeriesPojo> getJobCatogeriesList() {
		return jobCatogeriesList;
	}

	public void setJobCatogeriesList(List<JobCatogeriesPojo> jobCatogeriesList) {
		this.jobCatogeriesList = jobCatogeriesList;
	}

	public List<CityLocationsPojo> getCityLocationsList() {
		return cityLocationsList;
	}

	public void setCityLocationsList(List<CityLocationsPojo> cityLocationsList) {
		this.cityLocationsList = cityLocationsList;
	}

	public List<JobsPostedPojo> getJobsPostedList() {
		return jobsPostedList;
	}

	public void setJobsPostedList(List<JobsPostedPojo> jobsPostedList) {
		this.jobsPostedList = jobsPostedList;
	}

	public int getSelected_city() {
		return selected_city;
	}

	public void setSelected_city(int selected_city) {
		this.selected_city = selected_city;
	}

	public int getSelected_jobtype() {
		return selected_jobtype;
	}

	public void setSelected_jobtype(int selected_jobtype) {
		this.selected_jobtype = selected_jobtype;
	}

	public int getSelected_jobcategory() {
		return selected_jobcategory;
	}

	public void setSelected_jobcategory(int selected_jobcategory) {
		this.selected_jobcategory = selected_jobcategory;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getEmp_password() {
		return emp_password;
	}

	public void setEmp_password(String emp_password) {
		this.emp_password = emp_password;
	}

	public long getEmp_phone() {
		return emp_phone;
	}

	public void setEmp_phone(long emp_phone) {
		this.emp_phone = emp_phone;
	}
	public String getYour_password() {
		return your_password;
	}

	public void setYour_password(String your_password) {
		this.your_password = your_password;
	}
	char c=49;

}