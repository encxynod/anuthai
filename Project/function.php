<?php

include('template/connect.php');


if (@$_GET['action'] == "logout") {
    logout();
}

function logout(){
  session_destroy();
  header("location:login_form.php");
}



?>
