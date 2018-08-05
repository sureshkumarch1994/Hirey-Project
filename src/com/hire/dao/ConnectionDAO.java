package com.hire.dao;


import java.io.File;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import com.hire.pojo.AppliedJobsPojo;
import com.hire.pojo.CityLocationsPojo;
import com.hire.pojo.EmployeerPojo;
import com.hire.pojo.JobCatogeriesPojo;
import com.hire.pojo.JobTypesPojo;
import com.hire.pojo.JobsPostedPojo;
import com.hire.pojo.SeekerPojo;
import com.hire.service.PasswordUtils;
import com.opensymphony.xwork2.ActionContext;

public class ConnectionDAO {
	int iid=1;
String mail="";
	Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
	SessionFactory sf = cfg.buildSessionFactory();
	Session session;

	/* to load all job types in db */
	public List<JobTypesPojo> getAllJobTypes() {
		session = sf.openSession();
		List<JobTypesPojo> list = new ArrayList<JobTypesPojo>();
		Query qry = session.createQuery("from JobTypesPojo jtp");
		list = qry.list();
		return list;
	}

	/* to load all job catogeries in db */
	public List<JobCatogeriesPojo> getAllJobCatogeries() {
		session = sf.openSession();
		List<JobCatogeriesPojo> list = new ArrayList<JobCatogeriesPojo>();
		Query qry = session.createQuery("from JobCatogeriesPojo jcp");
		list = qry.list();
		return list;
	}

	/* to get all cities() */
	public List<CityLocationsPojo> getAllCities() {
		List<CityLocationsPojo> list = new ArrayList<CityLocationsPojo>();
		session = sf.openSession();
		Query query = session.createQuery("from CityLocationsPojo clp");
		list = query.list();
		return list;
	}

	/* to search jobs based on location, job type and sector */
	public List<JobsPostedPojo> getSearchJobs(int selected_city, int selected_jobtype, int selected_jobcategory) {
		List<JobsPostedPojo> list = new ArrayList<JobsPostedPojo>();
		session = sf.openSession();
		Query query = session.createQuery("from JobsPostedPojo jpp where jpp.city_id=" + selected_city
				+ " and jpp.jobtype_id=" + selected_jobtype + " and jpp.job_cat_id=" + selected_jobcategory);
		list = query.list();
		return list;
	}

	/* to load full job description of selected job */
	public List<JobsPostedPojo> viewJobDescription(int id) {
		session = sf.openSession();
		List<JobsPostedPojo> list = new ArrayList<JobsPostedPojo>();
		Query query = session.createQuery("from JobsPostedPojo jpp where jpp.job_id=" + id);
		list = query.list();
		return list;
	}

	/* to check if seeker already registered */
	public int checkForJobseekerReg(String seeker_email) {
		session = sf.openSession();
		Query query = session.createQuery("from SeekerPojo sp where sp.seeker_email='" + seeker_email + "'");
		int size = query.list().size();
		return size;
	}

	/* for new job seeker registration */
	public int jobSeekerRegistration(String seeker_name, String seeker_email, String seeker_password,
			String seeker_experience, String seeker_cur_company, long seeker_mobile, double seeker_cur_salary,
			File seeker_resume) {
		int result = 0;
		session = sf.openSession();
		Transaction tx = session.beginTransaction();
		SeekerPojo sp = new SeekerPojo();
		sp.setSeeker_name(seeker_name);
		sp.setSeeker_email(seeker_email);
		sp.setSeeker_mobile(seeker_mobile);
		sp.setSeeker_password(seeker_password);
		sp.setSeeker_resume(seeker_resume);
		if (seeker_experience.equals("experience")) {
			sp.setSeeker_experience(seeker_experience);
			sp.setSeeker_cur_company(seeker_cur_company);
			sp.setSeeker_cur_salary(seeker_cur_salary);
		} else {
			sp.setSeeker_experience(seeker_experience);
		}
		int identity = (int) session.save(sp);
		tx.commit();
		if (identity != 0) {
			result = 1;
		}
		return result;
	}

	/* for job seeker login checking */
	public String jobSeekerLogin(String seeker_email, String seeker_password) {
		session = sf.openSession();
		Criteria crit = session.createCriteria(SeekerPojo.class);
		Criterion c1 = Restrictions.eq("seeker_email", seeker_email);
		Criterion c2 = Restrictions.eq("seeker_password", seeker_password);
		crit.add(c1);
		crit.add(c2);
		String username = null;
		String useremail = null;
		String userpass = null;
		int userid = 0;
		List<SeekerPojo> list = crit.list();
		if (list != null) {
			for (SeekerPojo sp : list) {
				username = sp.getSeeker_name();
				useremail = sp.getSeeker_email();
				userpass = sp.getSeeker_password();
				userid = sp.getSeeker_id();
			}
		}
		if (seeker_email.equals(useremail) && seeker_password.equals(userpass)) {
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("seeker_id", userid);
			return username;
		} else {
			return null;
		}
	}
	/*for jobs in drop*/
	
	public List<JobsPostedPojo> filterjo(int id)
	{
		session =sf.openSession();
		List<JobsPostedPojo> l=new ArrayList<JobsPostedPojo>();
		Query qtr=session.createQuery("from JobsPostedPojo jt where jt.job_cat_id="+id);
		l=qtr.list();
		return l;
		
	}

	/* to check if seeker already registered */
	public int checkForEmployeerReg(String emp_email) {
		session = sf.openSession();
		Query query = session.createQuery("from EmployeerPojo ep where ep.emp_email='" + emp_email + "'");
		int size = query.list().size();
		return size;
	}

	/* for adding new employeer */
	public int addNewEmployeer(String emp_name, String emp_email, String company_name, String your_designation,
			long emp_phone,String newpass,String sall) {
		System.out.println("hola");
		int result = 0;
		session = sf.openSession();
		Transaction tx = session.beginTransaction();
		EmployeerPojo ep = new EmployeerPojo();
		ep.setEmp_name(emp_name);
		ep.setEmp_email(emp_email);
		ep.setYour_designation(your_designation);
		ep.setEmp_phone(emp_phone);
		ep.setCompany_name(company_name);
		ep.setEncrypt_pass(newpass);
		ep.setEmp_salt(sall);
		ep.setEmp_status("notVerified");
		int identity = (int) session.save(ep);
		tx.commit();
		if (identity != 0) {
			result = 1;
		}
		return result;
	}

	/* for employeer login */
	public String employeerLogin(String salt,String existingpass, String emp_password) {
		session = sf.openSession();
		PasswordUtils pu=new PasswordUtils();
		boolean passmatch=pu.verifyUserPassword(emp_password, existingpass, salt);
		Criteria crit = session.createCriteria(EmployeerPojo.class);
		Criterion c1 = Restrictions.eq("emp_salt", salt);
		crit.add(c1);
		String empname = null;
		int empid = 0;
		List<EmployeerPojo> list = crit.list();
		if (list != null) {
			for (EmployeerPojo ep : list) {
				empname = ep.getEmp_name();
				empid = ep.getEmp_id();
			}
		}
		if (passmatch) {
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("emp_id", empid);
			return empname;
		}
		else 
		{
			return null;
		}
	}

	/* for seeker to apply job */
	public void applyJob(int seeker_id, int id) {
		session = sf.openSession();
		Transaction tx = session.beginTransaction();
		AppliedJobsPojo ajp = new AppliedJobsPojo();
		ajp.setJob_id(id);
		ajp.setSeeker_id(seeker_id);
		session.save(ajp);
		tx.commit();
	}

	public void updateforgot(String emp_email, String newpass) {
		// TODO Auto-generated method stub
		session =sf.openSession();
		Transaction tx = session.beginTransaction();
		Query q=session.createQuery("from EmployeerPojo ep where ep.emp_email='"+emp_email+"'");
		List l=q.list();
		Iterator itr=l.iterator();
		while(itr.hasNext())
		{
			Object o=itr.next();
			EmployeerPojo eep=(EmployeerPojo)o;
			iid=eep.getEmp_id();
			
		}
		Query qq=session.createQuery("update EmployeerPojo eep set eep.emp_password='"+newpass+"'where eep.emp_id="+iid);
		int res=qq.executeUpdate();
		tx.commit();
		session.close();
	}

	public String checkEmail(String email) {
		session=sf.openSession();
		 Criteria crit = session.createCriteria(EmployeerPojo.class);
		 Criterion cn = Restrictions.eq("emp_email",email );
		 crit.add(cn);
		 List l=crit.list();
		 Iterator itr=l.iterator();
		 while(itr.hasNext())
		 {
			 EmployeerPojo eee=(EmployeerPojo)itr.next();
			 mail=eee.getEmp_email();
		 }		
		// TODO Auto-generated method stub
		session.close();
		return mail;
	}
	public String[] getSaltPassword(String email)
	{
		session=sf.openSession();
		String[] salpas=new String[2];
		Query q=session.createQuery("from EmployeerPojo ep where ep.emp_email='"+email+"'");
		List l=q.list();
		Iterator itr=l.iterator();
		while(itr.hasNext())
		{
			Object o=itr.next();
			EmployeerPojo ee=(EmployeerPojo)o;
			salpas[0]=ee.getEmp_salt();
			salpas[1]=ee.getEncrypt_pass();
			
		}
		return salpas;
	}

}