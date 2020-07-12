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
		<!--<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>  
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">-->
		<script type="text/javascript" src="./js/manage.js"></script>
	</head>
	<body>
		<!-- Navbar -->
		<?php include_once("./templates/header.php"); ?>
		<br/><br/>
		<div class="container">
			<div class="row">
				<div class="col-sm">
					<form class="form-inline">
						<div class="col-md-3">
							<input type="text" name="from_date" id="from_date" class="form-control" placeholder="From Date" />
						</div>
						<div class="col-md-3">
							<input type="text" name="to_date" id="to_date" class="form-control" placeholder="To Date" />
						</div>
						<div class="col-md-5">
							<input type="button" name="filter" id="filter" value="Filter" class="btn btn-info" />
						</div>
					</form>
					<div style="clear:both"></div>
					<br />
					<div id="order_table">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>#</th>
									<th>Order Date</th>
									<th>Invoice no.</th>
									
									<th>Customer Name</th>
									<th>Product Name</th>
									<th>Quantity</th>
									<!--<th>Discount</th>-->
									<th>Net Total</th>
									<th>Paid</th>
									<th>Due</th>
									<th>Payment Method</th>
								</tr>
							</thead>
							<tbody id="get_report">
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</body>
	</html>