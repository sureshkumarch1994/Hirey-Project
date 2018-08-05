package com.hire.pojo;

public class AppliedJobsPojo {
	private int app_id, seeker_id, job_id;
	JobsPostedPojo jpp;
	SeekerPojo sp;

	public int getApp_id() {
		return app_id;
	}

	public void setApp_id(int app_id) {
		this.app_id = app_id;
	}

	public int getSeeker_id() {
		return seeker_id;
	}

	public void setSeeker_id(int seeker_id) {
		this.seeker_id = seeker_id;
	}

	public int getJob_id() {
		return job_id;
	}

	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}

	public JobsPostedPojo getJpp() {
		return jpp;
	}

	public void setJpp(JobsPostedPojo jpp) {
		this.jpp = jpp;
	}

	public SeekerPojo getSp() {
		return sp;
	}

	public void setSp(SeekerPojo sp) {
		this.sp = sp;
	}
}