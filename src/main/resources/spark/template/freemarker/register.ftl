		<div id="registerModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							&times;
						</button>
						<h4 class="modal-title">Register </h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" action="/register" method="POST">
							<!-- full name input -->
							<div class="form-group">
								<label for="fullname" class="col-sm-3 control-label">Full Name</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="fullname" name="fullname" placeholder="Enter Full Name">
								</div>
							</div>
							<!-- telephone input -->
							<div class="form-group">
								<label for="telnum" class="col-xs-12 col-sm-3 control-label">Contact Tel.</label>
		
								<div class="col-xs-12 col-sm-9">
									<input type="tel" class="form-control" id="telnum" name="telnum" placeholder="Tel. number">
								</div>
							</div>
							<!-- email input -->
							<div class="form-group">
								<label for="emailid" class="col-sm-3 control-label">Email</label>
								<div class="col-sm-9">
									<input type="email" class="form-control" id="emailid" name="emailid" placeholder="Email">
								</div>
							</div>
							<!-- password input -->
							<div class="form-group">
								<label for="password" class="col-sm-3 control-label">Password</label>
								<div class="col-sm-9">
									<input type="password" class="form-control" id="password" name="pword" placeholder="Password">
								</div>
							</div>
			
							<!-- address input-->
							<div class="form-group">
								<label class="col-sm-3 control-label">Address </label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="address_line_2" name="address" placeholder="Address">
								</div>
							</div>
							<!-- city input-->
							<div class="form-group">
								<label for="city" class="col-sm-3 control-label">City</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="city" name="city" placeholder="City">
								</div>
							</div>
							<!-- state input -->
							<div class="form-group">
								<label for="state" class="col-sm-3 control-label">State</label>
								<div class="col-sm-9">
									<select id="state" name="state" class="form-control" data-live-search="true" title="Please select a state ...">
										<option value="" selected="selected">---Please Select a State---</option>
										<option value="AL">Alabama</option>
										<option value="AK">Alaska</option>
										<option value="AZ">Arizona</option>
										<option value="AR">Arkansas</option>
										<option value="CA">California</option>
										<option value="CO">Colorado</option>
										<option value="CT">Connecticut</option>
										<option value="DE">Delaware</option>
										<option value="DC">District Of Columbia</option>
										<option value="FL">Florida</option>
										<option value="GA">Georgia</option>
										<option value="HI">Hawaii</option>
										<option value="ID">Idaho</option>
										<option value="IL">Illinois</option>
										<option value="IN">Indiana</option>
										<option value="IA">Iowa</option>
										<option value="KS">Kansas</option>
										<option value="KY">Kentucky</option>
										<option value="LA">Louisiana</option>
										<option value="ME">Maine</option>
										<option value="MD">Maryland</option>
										<option value="MA">Massachusetts</option>
										<option value="MI">Michigan</option>
										<option value="MN">Minnesota</option>
										<option value="MS">Mississippi</option>
										<option value="MO">Missouri</option>
										<option value="MT">Montana</option>
										<option value="NE">Nebraska</option>
										<option value="NV">Nevada</option>
										<option value="NH">New Hampshire</option>
										<option value="NJ">New Jersey</option>
										<option value="NM">New Mexico</option>
										<option value="NY">New York</option>
										<option value="NC">North Carolina</option>
										<option value="ND">North Dakota</option>
										<option value="OH">Ohio</option>
										<option value="OK">Oklahoma</option>
										<option value="OR">Oregon</option>
										<option value="PA">Pennsylvania</option>
										<option value="RI">Rhode Island</option>
										<option value="SC">South Carolina</option>
										<option value="SD">South Dakota</option>
										<option value="TN">Tennessee</option>
										<option value="TX">Texas</option>
										<option value="UT">Utah</option>
										<option value="VT">Vermont</option>
										<option value="VA">Virginia</option>
										<option value="WA">Washington</option>
										<option value="WV">West Virginia</option>
										<option value="WI">Wisconsin</option>
										<option value="WY">Wyoming</option>
									</select>
								</div>
							</div>
							<!-- zip code-->
							<div class="form-group">
								<label for="zipcode" class="col-sm-3 control-label">Zip Code</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="zipcode" name="zipcode" placeholder="Zip Code">
								</div>
							</div>
							<!-- income -->
							<div class="form-group" id="income">
								<label class="col-sm-3 control-label">Income</label>
								<div class="col-sm-9">
									<input type="number" class="form-control" id="income1" name="income" min="0" placeholder="Income">
								</div>
							</div>
							<!-- home or business-->
							<div class="form-group">
								<label class="col-sm-3 control-label">Type</label>
								<div class="col-sm-9 btn-group" data-toggle="buttons">
									<label id="homeuser" class="btn btn-success active">
										<input type="radio" name="usertype" value="home">
										Home </label>
									<label id="businessuser" class="btn btn-danger">
										<input type="radio" name="usertype" value="business">
										Business </label>
								</div>
							</div>
							<!-- marriage status -->
							<div class="form-group" id="marriage_status">
								<label class="col-sm-3 control-label">Marriage Status</label>
								<div class="col-sm-9">
									<label class="radio-inline">
										<input type="radio" name="marriage" id="inlineRadio1" value="married">
										Married</label>
									<label class="radio-inline">
										<input type="radio" name="marriage" id="inlineRadio2" value="single">
										Single</label>
									<label class="radio-inline">
										<input type="radio" name="marriage" id="inlineRadio3" value="divorced">
										Divorced</label>
								</div>
							</div>
							<!-- gender -->
							<div class="form-group" id="gender">
								<label class="col-sm-3 control-label">Gender</label>
								<div class="col-sm-9">
									<label class="radio-inline">
										<input type="radio" name="gender" id="inlineRadio11" value="male">
										Male</label>
									<label class="radio-inline">
										<input type="radio" name="gender" id="inlineRadio21" value="female">
										Female</label>
								</div>
							</div>
							<!-- age -->
							<div class="form-group" id='age'>
								<label class="col-sm-3 control-label">Age</label>
								<div class="col-sm-9">
									<input type="number" class="form-control" id="age1" name="age" min="0" max="150" placeholder="Age">
								</div>
							</div>
							
							<!-- business category -->
							<div class="form-group" id="business_category">
								<label class="col-sm-3 control-label">Business Category</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="business_category1" name="businessCategory" placeholder="Business Category">
								</div>
							</div>
							<!-- checkbox and select -->
							<div class="form-group">
								<div class="checkbox col-sm-5 col-sm-offset-3">
									<label class="checkbox-inline">
										<input type="checkbox" name="canContact" value="true">
										<strong>May we contact you?</strong> </label>
								</div>
								<div class="col-sm-3 col-sm-offset-1">
									<select class="form-control" name="contactmethod">
										<option value="tel">Tel.</option>
										<option value="email">Email</option>
									</select>
								</div>
							</div>
							<!-- submit button -->
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-9">
									<button type="submit" value="Submit" class="btn btn-info btn-block">
										Register
									</button>
								</div>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
