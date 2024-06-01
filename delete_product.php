<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
?>
<?php
  $product = find_by_id('products',(int)$_GET['id']);
  if(!$product){
    $session->msg("d","Missing Product id.");
    redirect('product.php');
  }
  //Assign Product Name to this variable $productName
  $productName = $product['name'];
?>
<?php
  $delete_id = delete_by_id('products',(int)$product['id']);
  if($delete_id){
      $session->msg("s","Product '{$productName}' has been deleted.");
      redirect('product.php');
  } else {
      $session->msg("d","Product deletion failed.");
      redirect('product.php');
  }
?>
