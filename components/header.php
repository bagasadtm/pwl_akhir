<?php
$menus = [
  [
    "title" => "Home",
    "url" => "index.php"
  ],
  [
    "title" => "About",
    "url" => "about.php"
  ],
  [
    "title" => "Blog",
    "url" => "blog.php"
  ]
  ];

?>
<!doctype html>
<html>
<head>
<script src="https://kit.fontawesome.com/6a98458780.js" crossorigin="anonymous"></script>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.tailwindcss.com"></script>
  <title>Bagas Aditama</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Tilt+Prism&display=swap" rel="stylesheet">
<style>
  .logo {
    font-family: 'Tilt Prism', cursive;
  }
</style>
</head>
<body class="bg-white text-black">
  <div class="w-8/12 mx-auto my-24 flex gap-4">
    <nav class="w-24 flex-shrink-0 flex flex-col gap-3">
      <header class="flex pb-5">
        <h1 class="font-bold text-6xl ml-3 logo" style="text-shadow: 2px 2px 2px rgba(0, 0, 0, 0.5);">B</h1>
      </header>
      <ul class="flex flex-col gap-2">
        <?php foreach($menus as $menu) : ?>
          <li><a href="<?= $menu["url"] ?>" class="<?= $selected == $menu["title"] ? "bg-gray-800 text-white hover:text-gray-500 shadow-lg rounded " : "text-gray-500 hover:text-black shadow-lg rounded " ?> rounded-md px-3 py-1 duration-200 font-semibold "><?= $menu["title"]?></a></li>
        <?php endforeach; ?>

      </ul>
    </nav>
    <div class="flex flex-col flex-grow gap-5 shadow-lg rounded p-10">
        <main>
