<?php
require_once "lib/koneksi.php";

$query = "SELECT * FROM blog";

if (isset($_GET['search'])) $query = "SELECT * FROM blog WHERE title LIKE '%{$_GET['search']}%' OR body LIKE '%{$_GET['search']}%'";

$result = mysqli_query($db, $query);

if (!$result)
    die("Query Error: " . mysqli_errno($db) . " - " . mysqli_error($db));

$selected = "Blog";
include "./components/header.php";
?>

<main class="flex flex-col flex-grow gap-4">
    <h2 class="text-2xl font-bold">Blog</h2>
    
    <form method="GET">   
        <label for="default-search" class="mb-2 text-sm font-medium text-black-900 sr-only dark:text-white">Search</label>
        <div class="relative">
            <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                <svg aria-hidden="true" class="w-5 h-5 text-gray-500 dark:text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
            </div>
            <input type="search" id="default-search" name="search" class="block w-full p-4 pl-10 text-sm text-black-900 border shadow-lg rounded-lg bg-white focus:outline-none focus:ring-2 focus:ring-blue-800 focus:ring-opacity-50 duration-200" placeholder="Search article here..." value="<?= isset($_GET['search']) ? $_GET['search']: "" ?>" required>
            <button type="submit" class="text-white absolute right-2.5 bottom-2.5 bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-blue-600 dark:hover:bg-white   -700 dark:focus:ring-blue-800">Search</button>
        </div>
    </form>

    <?php while ($row = mysqli_fetch_assoc($result)) : ?>
        <a href="read.php?read=<?= $row["slug"]; ?>" class="flex flex-col gap-1 shadow-lg rounded-lg p-4 w-full">
            <h3 class="font-semibold text-gray-100 hover:text-white"></h3><?= $row["title"]; ?></h3>
            
            <p class="text-gray-400"><?= $row["created_at"]; ?> | <span class="text-sm"><i class="fa-sharp fa-solid fa-eye fa-sm"></i> <?= $row["views"]; ?> Views</span></p>
        </a>
    <?php endwhile; ?>
</main>
<?php include "./components/footer.php" ?>