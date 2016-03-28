<!DOCTYPE html>
<html lang="en">

	<head>
		<#include "header.ftl">
	</head>

	<body>
		<#include "nav.ftl">
		<#include "login.ftl">
		<#include "register.ftl">

		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-10">
					<#include "breadcrumb.ftl">

					<div class="row">
						<nav class="hidden-xs col-sm-2" id="myScrollspy">
							<ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="100">
								<li>
									<select class="form-control" name="make" onchange="location = this.value;">
										<option value="">Make</option>
										<option value="browse.java?make=BMW">BMW</option>
										<option value="browse.java?make=Hyundai">Hyundai</option>
									</select>
								</li>
								<li>
									<select class="form-control" name="model" onchange="location = this.value;">
										<option value="">Model</option>
										<option value="browse.java?model=525I">525I</option>
										<option value="browse.java?model=Elantra">Elantra</option>
									</select>
								</li>
								<li>
									<select class="form-control" name="year" onchange="location = this.value;">
										<option value="">Year</option>
										<option value="browse.java?year=2014">2014</option>
										<option value="browse.java?year=2015">2015</option>
										<option value="browse.java?year=2016">2016</option>
									</select>
								</li>
								<li>
									<select class="form-control" name="price" onchange="location = this.value;">
										<option value="">Price</option>
										<option value="browse.java?price=1">5000</option>
										<option value="browse.java?price=2">5001 - 10,000</option>
										<option value="browse.java?price=3">10,001 - 15,000</option>
										<option value="browse.java?price=4">15,001 - 20,000</option>
										<option value="browse.java?price=5">20,001 - 25,000</option>
										<option value="browse.java?price=6">25,001 - 30,000</option>
										<option value="browse.java?price=7">30,001 - 35,000</option>
										<option value="browse.java?price=8">35,001 - 40,000</option>
										<option value="browse.java?price=9">40,001 - 45,000</option>
										<option value="browse.java?price=10">45,001 - 50,000</option>
										<option value="browse.java?price=11">50,001 - 55,000</option>
										<option value="browse.java?price=12">55,001 - 60,000</option>
										<option value="browse.java?price=13">60,001 - 65,000</option>
										<option value="browse.java?price=14">65,001 - 70,000</option>
										<option value="browse.java?price=15">70,001 - 75,000</option>
										<option value="browse.java?price=16">75,001 - 80,000</option>
										<option value="browse.java?price=17">80,001 - 85,000</option>
										<option value="browse.java?price=18">85,001 - 90,000</option>
										<option value="browse.java?price=19">90,001 - 95,000</option>
										<option value="browse.java?price=20">95,001 - 100,000</option>
									</select>
								</li>
								<li>
									<select class="form-control" name="body_type" onchange="location = this.value;">
										<option value="">Body Type</option>
										<option value="browse.java?body_type=Suv">Suv</option>
										<option value="browse.java?body_type=Sedan">Sedan</option>
										<option value="browse.java?body_type=truck">Truck</option>
									</select>
								</li>
								<li>
									<select class="form-control" name="cylinder_count" onchange="location = this.value;">
										<option value="">Cylinder Count</option>
										<option value="browse.java?cylinder_count=3">3</option>
										<option value="browse.java?cylinder_count=4">4</option>
										<option value="browse.java?cylinder_count=5">5</option>
										<option value="browse.java?cylinder_count=6">6</option>
									</select>
								</li>
								<li>
									<select class="form-control" name="transmission" onchange="location = this.value;">
										<option value="">Transmission</option>
										<option value="browse.java?transmission=auto">Auto</option>
										<option value="browse.java?transmission=manual">Manual</option>
									</select>
								</li>
								<li>
									<select class="form-control" name="fuel" onchange="location = this.value;">
										<option value="">Fuel</option>
										<option value="browse.java?fuel=Gasoline">Gasoline</option>
										<option value="browse.java?fuel=Diesels">Diesels</option>
										<option value="browse.java?fuel=Electric">Electric</option>
									</select>
								</li>
								<li>
									<select class="form-control" name="mpg" onchange="location = this.value;">
										<option value="">MPG</option>
										<option value="browse.java?mpg=1">1 - 5</option>
										<option value="browse.java?mpg=2">6 - 10</option>
										<option value="browse.java?mpg=3">11 - 15</option>
										<option value="browse.java?mpg=4">16 - 20</option>
										<option value="browse.java?mpg=5">21 - 25</option>
										<option value="browse.java?mpg=6">26 - 30</option>
										<option value="browse.java?mpg=7">31 - 35</option>
										<option value="browse.java?mpg=8">36 - 40</option>
										<option value="browse.java?mpg=9">41 - 45</option>
									</select>
								</li>
							</ul>
						</nav>
						<div class="col-xs-12 col-sm-10">
							<!-- Project one -->
							<div class="row">
								<div class="col-md-7">
									<a href="/item"> <img class="img-responsive img-hover" src="http://lorempixel.com/700/300/transport" alt=""> </a>
								</div>
								<div class="col-md-5">
									<h3>Car One</h3>
									<h4>Subheading</h4>
									<p>
										To replace by dynamic inventory from database and backend server.
									</p>
									<a class="btn btn-primary" href="/item">View Project</a>
								</div>
							</div>
							<hr>

							<!-- Project Two -->
							<div class="row">
								<div class="col-md-7">
									<a href="/item"> <img class="img-responsive img-hover" src="http://lorempixel.com/700/300/transport" alt=""> </a>
								</div>
								<div class="col-md-5">
									<h3>Car Two</h3>
									<h4>Subheading</h4>
									<p>
										To replace by dynamic inventory from database and backend server.
									</p>
									<a class="btn btn-primary" href="/item">View Project</a>
								</div>
							</div>
							<!-- /.row -->

							<hr>

							<!-- Project Three -->
							<div class="row">
								<div class="col-md-7">
									<a href="/item"> <img class="img-responsive img-hover" src="http://lorempixel.com/700/300/transport" alt=""> </a>
								</div>
								<div class="col-md-5">
									<h3>Car Three</h3>
									<h4>Subheading</h4>
									<p>
										To replace by dynamic inventory from database and backend server.
									</p>
									<a class="btn btn-primary" href="/item">View Project</a>
								</div>
							</div>
							<!-- /.row -->

							<hr>

							<!-- Project Four -->
							<div class="row">

								<div class="col-md-7">
									<a href="/item"> <img class="img-responsive img-hover" src="http://lorempixel.com/700/300/transport" alt=""> </a>
								</div>
								<div class="col-md-5">
									<h3>Car Four</h3>
									<h4>Subheading</h4>
									<p>
										To replace by dynamic inventory from database and backend server.
									</p>
									<a class="btn btn-primary" href="/item">View Project</a>
								</div>
							</div>
							<!-- /.row -->

							<hr>

							<!-- Project Five -->
							<div class="row">
								<div class="col-md-7">
									<a href="#"> <img class="img-responsive img-hover" src="http://lorempixel.com/700/300/transport" alt=""> </a>
								</div>
								<div class="col-md-5">
									<h3>Car Five</h3>
									<h4>Subheading</h4>
									<p>
										To replace by dynamic inventory from database and backend server.
									</p>
									<a class="btn btn-primary" href="#">View Project</a>
								</div>
							</div>
							<!-- /.row -->

							<hr>
						</div>

						<!-- Pagination -->
						<div class="row text-center">
							<div class="col-lg-12">
								<ul class="pagination">
									<li>
										<a href="#">&laquo;</a>
									</li>
									<li class="active">
										<a href="#">1</a>
									</li>
									<li>
										<a href="#">2</a>
									</li>
									<li>
										<a href="#">3</a>
									</li>
									<li>
										<a href="#">4</a>
									</li>
									<li>
										<a href="#">5</a>
									</li>
									<li>
										<a href="#">&raquo;</a>
									</li>
								</ul>
							</div>
						</div>
						<!-- /.row -->

						<hr>
					</div>
				</div>
			</div>
		</div>
		<#include "footer.ftl">

	</body>
</html>
