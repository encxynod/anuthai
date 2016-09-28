<html lang="en">

<?php include("template\header.php"); ?>

  <head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>วิริยะประกันภัย</title>
    <link rel="shortcut icon" href="img/viriIcon.ico" />
    <link href="fa\css\font-awesome.min.css" rel='stylesheet' type='text/css'>
    <link href="bt\css\bootstrap.min.css" rel="stylesheet" type='text/css' >
    <link href="{{ elixir('css/app.css') }}" rel="stylesheet">
    <script src="jq\jquery-2.2.3.min.js"></script>
    <script src="bt\js\bootstrap.min.js"></script>
  </head>
  <body>
    <div class="login-page">
  <div class="form">
    <form class="login-form" method="post" action="login_form.php" />
      Username: <input type="text" placeholder="Username" maxlength="13" name ="username" required onKeyPress="CheckNum()"/><br>
      Password: <input type="password" placeholder="Password" maxlength="20" name ="password" required/>
      <button type="submit" class="btn btn-primary">Login <i class="fa fa-sign-in" aria-hidden="true"></i></button>
    </form>
  </div>
</div>




<style type="text/css">

.login-page {
  width: 500px;
  padding: 20% 0 0;
  margin: auto;
}
.form {
  font-family: "Roboto", sans-serif;
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 70%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button ,#login {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #52c6ff;
  width: 70%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
  cursor: pointer;
}
body {
  background: rgba(#0075ff, 0.74);
  background: -webkit-linear-gradient(right, #75b4ff, #11a451);
  background: -moz-linear-gradient(right, #75b4ff, #87a411);
  background: -o-linear-gradient(right, #75b4ff, #a49f11);
  background: linear-gradient(to left, #75b4ff, rgba(20, 166, 78, 0.76));
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}


</style>

  </body>


</html>
<script language="javascript">
function CheckNum(){
		if (event.keyCode < 48 || event.keyCode > 57){
		      event.returnValue = false;
	    	}
	}
</script>
