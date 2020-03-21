<?php
	$conn=mysqli_connect("localhost","root","", "online") or die("Cannot connect to the localhost");

	// mysql_select_db("online",$link) or die("Cannot connect to the database");
	mysqli_query($conn, "SET NAMES 'UTF8'");
?>
