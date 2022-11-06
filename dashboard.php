<?php
include("header.php");
if (!isset($_SESSION['staffid'])) {
	echo "<script>window.location='index.php';</script>";
}
?>
<!-- Call to Action Section Start-->
<section class="mg_travelplan">
	<div class="container">
		<!-- iqoniq Heading Start -->
		<div class="mg_hotel_hd1 white">
			<h4>DASHBOARD</h4>
		</div>
		<!-- iqoniq Heading End -->
	</div>
</section>
<!-- Call to Action Section End-->
<!-- iqoniq Contant Wrapper Start-->
<div class="iqoniq_contant_wrapper">
	<!-- Pricing Table Section Start-->
	<section class="pricing_wrap">
		<div class="container">

			<div class="row">


				<div class="col-md-4 col-sm-6">
					<!-- iqoniq Pricing Table Start -->
					<div class="mg_pricing fancy-overlay">
						<div class="thumb">
							<img src="images/customer.jpg" alt="" style="height: 225px;">
							<div class="caption">
								<div class="clear"></div>
								<h6>CUSTOMER</h6>
								<b>
									<?php
									$sql = "SELECT * FROM customer";
									$qsql = mysqli_query($con, $sql);
									echo mysqli_num_rows($qsql);
									?> records
								</b>
							</div>
						</div>
					</div>
					<!-- iqoniq Pricing Table End -->
				</div>


				<div class="col-md-4 col-sm-6">
					<!-- iqoniq Pricing Table Start -->
					<div class="mg_pricing fancy-overlay">
						<div class="thumb">
							<img src="images/rendered.jpg" alt="" style="height: 225px;">
							<div class="caption">
								<div class="clear"></div>
								<h6>FEEDBACK</h6>
								<b>
									<?php
									$sql = "SELECT * FROM feedback";
									$qsql = mysqli_query($con, $sql);
									echo mysqli_num_rows($qsql);
									?> records
								</b>
							</div>
						</div>
					</div>
					<!-- iqoniq Pricing Table End -->
				</div>

				<div class="col-md-4 col-sm-6">
					<!-- iqoniq Pricing Table Start -->
					<div class="mg_pricing fancy-overlay">
						<div class="thumb">
							<img src="images/9HhgVN7T9LsvxKqUxnBbzJ-320-80.jpg" alt="" style="height: 225px;">
							<div class="caption">
								<div class="clear"></div>
								<h6>GALLERY</h6>
								<b>
									<?php
									$sql = "SELECT * FROM gallery";
									$qsql = mysqli_query($con, $sql);
									echo mysqli_num_rows($qsql);
									?> records
								</b>
							</div>
						</div>
					</div>
					<!-- iqoniq Pricing Table End -->
				</div>

				<div class="col-md-4 col-sm-6">
					<!-- iqoniq Pricing Table Start -->
					<div class="mg_pricing fancy-overlay">
						<div class="thumb">
							<img src="images/pool-for-google-blog.jpg" alt="" style="height: 225px;">
							<div class="caption">
								<div class="clear"></div>
								<h6>HOTEL</h6>
								<b>
									<?php
									$sql = "SELECT * FROM hotel";
									$qsql = mysqli_query($con, $sql);
									echo mysqli_num_rows($qsql);
									?> records
								</b>
							</div>
						</div>
					</div>
					<!-- iqoniq Pricing Table End -->
				</div>

				<div class="col-md-4 col-sm-6">
					<!-- iqoniq Pricing Table Start -->
					<div class="mg_pricing fancy-overlay">
						<div class="thumb">
							<img src="images/facility-and-hostel.jpg" alt="" style="height: 225px;">
							<div class="caption">
								<div class="clear"></div>
								<h6>HOTEL FACILITY</h6>
								<b>
									<?php
									$sql = "SELECT * FROM hotel_facility";
									$qsql = mysqli_query($con, $sql);
									echo mysqli_num_rows($qsql);
									?> records
								</b>
							</div>
						</div>
					</div>
					<!-- iqoniq Pricing Table End -->
				</div>

				<div class="col-md-4 col-sm-6">
					<!-- iqoniq Pricing Table Start -->
					<div class="mg_pricing fancy-overlay">
						<div class="thumb">
							<img src="images/photo-1603428760740-c0089e3760f2.jpg" alt="" style="height: 225px;">
							<div class="caption">
								<div class="clear"></div>
								<h6>HOTEL IMAGE</h6>
								<b>
									<?php
									$sql = "SELECT * FROM hotel_image";
									$qsql = mysqli_query($con, $sql);
									echo mysqli_num_rows($qsql);
									?> records
								</b>
							</div>
						</div>
					</div>
					<!-- iqoniq Pricing Table End -->
				</div>


				<div class="col-md-4 col-sm-6">
					<!-- iqoniq Pricing Table Start -->
					<div class="mg_pricing fancy-overlay">
						<div class="thumb">
							<img src="images/future_payment_methods-compressor-1.jpg" alt="" style="height: 225px;">
							<div class="caption">
								<div class="clear"></div>
								<h6>PAYMENT</h6>
								<b>
									<?php
									$sql = "SELECT * FROM payment";
									$qsql = mysqli_query($con, $sql);
									echo mysqli_num_rows($qsql);
									?> records
								</b>
							</div>
						</div>
					</div>
					<!-- iqoniq Pricing Table End -->
				</div>

				<div class="col-md-4 col-sm-6">
					<!-- iqoniq Pricing Table Start -->
					<div class="mg_pricing fancy-overlay">
						<div class="thumb">
							<img src="images/crbs-flat-browser.png" alt="" style="height: 225px;">
							<div class="caption">
								<div class="clear"></div>
								<h6>ROOM BOOKING</h6>
								<b>
									<?php
									$sql = "SELECT * FROM room_booking";
									$qsql = mysqli_query($con, $sql);
									echo mysqli_num_rows($qsql);
									?> records
								</b>
							</div>
						</div>
					</div>
					<!-- iqoniq Pricing Table End -->
				</div>

				<div class="col-md-4 col-sm-6">
					<!-- iqoniq Pricing Table Start -->
					<div class="mg_pricing fancy-overlay">
						<div class="thumb">
							<img src="images/roomtypedownload.jpg" alt="" style="height: 225px;">
							<div class="caption">
								<div class="clear"></div>
								<h6>ROOM TYPE</h6>
								<b>
									<?php
									$sql = "SELECT * FROM room_type";
									$qsql = mysqli_query($con, $sql);
									echo mysqli_num_rows($qsql);
									?> records
								</b>
							</div>
						</div>
					</div>
					<!-- iqoniq Pricing Table End -->
				</div>

			</div>

		</div>
	</section>
	<!-- Pricing Table Section End-->
</div>
<!-- iqoniq Contant Wrapper End-->
<?php
include("footer.php");
?>