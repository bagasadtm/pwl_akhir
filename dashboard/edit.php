<?php 

include "../lib/middleware.php";
setMiddleware(true);

$slug = $_GET['slug'];

include_once "../lib/koneksi.php";

$query = "SELECT * FROM blog WHERE slug = '$slug'";

$result = mysqli_query($db, $query);

if (!$result) 
  die("Query Error: " . mysqli_errno($db) . " - " . mysqli_error($db));

$post = mysqli_fetch_assoc($result);


include "../components/topdashboard.php"

?>
<form action="update.php" method="post">
  <input type="hidden" name="slug" value="<?= $post["slug"]; ?>">
  <div class="form-group">
    <label for="title">Title</label>
    <input type="text" class="form-control" name="title" id="title" placeholder="your title here..." value="<?= $post["title"];?>">
  </div>
  <div class="form-group">
    <label for="content">Konten</label>
    <textarea name="body" id="body" cols="30" rows="10"><?= $post["body"]; ?></textarea>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
<script>
    tinymce.init({
      selector: 'textarea',
      plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount checklist mediaembed casechange export formatpainter pageembed linkchecker a11ychecker tinymcespellchecker permanentpen powerpaste advtable advcode editimage tinycomments tableofcontents footnotes mergetags autocorrect typography inlinecss',
      toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | addcomment showcomments | spellcheckdialog a11ycheck typography | align lineheight | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
      tinycomments_mode: 'embedded',
      tinycomments_author: 'Author name',
      mergetags_list: [
        { value: 'First.Name', title: 'First Name' },
        { value: 'Email', title: 'Email' },
      ]
    });
  </script>
<?php
include "../components/bottomdashboard.php"
?>