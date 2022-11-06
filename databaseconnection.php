<?php
if (!isset($_SESSION)) {
    session_start();
}
//error_reporting(E_ALL & ~E_NOTICE  &  ~E_STRICT  &  ~E_WARNING);
$con = mysqli_connect("sql110.epizy.com", "epiz_32940352", "ZfwLsFEnqcr02B", "epiz_32940352_visitlanka");
echo mysqli_connect_error();
