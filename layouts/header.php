<?php
date_default_timezone_set('Asia/Manila'); // Set the default timezone to Manila
$user = current_user(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>
    <?php if (!empty($page_title)) echo remove_junk($page_title);
    elseif (!empty($user)) echo ucfirst($user['name']);
    else echo "Inventory Management System"; ?>
  </title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />
  <link rel="stylesheet" href="libs/styles/mainstyle.css">
  <style>
    /* Logo positioning */
    .logo img {
      height: 50px;
      background-color: #94E1E4;
    }

    .header-content {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .header-title {
      font-size: 20px;
      font-weight: bold;
      margin-left: 10px;
    }

    .header-navigation {
      flex-grow: 1;
      text-align: center;
    }

    .header-navigation a {
      margin: 0 15px;
      color: #333;
      text-decoration: none;
    }

    .header-navigation a i {
      font-size: 20px;
    }

    .header-navigation a:hover {
      color: #000;
    }

    .info-menu {
      display: flex;
      align-items: center;
      margin: 0;
    }

    .header-date {
      margin-left: 20px;
    }

    .tooltip-inner {
      background-color: #333;
      color: #fff;
      padding: 5px 10px;
      border-radius: 4px;
    }

    .tooltip.bottom .tooltip-arrow {
      border-bottom-color: #333;
    }

    #icon_choose_file {
      margin-right: 10px;
    }

    /* Responsive styles */

    @media (max-width: 768px) {

      .header-title,
      .header-date,
      .header-navigation a {
        font-size: 16px;
      }

      .header-navigation a i {
        font-size: 16px;
      }

      info-menu {
        flex-direction: column;
        align-items: flex-start;
      }

      .info-menu img {
        width: 25px;
        height: 25px;
      }

      .info-menu .profile span {
        font-size: 14px;
      }

      .info-menu .profile .dropdown-menu {
        position: static;
        display: none;
      }

      .info-menu .profile:hover .dropdown-menu {
        display: block;
      }
    }

    @media (max-width: 576px) {

      .header-title,
      .header-date,
      .header-navigation a {
        font-size: 10px;
      }

      .header-navigation a i {
        font-size: 10px;
      }

      .info-menu img {
        width: 20px;
        height: 20px;
      }

      .info-menu .profile span {
        font-size: 12px;
      }
    }
  </style>
</head>

<body>
  <?php if ($session->isUserLoggedIn(true)) : ?>
    <header id="header">
      <div class="logo pull-left">
        <img src="libs/images/kandyland_logo.png" alt="Kandyland Logo">
      </div>
      <div class="header-content">

        <div class="header-title">
          SALES AND INVENTORY SYSTEM
        </div>
        <div class="header-navigation">
          <a href="home.php" data-toggle="tooltip" data-placement="bottom" title="Home"><i class="glyphicon glyphicon-home"></i> </a>
          <a href="users.php" data-toggle="tooltip" data-placement="bottom" title="User Management"><i class="glyphicon glyphicon-user"></i> </a>
          <a href="categorie.php" data-toggle="tooltip" data-placement="bottom" title="Categories"><i class="glyphicon glyphicon-list-alt"></i> </a>
          <a href="product.php" data-toggle="tooltip" data-placement="bottom" title="Products"><i class="glyphicon glyphicon-th-large"></i> </a>
          <a href="media.php" data-toggle="tooltip" data-placement="bottom" title="Media Files"><i class="glyphicon glyphicon-picture"></i> </a>
          <a href="sales.php#" data-toggle="tooltip" data-placement="bottom" title="Sales"><i class="glyphicon glyphicon-credit-card"></i> </a>
          <a href="sales_report.php" data-toggle="tooltip" data-placement="bottom" title="Generate Sales Report"><i class="glyphicon glyphicon-duplicate"></i></a>
        </div>
        <div class="header-date pull-left">
          <strong><?php echo date("F j, Y, g:i a"); ?></strong>
        </div>
        <div class="pull-right clearfix">
          <ul class="info-menu list-inline list-unstyled">
            <li class="profile">
              <a href="#" data-toggle="dropdown" class="toggle" aria-expanded="false">
                <img src="uploads/users/<?php echo $user['image']; ?>" alt="user-image" class="img-circle img-inline">
                <span><?php echo remove_junk(ucfirst($user['name'])); ?> <i class="caret"></i></span>
              </a>
              <ul class="dropdown-menu">
                <li>
                  <a href="profile.php?id=<?php echo (int)$user['id']; ?>">
                    <i class="glyphicon glyphicon-user"></i>
                    Profile
                  </a>
                </li>
                <li>
                  <a href="edit_account.php" title="edit account">
                    <i class="glyphicon glyphicon-cog"></i>
                    Settings
                  </a>
                </li>
                <li class="last">
                  <a href="logout.php">
                    <i class="glyphicon glyphicon-off"></i>
                    Logout
                  </a>
              </ul>
            </li>
          </ul>
        </div>

      </div>
    </header>
    <div class="sidebar">
      <?php if ($user['user_level'] === '1') : ?>
        <?php include_once('admin_menu.php'); ?>

      <?php elseif ($user['user_level'] === '2') : ?>
        <?php include_once('special_menu.php'); ?>

      <?php elseif ($user['user_level'] === '3') : ?>
        <?php include_once('user_menu.php'); ?>

      <?php endif; ?>

    </div>
  <?php endif; ?>

  <div class="page">
    <div class="container-fluid">