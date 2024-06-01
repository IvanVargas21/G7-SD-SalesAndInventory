<?php
$page_title = 'All Image';
require_once('includes/load.php');
// Check what level user has permission to view this page
page_require_level(2);
?>
<?php $media_files = find_all('media'); ?>
<?php
if (isset($_POST['submit'])) {
  $photo = new Media();
  $photo->upload($_FILES['file_upload']);
  if ($photo->process_media()) {
    $session->msg('s', 'photo has been uploaded.');
    redirect('media.php');
  } else {
    $session->msg('d', join($photo->errors));
    redirect('media.php');
  }
}
?>
<?php include_once('layouts/header.php'); ?>
<style>
  .img-thumbnail{
    cursor: pointer;
  }
</style>
<!--jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="row">
  <div class="col-md-6">
    <?php echo display_msg($msg); ?>
  </div>

  <div class="col-md-12">
    <div class="panel panel-default">
      <div class="panel-heading clearfix" style="padding-bottom: 5px ; padding-top:10px; ">
        <div class="pull-left" style="padding-top: 35px; padding-left: 20px">
          <strong>
            <span class="glyphicon glyphicon-camera"></span>
            <span>All Photos</span>
          </strong>
        </div>
        <div class="pull-right">
          <form class="form-inline" action="media.php" method="POST" enctype="multipart/form-data">
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-btn">
                <input type="file" name="file_upload" id="file_upload" multiple="multiple" class="btn btn-primary btn-file" title="Only .jpeg/.jpg/.png files are allowed." />
                </span>
                <button type="submit" name="submit" id="submit_button" class="btn btn-default">
                  <span class="glyphicon glyphicon-folder-open" id='icon_choose_file'></span>Choose File
                </button>
              </div>
              <div class="alert alert-info text-center mt-2" style="margin-top: 10px; margin-bottom: 0px; padding: 5px;">
                <em>Only .jpeg/.jpg/.png files are allowed.</em>
              </div>
            </div>
          </form>
        </div>
      </div>
      <div class="panel-body">
        <!--
        <div class="alert alert-info">
          Only .jpeg/.jpg/.png files are allowed.
        </div>
        -->
        <table class="table">
          <thead>
            <tr>
              <th class="text-center" style="width: 50px;">#</th>
              <th class="text-center">Photo</th>
              <th class="text-center">Photo Name</th>
              <th class="text-center" style="width: 20%;">Photo Type</th>
              <th class="text-center" style="width: 50px;">Action</th>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($media_files as $media_file) : ?>
              <tr class="list-inline">
                <td class="text-center"><?php echo count_id(); ?></td>
                <td class="text-center">
                  <img src="uploads/products/<?php echo $media_file['file_name']; ?>" class="img-thumbnail product-image" title="View Image" data-toggle="tooltip" />
                </td>
                <td class="text-center">
                  <?php echo pathinfo($media_file['file_name'], PATHINFO_FILENAME); ?>
                </td>
                <td class="text-center">
                  <?php echo $media_file['file_type']; ?>
                </td>
                <td class="text-center">
                  <button type="button" class="btn btn-danger btn-xs btn-delete-media" title="Delete" data-toggle="modal" data-target="#deleteModal" data-id="<?php echo (int) $media_file['id']; ?>">
                    <span class="glyphicon glyphicon-trash"></span>
                  </button>
                </td>
              </tr>
            <?php endforeach; ?>
          </tbody>
          <tr>
            <td colspan="9" class="text-center">
              <a href="#top-of-page" class="btn btn-info" onclick="topFunction()">
                <span class="glyphicon glyphicon-arrow-up"></span> Return to the Top
              </a>
            </td>
          </tr>
        </table>
        <!-- Return to Top Button -->
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
        <button type="button" class="btn btn-danger" data-dismiss="modal">
          <span class="glyphicon glyphicon-remove"></span> Close
        </button>
      </div>
    </div>
  </div>
</div>

<!--deletion confirmation-->
<div id="deleteModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Confirm Deletion</h4>
      </div>
      <div class="modal-body">
        <p>Are you sure you want to delete this photo? This action will remove the image of the product from the product inventory.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" title="Cancel" data-toggle="tooltip" data-placement="top">Cancel</button>
        <a id="confirmDelete" class="btn btn-danger" href="#" title="Delete" data-toggle="tooltip" data-placement="top">Delete</a>
      </div>
    </div>
  </div>
</div>

<script>
  $(document).on('click', '.btn-delete-media', function() {
    var mediaId = $(this).data('id');
    $('#confirmDelete').attr('href', 'delete_media.php?id=' + mediaId);
  });

  // script for image modal
  $(document).on('click', '.product-image', function() {
    var imageUrl = $(this).attr('src');
    $('#imageModal').find('.modal-body').html('<img src="' + imageUrl + '" class="img-responsive">');
    $('#imageModal').modal('show');
  });

  $('#imageModal').on('hidden.bs.modal', function() {
    $(this).find('.modal-body').html('');
  });

  document.getElementById('file_upload').addEventListener('change', function() {
    if (this.files.length > 0) {
      var fileName = this.files[0].name;
      var allowedExtensions = /(\.jpg|\.jpeg|\.png)$/i;
      if (!allowedExtensions.exec(fileName)) {
        alert('Please upload file having extensions .jpeg/.jpg/.png only.');
        this.value = '';
      } else {
        document.getElementById('submit_button').innerHTML = '<span class="glyphicon glyphicon-upload"></span> Submit';
      }
    }
  });
  // When the user scrolls down 20px from the top of the document, show the button
  window.onscroll = function() {
    scrollFunction()
  };

  function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
      document.getElementById("myBtn").style.display = "block";
    } else {
      document.getElementById("myBtn").style.display = "none";
    }
  }

  // When the user clicks on the button, scroll to the top of the document
  function topFunction() {
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
  }
</script>

<?php include_once('layouts/footer.php'); ?>