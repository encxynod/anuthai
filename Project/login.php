
<?php


include("template\connect.php");
$eid = $_POST["username"];
$epassword = $_POST["password"];



  $sql = "SELECT * FROM employee WHERE E_ID = '$eid' AND E_Password = '$epassword'";
      $query = mysql_query($sql) or die(mysql_error());
      $num_rows = mysql_num_rows($query);
      if ($num_rows > 0) {
          $result = mysql_fetch_array($query);


          $_SESSION['emp_id'] = $result['E_ID'];
          $_SESSION['emp_name'] = $result['E_Name'];
          $_SESSION['emp_br'] = $result['BranchID'];
          if($result['Po_ID'] == 1){
              header("location:mainadmin.php");
          }
          else {
            header("location:main.php");
          }

      } else {


        header("Location: login_form.php");
        exit();


      }





 ?>
