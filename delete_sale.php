<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(3);
?>
<?php
  //Retrieve the sale details
  $d_sale = find_by_id('sales',(int)$_GET['id']);
  //Check if the sale exists
  if(!$d_sale){
    $session->msg("d","Missing sale id.");
    redirect('sales.php');
  }
  // Retrieve the product details of the sale
  $product = find_by_id('products', $d_sale['product_id']);

  // Check if the product exists
  if (!$product) {
    $session->msg("d", "Missing product id.");
    redirect('sales.php');
  }
  //Assign the value of $d_sale and $d_date to a variable $saleName and $saleDate 
  $saleName = $product['name']; // Product name
  $saleDate = $d_sale['date']; // Sale date
  ?>
  <?php
  //delete the sale
  $delete_id = delete_by_id('sales',(int)$d_sale['id']);
  //check if the sale was successfully deleted
  if($delete_id){
      $session->msg("s","Sale '$saleName' on '$saleDate' has been deleted. ");
      redirect('sales.php');
  } else {
      $session->msg("d","Sale deletion failed.");
      redirect('sales.php');
  }
?>
