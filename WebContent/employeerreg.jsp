<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employer's Application Form</title>
<!-- metatags-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="icon" type="image/x-icon" href="images/favicon.ico">
<script type="application/x-javascript">
	
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); }

</script>
<!-- Meta tag Keywords -->
<link href="css/stylee.css" rel="stylesheet" type="text/css" media="all" />
<!--style_sheet-->
</head>
<body>
	<div class="w3ls-main">
		<div class="w3ls-form">
			<form action="employeerreg" method="post"
				enctype="multipart/form-data">
				<ul class="fields">
					<li><label class="w3ls-opt">name<span
							class="w3ls-star"> * </span></label>
						<div class="w3ls-name">
							<input type="text" name="emp_name"
								placeholder="enter your full name" required="" />
						</div></li>
					<li><label class="w3ls-opt">email<span
							class="w3ls-star"> * </span></label>
						<div class="w3ls-name">
							<input type="email" name="emp_email"
								placeholder="Enter your e-mail" required="" />
						</div></li>
					<li><label class="w3ls-opt">phone number<span
							class="w3ls-star"> * </span>
					</label>
						<div class="w3ls-name">
							<span class="text"> <input type="text" name="emp_phone"
								placeholder="enter your phone number" required="" />
							</span>
						</div></li>
					<li><label class="w3ls-opt">company name<span
							class="w3ls-star"> * </span></label> <span class="w3ls-text w3ls-name">
							<input type="text" name="company_name"
							placeholder="enter your company name" required="" />
					</span></li>
					<li>
						<div class="mail">
							<label class="w3ls-opt">your designation<span
								class="w3ls-star"> * </span></label> <span class="w3ls-text w3ls-name">
								<input type="text" name="your_designation"
								placeholder="enter your designation" required="" />
							</span>
						</div>
					</li>
					<li>
						<div class="mail">
							<label class="w3ls-opt">your password<span
								class="w3ls-star"> * </span></label> <span class="w3ls-text w3ls-name">
								<input type="password" name="your_password"
								placeholder="Enter your password" required="" />
							</span>
						</div>
					</li>
				</ul>
				<div class="input">
					<label class="w3ls-opt1" style="font-size: 17px;"><span>*Note:</span>Password
						will be generated automatically and send to the email id which you
						are entering. Login with that password and reset password in your
						profile.</label><br>
					<label class="w3ls-opt1" style="font-size: 17px;"><span><s:actionmessage /></span></label>
				</div>
				<div class="clear"></div>
				<div class="w3ls-btn" style="margin-top: 100px;">
					<input type="submit" value="submit">
				</div>
			</form>
		</div>
	</div>
</body>
</html>