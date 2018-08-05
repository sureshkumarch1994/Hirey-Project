<%@ include file="header.jsp"%>
<!-- banner -->
<div class="inner_page_agile">
	<h3>Job Description</h3>
	<p>Do your job; be the best at whatever your job description is..!</p>

</div>
<!--//banner -->
<!--/w3_short-->
<div class="services-breadcrumb_w3layouts">
	<div class="inner_breadcrumb">

		<ul class="short_w3ls" _w3ls>
			<li><a href="home">Home</a><span>|</span></li>
			<li>Job Description</li>
		</ul>
	</div>
</div>
<!--//w3_short-->
<!-- /inner_content -->
<div class="inner_content_info_agileits">
	<div class="container">
		<div class="tittle_head_w3ls">
			<h3 class="tittle">Job Description</h3>
		</div>
		<div class="inner_sec_grids_info_w3ls">
			<div class="col-md-8 job_info_left">
				<s:iterator value="jobsPostedList">
					<div class="single-left1">
						<h3>
							<s:property value="job_position" />
							in
							<s:property value="cp.company_name" />
						</h3>
						<ul>
							<li><span class="fa fa-user" aria-hidden="true"></span><a><s:property
										value="posted_by" /></a></li>
							<li><span class="fa fa-tag" aria-hidden="true"></span><a><s:property value="on_date_day"/><s:property value="on_date_month"/></a></li>
							<li><span class="fa fa-envelope-o" aria-hidden="true"></span><a
								href="#">5 Comments</a></li>
						</ul>
						<p>
							<s:property value="job_description" />
						</p>
					</div>
					<div class="admin">
						<a><span>About <s:property value="cp.company_name" /></span></a>
						<p>
							<s:property value="cp.company_description" />
						</p>
					</div>
					<div class="comments">
						<h3 class="single">Comments</h3>
						<div class="comments-grids">
							<div class="comments-grid">
								<div class="comments-grid-right">
									<h4>
										<a href="#">Michael Crisp</a>
									</h4>
									<ul>
										<li>5 Nov 2017 <i>|</i></li>
										<li><a href="#">Reply</a></li>
									</ul>
									<p>Ut ex metus, ornare ac ultricies sit amet, auctor a
										elit. Praesent sit amet scelerisque massa. Duis porta risus id
										urna finibus aliquet.</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr>
							<div class="comments-grid">
								<div class="comments-grid-right">
									<h4>
										<a href="#">Adam Lii</a>
									</h4>
									<ul>
										<li>8 Nov 2017 <i>|</i></li>
										<li><a href="#">Reply</a></li>
									</ul>
									<p>Ut ex metus, ornare ac ultricies sit amet, auctor a
										elit. Praesent sit amet scelerisque massa. Duis porta risus id
										urna finibus aliquet.</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="w3layouts_mail_grid single">
								<h3 class="single">Leave a Comment</h3>
								<form action="#" method="post">
									<div class="col-md-6 wthree_contact_left_grid">
										<input type="text" name="Name" placeholder="Name" required="">
										<input type="email" name="Email" placeholder="Email"
											required=""> <input type="text" name="Telephone"
											placeholder="Phone" required=""> <input type="text"
											name="Subject" placeholder="Subject" required="">
									</div>
									<div class="col-md-6 wthree_contact_left_grid">
										<textarea name="Message" placeholder="Message..." required=""></textarea>
										<input type="submit" value="Submit">
									</div>
									<div class="clearfix"></div>

								</form>
							</div>
						</div>
					</div>
				</s:iterator>
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
						</select>
						<input type="submit" value="Search">
					</form>
					</div>
				</div>
				<div class="col_3 permit">
					<h3>Jobs by Category</h3>
					<ul class="list_2">
						<div style="position: absolute; float: left;">
							<li><a href="#">Walk-ins</a></li>
							<li><a href="#">Bpo Jobs</a></li>
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
</div>
<!-- //inner_content -->
<%@ include file="footer.jsp"%>