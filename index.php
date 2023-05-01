<?php
$selected = "Home";
include "./components/header.php";
?>
<main class="flex flex-col gap-4">
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
          "class" => "fa-brands fa-twitter"
        ],
        [
          "title" => "Instagram",
          "url" => "https://www.instagram.com/bgs.adtmm/",
          "class" => "fa-brands fa-instagram"
        ],
        [
          "title" => "Github",
          "url" => "https://github.com/bagasadtm",
          "class" => "fa-brands fa-github"
        ]
        ];
      
      ?>
      <?php foreach($socials as $social) : ?>
      <a href="<?= $social["url"] ?>" class="flex gap-2 items-center"><i class="<?= $social["class"] ?>"></i><span><?= $social["title"] ?></span></a>
      <?php endforeach; ?>
    </div>
  </div>
  <p>here I want to develop and even hone in basic web programming 
while still learning and hoping to become a reliable programming developer      </p>
</main>
<?php include "./components/footer.php" ?>