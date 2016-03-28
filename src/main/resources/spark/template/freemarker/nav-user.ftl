<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-ex1-collapse" aria-expanded="false" aria-controls="navbar">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/"><img class="img-circle" src="img/logo.jpg" alt="logo" height=30 width=61></a>
	</div>
	<div id="navbar" class="navbar-collapse collapse">
		<ul class="nav navbar-nav">
			<li>
				<a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a>
			</li>
			<li>
				<a href="/aboutus"><span class="glyphicon glyphicon-info-sign"
				aria-hidden="true"></span> About</a>
			</li>
			<li>
				<a href="/inventory"> <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Inventory </a>
			</li>
			<li>
				<a href="/contactus"> <i class="fa fa-envelope-o"></i> Contact</a>
			</li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<#if userboardactive?? || purchasehistoryctive?? || changepasswordactive??>
			<li class="active">
				<#else>
			<li>
				</#if>
				<a href="/user-board"><i class="glyphicon glyphicon-user"></i> My Account</a>
			</li>
			<li>
				<a id="registerButton"><span class="glyphicon glyphicon-register"></span> Register</a>
			</li>
			<li>
				<a id="loginButton"><span class="glyphicon glyphicon-log-in"></span> Login</a>
			</li>
		</ul>
	</div>
	<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav side-nav">
			<#if userboardactive??>
			<li class="active">
				<#else>
			<li>
				</#if>
				<a href="/user-board"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
			</li>
			<#if purchasehistoryctive??>
			<li class="active">
				<#else>
			<li>
				</#if>
				<a href="/purchase-history"><i class="fa fa-fw fa-bar-chart-o"></i> Purchase History</a>
			</li>
			<#if changepasswordactive??>
			<li class="active">
				<#else>
			<li>
				</#if>
				<a href="/change-password"><i class="fa fa-fw fa-edit"></i> Change Password</a>
			</li>
			<li>
				<a href="/"><i class="fa fa-sign-out"></i> Logout</a>
			</li>
		</ul>
	</div>
</nav>
