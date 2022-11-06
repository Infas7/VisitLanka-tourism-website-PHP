<?php
if (!isset($_SESSION)) {
	session_start();
}
error_reporting(E_ALL & ~E_NOTICE  &  ~E_STRICT  &  ~E_WARNING);
$dt = date("Y-m-d");
include("databaseconnection.php");
if (isset($_POST['btnforgotpasslogin'])) {
	$sqlcust = "SELECT * FROM customer WHERE email_id='$_POST[custforgotpasslogin]'  AND status='Active'";
	$qsqlcust = mysqli_query($con, $sqlcust);
	if (mysqli_num_rows($qsqlcust) == 1) {
		$rscust = mysqli_fetch_array($qsqlcust);
		$_SESSION['resetlink'] = rand();
		include("phpmailer.php");
		$tomail = $rscust['email_id'];
		$totmailname = $rscust['customer_name'];
		$urlpath = 'http://' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']);
		$subject = "Password Reset Request...";
		$message = "<h3>Password reset request</h3><br><br>Hi  "  . $rscust['customer_name'] . ",<br><br>
		Someone has requested a new password for the following account on Visit Lanka:<br><br>
		Login ID: " . $rscust['email_id'] . " <br><br>
		If you didn't make this request, just ignore this email. If you'd like to proceed: <br><br>
		<b><a href='$urlpath/resetpassword.php?resetlink=$_SESSION[resetlink]&customer_id=$rscust[0]'>Click here to reset your password</a></b><br><br>
		Thanks for reading.<br><br><b>- Visit Lanka</b>";
		sendmail($tomail, $totmailname, $subject, $message);
		echo "<script>alert('Reset link sent to your registered Mail ID..');</script>";
		echo "<script>window.location='index.php';</script>";
	} else {
		echo "<script>alert('Entered Email ID is not valid..');</script>";
	}
}
if (isset($_POST['btnsubmit'])) {

	$pwd = md5($_POST['cstpassword']);
	$sql = "INSERT INTO customer (customer_name,contact_no,email_id,password,status) values('$_POST[cstname]','$_POST[cstcontactno]','$_POST[cstemailid]','$pwd','Active')";
	$qsql = mysqli_query($con, $sql);
	//echo mysqli_error($con);
	if (mysqli_affected_rows($con) ==  1) {
		echo "<script>alert('Customer registration done successfully.....');</script>";
		echo "<script>window.location='index.php';</script>";
	} else {
		echo "<script>alert('Customer account already registered with this Email ID.....');</script>";
		echo "<script>window.location='index.php';</script>";
	}
}
if (isset($_POST['btnstafflogin'])) {
	$pwd = md5($_POST['staffpassword']);
	$sql = "SELECT * FROM staff WHERE loginid='$_POST[stafflogin]' and password='$pwd' AND status='Active'";
	$qsql = mysqli_query($con, $sql);
	if (mysqli_num_rows($qsql) == 1) {
		$rs = mysqli_fetch_array($qsql);
		$_SESSION['staffid']	 = $rs['staffid'];
		$_SESSION['stafftype']	 = $rs['stafftype'];
		echo "<script>window.location='dashboard.php';</script>";
	} else {
		echo "<script>alert('Entered Login credentials not valid..');</script>";
	}
}
if (isset($_POST['btncustomerlogin'])) {
	$pwd = md5($_POST['customerpassword']);
	$sql = "SELECT * FROM customer WHERE email_id='$_POST[customeremailid]' and password='$pwd' AND status='Active'";
	$qsql = mysqli_query($con, $sql);
	if (mysqli_num_rows($qsql) == 1) {
		$rs = mysqli_fetch_array($qsql);
		$_SESSION['customer_id'] = $rs['customer_id'];
		if ($rs['address'] == "") {
			echo "<script>alert('Kindly update your profile..');</script>";
			echo "<script>window.location='customerprofile.php';</script>";
		}
		/*
		else
		{
		echo "<script>window.location='customeraccount.php';</script>";
		}
		*/
	} else {
		echo "<script>alert('Entered Login credentials not valid..');</script>";
	}
}
if (isset($_SESSION['customer_id'])) {
	$sqlcustomerprofile = "SELECT * FROM customer WHERE customer_id='$_SESSION[customer_id]'";
	$qsqlcustomerprofile = mysqli_query($con, $sqlcustomerprofile);
	$rscustomerprofile = mysqli_fetch_array($qsqlcustomerprofile);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title> Visit Lanka</title>
	<!-- Bootstrap -->
	<link href="css/bootstrap.css" rel="stylesheet">
	<!-- Typography CSS -->
	<link href="css/typography.css" rel="stylesheet">
	<!-- DL Menu CSS -->
	<link href="js/dl-menu/component.css" rel="stylesheet">
	<!-- Date And Time Picker CSS -->
	<link rel="stylesheet" href="css/datetimepicker.css">
	<!-- FontAwesome Icon CSS -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- Svg Icon CSS -->
	<link href="css/svg.css" rel="stylesheet">
	<!-- Slick Slider CSS -->
	<link href="css/slick.css" rel="stylesheet">
	<!-- Widget CSS -->
	<link href="css/widget.css" rel="stylesheet">
	<!-- Short Code CSS -->
	<link href="css/shortcode.css" rel="stylesheet">
	<!-- Custom Style CSS -->
	<link href="style.css" rel="stylesheet">
	<!-- Colour CSS -->
	<link href="css/colour.css" rel="stylesheet">
	<!-- Responsive CSS -->
	<link href="css/responsive.css" rel="stylesheet">
	<link href="css/jquery.dataTables.min.css" rel="stylesheet">
	<style>
		.boldfont {
			font-weight: bold;
		}
	</style>
	<style>
		@import "compass/css3";

		/*Be sure to look into browser prefixes for keyframes and annimations*/
		.flash {
			animation-name: flash;
			animation-duration: 0.2s;
			animation-timing-function: linear;
			animation-iteration-count: infinite;
			animation-direction: alternate;
			animation-play-state: running;
		}

		@keyframes flash {
			from {
				color: red;
			}

			to {
				color: black;
			}
		}

		.errmsg {
			/*display: none;*/
			position: absolute;
			right: 0px;
			padding-top: 5px;
			padding-right: 25px;
			color: red;
		}

		.blink_me {
			animation: blinker 1s linear infinite;
		}

		@keyframes blinker {
			50% {
				opacity: 0;
			}
		}
	</style>
</head>

<body>
	<!-- iqoniq Wrapper Start-->
	<div class="iqoniq_wrapper">
		<!-- iqoniq Header Start-->
		<header class="mg_header_1">
			<!-- iqoniq Top Navigation Outr Wrap Start-->
			<div class="mg_nav_wrapper" style="background-color: #151528; display:flex; align-items:center; justify-content:space-around;">
				<!-- iqoniq Logo Start-->
				<div class="mg_logo">
					<a href="index.php"><img src="images/visitlogo.png" alt="" style="height: 120px; width:160px;" /></a>
				</div>
				<!-- iqoniq Logo End-->
				<!-- iqoniq Navigation Start-->
				<div class="mg_nav">
					<ul class="mg_navigation">
						<?php
						if (isset($_SESSION['staffid'])) {
						?>
							<li><a href="#">Tourism location</a>
								<ul class="children">
									<li><a href="tourism_location.php">Add tourism location</a></li>
									<li><a href="viewtourismlocation.php">View tourism location</a></li>
								</ul>
							</li>

							<li><a href="#">Tourism place</a>
								<ul class="children">
									<li><a href="tourism_place.php">Add tourism place</a></li>
									<li><a href="viewtourismplace.php">View tourism place</a></li>
								</ul>
							</li>

							<li><a href="#">Hotel</a>
								<ul class="children">
									<li><a href="hotel.php">Add Hotel</a></li>
									<li><a href="viewhotel.php">View Hotel</a></li>
								</ul>
							</li>


							<li><a href="#">Coupon</a>
								<ul class="children">
									<li><a href="selectcustomerforcoupon.php">Gift Coupon for customer</a></li>
									<li><a href="generatecoupon4feedback.php">Gift Coupon for Feedback</a></li>
									<li><a href="viewgiftcoupon.php">View Gift Coupons</a></li>
								</ul>
							</li>
							<li><a href="#">Users</a>
								<ul class="children">
									<?php
									if ($_SESSION['stafftype'] == "Administrator") {
									?>
										<li><a href="staff.php">Add Staff</a></li>
										<li><a href="viewstaff.php">View Staff</a></li>
									<?php
									}
									?>
									<li><a href="staffprofile.php">My Profile</a></li>
									<li><a href="staffchangepassword.php">Change Password</a></li>
								</ul>
							</li>

							<li><a href="#">Report</a>
								<ul class="children">
									<li><a href="viewcustomer.php">Customer Report</a></li>
									<li><a href="viewroombooking.php">Hotel booking Report</a></li>
									<li><a href="bookingreport.php">Transaction Report</a></li>
									<li><a href="viewpayment.php">Billing Report</a></li>
									<li><a href="viewfeedback.php">View Feedback</a></li>
								</ul>
							</li>
						<?php
						} else if (isset($_SESSION['customer_id'])) {
						?>
							<li><a href="index.php">home</a></li>
							<li><a href="displaytourismlocation.php">Tourism Destinations</a></li>
							<li><a href="displaytourismplace.php">Places to Visit</a></li>
							<li><a href="#">My Bookings</a>
								<ul class="children">
									<li><a href="viewroombooking.php">Hotel Booking Report</a></li>
									<li><a href="bookingreport.php">Transaction Report</a></li>
									<li><a href="viewpayment.php">Billing Report</a></li>
									<li><a href="cancellationreport.php">Cancellation Report</a></li>
								</ul>
							</li>
							<li><a href="#">Profile</a>
								<ul class="children">
									<li><a href="customerprofile.php">My Profile</a></li>
									<li><a href="customerchangepassword.php">Change Password</a></li>
								</ul>
							</li>
						<?php
						} else {
						?>
							<li><a href="index.php">home</a></li>
							<li><a href="about-us.php">about us</a></li>
							<li><a href="displaytourismlocation.php">Tourism Destinations</a></li>
							<li><a href="displaytourismplace.php">Places to Visit</a></li>
							<li><a href="contact-us.php">Contact</a></li>
						<?php
						}
						?>
					</ul>
					<?php
					if (!isset($_SESSION['staffid'])) {
						/*
?>
<a class="mg_search_btn" data-toggle="modal" data-target="#search" href="#"><i class="fa fa-search"></i></a>
<?php
	*/
					}
					?>
					<?php
					if (isset($_SESSION['staffid'])) {
					?>
						<a class="mg_login_btn btn" href="logout.php" style="margin-left: 10px;" onclick="return confirm2logout()"><i class="fa fa fa-ban"></i>Backend Logout</a>
						<a class="mg_login_btn btn" style="margin-left: 10px;" href="dashboard.php"><i class="fa fa-lock"></i><span>Dashboard</span></a>
					<?php
					} else if (isset($_SESSION['customer_id'])) {
					?>
						<a class="mg_login_btn btn" href="logout.php"><i class="fa fa fa-ban"></i>Logout</a>
						<a class="mg_login_btn btn" href="customeraccount.php"><i class="fa fa-lock"></i><span>My Account</span></a>
						<?php
						$sqlgiftcoupon = "SELECT * FROM giftcoupon where customer_id='$_SESSION[customer_id]' AND expirydate>='$dt' AND status='Active'";
						$qsqlgiftcoupon = mysqli_query($con, $sqlgiftcoupon);
						if (mysqli_num_rows($qsqlgiftcoupon) >= 1) {
						?>
							<a class="mg_login_btn btn" style="color: red;cursor: pointer;" data-toggle="modal" data-target="#modgiftcoupon"><i class="fa fa-star blink_me" style='color: orange;cursor: pointer;'></i><span class="blink_me">GIFT COUPON</span></a>
						<?php
						}
						?>
					<?php
					} else {
					?>
						<a class="mg_login_btn btn" data-toggle="modal" data-target="#reg-box" href="#"><i class="fa fa-lock"></i><span>Login/Register</span></a>
					<?php
					}
					?>
				</div>
			</div>
			<!-- iqoniq Navigation End-->
	</div>
	<!-- iqoniq Top Navigation Outr Wrap End-->
	</header>
	<!-- iqoniq Header End-->
	<script>
		function confirm2logout() {
			if (confirm("Do you really want to Quit?") == true) {
				return true;
			} else {
				return false;
			}
		}
	</script>