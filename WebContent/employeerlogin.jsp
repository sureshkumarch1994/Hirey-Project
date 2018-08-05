<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employeer Login</title>
<!-- Meta Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="jobs in Bangalore. Apply to number of job vacancies, get a job relevant to your profile. Create free resume and job alerts now." />
<link rel="icon" type="image/x-icon" href="images/favicon.ico">
<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);
		function hideURLbar() {
			window.scrollTo(0, 1);
		}
</script>
<!-- //Meta Tags -->
<!-- Font-Awesome-CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!--// Font-Awesome-CSS -->
<!-- Required Css -->
<link href="css/styleeee.css" rel='stylesheet' type='text/css' />
<!--// Required Css -->
</head>
<body>
	<!--background-->
	<!-- Main-Content -->
	<div class="main-w3layouts-form">
		<h2>Login to your account</h2>
		<!-- main-w3layouts-form -->
		<form action="employeerlogin" method="post"
			enctype="multipart/form-data">
			<div class="fields-w3-agileits">
				<span class="fa fa-user" aria-hidden="true"></span> <input
					type="text" name="emp_email" required="" placeholder="Email" />
			</div>
			<div class="fields-w3-agileits">
				<span class="fa fa-key" aria-hidden="true"></span> <input
					type="password" name="emp_password" required=""
					placeholder="Password" />
			</div>
			<div class="remember-section-wthree">
				<ul>
					<li><label class="anim"><span><s:actionmessage/></span>
					</label></li>
					<li><a href="forgot.jsp">Forgot Password?</a></li>
				</ul>
				<div class="clear"></div>
			</div>
			<input type="submit" value="Login" />
		</form>
		<label class="anim"> <span> Not a member yet? <a
				href="employeerreg.jsp">Register Now</a></span>
		</label>
		<!--// main-w3layouts-form -->
	</div>
	<!--// Main-Content-->
	<!--//background-->
</body>
</html>