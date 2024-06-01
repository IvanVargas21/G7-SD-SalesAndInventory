<?php
$page_title = 'All Product';
require_once('includes/load.php');
// Check what level user has permission to view this page
page_require_level(2);
$products = join_product_table();
?>
<?php include_once('layouts/header.php'); ?>

<!-- Style for low stock alert -->
<style>
  .low-stock-alert {
    background: #ffdddd;
    /* Light red background */
  }

  .modal-content img {
    width: 100%;
    height: auto;
    max-width: 600px;
  }

  .product-image.zoomed {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    z-index: 9999;
  }
  .img-avatar {
    cursor: pointer;
  }
</style>

<a id="top-of-page"></a>
<div class="row">
  <div class="col-md-12">
    <?php echo display_msg($msg); ?>
  </div>
  <div class="col-md-12">
    <div class="panel panel-default">
      <div class="panel-heading clearfix">
        <div class="pull-left" style="padding-top: 7px;">
          <strong>
            <span class="	glyphicon glyphicon-list-alt"></span>
            <span>Products Inventory</span>
          </strong>
        </div>
        <div class="pull-right">
          <a href="add_product.php" class="btn btn-primary">
            <span class="glyphicon glyphicon-plus-sign"></span> Add New
          </a>
        </div>
      </div>
      <div class="panel-body">
        <table class="table table-bordered">
          <thead>
            <tr>
              <th class="text-center" style="width: 50px;">#</th>
              <th> Photo</th>
              <th> Product Title </th>
              <th class="text-center" style="width: 10%;"> Categories </th>
              <th class="text-center" style="width: 10%;"> In-Stock </th>
              <th class="text-center" style="width: 10%;"> Buying Price </th>
              <th class="text-center" style="width: 10%;"> Selling Price </th>
              <th class="text-center" style="width: 10%;"> Product Added </th>
              <th class="text-center" style="width: 100px;"> Actions </th>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($products as $product) : ?>
              <!-- Check if product quantity is low and apply alert class -->
              <tr <?php echo ($product['quantity'] <= 10) ? 'class="low-stock-alert"' : ''; ?>>
                <td class="text-center"><?php echo count_id(); ?></td>
                  <td>
                    <?php if ($product['media_id'] === '0') : ?>
                      <img class="img-avatar img-circle product-image" src="uploads/products/no_image.png" alt="" title="View Image" data-toggle="tooltip">
                    <?php else : ?>
                      <img class="img-avatar img-circle product-image" src="uploads/products/<?php echo $product['image']; ?>" alt="" title="View Image" data-toggle="tooltip">
                    <?php endif; ?>
                  </td>
                <td> <?php echo remove_junk($product['name']); ?></td>
                <td class="text-center"> <?php echo remove_junk($product['categorie']); ?></td>
                <td class="text-center">
                  <?php echo remove_junk($product['quantity']); ?>
                  <!-- Display warning icon if quantity is low -->
                  <?php if ($product['quantity'] <= 10) : ?>
                    <span class="glyphicon glyphicon-warning-sign" title="Low Stock"></span>
                  <?php endif; ?>
                </td>
                <td class="text-center"> <?php echo remove_junk($product['buy_price']); ?></td>
                <td class="text-center"> <?php echo remove_junk($product['sale_price']); ?></td>
                <td class="text-center"> <?php echo read_date($product['date']); ?></td>
                <td class="text-center">
                  <div class="btn-group">
                    <a href="edit_product.php?id=<?php echo (int)$product['id']; ?>" class="btn btn-info btn-xs" title="Edit" data-toggle="tooltip">
                      <span class="glyphicon glyphicon-edit"></span>
                    </a>
                    <!-- this button will trigger modal for deletion-->
                    <button type="button" class="btn btn-danger btn-xs" title="Delete" data-toggle="modal" data-target="#deleteModal" data-id="<?php echo (int)$product['id']; ?>">
                      <span class="glyphicon glyphicon-trash"></span>
                    </button>
                  </div>
                </td>
              </tr>
            <?php endforeach; ?>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="9" class="text-center">
                <a href="#top-of-page" class="btn btn-info">
                  <span class="glyphicon glyphicon-arrow-up"></span> Return to the Top
                </a>
              </td>
            </tr>
          </tfoot>
        </table>
      </div>
    </div>
  </div>
</div>

<!--modal for image-->
<div id="imageModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body"></div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal" title="Close" data-toggle="tooltip">
          <span class="glyphicon glyphicon-remove"></span>Close
        </button>
      </div>
    </div>
  </div>
</div>

<!-- deletion confirmation  -->
<div id="deleteModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Confirm Deletion</h4>
      </div>
      <div class="modal-body">
        <p>Are you sure you want to delete this product? This action cannot be undone, and all data associated with this product will be permanently deleted.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" title="Cancel" data-toggle="tooltip" data-placement="top">Cancel</button>
        <a id="confirmDelete" class="btn btn-danger" href="#" title="Delete" data-toggle="tooltip" data-placement="top">Delete</a>
      </div>
    </div>
  </div>
</div>

<?php include_once('layouts/footer.php'); ?>

<script>
  // Initialize tooltips for all elements
  $('[data-toggle="tooltip"]').tooltip();

  //an event listener for delete modal
  $('#deleteModal').on('show.bs.modal', function(e) {
    var productId = $(e.relatedTarget).data('id');
    $('#confirmDelete').attr('href', 'delete_product.php?id=' + productId);
  });

  // add a click event listener to the product image
  $('.product-image').click(function() {
    var imageUrl = $(this).attr('src');

    // shows a modal with the image
    $('#imageModal').find('.modal-body').html('<img src="' + imageUrl + '" class="img-responsive">');
    $('#imageModal').modal('show');

    // Alternative: Zoom in the image
    // $('<img src="' + imageUrl + '" class="img-responsive product-image zoomed">').appendTo('body');
  });

  // a click event listener to close the modal or zoomed-in image
  $('#imageModal').on('hidden.bs.modal', function() {
    // Remove the image when the modal is closed
    $(this).find('.modal-body').html('');
  });
</script>