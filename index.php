<?php
$selected = "Home";
include "./components/header.php";
?>
<main class="flex flex-col gap-4 ">
  <h2 class="text-xl font-bold mt-2">Bagas Aditama</h2>
  <p>Hey, I’m Bagas. I’m  the Developer Web Pogram where I help developers build a faster web.</p>
  <div class="flex gap-4">
    <img src="./img/A11.2022.14322.jpg" alt="profile" class="w-24 h-24 rounded-full">
      <div class="flex flex-col gap-2">
      <?php 
      
      $socials=[
        [
          "title" => "Twittter",
          "url" => "https://twitter.com/bagasadt19",
          "class" => "fa-brands fa-twitter text-white  ",
          "link-class" => "duration-200 w-10 h-10 rounded-xl shadow-lg flex justify-center items-center  bg-gradient-to-tr from-blue-600 to-blue-500 hover:from-blue-700 hover:to-blue-500"
        ],
        [
          "title" => "Instagram",
          "url" => "https://www.instagram.com/bgs.adtmm/",
          "class" => "fa-brands fa-instagram text-white ",
          "link-class" => "duration-200 w-10 h-10 rounded-xl shadow-lg flex justify-center items-center bg-gradient-to-tr from-purple-600 to-yellow-400 hover:from-purple-500 hover:to-yellow-500 "
        ],
        [
          "title" => "Github",
          "url" => "https://github.com/bagasadtm",
          "class" => "fa-brands fa-github text-white ",
          "link-class" => "duration-200 w-10 h-10 rounded-xl shadow-lg flex justify-center items-center bg-gradient-to-tr from-gray-800 to-gray-600 hover:from-gray-700 hover:to-gray-500 "
        ]
        ];
      
      ?>
      <?php foreach($socials as $social) : ?>
      <a href="<?= $social["url"] ?>" class="flex gap-2 items-center hover:-translate-y-2 duration-200">
        <i class="<?= $social["class"]. $social['link-class']  ?>"></i> <span><?= $social['title'] ?></span>
      </a>
      <?php endforeach; ?>
    </div>
  </div>
  <p>here I want to develop and even hone in basic web programming 
while still learning and hoping to become a reliable programming developer      </p>
</main>
<?php include "./components/footer.php" ?>