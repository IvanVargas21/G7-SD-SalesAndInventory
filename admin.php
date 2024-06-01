<?php
$page_title = 'Admin Home Page';
require_once('includes/load.php');
// Checkin What level user has permission to view this page
page_require_level(1);
?>
<?php
$c_categorie     = count_by_id('categories');
$c_product       = count_by_id('products');
$c_sale          = count_by_id('sales');
$c_user          = count_by_id('users');
$products_sold   = find_higest_saleing_product('10');
$recent_products = find_recent_product_added('5');
$recent_sales    = find_recent_sale_added('5')
?>
<?php include_once('layouts/header.php'); ?>

<style>
  .panel.panel-box.clearfix {
    border-radius: 30px;
    border-top-left-radius: 100px;
    border-bottom-left-radius: 100px;
  }

  .panel-icon.pull-left {
    border-radius: 100px;
  }

  .img-avatar {
    cursor: pointer;
  }
</style>

<div class="row">
  <div class="col-md-6">
    <?php echo display_msg($msg); ?>
  </div>
</div>
<div class="row">
  <a href="users.php" style="color:black;">
    <div class="col-md-3">
      <div class="panel panel-box clearfix">
        <div class="panel-icon pull-left" style="background-color: #EE628D;">
          <i class="glyphicon glyphicon-user"></i>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"> <?php echo $c_user['total']; ?> </h2>
          <p class="text-muted">Users</p>
        </div>
      </div>
    </div>
  </a>

  <a href="categorie.php" style="color:black;">
    <div class="col-md-3">
      <div class="panel panel-box clearfix">
        <div class="panel-icon pull-left" style="background-color: #F2D632;">
          <i class="glyphicon glyphicon-th-large"></i>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"> <?php echo $c_categorie['total']; ?> </h2>
          <p class="text-muted">Categories</p>
        </div>
      </div>
    </div>
  </a>

  <a href="product.php" style="color:black;">
    <div class="col-md-3">
      <div class="panel panel-box clearfix">
        <div class="panel-icon pull-left" style="background-color:#41C7C6;">
          <i class="glyphicon glyphicon-shopping-cart"></i>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"> <?php echo $c_product['total']; ?> </h2>
          <p class="text-muted">Products</p>
        </div>
      </div>
    </div>
  </a>

  <a href="sales.php" style="color:black;">
    <div class="col-md-3">
      <div class="panel panel-box clearfix">
        <div class="panel-icon pull-left" style="background-color: #F79D3A;">
          <span style="color: white; font-size:45px;">₱</span>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"> <?php echo $c_sale['total']; ?></h2>
          <p class="text-muted">Sales</p>
        </div>
      </div>
    </div>
  </a>
</div>

<div class="row">
  <div class="col-md-4">
    <div class="panel panel-default">
      <div class="panel-heading">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <span>Highest Selling Products</span>
        </strong>
      </div>
      <div class="panel-body">
        <table class="table table-striped table-bordered table-condensed">
          <thead>
            <tr>
              <th>Title</th>
              <th>Total Sold</th>
              <th>Total Quantity</th>
            <tr>
          </thead>
          <tbody>
            <?php foreach ($products_sold as  $product_sold) : ?>
              <tr>
                <td><?php echo remove_junk(first_character($product_sold['name'])); ?></td>
                <td><?php echo (int)$product_sold['totalSold']; ?></td>
                <td><?php echo (int)$product_sold['totalQty']; ?></td>
              </tr>
            <?php endforeach; ?>
          <tbody>
        </table>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="panel panel-default">
      <div class="panel-heading">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <span>LATEST SALES</span>
        </strong>
      </div>
      <div class="panel-body">
        <table class="table table-striped table-bordered table-condensed">
          <thead>
            <tr>
              <th class="text-center" style="width: 50px;">#</th>
              <th>Product Name</th>
              <th>Date</th>
              <th>Total Sale</th>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($recent_sales as  $recent_sale) : ?>
              <tr>
                <td class="text-center"><?php echo count_id(); ?></td>
                <td>
                  <a href="edit_sale.php?id=<?php echo (int)$recent_sale['id']; ?>">
                    <?php echo remove_junk(first_character($recent_sale['name'])); ?>
                  </a>
                </td>
                <td><?php echo remove_junk(ucfirst($recent_sale['date'])); ?></td>
                <td>₱<?php echo remove_junk(first_character($recent_sale['price'])); ?></td>
              </tr>

            <?php endforeach; ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="panel panel-default">
      <div class="panel-heading">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <span>Recently Added Products</span>
        </strong>
      </div>
      <div class="panel-body">

          <div class="list-group">
          <?php foreach ($recent_products as  $recent_product) : ?>
            <div class="list-group-item clearfix">
              <div class="image-container">
                <?php if ($recent_product['media_id'] === '0') : ?>
                  <img class="img-avatar img-circle product-image" src="uploads/products/no_image.png" alt="" title="View Image" data-toggle="tooltip">
                <?php else : ?>
                  <img class="img-avatar img-circle product-image" src="uploads/products/<?php echo $recent_product['image']; ?>" alt="" title="View Image" data-toggle="tooltip" />
                <?php endif; ?>
              </div>
              <div class="product-details">
                <h4 class="list-group-item-heading">
                  <?php echo remove_junk(first_character($recent_product['name'])); ?>
                  <span class="label label-warning pull-right">
                    ₱<?php echo (int)$recent_product['sale_price']; ?>
                  </span>
                </h4>
                <span class="list-group-item-text pull-right">
                  <?php echo remove_junk(first_character($recent_product['categorie'])); ?>
                </span>
              </div>
            </div>
          <?php endforeach; ?>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Modal HTML -->
<div class="modal fade" id="imageModal" tabindex="-1" role="dialog" aria-labelledby="imageModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title" id="imageModalLabel">Product Image</h4>
      </div>
      <div class="modal-body">
        <!-- Image will be inserted here by JavaScript -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="row"></div>
<?php include_once('layouts/footer.php'); ?>

<script>
  $(document).ready(function() {
    // Initialize tooltips for all elements
    $('[data-toggle="tooltip"]').tooltip();

    // Add a click event listener to the product image
    $('.product-image').click(function() {
      var imageUrl = $(this).attr('src');

      // Show a modal with the image
      $('#imageModal').find('.modal-body').html('<img src="' + imageUrl + '" class="img-responsive">');
      $('#imageModal').modal('show');
    });
  });
</script>
