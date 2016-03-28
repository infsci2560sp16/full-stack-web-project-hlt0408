<!DOCTYPE html>
<html lang="en">

	<head>
		<#include "header.ftl">
	</head>

	<body>
		<#include "nav.ftl">
		<#include "login.ftl">
		<#include "register.ftl">
		<#include "jumbotron.ftl">

		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<#include "breadcrumb.ftl">

				</div>

			</div>

			<div class="row row-content">
				<div class="col-xs-12">
					<h3>Location Information</h3>
				</div>
				<div class="col-xs-12 col-sm-5">
					<h5>Our Address</h5>
					<address style="font-size: 100%">
						135 N Bellefield Ave
						<br>
						Pittsburgh, PA 15260
						<br>
						<i class="fa fa-phone"></i>: +1 234 567 8910
						<br>
						<i class="fa fa-fax"></i>: +1 234 567 8910
						<br>
						<i class="fa fa-envelope"></i>: <a href="mailto:lah141@pitt.edu">lah141@pitt.edu</a>
					</address>
					<div class="col-xs-12 col-sm-12">
						<div class="btn-group" role="group" aria-label="...">
							<a class="btn btn-primary" href="tel:+85212345678"><i class="fa fa-phone"></i> Call</a>
							<a class="btn btn-info"><i class="fa fa-skype"></i> Skype</a>
							<a class="btn btn-success" href="mailto:confusion@food.net"><i class="fa fa-envelope-o"></i> Email</a>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-7">
					<h5>Map of our Location</h5>
					<!-- Embedded Google Map -->
				</div>

			</div>

			<div class="row row-content">
				<div class="col-xs-12">
					<h3>Send us your Feedback</h3>
				</div>
				<div class="col-xs-12 col-sm-9">
					<form class="form-horizontal">
						<div class="form-group">
							<label for="firstname" class="col-sm-2 control-label">First Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="firstname" name="firstname" placeholder="Enter First Name">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">Last Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="lastname" name="lastname" placeholder="Enter Last Name">
							</div>
						</div>

						<div class="form-group">
							<label for="telnum" class="col-xs-12 col-sm-2 control-label">Contact Tel.</label>
							<div class="col-xs-5 col-sm-4 col-md-3">
								<div class="input-group">
									<div class="input-group-addon">
										(
									</div>
									<input type="tel" class="form-control" id="areacode1" name="areacode" placeholder="Area code">
									<div class="input-group-addon">
										)
									</div>
								</div>
							</div>
							<div class="col-xs-7 col-sm-6 col-md-7">
								<input type="tel" class="form-control" id="telnum1" name="telnum" placeholder="Tel. number">
							</div>
						</div>
						<div class="form-group">
							<label for="emailid" class="col-sm-2 control-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="emailid1" name="emailid" placeholder="Email">
							</div>
						</div>
						<!-- checkbox and select -->
						<div class="form-group">
							<div class="checkbox col-sm-5 col-sm-offset-2">
								<label class="checkbox-inline">
									<input type="checkbox" name="approve" value="">
									<strong>May we contact you?</strong> </label>
							</div>
							<div class="col-sm-3 col-sm-offset-1">
								<select class="form-control">
									<option>Tel.</option>
									<option>Email</option>
								</select>
							</div>
						</div>
						<!-- textarea -->
						<div class="form-group">
							<label for="feedback" class="col-sm-2 control-label">Your Feedback</label>
							<div class="col-sm-10">
								<textarea class="form-control" id="feedback" name="feedback" rows="12"></textarea>
							</div>
						</div>
						<!-- submit button -->
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">
									Send Feedback
								</button>
							</div>
						</div>

					</form>

				</div>
				<div class="col-xs-12 col-sm-3">
					<p style="padding:20px;"></p>
				</div>
			</div>

		</div>
		<#include "footer.ftl">

	</body>
	</html>
