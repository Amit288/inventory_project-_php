<?php
include_once("./database/constants.php");
if (isset($_SESSION["userid"])) {
    header("location:".DOMAIN."/dashboard.php");
}
?>

<!DOCTYPE html>
<html>

<head>
    <?php include_once("./templates/link.php"); ?>
</head>

<body>
    <!-- Start: Navigation with Button -->
    <div>
        <nav class="navbar navbar-light navbar-expand-md bg-primary navigation-clean-button" style="padding: 0px;">
            <div class="container"><a class="navbar-brand text-white" href="#" style="font-size: 15px;">INVENTORY MANAGEMENT SYSTEM</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                    class="collapse navbar-collapse" id="navcol-1"><span class="ml-auto navbar-text actions"><a class="text-white login" href="login.php">Log In</a><a class="btn btn-secondary action-button" role="button" href="register.php" style="background-color: transparent;">Register</a></span></div>
    </div>
    </nav>
    </div>
    <!-- End: Navigation with Button -->
    <div class="row">
        <div class="col"><img class="img-fluid" src="assets/img/header.jpg" width="100%"></div>
    </div>
    <div class="container-fluid" style="padding: 0px;">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body text-center">
                        <h4 class="card-title">Manage Your Inventory With Us</h4>
                        <h6 class="text-muted card-subtitle mb-2" style="font-size: 12px;">&nbsp;Manage your stocks and track your orders and sales in a simplified way with us&nbsp;</h6><a class="btn btn-primary" role="button" href="register.php">Register</a></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body text-center">
                        <h4 class="card-title">Create Your Account</h4>
                        <h6 class="text-muted card-subtitle mb-2" style="font-size: 12px;">Click on &nbsp;<strong><span style="text-decoration: underline;">Sign Up</span></strong> and Create Your Account with Us.</h6>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-body text-center">
                        <h4 class="card-title">Access Your Dashboard</h4>
                        <h6 class="text-muted card-subtitle mb-2" style="font-size: 12px;">Manage Your stocks And place orders using dashboard.</h6>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-body text-center">
                        <h4 class="card-title">Track Your Sales</h4>
                        <h6 class="text-muted card-subtitle mb-2" style="font-size: 12px;">&nbsp;Track your profits/loss and generate a report.</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Start: Footer Dark -->
    <div class="text-primary footer-dark" style="background-color: #0159dd;padding: 0px;color: rgb(255,255,255);">
        <footer class="text-primary" style="padding: 0px;">
            <!-- Start: Copyright -->
            <p class="lead text-white copyright" style="padding: 10px;"><strong>Inventory Management System By AMIT </strong></p>
            <!-- End: Copyright -->
        </footer>
    </div>
    <!-- End: Footer Dark --> 
    
    <script src="assets/js/smart-forms.min.js"></script>
    <script src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/script.min.js"></script>
</body>

</html>