<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(1);
?>
<?php
  //Find the category by ID
  $categorie = find_by_id('categories',(int)$_GET['id']);
  if(!$categorie){
    $session->msg("d","Missing Categorie id.");
    redirect('categorie.php');
  }
  $categoryName = $categorie['name'];
?>
<?php
  $delete_id = delete_by_id('categories',(int)$categorie['id']);
  if($delete_id){
      $session->msg("s","Category '{$categoryName}' has been deleted.");
      redirect('categorie.php');
  } else {
      $session->msg("d","Categorie deletion failed.");
      redirect('categorie.php');
  }
?>
