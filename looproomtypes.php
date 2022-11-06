<hr>
<h4 class="room-title">Room Types</h4>
<!-- iqoniq Blog Listing Start -->
<?php
if (isset($_GET['checkin'])) {
	$checkindt = $_GET['checkin'];
	$checkoutdt = $_GET['checkout'];
} else {
	$checkindt = date("Y-m-d");
	$checkoutdt = date("Y-m-d");
}
$i = 0;
$sqlroomtype = "SELECT * FROM room_type where room_type.status='Active' AND room_type.hotel_id='$_GET[hotelid]'  ";
if ($_GET['room_type']) {
	$sqlroomtype = $sqlroomtype . " AND room_typeid='$_GET[room_type]'";
}
$qsqlroomtype = mysqli_query($con, $sqlroomtype);
while ($rsroomtype = mysqli_fetch_array($qsqlroomtype)) {
	$sqlroomtypeimg = "SELECT * FROM hotel_image where status='Active' AND room_typeid='$rsroomtype[0]'";
	$qsqlroomtypeimg = mysqli_query($con, $sqlroomtypeimg);
	$rsroomtypeimg = mysqli_fetch_array($qsqlroomtypeimg);

	if (mysqli_num_rows($qsqlroomtypeimg) == 0) {
		$imgname = "images/noimage.png";
	} else {
		if (file_exists("imghotel/$rsroomtypeimg[hotel_image]")) {
			$imgname = "imghotel/$rsroomtypeimg[hotel_image]";
		} else {
			$imgname = "images/noimage.png";
		}
	}
?>
	<div class="mg_blog_listing our-room fancy-overlay">
		<div class="thumb">
			<a href="#"><img src="<?php echo $imgname; ?>" alt=""></a>
			<a class="mg_zoom_icon" href="#"><i class="fa fa-search"></i></a>
		</div>
		<div class="text">
			<h5 class="blog_title"><a href="hotelbooking.php?hotelid=<?php echo $_GET['hotelid']; ?>&room_type=<?php echo $rsroomtype[0]; ?>&adults=<?php echo $adults; ?>&children=<?php echo $children; ?>&checkin=<?php echo $checkindt; ?>&checkout=<?php echo $checkoutdt; ?>&btnsearch=Check+Availability"><?php echo $rsroomtype['room_type']; ?></a></h5>

			<div class="clear"></div>
			<ul class="room-feature">
				<li><span class="pull-left">Max Adult :</span><span class="pull-right"><?php echo $rsroomtype['max_adults']; ?></span></li>
				<li><span class="pull-left">Max Child :</span><span class="pull-right"><?php echo $rsroomtype['max_children']; ?></span></li>
				<li><span class="pull-left">Facilities</span><span class="pull-right"> <?php
																						$hotelfacility = "";
																						$sqlhotel_facility = "SELECT * FROM hotel_facility where  room_typeid='$rsroomtype[0]'";
																						$qsqlhotel_facility = mysqli_query($con, $sqlhotel_facility);
																						while ($rshotel_facility = mysqli_fetch_array($qsqlhotel_facility)) {
																							$hotelfacility =  $hotelfacility . $rshotel_facility['facility_type'] . ",";
																						}
																						echo rtrim($hotelfacility, ", ");
																						?></span></li>
				<li><span class="pull-left">No. of Rooms Available</span><span class="pull-right"><?php
																									$sqlroom_booking = "SELECT * FROM room_booking WHERE room_typeid='$rsroomtype[0]' AND (('$checkindt' BETWEEN check_in AND check_out)  OR ('$checkoutdt' BETWEEN check_in AND check_out))  AND status='Active'";
																									$qsqlsqlroom_booking = mysqli_query($con, $sqlroom_booking);
																									echo mysqli_error($con);
																									$noofbookings = mysqli_num_rows($qsqlsqlroom_booking);
																									echo $availablerooms = $rsroomtype['available_rooms'] - $noofbookings;
																									?></span></li>
			</ul>

			<?php
			if ($availablerooms == 0) {
			?>
				<a class="mg_btn1 bg_transparent" href="" onclick="alert('No Rooms available..');return false;">Click here to Book</a>
			<?php
			} else {
			?>
				<a class="mg_btn1 bg_transparent" href="hotelbooking.php?hotelid=<?php echo $_GET['hotelid']; ?>&room_type=<?php echo $rsroomtype[0]; ?>&adults=<?php echo $rsroomtype['max_adults']; ?>&children=<?php echo $rsroomtype['max_children']; ?>&checkin=<?php echo $checkindt; ?>&checkout=<?php echo $checkoutdt; ?>&btnsearch=Check+Availability">Click here to Book</a>
			<?php
			}
			?>
		</div>
	</div>
<?php
}
?>