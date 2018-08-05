<%@ include file="header.jsp"%>
<!-- banner -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">

	<div id="fullScreenDiv">
		<div id="videoDiv">
			<video preload="preload" id="video" autoplay="autoplay" loop="loop">
				<source src="video/2.webm" type="video/webm"></source>
				<source src="video/2.mp4" type="video/mp4"></source>
			</video>
		</div>
	</div>
	<!-- The Modal -->
</div>
<!--//banner -->

<!--/search_form -->
<div id="search_form" class="search_top">
	<h2>Start your job search</h2>
	<form action="searchJobs" method="post">
		<select id="location" name="selected_city">
			<option>Location</option>
			<s:iterator value="cityLocationsList">
				<option value="<s:property value="city_id" />"><s:property
						value="city_name" /></option>
			</s:iterator>
		</select> <select id="job" name="selected_jobtype">
			<option>Select Job Type</option>
			<s:iterator value="jobTypesList">
				<option value="<s:property value="jobtype_id" />"><s:property
						value="jobtype_name" /></option>
			</s:iterator>
		</select> <select id="country12" name="selected_jobcategory" onchange="change_country(this.value)"
			class="frm-field required">
			<option>Select Jobs here (e.g. IT Software, Marketing)</option>
			<s:iterator value="jobCatogeriesList">
				<option value="<s:property value="job_cat_id" />"><s:property
						value="job_cat_name" /></option>
			</s:iterator>
		</select>
		<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
		<script type="text/javascript" src="js/wickedpicker.js"></script>
		<script type="text/javascript">
			$('.timepicker,.timepicker1').wickedpicker({
				twentyFour : false
			});
		</script>
		<input type="submit" value="Find Jobs">
		<div class="clearfix"></div>
	</form>
</div>
<div class="containerr" style="overflow: hidden;">
	<div class="jobToproles clearfix">
		<div class="top-roles">
			<div class="text-left top-roles-title">
				<h3 class="tittle" style="margin-top: 80px; margin-bottom: 30px;">Choose
					a role</h3>
			</div>
			<div class="row" style="padding-top: 10px;">
				<ul class="cbp-ig-grid">
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-wrench cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 18px;"></i> <span
									class="role-title" style="margin-left: 8px;">Mechanic</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-stethoscope cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 7px;"></i> <span
									class="role-title single" style="margin-left: 6px;">Nurse</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-car cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 7px;"></i> <span
									class="role-title " style="margin-left: 10px;">Driver</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-camera cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 7px;"></i> <span
									class="role-title single" style="margin-left: 8px;">Cameraman</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-bullhorn cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 7px;"></i> <span
									class="role-title single" style="margin-left: 0px;">Marketing</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-user cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 10px;"></i> <span
									class="role-title single" style="margin-left: 6px;">Electrician</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-headphones cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 12px;"></i> <span
									class="role-title single" style="margin-left: 7px;">BPO/
										Telecaller</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-building cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 7px;"></i> <span
									class="role-title single" style="margin-left: 2px;">Constructor/
										Laborer</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-users cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 7px;"></i> <span
									class="role-title " style="margin-left: 10px;">HR/ Admin</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-code cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 7px;"></i> <span
									class="role-title single" style="margin-left: 12px;">IT
										Software - Developer</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-desktop cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 7px;"></i> <span
									class="role-title single" style="margin-left: 8px;">Data
										Entry / Back Office</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-truck cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 10px;"></i> <span
									class="role-title " style="margin-left: 8px;">Delivery/
										Collections</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-cut cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 12px;"></i> <span
									class="role-title single" style="margin-left: 10px;">Beautician</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-tty cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 7px;"></i> <span
									class="role-title " style="margin-left: 5px;">Receptionist/
										Front Office</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-paint-brush cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 7px;"></i> <span
									class="role-title " style="margin-left: 0px;">Painter</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-cart-arrow-down cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 7px;"></i> <span
									class="role-title single" style="margin-left: 12px;">Warehouse
										Executive</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-user-md cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 7px;"></i> <span
									class="role-title " style="margin-left: 10px;">Doctor</span>
							</span>
							</a>
						</div>
					</li>
					<li>
						<div class="w_grid_effect">
							<a href="jobs.html"> <span class="role-container"> <i
									class="fa fa-flask cbp-ig-icon" aria-hidden="true"
									style="font-size: 1.5em; margin-left: 10px;"></i> <span
									class="role-title " style="margin-left: 8px;">Lab
										Assistant</span>
							</span>
							</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<h3 class="tittle" data-aos="zoom-in"
		style="margin-top: 80px; margin-bottom: 30px;">Jobs near to your
		location..</h3>
	<div id="map" style="width: 100%; height: 500px"></div>
	<script>
		function myMap() {
			var mapCanvas = document.getElementById("map");
			var myCenter = new google.maps.LatLng(12.958365, 77.745148);
			var mapOptions = {
				center : myCenter,
				zoom : 16
			};
			var map = new google.maps.Map(mapCanvas, mapOptions);

			var marker = new google.maps.Marker({
				position : myCenter,
				animation : google.maps.Animation.BOUNCE
			});
			marker.setMap(map);
			marker
					.setIcon('http://maps.google.com/mapfiles/ms/icons/green-dot.png')

			var infowindow = new google.maps.InfoWindow({
				content : "<b>Full Time</b>"
			});
			infowindow.open(map, marker);

			var mapCanvas = document.getElementById("map");
			var myCenter1 = new google.maps.LatLng(12.9596267, 77.7427597);

			var marker = new google.maps.Marker({
				position : myCenter1,
				animation : google.maps.Animation.BOUNCE
			});
			marker.setMap(map);
			marker
					.setIcon('http://maps.google.com/mapfiles/ms/icons/blue-dot.png')

			var infowindow = new google.maps.InfoWindow({
				content : "<b>Part Time</b>"
			});
			infowindow.open(map, marker);

			var mapCanvas = document.getElementById("map1");
			var myCenter2 = new google.maps.LatLng(12.9596094, 77.7471099);

			var marker = new google.maps.Marker({
				position : myCenter2,
				animation : google.maps.Animation.BOUNCE
			});
			marker.setMap(map);
			marker
					.setIcon('http://maps.google.com/mapfiles/ms/icons/yellow-dot.png')
			var infowindow = new google.maps.InfoWindow({
				content : "<b>Daily/Weekly based</b>"
			});
			infowindow.open(map, marker);

			var myCity = new google.maps.Circle({
				center : myCenter,
				radius : 380,
				strokeColor : "#23b684",
				strokeOpacity : 0.8,
				strokeWeight : 2,
				fillColor : "#23b684",
				fillOpacity : 0.4
			});
			myCity.setMap(map);

		}
	</script>

	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCCb2CW05z6tLe2aTv_6zGsKgM16UhstFY&callback=myMap"></script>
	<!--//search_form -->
	<div class="banner-bottom">
		<div class="container">
			<div class="tittle_head_w3ls">
				<h3 class="tittle">About Us</h3>
			</div>
			<div class="inner_sec_grids_info_w3ls">
				<div class="col-md-6 banner_bottom_left">
					<h4>
						Employment opportunities for <span>Professionals</span>
					</h4>
					<p>Pellentesque convallis diam consequat magna vulputate
						malesuada. Cras a ornare elit. Nulla viverra pharetra sem, eget
						pulvinar neque pharetra ac.</p>
					<p>Lorem Ipsum convallis diam consequat magna vulputate
						malesuada. Cras a ornare elit. Nulla viverra pharetra sem, eget
						pulvinar neque pharetra ac.</p>
					<ul class="some_agile_facts">
						<li><span class="fa fa-briefcase" aria-hidden="true"></span><label>80</label>
							Corporate Programs</li>
						<li><span class="fa fa-graduation-cap" aria-hidden="true"></span><label>49</label>
							Training Courses</li>
						<li><span class="fa fa-user" aria-hidden="true"></span><label>88</label>
							Strategic Partners</li>
						<li><span class="fa fa-line-chart" aria-hidden="true"></span><label>436</label>
							Companies We Helped</li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 banner_bottom_right">
					<div class="agileits_w3layouts_banner_bottom_grid">
						<img src="images/ab.png" alt=" " class="img-responsive" />
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>
	<!-- //banner-bottom -->
	<div class="team_work_agile">
		<h4>Whether we play a large or small role, by working together we
			achieve our objectives.</h4>
	</div>
	<!-- services -->
	<div class="services" id="services">
		<div class="container">
			<div class="tittle_head_w3ls">
				<h3 class="tittle">Selection Process</h3>
			</div>
			<div class="inner_sec_grids_info_w3ls">
				<div class="col-md-3 services-left">
					<div class="services-left-top">

						<h5>Identify Need & Develop Position Description</h5>

					</div>
					<div class="services-left-top services-left-top1">

						<h5>Recruitment Planning</h5>

					</div>
				</div>
				<div class="col-md-6 services-middle">
					<div class="services-middle-img">
						<img src="images/process.jpg" alt="" />
					</div>
					<div class="services-middle-grids">
						<div class="col-md-6 services-middle-left">
							<div class="services-left-top">

								<h5>Sourcing & Advertising</h5>

							</div>
						</div>
						<div class="col-md-6 services-middle-left">
							<div class="services-left-top">

								<h5>Assess & Interview Candidates</h5>

							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-3 services-left">
					<div class="services-left-top">

						<h5>Offer for Student Employment</h5>

					</div>
					<div class="services-left-top services-left-top1">

						<h5>Onboarding for Success</h5>

					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //services -->
	<!-- /mid-services -->
	<div class="mid_services">

		<div class="col-md-6 according_inner_grids">
			<h3 class="agile_heading two">Receiving a Job offer</h3>
			<div class="according_info">
				<div class="panel-group about_panel" id="accordion" role="tablist"
					aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title asd">
								<a class="pa_italic" role="button" data-toggle="collapse"
									data-parent="#accordion" href="#collapseOne"
									aria-expanded="true" aria-controls="collapseOne"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>assumenda
									est cliche voluptate
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body panel_text">Duis aute irure dolor in
								reprehenderit in voluptate velit esse cillum dolore eu fugiat
								nulla pariatur. Excepteur sint occaecat cupidatat non proident,
								sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo" aria-expanded="false"
									aria-controls="collapseTwo"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>Itaque
									earum rerum
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body panel_text">Duis aute irure dolor in
								reprehenderit in voluptate velit esse cillum dolore eu fugiat
								nulla pariatur. Excepteur sint occaecat cupidatat non proident,
								sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree" aria-expanded="false"
									aria-controls="collapseThree"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>autem
									accusamus terry qui
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body panel_text">Duis aute irure dolor in
								reprehenderit in voluptate velit esse cillum dolore eu fugiat
								nulla pariatur. Excepteur sint occaecat cupidatat non proident,
								sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree" aria-expanded="false"
									aria-controls="collapseThree"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>autem
									accusamus terry qui
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body panel_text">Duis aute irure dolor in
								reprehenderit in voluptate velit esse cillum dolore eu fugiat
								nulla pariatur. Excepteur sint occaecat cupidatat non proident,
								sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="col-md-6 mid_services_img"></div>
		<div class="clearfix"></div>
	</div>
	<!-- //mid-services -->
	<div class="candidate_cv">
		<div class="tittle_head_w3ls">
			<h3 class="tittle two">Candidate Cv</h3>
		</div>
		<div class="inner_sec_grids_info login-form">
			<form action="#" method="post">
				<div class="col-md-6 form-left">
					<div class="form-inputs email">
						<p>Full name</p>
						<i class="fa fa-user" aria-hidden="true"></i> <input type="text"
							name="Name" placeholder="" required="" />
					</div>
					<div class="form-inputs name">
						<p>Email</p>
						<i class="fa fa-envelope" aria-hidden="true"></i> <input
							type="email" name="Email" placeholder="" required="" />
					</div>
					<div class="form-inputs name">
						<p>Phone</p>
						<i class="fa fa-phone" aria-hidden="true"></i> <input type="text"
							name="Phone" placeholder="" required="" />
					</div>

				</div>
				<div class="col-md-6 form-right">
					<div class="form-inputs name">
						<p>Comment</p>
						<i class="fa fa-comment" aria-hidden="true"></i>
						<textarea name="Message" placeholder="" required=""></textarea>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="form-inputs upload">
					<p>Upload your resume</p>
					<input type="file" id="fileselect" name="fileselect[]"
						multiple="multiple" />
					<div id="filedrag">Upload</div>
				</div>
				<input type="submit" value="Submit Cv">
			</form>

		</div>
	</div>
	<!-- //testimonials -->
	<div class="testimonials_section">
		<div class="container">
			<div class="tittle_head_w3ls">
				<h3 class="tittle">Testimonials</h3>
			</div>
			<div class="inner_sec_grids_info_w3ls">
				<div id="Carousel" class="carousel slide two">

					<ol class="carousel-indicators second">
						<li data-target="#Carousel" data-slide-to="0" class="active"></li>
						<li data-target="#Carousel" data-slide-to="1"></li>
						<li data-target="#Carousel" data-slide-to="2"></li>
					</ol>

					<!-- Carousel items -->
					<div class="carousel-inner">

						<div class="item active">
							<div class="testimonials_grid_wthree">
								<img src="images/test1.jpg" alt=" " class="img-responsive" />
								<h4>
									<i class="fa fa-quote-left" aria-hidden="true"></i> Nam libero
									tempore, cum soluta nobis est eligendi optio cumque nihil
									impedit quo minus id quod maxime placeat facere possimus,Morbi
									viverra congue nisi vel pulvinar posuere sapien eros. omnis
									voluptas.
								</h4>
								<h5>Dan Adams</h5>

							</div>

						</div>
						<!--.item-->
						<div class="item">
							<div class="testimonials_grid_wthree">
								<img src="images/test2.jpg" alt=" " class="img-responsive" />
								<h4>
									<i class="fa fa-quote-left" aria-hidden="true"></i> Nam libero
									tempore, cum soluta nobis est eligendi optio cumque nihil
									impedit quo minus id quod maxime placeat facere possimus,Morbi
									viverra congue nisi vel pulvinar posuere sapien eros. omnis
									voluptas.
								</h4>
								<h5>Jessica Doe</h5>

							</div>
						</div>
						<!--.item-->

						<div class="item">
							<div class="testimonials_grid_wthree">
								<img src="images/test3.jpg" alt=" " class="img-responsive" />
								<h4>
									<i class="fa fa-quote-left" aria-hidden="true"></i> Nam libero
									tempore, cum soluta nobis est eligendi optio cumque nihil
									impedit quo minus id quod maxime placeat facere possimus,Morbi
									viverra congue nisi vel pulvinar posuere sapien eros. omnis
									voluptas.
								</h4>
								<h5>Michael Doe</h5>

							</div>
						</div>
						<!--.item-->

					</div>
					<!--.carousel-inner-->

				</div>
				<!--.Carousel-->

			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>