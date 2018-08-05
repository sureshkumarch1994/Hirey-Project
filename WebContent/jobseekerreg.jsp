<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seeker's Application Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Classy Job Application Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>
<link href="css/style1.css" rel='stylesheet' type='text/css' media="all" />
<link rel="stylesheet" href="css/j-forms.css">
<link rel="icon" type="image/x-icon" href="images/favicon.ico">

<!-- /css files -->
<script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
</head>
<body>
	<div class="content-w3ls">
		<div class="form-w3ls">
			<form action="jobseekerregistration" method="post"
				enctype="multipart/form-data">
				<div class="content-wthree1">
					<div class="grid-agileits1">
						<div class="form-control">
							<label class="header">Name <span>*</span></label> <input
								type="text" id="name" name="seeker_name" placeholder="Full Name"
								title="Please enter your Full Name" required="">
						</div>

						<div class="form-control">
							<label class="header">Email <span>*</span></label> <input
								type="email" id="email" name="seeker_email"
								placeholder="mail@example.com"
								title="Please enter a Valid Email Address" required="">
						</div>
						<div class="form-control">
							<label class="header">Phone <span>*</span></label> <input
								type="text" id="name" name="seeker_mobile" placeholder="Phone"
								title="Please enter your Phone No" required="">
						</div>
						<div class="form-control">
							<label class="header">Create Password <span>*</span></label> <input
								type="password" id="password" name="seeker_password"
								placeholder="Minimum 6 characters"
								title="Please enter your Phone No" required="">
						</div>
					</div>
				</div>
				<div class="content-wthree2">
					<div class="grid-w3layouts1">
						<div class="w3-agile1">
							<label class="rating">What is your current employment
								status? <span>*</span>
							</label>
							<ul>
								<li><input type="radio" id="a-option"
									name="seeker_experience" value="experience"> <label
									for="a-option">Employed </label></li>
								<li><input type="radio" id="b-option"
									name="seeker_experience" value="fresher"> <label
									for="b-option">Unemployed</label>
									<div class="inside"></div></li>
							</ul>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div id="ctc" style="margin-top: 50px; display: none;">
					<div class="main-row">
						<label class="header">Current CTC? <span>*</span></label> <select
							name="seeker_cur_salary">
							<option value="none" selected="selected" disabled="disabled">Select
								Current CTC</option>
							<option value="1.5">Less than 1.5 Lacs</option>
							<option value="3.0">1.5 Lacs to 3.0 Lacs</option>
							<option value="4.5">3.0 Lacs to 4.5 Lacs</option>
							<option value="6.0">4.5 Lacs to 6.0 Lacs</option>
							<option value="7.5">6.0 Lacs to 7.5 Lacs</option>
							<option value="9.0">7.5 Lacs to 9.0 Lacs</option>
							<option value="10.5">9.0 Lacs to 10.5 Lacs</option>
							<option value="12.0">10.5 Lacs to 12.0 Lacs</option>
							<option value="13.5">12.0 Lacs to 13.5 Lacs</option>
							<option value="15.0">13.5 Lacs to 15.0 Lacs</option>
							<option value="16.5">15.0 Lacs to 16.5 Lacs</option>
							<option value="18.0">16.5 Lacs to 18.0 Lacs</option>
						</select>
					</div>
				</div>
				<div id="cur_company" style="margin-top: 50px; display: none;">
					<div class="main-row">
						<label class="header">Current Company Name? <span>*</span></label>
						<input type="text" id="name" name="seeker_cur_company"
							placeholder="Current Company Name">
					</div>
				</div>
				<script>
					$("input[name='seeker_experience']")
							.click(
									function() {
										$('#ctc')
												.css(
														'display',
														($(this).val() === 'experience') ? 'block'
																: 'none');
										$('#cur_company')
												.css(
														'display',
														($(this).val() === 'experience') ? 'block'
																: 'none');
									});
				</script>
				<div class="w3ls-btn">
					<div class="contact-forms">
						<label class="rating">Upload your resume <span>*</span></label> <label
							class="input append-small-btn"><input type="file"
							name="seeker_resume" style="color: white;"> </label>
						<div class="wthreesubmitaits">
							<input type="submit" name="submit" value="Send">
						</div>
						<div class="sub-agile1" style="margin-left: 300px;">
							<label for="brand1"> <span><s:actionmessage /></span>
							</label>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>