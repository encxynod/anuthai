<?php include("template\header.php"); ?>
<?php
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />';
include("navadmin.php");

$brid = $_SESSION['emp_br'];


?>
<?php

include("template\connect.php");

    $sql = "SELECT * FROM branch WHERE BranchID = '$brid'";
    $query = mysql_query($sql) or die(mysql_error());
    $num_rows = mysql_num_rows($query);
    if ($num_rows>0)
    {
      $result = mysql_fetch_array($query);
      $_SESSION['emp_brn'] = $result['BranchName'];
  // echo $_SESSION['emp_brn'];

    }
  ?>
