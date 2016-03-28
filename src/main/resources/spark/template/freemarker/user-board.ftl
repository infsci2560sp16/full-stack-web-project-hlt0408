<!DOCTYPE html>
<html lang="en">

	<head>
		<#include "header.ftl">
	</head>

	<body>
		<div id="wrapper">
			<#include "nav-user.ftl">

			<div id="page-wrapper">

				<div class="container-fluid">

					<!-- Page Heading -->
					<div class="row">
						<div class="col-lg-12">
							<h1 class="page-header"> Dash Board <small>Summary</small></h1>

						</div>
					</div>
					<!-- /.row -->
					<div  class="col-xs-12 col-sm-8">
						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">My Name Card</h3>
							</div>
							<div class="panel-body">
								<dl class="dl-horizontal">
									<dt>
										Name
									</dt>
									<dd>
										Lucy Lee
									</dd>
									<dt>
										Sex
									</dt>
									<dd>
										Male
									</dd>
									<dt>
										Phone
									</dt>
									<dd>
										987 654 3210
									</dd>
									<dt>
										Email
									</dt>
									<dd>
										lucylee@gmail.com
									</dd>
								</dl>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- /#page-wrapper -->

		</div>
		<#include "login.ftl">

		<#include "register.ftl">

	</body>

</html>