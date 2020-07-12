<?php
include_once("./database/constants.php");
if (!isset($_SESSION["userid"])) {
	header("location:".DOMAIN."/");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<?php include_once("./templates/link.php"); ?>
		<script type="text/javascript" src="./js/main.js"></script>
	</head>
	<body>
		<!-- Navbar -->
		<?php include_once("./templates/header.php"); ?>
		<br/><br/>
		<div class="container">
			<div class="row" style="margin: 10px;padding: 10px;">
				<div class="col">
					<div class="card">
						<div class="card-body text-left">
							<div class="row">
								<div class="col">
									<div class="card">
										<div class="card-body"><img class="img-fluid" src="assets/img/admin.png" width="150px">
											<h3 class="text-left card-title">Profile</h3>
											<h6 class="text-left"><i class="fa fa-user"></i>ADMIN</h6>
											<p></p>
											<br>
										</div>
										</div>
									</div>
									<div class="col">
										<div class="card" style="margin: 5px;">
											<div class="card-body">
												<h4 class="card-title">Invoice Report</h4>
												<h6 class="text-muted card-subtitle mb-2" style="font-size: 12px;">Here you can view your Invoices</h6><a class="btn btn-primary btn-sm" role="button" href="manage_report.php">View Report</a></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col text-left">
							<div class="card text-left">
								<div class="card-body text-left" style="background-color: #e7e5e0;">
									<h1 class="card-title">Welcome Admin</h1>
									<h6 class="text-muted card-subtitle mb-2">Have a nice day</h6>
									<div class="row">
										<div class="col-5"><style type="text/css">
											.clock-face {
											height: 128px;
											width: 128px;
											position: relative;
											}
											.clock-face > * {
											position: absolute;
											top: 0;
											left: 0;
											height: 128px;
											width: 128px;
											}
											.clock-face img {
											display: block;
											height: 128px;
											width: 128px;
											}
											.clock-face .second-hand img {
											animation: spin 60s linear infinite;
											}
											.clock-face .minute-hand img {
											animation: spin 3600s linear infinite;
											}
											.clock-face .hour-hand img {
											animation: spin 43200s linear infinite;
											}
											@keyframes spin { 100% { transform: rotate(360deg); } }</style>
											<div class="clock-face">
												<img src="assets/img/clock_face.gif" alt="" />
												<div class="second-hand">
													<img src="assets/img/second_hand.png" alt="" />
												</div>
												<div class="minute-hand">
													<img src="assets/img/minute_hand.png" alt="" />
												</div>
												<div class="hour-hand">
													<img src="assets/img/hour_hand.png" alt="" />
												</div>
												
											</div>
											<script type="text/javascript">function rotate (container, name, amount) {
											var element = container.querySelector('.' + name);
											var transform = 'rotate(' + (amount * 360) + 'deg)';
											element.style.transform = transform;
											}
											function makeClock (element, _timezoneOffset, _time) {
											var timezoneOffset = _timezoneOffset || 0;
											var time = _time || Date.now();
											var minutes = (time / 1000 / 60) - timezoneOffset;
											rotate(element, 'hour-hand', (minutes / 60 / 12) % 12);
											rotate(element, 'minute-hand', (minutes / 60) % 60);
											rotate(element, 'second-hand', (minutes) % 60);
											}
											document.addEventListener('DOMContentLoaded', function () {
											var element = document.querySelector('.clock-face');
											if (element) {
											var timezoneOffset = new Date().getTimezoneOffset();
											makeClock(element, timezoneOffset);
											}
											});
											</script>
										</div>
										<div class="col">
											<div class="card" style="margin: 10px;">
												<div class="card-body">
													<h4 class="card-title">Orders</h4>
													<h6 class="text-muted card-subtitle mb-2" style="font-size: 12px;">Here you can make a new order and print invoices</h6><a class="btn btn-primary btn-sm" role="button" href="new_order.php">New Orders</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<p></p>
					<p></p>
					<div class="container" style="margin: 10px;padding: 10px;">
						<div class="row">
							<div class="col-md-4">
								<div class="card">
									<div class="card-body">
										<h4 class="card-title">CATEGORIES</h4>
										<p class="text-muted card-subtitle mb-2" style="font-size: 15px;">Here you can manage your categories and you add new parent and sub categories</p>
										<a href="#" data-toggle="modal" data-target="#form_category" class="btn btn-primary"><i class="fa fa-plus"></i>Add</a>
										<a class="btn btn-success border rounded" role="button" href="manage_categories.php" style="margin: 5px;"><i class="fa fa-edit"></i>Manage</a>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="card">
									<div class="card-body">
										<h4 class="card-title">BRANDS</h4>
										<p class="text-muted card-subtitle mb-2" style="font-size: 15px;">Here you can manage your brand and you add new brand</p>
										<a href="#" data-toggle="modal" data-target="#form_brand" class="btn btn-primary"><i class="fa fa-plus"></i>Add</a>
										<a class="btn btn-success border rounded" role="button" href="manage_brand.php" style="margin: 5px;"><i class="fa fa-edit"></i>Manage</a>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="card">
									<div class="card-body">
										<h4 class="card-title">PRODUCTS</h4>
										<p class="text-muted card-subtitle mb-2" style="font-size: 15px;">Here you can manage your prpducts and you add new products</p>
										<a href="#" data-toggle="modal" data-target="#form_products" class="btn btn-primary"><i class="fa fa-plus"></i>Add</a>
										<a class="btn btn-success border rounded" role="button" href="manage_product.php" style="margin: 5px;"><i class="fa fa-edit"></i>Manage</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<?php
					//Categpry Form
					include_once("./templates/category.php");
					?>
					<?php
					//Brand Form
					include_once("./templates/brand.php");
					?>
					<?php
					//Products Form
					include_once("./templates/products.php");
					?>
				</body>
			</html>