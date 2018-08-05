<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JobSeeker Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="jobs in Bangalore. Apply to number of job vacancies, get a job relevant to your profile. Create free resume and job alerts now." />
<link rel="icon" type="image/x-icon" href="images/favicon.ico">
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="css/styleeeee.css" type="text/css"
	media="all" />
<!-- Style-CSS -->
<link rel="stylesheet" href="css/font-awesome.css">
<!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->
</head>
<body>
	<div class="video-w3l" data-vide-bg="video/1">
		<div class="main-content-agile">
			<div class="sub-main-w3">
				<h2>
					Login Here <i class="fa fa-hand-o-down" aria-hidden="true"></i>
				</h2>
				<form action="jobseekerlogin" method="post"
					enctype="multipart/form-data">
					<div class="pom-agile">
						<span class="fa fa-user" aria-hidden="true"></span> <input
							placeholder="Email" name="seeker_email" class="user" type="text"
							required="">
					</div>
					<div class="pom-agile">
						<span class="fa fa-key" aria-hidden="true"></span> <input
							placeholder="Password" name="seeker_password" class="pass"
							type="password" required="">
					</div>
					<div class="sub-w3l">
						<div class="sub-agile" style="color: red;">
							<span><b><s:actionmessage /></b></span>
						</div>
						<a href="#">Forgot Password?</a>
						<div class="clear"></div>
					</div>
					<div class="right-w3l">
						<input type="submit" value="Login">
					</div>
				</form>
				<div class="sub-agile1">
					<label for="brand1"> <span></span>Not a member yet?
					</label>
				</div>
				<a href="jobseekerreg.jsp">Register Now</a>
			</div>
		</div>
		<!--//main-->
	</div>
	<!-- js -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/jquery.vide.min.js"></script>
	<!-- //js -->
</body>
</html>