<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hire</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="jobs in Bangalore. Apply to number of job vacancies, get a job relevant to your profile. Create free resume and job alerts now." />
<link href="css/styleee.css" rel='stylesheet' type='text/css'
	media="all">
<link href="css/style2.css" rel='stylesheet' type='text/css' media="all">
<link href="css/style3.css" rel='stylesheet' type='text/css' media="all">
<link href="css/wickedpicker.css" rel="stylesheet" type='text/css'
	media="all" />
<link rel="icon" type="image/x-icon" href="images/favicon.ico">
<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);
		function hideURLbar() {
			window.scrollTo(0, 1);
		}
</script>
<!--//tags -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.vide.min.js"></script>
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //for bootstrap working -->
</head>
<body>
	<!-- header -->
	<div class="header" id="home">
		<div class="content white agile-info">
			<nav class="navbar navbar-default" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"> <!--<h1><span class="fa fa-signal" aria-hidden="true"></span> Soft <label>Hr Agency</label></h1>-->
						<a class="navbar-brand" href="home"><img
							src="./images/logo.png" alt="logo"></a>
					</a>
				</div>
				<!--/.navbar-header-->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<nav class="link-effect-2" id="link-effect-2">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="jobs.html"
							class="dropdown-toggle effect-3" data-toggle="dropdown">Jobs<b
								class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-2">
								<div class="row">
									<div class="col-sm-6">
										<ul class="multi-column-dropdown">
											<div style="position: absolute; float: left;">
												<li><a href="filterJobs?id=108">Walk-ins</a></li>
												<li><a href="filterJobs?id=7">Bpo Jobs</a></li>
												<li><a href="filterJobs?id=98">Teaching Jobs</a></li>
												<li><a href="filterJobs?id=19">Diploma Jobs</a></li>
												<li><a href="filterJobs?id=107">Tech Support</a></li>
												<li><a href="filterJobs?id=36">Finance Jobs</a></li>
											</div>
											<div style="padding-left: 108px; width: 225%;">
												<li><a href="filterJobs?id=7">Part time Jobs</a></li>
												<li><a href="filterJobs?id=110">Health Care</a></li>
												<li><a href="filterJobs?id=43">Hospitality</a></li>
												<li><a href="filterJobs?id=93">Software Jobs</a></li>
												<li><a href="filterJobs?id=111">Research Jobs</a></li>
												<li><a href="filterJobs?id=112">Defence Jobs</a></li>
											</div>
										</ul>
									</div>
								</div>
							</ul></li>
						<li><a href="contact.html" class="effect-3">Contact</a></li>
						<s:if test="#session.nameOfSeeker!=null">
							<li><a class="effect-3"><span>Welcome, </span><s:property
										value="#session.nameOfSeeker" /></a></li>
							<li><button id="s1" class="btn head-postad postad-btn"
									OnClick="location.href='jobseekerlogout'"
									title="Hey job seeker, click here to logout!"
									style="margin-right: 15px;">Seeker Logout</button></li>
						</s:if>
						<s:elseif test="#session.nameOfEmployeer!=null">
							<li><a class="effect-3"><span>Welcome, </span><s:property
										value="#session.nameOfEmployeer" /></a></li>
							<li><button id="s1" class="btn head-postad postad-btn"
									OnClick="location.href='employeerlogout'"
									title="Hey employeer, click here to logout!"
									style="margin-right: 15px;">Employeer Logout</button></li>
									<li><button id="s3" class="btn head-postad postad-btn" onclick="location.href='jobseekerlogin.jsp'">Click to post job</button></li>
							<li>
						</s:elseif>
						<s:else>
						
								<button id="s1" class="btn head-postad postad-btn"
									OnClick="location.href='jobseekerlogin.jsp'"
									title="Looking for a Job? Login to find new jobs now"
									style="margin-right: 15px;">Seeker Login</button>
								<button id="s2" class="btn head-postad postad-btn"
									OnClick="location.href='employeerlogin.jsp'"
									title="Looking to Hire the Right Candidate? Post Free Job Now">Employer
									Login</button>
									
							</li>
						</s:else>
					</ul>
					</nav>
				</div>
				<!--/.navbar-collapse-->
				<!--/.navbar-->
			</div>
			</nav>
		</div>
	</div>