<?php
    $host="localhost";
    $user="root";
    $password="";
    $db="viriya";
    mysql_connect($host,$user) or die("No Connect DATABASE");
    mysql_select_db($db);
    mysql_query("SET NAMES utf8");

?>
