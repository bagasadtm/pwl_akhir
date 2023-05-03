<?php
require_once "lib/koneksi.php";

$slug = $_GET["read"];

$result = mysqli_query($db, "SELECT * FROM blog where slug='$slug' ");

if (!$result)
die("Query Error: " . mysqli_errno($db) . " - " . mysqli_error($db));

$article = mysqli_fetch_assoc($result);
$comments = mysqli_query($db, "SELECT * FROM comments where blog_id='{$article['id']}' ORDER BY id DESC");


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
    <!-- comment form -->
    <hr>
    <div class="flex w-full items-center justify-center shadow-lg mb-4 rounded-lg mt-10">
        <form class="w-full border border-gray-200  bg-white rounded-lg px-4 pt-2" method="POST" action="comment.php?id=<?= $article['id'] ?>&blog=<?= $article['slug'] ?>">
        <div class="flex flex-wrap -mx-3 mb-6">
            <div class="w-full md:w-full px-3 mb-2 mt-2 flex flex-col gap-2">
                <input type="text" name="name" id="name" class="bg-gray-100 rounded border border-gray-400 leading-normal resize-none w-full py-2 px-3 font-medium placeholder-gray-700 focus:outline-none focus:bg-white" placeholder="Your Name Here...">
                <textarea class="bg-gray-100 rounded border border-gray-400 leading-normal resize-none w-full h-20 py-2 px-3 font-medium placeholder-gray-700 focus:outline-none focus:bg-white" name="body" placeholder='Type Your Comment' required></textarea>
            </div>
            <div class="w-full md:w-full flex items-start px-3">
                <div class="-mr-1">
                    <input type='submit' class="bg-white text-gray-700 font-medium py-1 px-4 border border-gray-400 rounded-lg tracking-wide mr-1 hover:bg-gray-100" value='Post Comment'>
                </div>
            </div>
        </form>
    </div>
    </div>
    <div class="flex flex-col gap-2  ">
        <?php while($comment = mysqli_fetch_assoc($comments)) : ?>
            <div class="border border-gray-200 shadow-lg rounded-lg p-4 mb-4">
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