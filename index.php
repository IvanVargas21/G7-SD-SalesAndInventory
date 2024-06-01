<?php
ob_start();
require_once('includes/load.php');
if ($session->isUserLoggedIn(true)) {
  redirect('home.php', false);
}
?>
<?php include_once('layouts/header.php'); ?>
<!--<link rel="stylesheet" href="path/to/your/login.css">-->
<style>
  body {
    background-image: url('libs/images/loginpage_bg.png');
    background-size: cover;
    /* To Cover the entire background */
    background-repeat: no-repeat;
    background-position: center;
    /* Center the background image */
    background-attachment: fixed;
  }

  .login-logo {
    max-width: 100%;
    width: 160px;
    height: auto;
    margin-bottom: 5px;

  }

  .login-page {
    position: absolute;
    top: 70%;
    transform: translateY(10%);
    transform: translateX(-45%);
    width: 100%;
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    padding-left: 40px;
    padding-right: 40px;
    background-color: rgba(247, 247, 247, 0.8);
    /* Background color with opacity */
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    height: auto;
  }
</style>
<div class="login-page">
  <div class="text-center">
    <img src="libs/images/kandyland_logo.png" alt="Kandyland Logo" class="login-logo">
    <h4><b>Sales and Inventory <br> Management System</b></h4>
  </div>

  <?php echo display_msg($msg); ?>

  <form method="post" action="auth.php" class="clearfix">

    <div class="form-group">
      <label for="username" class="control-label">Username</label>
      <input type="name" class="form-control" name="username" placeholder="Username" value="<?php echo isset($_SESSION['input_username']) ? $_SESSION['input_username'] : ''; ?>">
    </div>

    <div class="form-group">
      <label for="Password" class="control-label">Password</label>
      <div class="input-group">
        <input type="password" name="password" id="password" class="form-control" placeholder="Password" value="<?php echo isset($_SESSION['input_password']) ? $_SESSION['input_password'] : ''; ?>">
        <span class="input-group-addon" onclick="togglePasswordVisibility()" style="cursor: pointer;">
          <span class="glyphicon glyphicon-eye-open" id="eyeIcon"></span>
        </span>
      </div>
    </div>

    <div class="form-group">
      <button type="submit" class="btn btn-danger">
        <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> Login
      </button>
    </div>
  </form>
</div>
<?php include_once('layouts/footer.php'); ?>

<script>
  function togglePasswordVisibility() {
    var passwordField = document.getElementById("password");
    var icon = document.getElementById("eyeIcon");

    if (passwordField.type === "password") {
      passwordField.type = "text";
      icon.className = "glyphicon glyphicon-eye-close";
    } else {
      passwordField.type = "password";
      icon.className = "glyphicon glyphicon-eye-open";
    }
  }
</script>
