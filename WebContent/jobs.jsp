<%@ include file="header.jsp"%>
<style>
@import
	url(https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css);
);
</style>
<!-- banner -->
<div class="inner_page_agile">
	<h3>Job Details</h3>
	<p>Choose a job you love, and you will never have to work a day in
		your life..!</p>
</div>
<!--//banner -->
<!--/w3_short-->
<div class="services-breadcrumb_w3layouts">
	<div class="inner_breadcrumb">

		<ul class="short_w3ls" _w3ls>
			<li><a href="home">Home</a><span>|</span></li>
			<li>Job Details</li>
		</ul>
	</div>
</div>
<!--//w3_short-->
<!-- /inner_content -->
<div class="inner_content_info_agileits">
	<div class="container">
		<div class="tittle_head_w3ls">
			<h3 class="tittle">Job Details</h3>
		</div>
		<div class="inner_sec_grids_info_w3ls">
			<div class="col-md-8 job_info_left">
				<div class="but_list">
					<div class="bs-example bs-example-tabs" role="tabpanel"
						data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#home"
								id="home-tab" role="tab" data-toggle="tab" aria-controls="home"
								aria-expanded="true">Job Description</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="home"
								aria-labelledby="home-tab">
								<s:iterator value="jobsPostedList">
									<div class="tab_grid">
										<div class="col-sm-3 loc_1">
											<img src="images/loc6.jpg" alt="" style="margin-top: 70px;">
										</div>
										<div class="col-sm-9">
											<div class="jobs_right">
												<div class="date">
													<s:property value="on_date_day" />
													<span><s:property value="on_date_month" /></span>
												</div>
												<div class="date_desc">
													<h6 class="title">
														<s:property value="job_position" />
													</h6>
													<span class="meta"><b>Posted by:</b> <s:property
															value="posted_by" /></span>
												</div>
												<div class="details" style="padding-top: 10px;">
													<i class="fa fa-rupee"
														style="font-size: 25px; padding-top: 5px;"></i><b>MONTHLY</b>
													- <span style="font-size: 15px; color: #777;"> <s:property
															value="salary_monthly" /></span> <br> <i
														class="fa fa-map-marker"
														style="font-size: 25px; padding-top: 5px;"></i><b><s:property
															value="clp.city_name" /></b> - <span
														style="font-size: 15px; color: #777;"><s:property
															value="area_name" /></span> <br> <i
														class="fa fa-black-tie"
														style="font-size: 25px; padding-top: 5px;"></i><b>Job
														Type</b> - <span style="font-size: 15px; color: #777;"><s:property
															value="jtp.jobtype_name" /></span> <br> <i
														class="fa fa-id-card"
														style="font-size: 25px; padding-top: 5px;"></i><b>Experience</b>
													- <span style="font-size: 15px; color: #777;"><s:property
															value="experience" /> Yrs</span> <br>
												</div>
												<p class="description"
													style="padding-top: 10px; margin-bottom: -10px;">
													<b>Job Description:</b>
												</p>
												<p class="description">
													<s:property value="job_description" />
												</p>
												<div class="read">
													<a
														href="viewJobDescription?id=<s:property value="job_id"/>"
														class="read-more">Read More</a>
												</div>
												<s:if test="#session.nameOfSeeker!=null">
													<div class="read" style="margin-left: 100px">
														<a href="applyJob?id=<s:property value="job_id"/>"
															class="read-more1">Apply</a>
													</div>
												</s:if>
												<s:else>
													<div class="read" style="margin-left: 100px">
														<a href="jobseekerlogin.jsp" class="read-more1">Login
															to Apply</a>
													</div>
												</s:else>

												<div class="clearfix"></div>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
									<hr>
								</s:iterator>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 job_info_right">

			<div class="widget_search">
				<h5 class="widget-title">Search</h5>
				<div class="widget-content">
					<form action="searchJobs" method="post">
						<span>I'm looking for a ...</span> <select
							class="form-control jb_1" name="selected_jobtype">
							<option>Select Job Type</option>
							<s:iterator value="jobTypesList">
								<option value="<s:property value="jobtype_id" />"><s:property
										value="jobtype_name" /></option>
							</s:iterator>
						</select> <span>in</span> <select class="form-control jb_1"
							name="selected_city">
							<option>Location</option>
							<s:iterator value="cityLocationsList">
								<option value="<s:property value="city_id" />"><s:property
										value="city_name" /></option>
							</s:iterator>
						</select> <select class="form-control jb_1" name="selected_jobcategory">
							<option>Select Jobs here (e.g. IT Software, Marketing)</option>
							<s:iterator value="jobCatogeriesList">
								<option value="<s:property value="job_cat_id" />"><s:property
										value="job_cat_name" /></option>
							</s:iterator>
						</select> <input type="submit" value="Search">
					</form>
				</div>
			</div>
			<div class="col_3 permit">
				<h3>Jobs by Category</h3>
				<ul class="list_2">
					<div style="position: absolute; float: left;">
						<li><a href="jobs.jsp">Walk-ins</a></li>
						<li><a href="jobs.jsp">Bpo Jobs</a></li>
						<li><a href="#">Teaching Jobs</a></li>
						<li><a href="#">Diploma Jobs</a></li>
						<li><a href="#">Tech Support</a></li>
						<li><a href="#">Finance Jobs</a></li>
					</div>
					<div class="list_it_2" style="padding-left: 126px;">
						<li><a href="#">Part time Jobs</a></li>
						<li><a href="#">Software Jobs</a></li>
						<li><a href="#">Health Care</a></li>
						<li><a href="#">Hospitality</a></li>
						<li><a href="#">Research Jobs</a></li>
						<li><a href="#">Defence Jobs</a></li>
					</div>
				</ul>
			</div>
			<div class="col_3 experience">
				<h3>Work Experience</h3>
				<table class="table">
					<tbody>
						<tr class="unread checked">
							<td class="hidden-xs"><input type="checkbox"
								class="checkbox"></td>
							<td class="hidden-xs">0-1 years</td>
							<td>(150)</td>
						</tr>
						<tr class="unread checked">
							<td class="hidden-xs"><input type="checkbox"
								class="checkbox"></td>
							<td class="hidden-xs">1-2 years</td>
							<td>(50)</td>
						</tr>
						<tr class="unread checked">
							<td class="hidden-xs"><input type="checkbox"
								class="checkbox"></td>
							<td class="hidden-xs">2-4 years</td>
							<td>(85)</td>
						</tr>
						<tr class="unread checked">
							<td class="hidden-xs"><input type="checkbox"
								class="checkbox"></td>
							<td class="hidden-xs">4-6 years</td>
							<td>(45)</td>
						</tr>
						<tr class="unread checked">
							<td class="hidden-xs"><input type="checkbox"
								class="checkbox"></td>
							<td class="hidden-xs">6-8 years</td>
							<td>(25)</td>
						</tr>
						<tr class="unread checked">
							<td class="hidden-xs"><input type="checkbox"
								class="checkbox"></td>
							<td class="hidden-xs">8-10 years</td>
							<td>(30)</td>
						</tr>
						<tr class="unread checked">
							<td class="hidden-xs"><input type="checkbox"
								class="checkbox"></td>
							<td class="hidden-xs">10-12 years</td>
							<td>(15)</td>
						</tr>
						<tr class="unread checked">
							<td class="hidden-xs"><input type="checkbox"
								class="checkbox"></td>
							<td class="hidden-xs">12-14 years</td>
							<td>(10)</td>
						</tr>
						<tr class="unread checked">
							<td class="hidden-xs"><input type="checkbox"
								class="checkbox"></td>
							<td class="hidden-xs">More than 15 years</td>
							<td>(10)</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col_3 permit">
				<h3>Work Permit</h3>
				<table class="table">
					<tbody>
						<tr class="unread checked">
							<td class="hidden-xs"><input type="checkbox"
								class="checkbox"></td>
							<td class="hidden-xs">Full time Jobs</td>
						</tr>
						<tr class="unread checked">
							<td class="hidden-xs"><input type="checkbox"
								class="checkbox"></td>
							<td class="hidden-xs">Part time Jobs</td>
						</tr>
						<tr class="unread checked">
							<td class="hidden-xs"><input type="checkbox"
								class="checkbox"></td>
							<td class="hidden-xs">Daily based Jobs</td>
						</tr>
						<tr class="unread checked">
							<td class="hidden-xs"><input type="checkbox"
								class="checkbox"></td>
							<td class="hidden-xs">Weekly based Jobs</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //inner_content -->
<%@ include file="footer.jsp"%>