<?php

require_once "../lib/koneksi.php";

$result = mysqli_query($db, "SELECT * FROM blog");

if (!$result)
    die("Query Error: " . mysqli_errno($db) . " - " . mysqli_error($db));

include "../lib/middleware.php";
setMiddleware(true);

include "../components/topdashboard.php"
?>
<div class="row">
    
    <?php while ($row = mysqli_fetch_assoc($result)) : ?>
        <div class="col-lg-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><?= $row["title"]; ?></h5>
                    <p class="card-text"><?= substr(strip_tags($row["body"]), 0, 200) ?>...</p>
                    <a href="edit.php?slug=<?= $row["slug"];  ?>" class="btn btn-primary">Edit</a>
                    <a href="delete.php?slug=<?= $row["slug"];  ?>" class="btn btn-danger">Delete</a>
                    
                </div>
            </div>
        </div>
    <?php endwhile; ?>

</div>
<a href="tambahpost.php" class="btn btn-primary">Add Post</a>
<?php include "../components/bottomdashboard.php"; ?>