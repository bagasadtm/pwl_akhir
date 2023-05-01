<?php
require_once "lib/koneksi.php";

$result = mysqli_query($db, "SELECT * FROM blog");

if (!$result)
    die("Query Error: " . mysqli_errno($db) . " - " . mysqli_error($db));

$selected = "Blog";
include "./components/header.php";
?>

<main class="flex flex-col flex-grow gap-4">
    <h2 class="text-2xl font-bold">Blog</h2>
    <?php while ($row = mysqli_fetch_assoc($result)) : ?>
        <a href="read.php?read=<?= $row["slug"]; ?>" class="flex flex-col gap-1">
            <h3 class="font-semibold text-gray-100 hover:text-white"></h3><?= $row["title"]; ?></h3>
            
            <p class="text-gray-400"><?= $row["created_at"]; ?> | <span class="text-sm"><i class="fa-sharp fa-solid fa-eye fa-sm"></i> <?= $row["views"]; ?> Views</span></p>
        </a>
    <?php endwhile; ?>
</main>
<?php include "./components/footer.php" ?>