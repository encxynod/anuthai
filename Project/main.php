<?php include("template\header.php"); ?>
<?php
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />';
include("nav.php");
$test = $_SESSION['emp_name'] ;
$test2 = $_SESSION['emp_id'];
echo $test2,$test;

?>
