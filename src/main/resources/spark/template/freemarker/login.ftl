		<div id="loginModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							&times;
						</button>
						<h4 class="modal-title">Login </h4>
					</div>
					<div class="modal-body">

						<form class="form-inline" role="search" action="/login" method="POST">
							<div class="form-group">
								<input type="text" class="form-control input-sm" placeholder="Email" name="email">
								<input type="text" class="form-control input-sm" placeholder="Password" name="password">
							</div>
							<label class="checkbox-inline">
								<input type="checkbox" name="approve" value="">
								<strong>Remember me</strong> </label>
							<button type="submit" class="btn btn-info">
								Sign in
							</button>
							<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">
								Cancel
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
