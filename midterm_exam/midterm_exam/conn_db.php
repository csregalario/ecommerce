<?php

    // database connection

$servername="localhost";
$dbusername="root";
$dbpassword="";
$dbname="exam_db";

$conn = mysqli_connect($servername,$dbusername,$dbpassword,$dbname);

// Check connection
if (!$conn){
    die("Maintenance Mode.");
}

session_start();
include_once ("sql_utilities.php");
?>