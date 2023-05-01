<?php
require_once "lib/koneksi.php";

$slug = $_GET["read"];

$result = mysqli_query($db, "SELECT * FROM blog where slug='$slug' ");

if (!$result)
die("Query Error: " . mysqli_errno($db) . " - " . mysqli_error($db));

$article = mysqli_fetch_assoc($result);
$comments = mysqli_query($db, "SELECT * FROM comments where blog_id='{$article['id']}'");

var_dump($comments);

$article["views"]++;

mysqli_query($db, "UPDATE blog SET views={$article['views']} WHERE slug='{$article['slug']}'");

$selected = "Blog";
include "./components/header.php";
?>

<main class="flex flex-col gap-4">
    <h2 class="text-2xl font-bold"><?= $article["title"]; ?></h2>
    <div class="flex gap-2 items-center">
        <span class="px-2 py-1 bg-gray-800 rounded-md text-white"><?= $article["created_at"]; ?></span>
        <div class="flex-grow h-[0.5px] bg-gray-800 shadow-xl "></div>
    </div>
    <article class="my-2"><?= $article["body"]; ?></article>
    <div class="flex flex-col gap-2">
        <?php while($comment = mysqli_fetch_assoc($comments)) : ?>
            <div class="border border-gray-200 rounded-lg p-4 mb-4">
                <div class="flex items-center mb-2">
                    <div class="">
                        <p class="font-medium text-gray-800"><?= $comment['name'] ?></p>
                        <p class="text-gray-600 text-sm"><?= $comment['created_at'] ?></p>
                    </div>
                </div>
                <p class="text-gray-800"><?= $comment['content'] ?></p>
            </div>
        <?php endwhile; ?>
    </div>

</main>
<?php include "./components/footer.php" ?>