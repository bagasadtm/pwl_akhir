-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 04:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbjual`
--
CREATE DATABASE IF NOT EXISTS `dbjual` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbjual`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_brg` char(6) NOT NULL,
  `nm_brg` varchar(30) DEFAULT NULL,
  `satuan` varchar(10) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `harga_beli` double DEFAULT NULL,
  `stok` int(4) DEFAULT NULL,
  `stok_min` int(4) DEFAULT NULL,
  `gambar` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_brg`, `nm_brg`, `satuan`, `harga`, `harga_beli`, `stok`, `stok_min`, `gambar`) VALUES
('B-0001', 'HP', 'buah', 200000, 1780000, 5, 1, NULL),
('B-0002', 'Remote', 'buah', 50000, 45000, 100, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) UNSIGNED NOT NULL,
  `id_kategori` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `judul` varchar(100) NOT NULL DEFAULT '',
  `headline` text NOT NULL,
  `isi` text NOT NULL,
  `pengirim` varchar(15) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `judul`, `headline`, `isi`, `pengirim`, `tanggal`) VALUES
(2, 3, 'tahun politik', 'tahun politik 2018', 'tahun politik coy', 'paijo', '2017-12-08 11:35:34'),
(3, 3, 'Jokowi 2 Tahun', 'jokowi digadang2 2 periode', 'jkw vs ww', 'admin', '2017-12-13 09:34:15'),
(4, 1, 'Emas Ghiyatsi', 'Emas Taekwondo Ghiyatsi', 'Emas Taekwondo Ghiyatsi Ngudi Waluyo Cup 2017', 'admin', '2017-12-13 09:37:47'),
(5, 1, 'Liga Italia', 'Inter Capolista', 'Inter capolista', 'admin', '2017-12-13 09:38:48'),
(7, 3, 'Si Muda Perwira', 'Aplikasi si muda perwira', 'Aplikasi si muda perwira di launching 15-12-2022.\r\n', 'a71b', '2022-12-15 04:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `bukutamu`
--

CREATE TABLE `bukutamu` (
  `id` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `situs` varchar(30) NOT NULL,
  `pesan` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bukutamu`
--

INSERT INTO `bukutamu` (`id`, `nama`, `email`, `situs`, `pesan`, `waktu`) VALUES
(2, 'najwa aulia', 'najwa@gmail.com', 'najwa.com', 'haiiii', '2017-12-08 10:49:45'),
(3, 'paijo', 'paijo@gmail.com', 'http://paijo.com', 'holllaaaaa', '2017-12-08 11:08:41'),
(4, 'perwira', 'perwira@gmail.com', '', 'merokok membunuhmu', '2022-12-22 11:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(3) UNSIGNED NOT NULL,
  `nm_kategori` varchar(30) NOT NULL DEFAULT '',
  `deskripsi` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nm_kategori`, `deskripsi`) VALUES
(1, 'Olah Raga', 'olah raga'),
(3, 'Politik', 'politik');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `passwd` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `passwd`) VALUES
(1, 'ajib', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'najwa', 'f9e9b682232ab616ffde1efbb0e914d0'),
(3, 'aurel', '8ef6c91b0c669894af01d616ddf16519');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `bukutamu`
--
ALTER TABLE `bukutamu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bukutamu`
--
ALTER TABLE `bukutamu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `db_ais`
--
CREATE DATABASE IF NOT EXISTS `db_ais` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_ais`;

-- --------------------------------------------------------

--
-- Table structure for table `carousels`
--

CREATE TABLE `carousels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carousels`
--

INSERT INTO `carousels` (`id`, `filename`, `title`, `description`, `link`) VALUES
(1, '3.jpg', 'Nesciunt Ut Nesciunt Sequi', 'Est iure qui voluptate quibusdam vel. Reprehenderit et ut reiciendis sit ut. Eveniet ea dolorem ut velit rerum sequi.', '#'),
(2, '3.jpg', 'Minus Quo Non Qui', 'At rem voluptatem et quo.', '#'),
(3, '2.jpg', 'Dolor Sed Autem Voluptatem', 'Occaecati consequatur sequi suscipit dolor id deleniti nulla qui. Accusantium corporis consequatur nobis voluptate porro.', '#'),
(4, '1.jpg', 'Error Omnis Est', 'Commodi tempore ut alias dolorum aut eveniet. Non amet quo nisi est. Voluptas pariatur et praesentium.', '#'),
(5, '2.jpg', 'Sit Delectus Sint Consectetur', 'Labore adipisci nostrum eaque pariatur odit. Dignissimos quisquam quas accusantium modi similique.', '#');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Excepturi incidunt et qui aliquid harum sed amet?', 'Possimus dolor eligendi hic eius eum sunt. Quia deserunt consequatur iure vero laboriosam quibusdam. Accusantium eum sed ut modi vel tenetur. Consectetur voluptas quae maxime dignissimos officia consectetur dolor qui.\n\nVoluptatem quibusdam voluptatibus eaque sit. Voluptas ut inventore corrupti qui optio inventore. Esse eaque expedita adipisci reprehenderit mollitia. Tempora quae quis ex laudantium rem architecto ea.\n\nEt quod molestiae optio fugiat omnis. Et molestiae ut commodi fuga possimus. Libero vel quod et hic adipisci ea. Vero inventore molestiae reprehenderit inventore et laboriosam sunt qui. Non possimus nihil qui voluptatum ut repellat optio.\n\nAdipisci a sunt ut voluptas molestiae dolores. A rerum qui voluptatum commodi voluptatem. Iusto harum debitis consequuntur aut fugit animi. Molestias rerum nisi quia fuga magni similique.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(2, 'Quaerat omnis et quia et labore praesentium?', 'Dolorem neque quo magnam et. Commodi quae est ducimus et deserunt.\n\nEt ut rerum culpa neque. Tempore aperiam velit et similique eum enim. Illo maiores harum rerum cupiditate. Et a labore natus eum nostrum aspernatur.\n\nQuas nisi impedit porro. Sunt excepturi odio minima quia quia minus. Consectetur pariatur ut velit harum. Sit sed temporibus neque expedita ut sit.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(3, 'Et et quod porro id facere?', 'Natus nihil id et est incidunt delectus. Minus voluptas libero qui perferendis sapiente. Eum corporis rerum aut consectetur quam. Veritatis adipisci numquam magnam sed aliquam.\n\nPossimus quis nihil dolore a. Id nulla illum assumenda quas sit. Voluptas modi qui harum perspiciatis iure pariatur sed.\n\nFacilis corporis quis eos voluptatibus et voluptatem. Quia et at officiis officiis possimus assumenda porro.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(4, 'Mollitia dicta animi sint unde nihil?', 'Ex error cumque dolor sequi corrupti. Impedit labore aut harum voluptatem voluptatem autem fuga error. Perspiciatis qui veritatis saepe voluptas aut necessitatibus.\n\nQuas alias vel et minima quis rem vero. Corrupti numquam tempore laborum laborum. Rem exercitationem rerum voluptas.\n\nIpsam dolor voluptates et excepturi qui aut ex. Labore quod culpa facere et et ipsa vero. Dolores nostrum fugit cum odio. Quidem nostrum molestias fugiat ut.\n\nVel reprehenderit est sint aspernatur ut. Numquam eaque accusantium ut iure quis similique. Sed ut aliquid sed ut. Doloribus ipsam et a neque provident atque sed.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(5, 'Error qui quae ut quia numquam cum?', 'Esse nobis quis atque. Voluptate itaque distinctio facere nihil perspiciatis. Et et accusamus recusandae necessitatibus.\n\nQuia aut provident dicta modi quidem. Cum est molestiae ut consequatur et omnis. Autem iste quaerat labore expedita debitis eum.\n\nVoluptatem et et vel veniam animi. Non est alias sequi incidunt sed illo tempore. Autem at consectetur consequatur qui vero optio.\n\nEst hic ea sint rem. Qui eaque totam sit maiores nulla tempore in. Esse eum iste esse. Vel quas porro qui ut voluptatem.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(6, 'Eum nam provident reprehenderit perspiciatis dolor?', 'Deserunt et iusto quas repudiandae numquam. Voluptatem numquam et laborum eveniet impedit voluptas corrupti. Impedit deleniti nisi autem dicta nisi. Laudantium qui mollitia aspernatur.\n\nRerum occaecati voluptatem sunt. Quidem voluptas et repellendus ut ex aliquid ullam. Ad dolorem suscipit repellendus et consequatur. Vel voluptatum laborum et qui nesciunt.\n\nNemo minus molestiae aperiam facere dolores placeat illum. Odit consequuntur sequi optio unde. Fugiat excepturi sint illum et.\n\nCum ipsum laudantium doloremque aut. Accusantium aut in nihil quia dolor. Quibusdam enim natus quis est odit praesentium.\n\nAut ratione amet illo quia corporis illum. Vel omnis sit velit similique eligendi. Corporis ducimus et vitae impedit quo necessitatibus consequatur.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(7, 'Tempore exercitationem omnis dolorem voluptatem?', 'Cum unde voluptatem deleniti quasi deleniti. Est velit suscipit rerum distinctio perspiciatis et. Minus occaecati dicta consequatur aut.\n\nAliquid inventore dolore beatae enim sint. Est odit cum aliquam. Nihil blanditiis corporis eligendi architecto omnis eligendi porro. At nemo sit exercitationem veniam debitis.\n\nMinus quaerat accusamus qui beatae. Nihil nemo odio numquam dolorem ut eligendi ut. Sed velit dolorum laboriosam eos necessitatibus. Nisi sed quaerat quis corporis repellat in. Provident voluptas illo repellendus est facilis dolore consequatur.\n\nNobis saepe laudantium sed incidunt rerum repudiandae aut quia. Sit ad quisquam tenetur. Et porro perferendis ea.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(8, 'Laboriosam quis perspiciatis rerum fugiat?', 'Porro dicta adipisci animi est aliquam. Perspiciatis et consectetur mollitia molestiae aperiam. Minus consequatur rem et repellat.\n\nVero possimus ea sed ut aut. Vel eaque eius adipisci ut et qui voluptatum et. Odio aut beatae at natus nihil voluptatem. Et consectetur natus temporibus modi ad nihil aut.\n\nSequi assumenda iure eius deleniti qui ut et. Necessitatibus corporis porro repudiandae consequatur nihil et.', '2023-04-16 02:07:53', '2023-04-16 02:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `featured_tags`
--

CREATE TABLE `featured_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_tags`
--

INSERT INTO `featured_tags` (`id`, `title`, `icon_class`, `tag_id`) VALUES
(1, 'Beatae Aspernatur', 'fas fa-book', 4),
(2, 'Dolor Earum Sint', 'fas fa-book-open', 4);

-- --------------------------------------------------------

--
-- Table structure for table `footer_links`
--

CREATE TABLE `footer_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_links`
--

INSERT INTO `footer_links` (`id`, `name`, `link`) VALUES
(1, 'Quidem Omnis Omnis', 'quidem-omnis-omnis'),
(2, 'Voluptas Quisquam Et Debitis', 'voluptas-quisquam-et-debitis'),
(3, 'Dolorum Voluptates Et', 'dolorum-voluptates-et'),
(4, 'Sit Error', 'sit-error'),
(5, 'Ab Eligendi Corrupti Optio', 'ab-eligendi-corrupti-optio'),
(6, 'Sit Magni', 'sit-magni'),
(7, 'Ullam Tenetur', 'ullam-tenetur'),
(8, 'Eos Dolor', 'eos-dolor');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `link`) VALUES
(1, 'Home', 'home', '/'),
(2, 'Nulla Iusto', 'nulla-iusto', '#'),
(3, 'Et Eum', 'et-eum', '#'),
(4, 'In Officia', 'in-officia', '#'),
(5, 'Other', 'other', '#'),
(6, 'News', 'news', '/news');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_03_070046_create_menus_table', 1),
(5, '2021_08_03_071913_create_pages_table', 1),
(6, '2021_08_03_072336_create_sub_menu_titles_table', 1),
(7, '2021_08_03_072456_create_sub_menus_table', 1),
(8, '2021_08_03_073303_create_faqs_table', 1),
(9, '2021_08_03_073553_create_carousels_table', 1),
(10, '2021_08_03_073614_create_tags_table', 1),
(11, '2021_08_03_073849_create_posts_table', 1),
(12, '2021_08_03_084721_create_staff_table', 1),
(13, '2021_08_04_081924_create_footer_links_table', 1),
(14, '2021_08_04_101442_create_featured_tags_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `views`, `menu_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Illum Tenetur Vel Officia Ad', 'illum-tenetur-vel-officia-ad', 398, 2, 'Doloribus rem sit corporis doloremque esse deserunt. Voluptatem dignissimos molestiae qui quae inventore quisquam pariatur. Incidunt fugiat voluptatibus praesentium voluptatem et voluptate repudiandae animi.\n\nUllam aut molestiae ut dolor et error ea. Autem et rerum iste doloremque voluptatem suscipit sequi. Quaerat aut corrupti ut id esse nulla.\n\nVoluptatibus vel quia laudantium qui facere odio. Facere id explicabo totam in qui recusandae. Sint fugiat dolorem est ut. Nemo voluptatem enim placeat et iure enim. Qui est dolorum porro sit explicabo ipsum dicta.\n\nSequi id illum officia temporibus labore nemo. Sit voluptatibus neque excepturi blanditiis qui. Quia asperiores explicabo expedita iste velit quo.\n\nDoloribus totam libero a optio ut itaque. Nihil eum aut nisi dolorem. Animi vero molestiae impedit dolore commodi cum.\n\nNemo possimus aspernatur voluptatem beatae est fugit et. Nesciunt voluptates qui tempore ut placeat id. Quia inventore quidem aut rerum at saepe.\n\nVoluptatem in reiciendis voluptas. Ullam eum voluptatem cupiditate est qui quisquam soluta. Sint quia quas voluptatem cupiditate. Reiciendis voluptas quibusdam ut molestiae vitae.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(2, 'Commodi Consequatur Dolorem Sint Facilis', 'commodi-consequatur-dolorem-sint-facilis', 219, 2, 'Et harum vitae ipsa. Iusto adipisci fuga eum blanditiis sed et. Et et deleniti eveniet omnis molestiae ut ipsa dolorem.\n\nEx minima vel iste dolor voluptatum accusantium omnis minima. Sit corporis enim eos. Sint temporibus suscipit porro sed voluptas inventore eum. Corrupti rerum rerum enim perferendis nam natus temporibus.\n\nDolorum dolorum magnam corrupti quibusdam in voluptas. Eligendi esse quae est consequatur. Labore sit rerum dignissimos sunt rerum. Molestiae iure distinctio est cum dolorem dolorum non.\n\nIpsum iure rem ab. Voluptas nihil unde minima sequi corporis. Voluptate iusto voluptatem consequatur minima dolores. Consequatur blanditiis velit optio porro dolore sunt. Ex porro illum velit itaque.\n\nEa illo voluptas omnis qui velit optio. Asperiores sed aut officia aut. Vel ad eveniet eveniet consequatur. Enim sed deserunt non qui sunt sed.\n\nEnim animi eum non repudiandae possimus voluptatem labore. Aut quo non aspernatur eum et consectetur. Hic sunt tempore dolorem qui placeat sint. Animi et qui ea.\n\nAsperiores commodi pariatur voluptatibus porro. Et tempore ipsa a nam. Nisi amet asperiores in natus eos vel consectetur.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(3, 'Aspernatur Ut', 'aspernatur-ut', 409, 2, 'Enim officia perferendis ad rerum rerum veritatis. Officia incidunt rerum cumque odio dicta aut. Expedita qui nam iure incidunt excepturi. Consequatur ullam voluptate rerum aut.\n\nVeritatis et in reprehenderit corporis. Sed consequatur odio iusto quisquam non nihil ut. Repudiandae sed et vitae molestiae cumque rem sint. In voluptatum aut ipsam soluta quia deserunt et.\n\nAspernatur accusantium qui culpa atque non occaecati. Et qui facere impedit et iusto vitae aut. Eos nemo eligendi animi. Et qui architecto facere nesciunt sapiente et ad porro.\n\nEa officiis laborum soluta et doloremque. Corrupti dolores blanditiis distinctio numquam. Iste veniam earum molestiae cum quae accusamus. Molestiae aperiam sunt voluptate unde id dolore.\n\nEsse nesciunt nulla nobis. Quisquam ea perspiciatis necessitatibus veritatis et amet. Aliquam fuga modi maxime aut. Ad quaerat ad asperiores eligendi nam deleniti.\n\nIn dolor maiores placeat magnam quos doloribus. Accusamus dolorem enim omnis in et.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(4, 'Deleniti Adipisci', 'deleniti-adipisci', 611, 2, 'Consequatur sint modi quia iusto quidem recusandae enim et. Quasi aut et maxime aliquam dignissimos. Deleniti fugiat excepturi sapiente deserunt.\n\nExcepturi voluptatem distinctio culpa dolor ab aspernatur. Expedita nobis sed aperiam maxime. Labore adipisci alias et sint illum laboriosam.\n\nOdio consequuntur vitae consequatur deleniti magni vel doloremque culpa. Quia ut ut cupiditate veniam eius sit rem magni. Culpa molestias officia alias in.\n\nSuscipit officiis sed laborum expedita quo vel accusantium eos. Dolor non aperiam assumenda rerum nisi et perferendis. Fuga magni sint suscipit iusto ullam voluptate rerum. Quia quis pariatur minus dolor ut expedita. Rem laboriosam consequuntur voluptas molestias ut et mollitia laboriosam.\n\nExcepturi quae ut omnis harum. Dolorem nemo neque consequuntur natus ex veritatis sed. Cum voluptas expedita aut alias officiis est.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(5, 'Soluta Eum Inventore Quod', 'soluta-eum-inventore-quod', 686, 2, 'Perspiciatis tempora omnis aliquam quo soluta. Minima harum sapiente rerum eum assumenda.\n\nIllum a et est iure qui. Alias aut doloremque vitae quia sint. Consequatur veniam iste hic earum sed adipisci.\n\nUllam voluptatem ullam quia molestiae vel sit. Quidem natus repellat magni sed aperiam. Est nesciunt esse harum cum qui magnam labore.\n\nDelectus autem et voluptates temporibus provident. Similique voluptates perspiciatis non autem odio. Explicabo iusto laborum labore aliquid unde repudiandae aspernatur. Doloribus reiciendis dolores minus quasi nemo ipsum qui.\n\nHarum hic qui magnam et. Officiis ut ratione eos. Corporis qui voluptas earum. Iste eaque et aut voluptatem assumenda vitae ut.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(6, 'Eum Excepturi Rerum', 'eum-excepturi-rerum', 392, 2, 'Nobis mollitia reiciendis porro. Aspernatur aliquam ab sint qui culpa. Fugiat non id neque ut itaque commodi. Facere veritatis ut ad rerum beatae optio.\n\nQuos asperiores blanditiis corrupti ut. Id sequi asperiores rerum quaerat quam et voluptate. Veniam repellendus earum beatae dicta.\n\nIllum quaerat tenetur voluptatibus nihil beatae reiciendis delectus culpa. Omnis est saepe quidem rerum molestiae et.\n\nNulla quia tempore et deleniti sunt distinctio necessitatibus. Provident deleniti accusamus modi. Dolorem vitae eos quia eligendi magnam deserunt. Error omnis accusantium vero totam.\n\nAutem culpa odio necessitatibus rerum. Quas rerum eum voluptates vel quisquam aliquid recusandae. Et officia voluptate explicabo. Maxime sunt repudiandae vitae quod consequatur.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(7, 'Ex Voluptas Consequatur Eos Et', 'ex-voluptas-consequatur-eos-et', 961, 3, 'Vel assumenda ut in quia dolorum. Quia et voluptatem occaecati soluta ut voluptates. Sed et quo et voluptatem similique nesciunt. Et exercitationem quia ducimus rerum vero enim harum velit.\n\nSuscipit fuga animi aliquid officia excepturi. Nihil omnis architecto molestiae sequi provident inventore. Itaque assumenda provident reprehenderit minus harum possimus.\n\nMagni doloremque doloremque natus alias consequatur nulla. Quae fugiat amet eos laboriosam aut. Aut repellat consequatur et impedit eveniet sunt voluptatem.\n\nEt vero soluta molestiae voluptatibus voluptatem. Aut unde et quibusdam velit sequi. Cupiditate similique dolores quia eos.\n\nEsse sit deserunt quis quia ab illum nemo doloribus. Voluptas vel molestiae qui ipsum in deserunt. Praesentium quia ut laboriosam ad. Nam adipisci quidem ipsum reprehenderit maxime minima laborum. Qui nihil et ad quis reprehenderit velit dolor.\n\nNesciunt repudiandae eum id eum. Atque debitis at iste aut. Fuga in recusandae atque qui ut.\n\nQuas est voluptas veritatis quia repudiandae. Ratione est rerum provident possimus et quae. Occaecati quasi possimus ullam. Aut dicta aspernatur fuga et beatae quis sit iusto. Doloremque quaerat omnis et nostrum.\n\nOfficiis quisquam quia culpa pariatur. Quia atque saepe consequatur sint. Numquam enim dolores sed vel sed ut qui id. Et et voluptatem ad alias sint labore.\n\nAdipisci qui autem et. Nostrum quasi sed vitae fugit. Quis et blanditiis vel dolorem fugit aut necessitatibus dolore.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(8, 'Magnam Aut', 'magnam-aut', 378, 3, 'Atque ut molestiae et molestiae. Sit eos et rerum veniam est. Qui maxime corporis aspernatur iste voluptas magni et aspernatur.\n\nVoluptatibus cupiditate sed dolores odio laborum maiores. Soluta soluta qui fugiat nostrum ipsa dicta. Perferendis voluptates reprehenderit eos. Eum nisi maiores blanditiis repudiandae. Fugit et reiciendis iste veritatis aut eius.\n\nEa molestias animi aut eaque. Ab pariatur cupiditate aperiam aliquam vel. Omnis quaerat labore expedita optio. Blanditiis quia qui in qui quas.\n\nEsse ex minima totam delectus ut expedita occaecati qui. Voluptatem magnam accusamus fugiat illo.\n\nQuo quae et quia et. Sed accusamus illum explicabo. Est et cum dolores facere.\n\nConsequatur quaerat ipsam minus odit. Vero ipsa dignissimos et illo hic. Ut delectus quo deleniti quaerat. Temporibus eveniet quaerat et debitis.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(9, 'Aut Expedita Animi Saepe', 'aut-expedita-animi-saepe', 807, 3, 'Et ipsa consequatur dicta. Quia assumenda omnis unde quam tempora et. Ea a in natus occaecati architecto. Dolores nihil et optio ipsum quisquam fugiat.\n\nFacilis debitis repellendus qui eum reiciendis quibusdam aperiam voluptas. Repellendus qui occaecati odio consequatur temporibus perspiciatis tenetur. Vel tempore voluptates quia natus beatae. Fuga perspiciatis eligendi adipisci soluta ipsam sed repellendus.\n\nQui aliquid tenetur est cum doloribus sint nemo. Expedita ea numquam suscipit quod aspernatur placeat quos. Dolor qui asperiores at voluptate nulla.\n\nNatus nesciunt ipsum dolor et dolores et et a. Eaque est numquam quia perferendis. Molestias ab quia quo quaerat ducimus id.\n\nQuam nostrum omnis fuga cum ipsam totam corporis. Expedita quibusdam aspernatur eius dolorum quo. Et nesciunt nulla similique porro consequatur est. Sed quia voluptatum velit molestiae molestias quidem.\n\nEnim quidem voluptatibus similique modi. Autem ut quia ab optio odit quia. Dolor rerum quos magnam architecto voluptas.\n\nAtque iure et ut dolor et. Ipsum ducimus non placeat voluptates provident eveniet. Dolorem dolor iure est eum quas.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(10, 'Quo Molestias Accusantium', 'quo-molestias-accusantium', 956, 3, 'Et reiciendis dolor dolores qui sit. Nulla facere voluptatibus sed itaque ullam ducimus. Ipsa quia error consequatur sed. Cupiditate labore perspiciatis inventore eum aperiam sed.\n\nVoluptas fugit recusandae voluptatum quisquam odit et ut. Sequi nihil incidunt est nemo expedita est. Quas sapiente voluptas eveniet perferendis similique perspiciatis non.\n\nMolestiae quia quisquam tempore odio qui. Atque delectus tenetur eveniet et. Quasi animi maiores hic temporibus tenetur quo corrupti dignissimos.\n\nAccusantium nostrum dolorum excepturi dolorem autem accusamus omnis. Dolor explicabo qui eos dolorem illum porro. Dolorum unde ipsa ut doloribus in soluta et.\n\nPorro debitis perferendis aut hic facilis aut quisquam ut. Esse laborum aspernatur quo dolorem dolorum. Deserunt aut dolores laboriosam quas rerum quia. Numquam eum vitae harum ut commodi numquam.\n\nFuga exercitationem sequi ex cumque. Dolorum eaque ipsam aspernatur est ipsa. Ab autem tempora saepe atque illum ab.\n\nVoluptatem facilis ex quo modi consequuntur id consequuntur sit. Minima sunt fuga omnis. Ut similique rerum expedita vel ipsum non. Omnis quas iure optio.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(11, 'Fuga Voluptatem Magni Similique Atque', 'fuga-voluptatem-magni-similique-atque', 340, 3, 'Et perspiciatis nihil aut nostrum sit. Vel accusantium nobis quis aut in assumenda. Officia expedita natus omnis tempore officia nemo quisquam non.\n\nQuibusdam autem quam ipsa molestiae consectetur. Quidem esse nisi ut non qui pariatur. Quo eum autem voluptatem illo sapiente accusantium eaque. Molestiae consectetur suscipit sed quibusdam nihil pariatur occaecati at.\n\nEt consequuntur numquam facilis velit commodi tenetur esse libero. Ratione consequuntur rerum veniam iusto. Enim aliquid rerum nostrum voluptas. Et eos eum consequatur nihil non aut aut.\n\nReprehenderit tempora eum quisquam ratione aut. Ratione id voluptate sit cum asperiores fuga dignissimos. Esse labore hic accusantium omnis est alias consequatur. Error non reprehenderit repellat ut dolores neque. Iure sint quam rerum quia.\n\nDolores nobis libero amet quasi dolore qui vel. Veritatis in deleniti dignissimos nemo rem. Amet saepe est dolorem quibusdam iusto voluptatem id qui. Voluptas quasi est eum amet ut porro non.\n\nAutem eligendi odit minima harum voluptatum qui. Culpa sequi quis maxime corrupti. Et ut facilis consequatur necessitatibus rerum deleniti. Rerum quos odit error est sapiente amet voluptas.\n\nQuo qui tempora magnam fugit deleniti et et. Facere commodi delectus in sequi. Neque ullam enim velit dolores magni voluptas. Beatae omnis nemo id eos tempora nostrum quia.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(12, 'Omnis Commodi', 'omnis-commodi', 518, 3, 'Alias labore molestias in voluptatem qui corporis. Quia eveniet omnis omnis repellendus voluptatem fugit. Ut corporis id ipsum et nobis.\n\nCum eos consequatur sunt voluptatibus et dolor libero. Beatae quia sunt ad illum. Ex nulla soluta pariatur est rerum laudantium mollitia quis. Iste natus ipsa magni est.\n\nMinus suscipit id enim voluptas eligendi sequi eum. Neque non natus qui qui ut et eligendi labore. Est rerum eaque veritatis officia.\n\nUt nostrum quaerat aliquid. Eum aut velit temporibus expedita a reprehenderit ducimus. Magni est asperiores eligendi dolorem repellendus sunt.\n\nDebitis consequatur odit sit nobis rerum ducimus dicta. Nemo iure cumque et sed est. Rerum labore earum qui iste. Quia accusantium dignissimos nesciunt ut tenetur alias aspernatur.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(13, 'Quisquam Sed Vero Tempora Numquam', 'quisquam-sed-vero-tempora-numquam', 657, 3, 'A accusantium sed sed est aut velit. Natus aperiam id eveniet ducimus qui qui quia itaque.\n\nInventore nihil iste quas soluta rem iure rerum. In quia eius earum maiores occaecati ea autem. In provident inventore est aut unde adipisci omnis. Ut maxime et quia et placeat. Sed aperiam eos voluptatem fugiat delectus.\n\nAut sit unde dolorum incidunt sapiente quisquam libero enim. Corrupti voluptate iste aut ut eligendi. Quibusdam eum consequuntur occaecati est unde. Quia molestias repellat nobis quia velit voluptas.\n\nVero minima ex a quam dolorem. Illo harum blanditiis esse eveniet perferendis. Et ea eum mollitia repellat.\n\nBeatae quis sunt quia pariatur aspernatur architecto. Facere voluptatem ipsa suscipit est assumenda totam. Quia earum cum modi consequatur. Ea voluptates libero deserunt officiis et vero recusandae.\n\nMagni quisquam est cupiditate fuga impedit illo aut. Atque eos suscipit cum fuga sequi itaque. Repellat et et voluptatum cupiditate reprehenderit ut. Alias fuga sunt dolorum consequatur dicta. Enim pariatur nihil voluptas facere saepe accusantium doloremque.\n\nAut accusamus voluptatum voluptatem. Aut ad perspiciatis asperiores repellat. Animi qui repellat voluptate voluptatum laudantium. Animi reprehenderit qui quam deserunt repellat aspernatur autem.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(14, 'Reiciendis Vel', 'reiciendis-vel', 546, 3, 'Vero id quae in non. Officiis voluptatum et rerum deleniti quis eum id quia. Tempore ullam est maiores veritatis placeat sed provident. At impedit libero enim.\n\nRem eum sequi rem et cum. Temporibus dolorem distinctio nam est. Officia voluptas reprehenderit sed labore fuga dicta.\n\nSequi illo qui nisi. Est sit doloremque accusamus nam et aut. Suscipit doloremque veniam temporibus enim quia soluta. Quisquam ducimus et corrupti exercitationem porro ea.\n\nQui maiores aut quam dolores libero. Eos aut et ex ullam placeat autem totam quis. Rerum dolores rerum sed debitis odit.\n\nNon sed neque aspernatur dolores eos. Repellendus distinctio velit laboriosam. Nostrum vitae sequi possimus animi provident aut.\n\nQuia fugiat odio repellat saepe eveniet rerum. Tenetur aspernatur aspernatur sit porro ipsum molestiae ut. Temporibus nulla eos placeat perspiciatis. Reprehenderit et nam laudantium doloremque tempore voluptas. Explicabo eaque tempore earum officia sit.\n\nNon corrupti ut sed qui non ad. Consequatur rerum aut sit unde incidunt cum. Animi voluptas possimus et praesentium. Dignissimos sit debitis qui veritatis rerum quia architecto.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(15, 'Qui Repudiandae Id', 'qui-repudiandae-id', 498, 3, 'Tempora eum tempora quis eum qui. Repellat est sed consequatur sunt nostrum et. Sed minus eaque non asperiores quibusdam et esse. Rem assumenda quidem quod ducimus et ad provident. Impedit hic ea rerum laboriosam assumenda qui ea sunt.\n\nVel ex quod neque et. Ea eos voluptas officiis voluptatem facilis. Recusandae amet deleniti ut porro facere eaque laborum.\n\nNihil unde quis alias harum expedita. Harum molestiae consequatur minima. Et nesciunt deleniti cum modi itaque labore. Porro quibusdam harum impedit optio ut et molestiae.\n\nRepellat sit asperiores amet molestiae iste. Et et corporis odio nulla omnis. Cumque expedita et corrupti qui est dolorem.\n\nEst est ut sed commodi voluptates qui perspiciatis incidunt. Necessitatibus accusamus a accusamus ea minus blanditiis non. Quo quia quis non qui quasi quia.\n\nMaiores quod nostrum laudantium et autem. Ut velit dolor illo doloremque est suscipit. Culpa pariatur voluptatem autem ab eius quos. Rerum fugit aut molestiae facere et est accusamus eaque.\n\nIpsa sed facilis cum incidunt omnis inventore. Temporibus consequatur suscipit voluptas ea commodi quisquam vel id. Beatae neque quia ipsum autem est excepturi et. Aliquam repudiandae saepe enim culpa et aut dolores qui.\n\nAliquam nulla ipsam tempore consectetur in iusto. Veniam ea consectetur aliquid facilis. Sed cumque quia autem.\n\nUt qui nihil sint dolores libero. Sint a laudantium vero error. Aspernatur cum nostrum ut fugit qui quia.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(16, 'Vel Omnis Impedit', 'vel-omnis-impedit', 681, 3, 'Laboriosam atque corrupti reprehenderit id et fuga ea. Velit fugiat enim veritatis labore placeat. Cumque animi veniam reprehenderit eos voluptatibus odit. Totam sit voluptate et voluptatibus.\n\nCumque architecto aliquam molestiae inventore perspiciatis. Architecto molestiae sunt quibusdam est voluptas. Ipsam placeat consequatur blanditiis tempora dolores omnis. Explicabo voluptates dolor similique non qui.\n\nQuia in fuga in expedita voluptate quia et iste. Fugit ea soluta esse. Ipsa qui quis optio aliquid et temporibus et impedit.\n\nPerferendis a velit magni aut aliquam quam. Ad alias ratione qui ut sequi id nemo optio. Commodi culpa sit enim in error molestias provident.\n\nAut officia magnam rerum eaque voluptas. Iure quo commodi est odio nihil excepturi vel sint. Deserunt et accusamus harum totam ut dolorem ex.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(17, 'Exercitationem Tenetur Quia Sit Pariatur', 'exercitationem-tenetur-quia-sit-pariatur', 316, 3, 'Doloribus sapiente odio dignissimos sit facilis aut. Unde quas pariatur ipsa corrupti nihil fugit quos. Deserunt aut exercitationem saepe sunt reprehenderit amet consequatur non. Non ullam totam possimus dolorem numquam maiores porro architecto. Magnam eos corrupti voluptatum hic quia.\n\nFugiat dolores ea doloribus consequatur. Deleniti molestiae non quia velit nobis dolore. Distinctio nulla molestiae et sint.\n\nOmnis magnam quibusdam optio quos nemo quidem. Perferendis aspernatur tempore ducimus excepturi. Ducimus maiores ipsam tenetur. Eius occaecati nulla tempore.\n\nNon neque ullam nam voluptas quas quia. Autem pariatur rem voluptatem et in alias accusantium. Sint dolorem ut et non aperiam. Sit repellat quia aut nesciunt quod quaerat.\n\nEsse neque sint vero animi molestiae velit qui. Corporis ducimus unde aut amet illum at. Cum et doloribus officia consequuntur modi.\n\nNatus ut quod velit et aut tenetur. Saepe fuga dolor aliquam quidem maiores. Molestiae velit dolore facilis. Ipsum aperiam ut voluptates quo blanditiis saepe asperiores. Aut ut voluptatibus et architecto sunt minima.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(18, 'Id Eius Temporibus Et Et', 'id-eius-temporibus-et-et', 422, 3, 'Distinctio dolorum explicabo ut laudantium rerum. Sint dolorem ut hic similique et eos ipsum. Doloribus placeat animi earum possimus facere et omnis.\n\nEsse aut ex quis laborum. Ut quibusdam maxime voluptate et adipisci. Vero rem quam rem suscipit a incidunt animi praesentium.\n\nDeleniti qui qui temporibus eius. Eum dolores adipisci voluptas illum et.\n\nUt mollitia corporis libero optio. Quos voluptatum eum enim aliquam. Beatae nulla tempora quae inventore praesentium. Vero velit dolores rerum quia sapiente.\n\nHarum voluptas dolorem ut quasi sapiente assumenda et laudantium. Amet voluptatibus eos aliquid. Nam sit doloremque amet nihil qui ullam tempore sunt. Qui quidem nobis ut temporibus sit sunt.\n\nNon error quidem id reiciendis officiis. Dolorem corporis incidunt minus omnis error corrupti qui. Quam excepturi beatae occaecati consequuntur quia rerum possimus.\n\nNesciunt quisquam est sed asperiores cumque quas sapiente adipisci. Voluptatem qui reiciendis aut sint repudiandae ipsa animi. Id tempora quia voluptatem soluta velit at.\n\nAutem soluta vel voluptas qui. Voluptatem et at magnam consequuntur quae. Asperiores sit esse nisi est rerum perspiciatis et. Voluptas optio quae exercitationem sit facere non.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(19, 'Consectetur Expedita Saepe Beatae', 'consectetur-expedita-saepe-beatae', 562, 4, 'Ullam assumenda quis deserunt ratione dolor officiis. Quaerat inventore pariatur eum nostrum qui tempora. Velit rem rerum unde saepe iure. Facilis labore voluptas et autem expedita.\n\nEligendi optio labore non dolores aut in. In repellendus voluptatem est molestiae qui autem velit. Iusto vitae iste reiciendis velit voluptas eos consequatur.\n\nRerum quae provident atque nihil. Hic ut eaque molestiae dolorum blanditiis et. Rem quibusdam voluptatibus est. Quis voluptas officiis autem est. Qui illo minima numquam quisquam dolorem sit provident.\n\nNumquam eaque voluptatibus id accusantium ipsum error. Beatae dolore veritatis corrupti facere aperiam et quam. Expedita qui nostrum vel aut fugiat.\n\nDolor et voluptatem ratione nulla ut doloribus eveniet autem. Aut dolore omnis incidunt dolor deleniti neque molestiae. Est nihil fugiat eveniet natus. Odio veritatis qui velit labore ipsum saepe.\n\nPraesentium cupiditate dolor ut consequatur. Et eum id consequatur aliquam veritatis. Consectetur perspiciatis illo asperiores ut doloribus.\n\nIure doloribus doloremque ad. Ea rem est qui laboriosam consequatur ut dolorem. A illo magnam architecto rerum quia autem autem.\n\nOdio provident ratione quia officiis. Error et rem esse consequatur aut pariatur quasi fugit. Assumenda est recusandae dolorum dolorem.\n\nOptio molestias distinctio non neque minima fuga. Aperiam hic animi ut rerum. Rerum non cumque et cupiditate.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(20, 'Aut Dolorum Excepturi Tenetur', 'aut-dolorum-excepturi-tenetur', 905, 4, 'Eveniet alias molestiae laboriosam quaerat quis cupiditate beatae. Animi rem quae optio architecto error. Autem aut aut minus vitae qui.\n\nOdit blanditiis porro quo corrupti. Odio quasi qui delectus sed consectetur. Harum esse dolorem fuga harum nihil. Quasi quia minus dolorum vel a eos voluptas.\n\nAliquid eaque accusamus ratione dolore nulla omnis sunt. Ex necessitatibus repellat aperiam reiciendis sed exercitationem. Soluta mollitia minima enim et omnis.\n\nEum cumque aut est voluptatum quam. Eaque aut est molestiae aut in voluptas placeat est. Odit eligendi et odit enim fugiat et omnis.\n\nNon fugiat ducimus velit sed quam cumque. Voluptatibus quaerat saepe sed delectus et. Excepturi vitae ea facilis voluptatem. Vero eaque ab qui omnis accusantium.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(21, 'Blanditiis Debitis', 'blanditiis-debitis', 191, 4, 'Aut et asperiores impedit delectus. Doloremque expedita enim possimus aut dolores sequi tempore. Suscipit accusamus sit modi dolores enim itaque. Rerum officia accusamus itaque dolores non. Doloribus autem sed numquam voluptatem et sapiente.\n\nNisi id voluptatem vero aliquid soluta cum voluptas amet. Aliquid ea aspernatur et porro veniam esse. Dolorem ut in eligendi doloribus ipsam cum. Autem dolorem quo aut.\n\nUt qui harum quo eveniet ex aperiam esse. Debitis libero voluptate magni quis aut. Et sint fugit molestias sed consectetur repudiandae.\n\nDolor blanditiis dolor quo quia dicta natus. Blanditiis repellat voluptas aut. Perferendis officia deleniti distinctio.\n\nNisi nam odit illum perferendis optio iure animi. Nesciunt cumque aspernatur voluptatibus voluptas sed quod quia. Ullam est natus ut nemo nihil consequuntur eveniet.\n\nSaepe error perspiciatis provident est non ut autem. Amet est accusamus alias rem veritatis tempora. Exercitationem eum sint expedita et molestiae non temporibus. Voluptate doloribus atque sint et.\n\nDolore eveniet corporis voluptatem officiis. Minus quos ut est qui odio quas eveniet accusantium. Ad laudantium molestiae praesentium id.\n\nNatus consequatur quidem corporis nihil nihil nihil. Consequuntur quia quas quia aliquid maiores rerum. Ut odit quisquam nulla aliquid deleniti est aut est.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(22, 'Repudiandae Quo', 'repudiandae-quo', 764, 4, 'Esse omnis veniam architecto non. Voluptas et fuga fuga vero provident aut. Consequatur ullam esse nisi dolore et minus quam voluptas.\n\nAperiam possimus minima cumque. Recusandae hic architecto quia. Culpa sit nam saepe impedit animi quidem.\n\nSoluta tempore quia voluptate et. Exercitationem quasi laborum ut quidem minus optio sequi. Veniam perspiciatis commodi maxime. Rerum rerum fuga aspernatur quas nihil. Et reiciendis libero beatae ut fugit.\n\nAccusamus aliquam cumque asperiores illum in eum autem quidem. Eligendi cum ullam nobis sed iure. Consequatur quis exercitationem esse nesciunt. Autem vel possimus illum et odit voluptas.\n\nUnde iure sequi asperiores rerum ad. Quia saepe in rerum officia quia praesentium ad. Sint modi ducimus est.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(23, 'Quae Quia', 'quae-quia', 534, 4, 'Fuga quis autem cum recusandae dolorem sit. Amet inventore velit sint. Quam beatae voluptas sit autem.\n\nQuam ullam maiores fugit error a eum. Qui occaecati ducimus alias dignissimos ratione consequatur aliquid. Vel doloribus dolore quis eos et. Voluptatibus vero deserunt et maiores ipsum consequatur iure.\n\nCorrupti et voluptas vitae doloribus maiores laboriosam corporis. Dolorem culpa est sed accusamus quam explicabo. Dolorum aut modi cupiditate adipisci. Corrupti molestiae iste maxime excepturi.\n\nAut voluptas at qui tenetur enim sunt. Ea deserunt rerum dolore dicta aut nisi est beatae. Voluptatem eius autem ut illo doloremque animi. Quod impedit at voluptatum temporibus.\n\nEt neque odio aliquam eos id. Modi id rerum vitae tempore quasi.\n\nAut omnis ut labore qui ut. Assumenda laudantium et ipsam. Quisquam hic consequatur dolores eos.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(24, 'Tempora Natus Quae Dolore Eaque', 'tempora-natus-quae-dolore-eaque', 485, 4, 'Dolor dolorum consequatur consequatur non sed a dolorem. Quibusdam nobis aut cupiditate excepturi illum velit quae veniam.\n\nTotam dolore natus voluptate voluptatibus recusandae quia saepe. Sunt aut aspernatur reprehenderit rerum. Sed ea corporis asperiores non voluptas eligendi et. Fuga sint deleniti sapiente cumque est et.\n\nError numquam voluptatem sint autem qui voluptate maiores. Vel quod quia impedit est illo. Est ea officia non sit. Explicabo perspiciatis reprehenderit dolor ipsa.\n\nFacere est soluta qui aut aliquid et. Porro sint quisquam quia in incidunt. Possimus sint officia est.\n\nAsperiores nihil occaecati perferendis cumque amet debitis. Aliquid iste veritatis deserunt nihil est. Suscipit eaque qui voluptate sit. Animi consequatur deleniti nemo rem. Labore quia suscipit quisquam enim rem.\n\nEa quis sunt et fuga. Animi minus ipsum quo quis quaerat. Exercitationem facilis eos assumenda et quibusdam laudantium commodi.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(25, 'Id Itaque Reiciendis Animi Ipsum', 'id-itaque-reiciendis-animi-ipsum', 492, 4, 'Inventore sit vel provident qui harum. Dolor delectus et quidem blanditiis expedita repellendus voluptates.\n\nQuaerat ut veritatis libero quidem ut consequatur. Beatae qui id quidem. Et id voluptate eos tempore molestiae omnis maxime.\n\nQui deserunt dolor velit non. Nostrum provident sint earum asperiores labore non et. Dolores laborum distinctio voluptatem. Harum facilis itaque consequatur aut commodi.\n\nError quasi harum illo accusamus voluptatem. Blanditiis est in deleniti et et deserunt et impedit. Possimus sint nemo odit sunt.\n\nNostrum sed voluptatibus cum reiciendis. Molestias quasi quia illum error aspernatur eum nobis sit.\n\nLabore expedita itaque consequuntur enim voluptas. Omnis est magni nisi. Quas minus aliquid quia reiciendis pariatur qui et minus. Voluptatem ex explicabo quidem delectus.\n\nMinima et possimus culpa nostrum. Cumque architecto sed rerum quos quo provident vel voluptatem. Voluptatem ullam culpa amet accusamus. Illo voluptatem dolorem nobis. Consequatur corporis est et et explicabo.\n\nIncidunt quae earum omnis neque. Sit velit quia in corrupti et inventore. Amet minima ad tenetur asperiores alias et et dicta.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(26, 'Provident Quisquam', 'provident-quisquam', 249, 4, 'Sit hic ut et deleniti. Et laborum omnis voluptates aut tempora aperiam qui.\n\nVoluptate ut ab sequi quis ut nihil necessitatibus esse. Est rerum doloribus aut ut. Rem magnam velit similique dolores ducimus.\n\nDucimus eveniet optio qui numquam qui eum. Est atque qui aliquid quas nostrum praesentium. Reiciendis et est in numquam iste.\n\nMaiores cupiditate quidem et sed. Asperiores eum sit quia quia eligendi facere. Cum dolor perspiciatis dolorum laborum. Ex deleniti inventore numquam aut sed eligendi quibusdam ea.\n\nUt sunt et harum sit quos nihil. Tempore distinctio ut expedita pariatur. Rerum officiis voluptatem cumque et repellendus sint ut.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(27, 'Esse Nostrum', 'esse-nostrum', 833, 4, 'Odit ut molestias id aut temporibus quis nam. Tempore molestiae labore totam ex rerum exercitationem.\n\nLibero quia ipsam ea non. Eligendi hic voluptatem laudantium quia libero. Ut minima molestiae asperiores natus ea eos illo.\n\nNihil non atque quaerat dolores ut itaque. Est accusantium impedit omnis fugit modi. Consequatur suscipit alias dicta neque doloremque.\n\nAd unde non officiis voluptas qui. Pariatur consequatur eum et maiores quod excepturi incidunt. Sit velit omnis dolorum laudantium natus similique.\n\nBeatae ratione ut ab qui laudantium corporis. Aliquid nesciunt voluptas ullam incidunt laboriosam aut. Similique sed earum amet et perspiciatis.\n\nSaepe nobis cumque inventore sed atque corporis sint officiis. Eos nemo hic dolor dolorem iste itaque totam. Libero eum amet tempora.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(28, 'Eligendi Quia Earum Qui Ipsum', 'eligendi-quia-earum-qui-ipsum', 101, 4, 'Voluptatum laboriosam omnis magnam aut. Ipsum rerum vero iste ad. Placeat deleniti repellendus aperiam deserunt consequatur vel.\n\nIusto exercitationem quia et necessitatibus. Quisquam sunt nisi occaecati magnam possimus. Autem odio at id id autem doloribus impedit.\n\nDolorem quia hic beatae ipsum laudantium. Corporis ducimus laudantium quam numquam cumque voluptatibus.\n\nNecessitatibus voluptatem quia eligendi fugiat voluptate minus. Veniam illum et ut tempore eligendi. Recusandae ut qui aut illum officiis occaecati et.\n\nNecessitatibus beatae voluptas cupiditate possimus. Sapiente non temporibus dicta quia animi autem. Eligendi ad sit eum. Incidunt eveniet occaecati porro nostrum et illum nisi.\n\nRerum culpa rem corporis tempore aut vitae ut. Omnis cum fugit omnis quia libero nemo consequatur excepturi. Omnis ea omnis veritatis debitis. Saepe non earum mollitia voluptatem sunt.\n\nVoluptatem suscipit quia dicta. Non quo sit iure minus est aut tempore repellendus. Ut libero rerum fugiat ab.\n\nSit molestiae rem consectetur esse sit. Facere aut et sequi ad sit ut aliquam. Amet perspiciatis nemo quam ullam vel error.\n\nNatus porro culpa autem ut quia aut. Vel eum ipsa enim magnam ipsa. Quasi aut doloremque velit aut.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(29, 'Ex Molestiae Dicta', 'ex-molestiae-dicta', 285, 4, 'Accusamus labore sit et officiis totam autem eos. Itaque doloremque pariatur in quia aliquam. Fugiat laborum quibusdam aspernatur sequi. Dolorum voluptates fuga et corporis voluptas quia amet. Aut quas ut aperiam et ea sed.\n\nMolestiae magni non labore voluptatem ratione accusantium quidem culpa. Neque sunt deleniti expedita vitae. Qui repudiandae modi et totam quia.\n\nNam aspernatur voluptatem sunt ut nulla ut. Dolore dolore sint aut nihil nostrum accusantium. Eligendi libero nobis adipisci dolores cupiditate earum sequi. Aut ipsa dolorum voluptas.\n\nDeleniti corrupti pariatur ex et qui magni. Et deleniti sunt a. Ut et consectetur fugit.\n\nMagnam iure officia ut nesciunt omnis odio distinctio. Qui et architecto iusto itaque itaque nihil magni. Rem cupiditate voluptas aut hic.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(30, 'Similique Veritatis', 'similique-veritatis', 433, 4, 'Doloribus dolorem aperiam quis illo. Amet voluptas fugiat libero qui quidem. Exercitationem ut neque vel sint. Sit laudantium pariatur possimus laboriosam.\n\nAut minima fuga fugit modi dolore quidem et. Necessitatibus sapiente velit dolorem et commodi quas porro. Aut illum nihil optio ut enim aut. Temporibus cumque aperiam quis.\n\nUllam qui est voluptatem sunt esse dolor non. Qui architecto corrupti quae ut tenetur impedit. Hic earum inventore eum inventore odit sunt laboriosam. Optio velit sapiente sunt.\n\nEt voluptas non deserunt at nulla quasi fugiat. Voluptas voluptas odit necessitatibus sit deleniti. Voluptatibus omnis voluptatum cupiditate dolore perspiciatis deleniti. Ea ullam id quod distinctio nobis vel consequuntur.\n\nEsse et quidem enim amet nobis quis. Fuga ratione tempora fugit quia explicabo aliquid iure. Molestias fugit expedita qui earum optio quasi. Totam non velit dolor cumque. Officiis laborum et ut aut molestiae placeat ex.\n\nRatione nihil sunt velit sequi. Non error rerum ut sed sit eveniet dignissimos praesentium. Sunt rem perferendis et. In accusamus pariatur vel voluptatem sunt. Dolores quisquam ducimus omnis quis rerum accusantium.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(31, 'Et Voluptatem Quidem', 'et-voluptatem-quidem', 124, 4, 'Quibusdam eos ea cupiditate atque recusandae quos vel est. Labore corrupti perferendis dolore tempora ut. Laudantium deleniti voluptatem in nulla eos placeat et.\n\nCupiditate et necessitatibus numquam recusandae. Velit odio officiis commodi ut quis voluptatem et. Ipsa exercitationem omnis soluta et temporibus. Velit mollitia maiores expedita dicta porro pariatur.\n\nUt aut voluptatum est omnis dolorum voluptatem voluptas. Tempora possimus quo ducimus eos impedit. Est laboriosam commodi tempore qui. Iusto rem accusamus laborum hic. Et natus sit quis ut doloremque.\n\nAt et eum ea animi officiis quas tempora. Consequatur quod amet enim qui omnis eligendi occaecati. Adipisci expedita quibusdam animi maxime dolorum cum. Consequatur et reprehenderit distinctio optio temporibus.\n\nQui molestiae odit ab ipsum id corrupti. Ad laboriosam illum amet id deleniti quo. Dignissimos dolor fugit iusto voluptatem doloremque rerum. Ullam id molestiae quis.', '2023-04-16 02:07:53', '2023-04-16 02:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `tag_id`, `views`, `thumbnail`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Iure Voluptas Aut Aut Qui', 'iure-voluptas-aut-aut-qui', 3, 465, '1.jpg', 10, 'Quis aut doloribus at mollitia qui blanditiis. Nesciunt iste animi fuga possimus. Ex repudiandae ipsam minus quisquam et.\n\nNesciunt ut dolorem eaque temporibus aperiam porro a ipsum. Temporibus totam aliquam repudiandae corporis ut. Numquam impedit sit incidunt nihil qui sunt id. Omnis et quaerat est dolorum sunt.\n\nEaque in est sint molestiae inventore omnis voluptatem. Optio possimus animi quia id cupiditate a laboriosam. Iste impedit non qui nostrum. Omnis iste aliquam maiores perspiciatis.\n\nReprehenderit quis facere impedit qui beatae qui dolor. Maxime et quo ipsa voluptas repellat assumenda. Voluptas et omnis nostrum maxime rerum qui.\n\nQuam amet dicta reprehenderit non et. Culpa sunt dolores et. Et recusandae quis laudantium ad natus.\n\nEx esse aut enim. Consequatur id quidem delectus inventore consequatur. Error dicta rem accusamus repudiandae iste sint dolorum qui.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(2, 'Alias Repudiandae Dignissimos Voluptatibus Molestias', 'alias-repudiandae-dignissimos-voluptatibus-molestias', 2, 549, '2.jpg', 1, 'Perferendis dolorem qui odio illo porro magni commodi. Et quia ut molestias. Voluptas culpa adipisci animi modi et amet.\n\nNesciunt dolores deleniti dignissimos non earum iure tempore. Vero est voluptatem hic dolor quasi. Fugiat itaque amet aperiam assumenda. Est sunt eos blanditiis in.\n\nIn numquam ratione quisquam dolorum facere. Nobis voluptatem et molestias quasi nobis ut. Aliquam perferendis distinctio non impedit perferendis autem quas aliquid.\n\nDelectus qui atque corporis tempora vitae sed sed. Fugit dignissimos minus sit et nesciunt. Porro maiores corrupti placeat ut odit dolor odit.\n\nNesciunt recusandae porro ducimus cumque. Vel et ut dolorem quibusdam et porro commodi. Aut animi consequatur modi incidunt dolores.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(3, 'Et Hic Iste Nostrum Quis Aut Ut Perspiciatis', 'et-hic-iste-nostrum-quis-aut-ut-perspiciatis', 5, 223, '1.jpg', 10, 'Repellendus atque quae voluptatibus ut. Modi laboriosam atque est eveniet at accusamus tempora. Ex corrupti quidem ducimus accusantium.\n\nIncidunt asperiores quia dolorem omnis sapiente dolorem. Ut aliquid unde et expedita qui recusandae. Sit veniam exercitationem rerum perspiciatis mollitia voluptatem. Saepe modi distinctio aut sunt quis animi.\n\nRerum ut suscipit ullam officia et rerum quo nemo. Tenetur et voluptatem delectus facilis placeat officiis eius. Dolor non quisquam qui distinctio deserunt molestiae rerum dolor.\n\nEst porro accusantium illum adipisci quia maxime eum. Voluptatem officia officiis atque nihil eum odit est. Laboriosam ut quis quo sit placeat ipsa amet.\n\nBlanditiis quaerat voluptatum praesentium illo aut velit aliquam. Ipsa nobis veniam sit aut repudiandae eius. Est qui quia ut mollitia maxime dolor rerum. Maiores explicabo qui hic consequatur voluptatum.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(4, 'Illo Iste Aliquam Et Labore Possimus', 'illo-iste-aliquam-et-labore-possimus', 4, 462, '1.jpg', 8, 'Ut voluptates exercitationem reiciendis voluptate velit. Rem deleniti ipsa dolores voluptas unde ullam impedit. Dolorem id accusantium dolor ut iusto. Sapiente voluptas fugit possimus adipisci id ut.\n\nNesciunt et nobis fugit nobis. Consequatur modi minus voluptatum et.\n\nPraesentium aliquid omnis voluptatem qui blanditiis eum. Voluptates ducimus in incidunt odit. Laborum perspiciatis ex ea ut quis et molestias.\n\nReprehenderit rerum est ut iusto enim cupiditate. Magnam odio in ea nulla enim. Vitae repellendus adipisci aut repudiandae.\n\nAspernatur et delectus possimus nisi. Adipisci dolores earum repellat aut illo. Sint ea nemo rerum consectetur corrupti laboriosam autem. Fuga ut dolorem ut odit beatae.\n\nOdio non cupiditate unde nulla cumque porro est quia. Aspernatur quibusdam vero et.\n\nEt error dolor accusamus error consequatur in et consequuntur. Modi accusamus asperiores nihil eum sed. Qui consectetur quisquam pariatur neque quae mollitia magni.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(5, 'Exercitationem Eos Voluptates Delectus Dignissimos Tenetur Aut Qui Quasi', 'exercitationem-eos-voluptates-delectus-dignissimos-tenetur-aut-qui-quasi', 4, 604, '1.jpg', 2, 'Dicta est officiis iste occaecati rerum. Omnis repellat error libero et quam. Repudiandae sint sunt eveniet non ipsum qui quis.\n\nUnde totam excepturi inventore itaque nobis vel ullam. Cupiditate corrupti enim eveniet. Maiores voluptatem ut vel. Et voluptatibus mollitia reprehenderit reprehenderit in quas accusamus. Quos necessitatibus saepe reiciendis reiciendis ut veniam velit omnis.\n\nOmnis in dolor quisquam quia voluptatem. Praesentium vel tempora magnam aut inventore ut. Aut consectetur odio labore unde iusto perferendis non. Blanditiis dolorem veniam ratione sed voluptas. Qui et quasi facere.\n\nConsequatur accusantium ratione consequuntur hic non. Error magni qui voluptatibus. Tempore tenetur aut omnis voluptatem et.\n\nQuisquam numquam hic libero consequatur vel nemo eveniet tempora. Voluptate autem optio dolorem. Quis incidunt voluptatum quasi ducimus adipisci nam.\n\nExercitationem culpa amet dolorum sit ex officiis aut molestiae. Deleniti maxime hic maiores aut.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(6, 'Sunt Ut Natus Ipsam Nulla Dolores Omnis', 'sunt-ut-natus-ipsam-nulla-dolores-omnis', 1, 846, '2.jpg', 4, 'Doloribus deleniti esse rerum asperiores voluptates ut dolor. Reprehenderit est consequatur modi rerum. Autem velit amet fuga facilis dolore rerum.\n\nQuasi adipisci perferendis fugit tempora velit. Dolorem et et et impedit quisquam autem ut. Libero dolor mollitia necessitatibus dolorum officia maxime.\n\nCommodi dolor adipisci enim est ipsa placeat est nobis. Natus ut repellendus doloremque molestias nobis minus. Eius officiis et molestiae fuga sed rerum vel. Et vel similique nobis est facere cum.\n\nDolorum optio consequuntur sapiente id. Vero reprehenderit odit dolores quas. Ipsa consequatur et dolorem ipsa alias dolorem perferendis unde.\n\nAliquam debitis est doloremque nihil adipisci rem. Libero consequuntur aut reiciendis. Ea qui illo nulla similique et voluptates reiciendis.\n\nDolores incidunt illo fuga aut ratione. Quas velit nam nihil aut debitis in expedita. Quaerat est sit fugiat voluptate voluptatem sit. Ex autem possimus deleniti est in ut et quod. Dolor dolorem facere quis officia rerum in.\n\nNesciunt sunt est officia dolore sed doloribus. Nostrum omnis magni reiciendis deleniti. Ad aut fuga eveniet harum animi consequuntur. Quo aut in repellat fugiat laboriosam. Voluptates sed dignissimos odio ducimus repudiandae illo.\n\nModi quis eveniet voluptatem incidunt sint maxime. Et dicta ipsa temporibus sit. Sequi voluptatem praesentium similique quidem.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(7, 'Id Velit Tenetur Nam Saepe Vero Et Autem Aut', 'id-velit-tenetur-nam-saepe-vero-et-autem-aut', 2, 787, '1.jpg', 10, 'Expedita vel cumque ea quo repellendus suscipit. Quas quam voluptatem ullam magni. Quos quidem eum est alias.\n\nSoluta aut provident quam eligendi qui sunt est. Magnam qui sed natus quae alias sapiente eius. Laudantium est nobis molestias quisquam adipisci explicabo nihil.\n\nRerum aut sed minus dignissimos praesentium omnis quae id. A accusantium sed delectus voluptas vero. Voluptatum itaque eum et quo minus quidem voluptas. Ut totam quas velit sed voluptas.\n\nAut incidunt omnis inventore eos voluptates labore tempore dolorum. Quaerat error ut ut. Nostrum quod excepturi est quibusdam consequuntur dolore. Eum illum nihil aut provident qui consequuntur omnis maxime.\n\nEveniet soluta voluptatibus officia. Sequi aut odit quia est eum. Blanditiis et fugiat autem natus enim. Asperiores nihil est id qui dolores. Itaque blanditiis ut qui vel assumenda voluptatem quidem.\n\nRepellat eum ut possimus. Officiis possimus magni maxime quo blanditiis velit qui. Quos nihil consequuntur nihil iure dicta.\n\nDolorem quia quia voluptas sit voluptates enim. Mollitia ut dolores eaque similique mollitia exercitationem corrupti. Aut voluptatem voluptatem at dolores molestiae nemo ducimus est.\n\nQuis consequatur tempore ut sit consequatur et laborum. Error alias praesentium quo aut optio. Est placeat exercitationem ab deleniti. Non amet omnis deserunt quia laudantium animi.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(8, 'Sit Alias Enim', 'sit-alias-enim', 1, 635, '2.jpg', 1, 'Laborum est fugit repellendus. Aspernatur similique reiciendis ducimus ullam earum itaque. Voluptatibus magni quo ad dolorem omnis.\n\nQuos esse est eius officiis dolor nesciunt officiis. Qui quis enim nesciunt odit dolor. Eum omnis ab voluptatem odio. Consectetur architecto at eveniet. Ut ullam enim dolorem voluptate officia est.\n\nTempora doloremque rem rem minima. Nihil error excepturi soluta nihil dolore vel dignissimos. Non suscipit rerum maiores rem quod.\n\nMagnam sit mollitia dolorem odit consequatur illum. Aut ut doloremque odit sunt occaecati nam ut. Consequatur maiores quis sunt ut. Dolore iure et voluptatem doloremque et vitae nulla quibusdam. Quisquam sit aut eum voluptates.\n\nSit at sed cupiditate deleniti qui. Et repellat voluptatem eaque laborum dolorem eligendi. Ab a nemo voluptas mollitia quae a. Amet vitae deserunt minus et eos ut. Rerum illum sequi possimus rerum quos ipsa.\n\nNihil pariatur ut beatae. Magni quia cum rem neque. Quia aut doloremque nam dolorum.\n\nAsperiores aspernatur cumque dolorem ut. Placeat dolore error quia totam. Hic deserunt accusantium recusandae consectetur id. Aspernatur voluptate expedita fugiat voluptatum enim molestias vitae eos.\n\nMaiores assumenda eos incidunt eos autem in. Ut dignissimos distinctio eos rerum quis dolorum veritatis. Est ipsum voluptate ut inventore inventore. Eveniet quasi quia corporis accusamus earum.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(9, 'Eos Sit Rerum Sint Aut Qui Aut Sint', 'eos-sit-rerum-sint-aut-qui-aut-sint', 3, 922, '2.jpg', 7, 'Mollitia libero praesentium ut. Asperiores non ratione nesciunt impedit. Earum at architecto delectus consequatur provident inventore accusantium. Molestiae tempora consequatur sed magni non est et.\n\nNihil quasi praesentium eos dicta. Pariatur quos quas voluptas earum quod consectetur aut numquam. Ab temporibus magnam deserunt earum et sit qui aut. Id et et beatae autem.\n\nNemo quaerat optio eos sequi commodi possimus. Aut maxime in dignissimos sunt qui beatae quaerat illum. Eius eligendi occaecati non explicabo eos eos quia.\n\nSapiente asperiores nobis dignissimos et saepe totam cumque. Voluptatem impedit nemo alias qui quod sed. Quas quis quisquam excepturi consequuntur aliquam natus recusandae qui. Nam autem rerum totam aperiam aliquid.\n\nOfficiis autem voluptas fuga minima tempora alias blanditiis dignissimos. Nobis iste nihil suscipit perspiciatis.\n\nError voluptas atque rerum enim sint enim. Perspiciatis ad ut voluptatem ut ducimus. Qui velit quod similique harum tempore.\n\nError facilis cumque mollitia vel consectetur. In tenetur reiciendis id nam. Omnis vel nemo facere aut qui. Magnam dignissimos aut incidunt totam.\n\nVel et ad architecto vel aperiam explicabo perspiciatis. At dignissimos sit vel at eius maiores. Dolor similique ipsa velit in tempora.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(10, 'Nemo Laboriosam In Esse Soluta Provident', 'nemo-laboriosam-in-esse-soluta-provident', 1, 322, '1.jpg', 4, 'Occaecati praesentium ad et eum necessitatibus iste libero. Qui dicta ipsum cum rerum.\n\nNobis aut error fugiat eum rem. Vel itaque tenetur consequuntur aut libero iusto voluptatem. Nostrum quia quod eum ullam necessitatibus.\n\nAccusamus enim incidunt non aut aut est porro. Ipsa velit excepturi molestiae corporis magni eum laudantium. Dolorum porro aperiam sed ut ad ut autem.\n\nIllo occaecati amet assumenda veritatis. Hic expedita sed quasi in et. Quae vero excepturi temporibus sit. Voluptatem qui consectetur sit tempore.\n\nUt doloribus omnis in. Expedita iure et quisquam asperiores.\n\nItaque pariatur pariatur tenetur est. Iste consequatur maiores ab cum eveniet. Non quia suscipit accusantium sed. Deleniti eum quibusdam facilis neque nobis eius.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(11, 'Praesentium Et Quis Adipisci Expedita Eius Aut Doloribus', 'praesentium-et-quis-adipisci-expedita-eius-aut-doloribus', 4, 454, '1.jpg', 4, 'Ex dolorum laudantium sint. Natus dolore nesciunt quas voluptatem temporibus sunt. Necessitatibus maiores non debitis aut et.\n\nMolestiae dolor temporibus provident non officia inventore et. Adipisci ut illum facere eum doloribus omnis. Doloremque molestias distinctio consequatur dolore veritatis.\n\nQuidem ea perspiciatis qui quidem tenetur eum voluptatibus et. Eos occaecati cupiditate dolor consequatur eum. Dolores magni deserunt sit fugiat. Consectetur quibusdam nulla ut ut veritatis.\n\nAsperiores eos aut molestiae iure. Ipsa sapiente aliquid ut et dolores. Ratione et ut ex aut quasi accusamus.\n\nEst tempora aut at nihil dolore sint. Earum voluptates et voluptates ratione. Rerum veniam dolor laboriosam molestias voluptatem sit sit. Deserunt pariatur consequuntur tempore ipsa.\n\nEx excepturi aut accusamus odio error dicta ex. Et ad ratione facere corporis. Nulla autem nobis commodi qui ut qui qui.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(12, 'Eos Modi Minima Soluta Quis Sequi Quia Eius', 'eos-modi-minima-soluta-quis-sequi-quia-eius', 1, 638, '1.jpg', 7, 'Qui est hic ut voluptas tenetur et. Et neque velit et officia iste. Sed velit voluptatem quia assumenda voluptas nesciunt. Excepturi deserunt mollitia et cum nesciunt.\n\nEt autem ipsam veritatis fuga quod et. Tempore accusamus illo et eveniet. Ducimus quo excepturi non et aut ea exercitationem. Facilis assumenda in commodi est. Quibusdam rerum vel est natus totam odit.\n\nQuia quia maiores praesentium illo asperiores totam. Nam animi voluptatem provident quis molestias delectus optio. Ipsum quos similique ipsa. Consequatur enim qui quam voluptates expedita laborum.\n\nRerum delectus odit illum atque veritatis esse voluptatem. Voluptatibus ut incidunt assumenda. Qui repellat omnis enim provident.\n\nOdit laboriosam non sequi corrupti. Ipsa architecto impedit molestiae et. Dolores animi quo autem error nihil.\n\nNatus sed ullam commodi inventore possimus magnam expedita. Odio velit at ea. Omnis aut aut error non. Unde accusantium necessitatibus aliquam vel animi nam vel.\n\nDolor officiis omnis doloremque dolores quas vitae facilis. Est quasi eligendi saepe eum. Inventore eum id cumque.\n\nSaepe natus aperiam ex est ullam deleniti. Accusantium recusandae praesentium maxime expedita quis sunt. Soluta accusamus provident beatae.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(13, 'Sed Qui Repellat Tempore Qui Quis Occaecati Nisi', 'sed-qui-repellat-tempore-qui-quis-occaecati-nisi', 1, 921, '3.jpg', 8, 'Expedita praesentium dignissimos inventore sit. Asperiores mollitia quo voluptates enim quisquam sunt quia. Sed ullam iure natus commodi minus qui. Occaecati ut repellendus esse quo.\n\nPlaceat exercitationem eaque aperiam officiis. Vel corrupti cum minus nisi nemo aut quia. Amet quas pariatur sit accusantium quas in reprehenderit.\n\nDolorem eveniet et quia omnis culpa vel. Deserunt maiores dolor neque officia vitae voluptatem sed accusamus. Eum ipsam sequi consequatur. Aut facere in aut harum magnam doloribus quo. Rerum quasi assumenda qui et.\n\nOmnis expedita vel veritatis atque quo aperiam. Quam et quibusdam vero excepturi aut dignissimos quia. Sit quia dolorum aut itaque aliquam iusto. Quia fugit sint doloribus officiis quia ex.\n\nSed suscipit dolorum quisquam est quibusdam. Vitae ab non quas voluptas nisi qui. Vero illum aspernatur ut.\n\nAut aliquid recusandae quae quis rem sit et. Repellat molestiae omnis velit ab sint. Inventore veniam rerum illo debitis dignissimos. Aut quisquam blanditiis ratione molestias.\n\nLaborum laboriosam ex facere aut illum quibusdam enim. Et enim saepe quis. Deserunt eum numquam numquam qui vel corrupti. Omnis autem eaque magni omnis labore molestiae quasi.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(14, 'Iusto Et Eos Voluptatem', 'iusto-et-eos-voluptatem', 5, 532, '2.jpg', 9, 'Eum et temporibus nemo beatae sit neque nemo sit. Praesentium ad iusto vel. Labore numquam quos et delectus occaecati sit. Sint soluta amet nesciunt ut in molestiae corporis.\n\nCulpa quia explicabo quasi rerum. Cupiditate saepe est dicta dolores quae nisi et. Quisquam consectetur minus sit. Molestias et omnis temporibus repudiandae et.\n\nVoluptates modi doloremque voluptatibus vel illum. Placeat aliquid rem dolore et tempora. Explicabo non corporis est qui quis. Alias dolorum ipsa magnam aut reiciendis ut.\n\nQuis eos omnis suscipit qui architecto alias ea. Recusandae dolor doloribus aperiam qui. Sit similique et est. Optio rerum quisquam sunt sunt nesciunt quia.\n\nVoluptate qui vel tempora earum odit at iste. Aut ut qui sit debitis ipsam. Modi quia id sequi odit occaecati excepturi aut. Qui est error repellat et iusto est.\n\nEst voluptate temporibus perferendis placeat dolores dolores. Hic autem ut soluta quibusdam. Eos aliquid iure aliquid et. Omnis debitis magni quis autem voluptas.\n\nSit qui hic nihil repellendus odio natus. Maxime recusandae reprehenderit cupiditate dolore commodi corporis. Natus dolorem perspiciatis quia voluptas exercitationem iste. Itaque non non debitis quod expedita sunt.\n\nEsse et accusamus nisi veniam quia minima dolorem. Possimus fugit excepturi non voluptates est quis. Ut tenetur totam cupiditate distinctio in quas nulla. Rerum deserunt aliquam rerum iure labore tempora pariatur.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(15, 'Qui Architecto Veritatis Et In Earum Enim Quia At', 'qui-architecto-veritatis-et-in-earum-enim-quia-at', 5, 559, '2.jpg', 6, 'Ullam quas quis rerum deleniti. Asperiores reprehenderit adipisci impedit saepe blanditiis est nam.\n\nFacilis vitae culpa deleniti libero ut ut. Corporis quis saepe voluptatem labore voluptatibus mollitia. Qui laudantium optio iste similique ipsum quasi. Assumenda rem provident ut qui maiores sint ut reprehenderit.\n\nExercitationem nihil eius tempore odit. Corrupti qui earum ab voluptatem commodi facilis voluptatum. Unde animi necessitatibus non voluptatem quis deleniti. Consequatur facilis sunt et cum.\n\nEt non dolorem voluptates neque voluptatem ut qui. Recusandae debitis atque rerum nulla. Quo inventore nisi dolor alias eveniet ea. Dicta et ut dolores officiis autem fugit dolore.\n\nNeque repudiandae quibusdam blanditiis. In ipsum nostrum sapiente iste sunt harum. Molestiae quo et beatae quis consectetur repellat aut.\n\nQui sunt natus qui voluptatem perspiciatis et repudiandae. Laudantium facere deleniti quos modi ullam autem. Itaque adipisci quidem est aut sint maiores.\n\nOfficia et totam sint voluptas. Alias voluptas doloremque maxime nihil eaque. Animi aut maiores magnam est explicabo similique eos. Error iure facere aut voluptatum sequi. Libero illo porro soluta numquam omnis aut et ad.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(16, 'Sed Quisquam Nisi Porro Fuga', 'sed-quisquam-nisi-porro-fuga', 2, 466, '1.jpg', 9, 'Est nam sapiente provident fuga et. Inventore beatae consequatur aut ipsa vel. Ipsum dolorem magnam fugiat excepturi.\n\nQui aut sit deleniti ex aut. Magni eius dolorem vel. Et corporis nobis quaerat cupiditate pariatur reiciendis nobis.\n\nEst consequatur quia est occaecati. Ab officiis quisquam et quas. Ab ad possimus corporis magnam accusantium earum.\n\nEligendi molestiae magnam consequatur est qui hic culpa magnam. Et doloribus voluptatibus pariatur et asperiores. Minus quaerat sit illum non. Animi ducimus et sed esse.\n\nVelit eveniet aperiam doloremque soluta ea. Dolorem ut quisquam fuga vitae necessitatibus laborum. Iusto in aliquam quo eum.\n\nDolores cumque ea quis esse et. Iure reiciendis voluptas est officiis perferendis hic pariatur. Exercitationem expedita eveniet vel temporibus quo. Unde voluptatem officiis illo ut ab aut.\n\nEt qui corporis beatae laboriosam voluptas tenetur consequatur. Libero assumenda sequi deserunt velit.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(17, 'Enim Voluptatibus Atque Quasi Corporis Nostrum Nihil', 'enim-voluptatibus-atque-quasi-corporis-nostrum-nihil', 5, 949, '1.jpg', 5, 'Molestias aliquid atque ut dolores perspiciatis nobis molestiae beatae. Odit ea sint autem quo officiis optio eligendi et.\n\nAliquam quo veritatis nam distinctio consequatur. Doloremque et doloribus quod iste adipisci quia voluptatum. Quam ut dolores excepturi perspiciatis.\n\nEum est repellat velit vero. Repellendus a ea quis eveniet illo. Nam ullam blanditiis aperiam provident. Delectus non error labore quia magni.\n\nQuia sit vitae et. Eos corrupti magnam quasi iste quod. Qui repudiandae exercitationem sunt molestiae.\n\nTempore vitae et excepturi ut neque. Laboriosam mollitia ipsum eligendi tenetur consequatur modi sit. Beatae tempora saepe laudantium placeat velit. Numquam dignissimos omnis et aliquam dolorem ipsa sit.\n\nMollitia rerum et expedita quaerat nesciunt vel. Praesentium unde reiciendis quia laudantium. Aut ut aliquid eligendi ut pariatur.\n\nNumquam perferendis labore qui expedita. Nisi reiciendis quam dolorem explicabo error.\n\nSit id alias corporis. Repudiandae dicta in voluptatem minus excepturi. Provident vel id consequatur veniam. Voluptas voluptatem repellendus officiis eveniet.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(18, 'Vel Et Blanditiis Ab', 'vel-et-blanditiis-ab', 3, 711, '2.jpg', 1, 'Molestias provident velit aut accusamus nam. Et qui magni nostrum eligendi. Aut enim ut et qui. Autem dolor sint non tenetur.\n\nUt optio placeat illo qui. Hic neque voluptatem tempora officiis. Rem inventore qui quo sit. Architecto consequuntur quis sapiente.\n\nIncidunt debitis ipsum accusantium est. Autem libero quis et laborum incidunt delectus. Ipsa beatae unde atque ab adipisci.\n\nPlaceat eius eveniet et non totam et quo. Fugit quia illo omnis. Totam qui autem nobis culpa. Et quis eius itaque sequi.\n\nIn maiores animi commodi adipisci impedit ea consequatur. Culpa nam autem assumenda numquam porro labore magnam laudantium. Sit delectus dignissimos dolor est quos placeat aut in. Dolorem consequatur quas aut eaque quas maiores sapiente. Est et vero eaque maxime.\n\nA at voluptate dignissimos dolore est excepturi. Quaerat fugit esse tempore aliquid sint reprehenderit sunt in. Sint eum et aliquam neque quia quibusdam.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(19, 'Non Quia Harum Ipsa Id Eligendi Aliquam Sunt', 'non-quia-harum-ipsa-id-eligendi-aliquam-sunt', 1, 954, '3.jpg', 2, 'Eum eveniet eius ut illum a occaecati. Vero commodi hic amet eaque. Sit et perspiciatis suscipit eaque minus ipsa.\n\nSoluta rerum sunt id quasi iusto iste quasi. Aut expedita ratione voluptate ipsum qui. Quis dolorem ea ipsam commodi omnis illum. Ipsum eos repellendus quia.\n\nVero sint a ut fugit sunt tempore qui. Voluptates ducimus accusamus molestias accusantium quia quam culpa. Placeat nam eaque voluptatem est eius beatae eius. Repudiandae tempore aspernatur a debitis asperiores.\n\nMolestias vitae voluptatem illo vel. Nostrum eum voluptatem dolores nemo sed voluptatem. Accusamus error modi autem quis voluptatem. Explicabo nihil sapiente optio libero.\n\nOfficiis est atque voluptas perferendis. Eos molestiae adipisci magni consectetur. Accusamus sit sit eum dolore. Id accusantium expedita iure aut ut ratione.\n\nQui eaque sit natus repudiandae nisi. Quas vero nam possimus adipisci.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(20, 'Et Nulla Enim Ut Occaecati Sunt', 'et-nulla-enim-ut-occaecati-sunt', 1, 277, '2.jpg', 10, 'Ab laboriosam cumque quas iure deserunt voluptatibus qui. Autem est repudiandae quod expedita. Dolor est et veritatis facere delectus et.\n\nEum nemo ipsam cumque ut. Sapiente omnis harum sunt velit praesentium impedit pariatur ab. Tempore sequi cupiditate sit molestiae tempora voluptate corporis.\n\nQuam eveniet ducimus quia corporis. Quis et soluta soluta voluptatem facere ipsum expedita. Est dolores eum officiis sit fugit vitae. Consectetur in est qui deleniti dolorum.\n\nQuia exercitationem aut officia dolor omnis fugiat earum. Voluptate iure aut architecto non. Qui qui aut velit.\n\nQuas et recusandae aut quas. Quod non quis et voluptatibus. Nostrum similique est autem rerum.\n\nEt tempore ut aut cupiditate est illum. Officiis sapiente accusantium culpa illum ut harum itaque et. Ut inventore laudantium praesentium numquam consectetur fugiat et.\n\nLaudantium quas dolorum odio. Similique molestiae cum quo commodi aut sint excepturi. Sequi ut molestias cupiditate sunt. Illum vero eum autem aut doloribus sint porro.\n\nAb laboriosam quis qui voluptas odit in. Harum corrupti molestiae aut ut facere deleniti. Et sunt iusto cum eius nesciunt quod.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(21, 'Delectus Totam Ut Et Nobis Neque Consequatur Incidunt', 'delectus-totam-ut-et-nobis-neque-consequatur-incidunt', 3, 635, '3.jpg', 7, 'Eos ut temporibus dolor ut quibusdam quidem. Tempora animi aliquid in dolor. Voluptas sed ut nam delectus odit at dolores sed. Et asperiores deserunt ut libero voluptatum accusantium modi.\n\nExpedita vel architecto eos porro quidem omnis dolorem. Dolorem est qui eum saepe voluptatem quos totam. Exercitationem voluptatum aut quas quaerat ut accusamus aliquam.\n\nDolorem sint provident adipisci est delectus quod. Perspiciatis porro optio voluptas illo laboriosam voluptatem. Occaecati fugit velit est iure quibusdam. Illo laudantium nesciunt corrupti.\n\nOccaecati soluta saepe error sint nulla neque. Tenetur dolores tempora ex inventore amet. Facilis nobis cupiditate laboriosam aperiam.\n\nSed sunt dolores autem odio possimus iure est. Molestias neque iure et nobis aut.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(22, 'Molestias Quia Beatae Rem', 'molestias-quia-beatae-rem', 1, 790, '3.jpg', 10, 'Necessitatibus et omnis quas quo. Voluptatem vel a ipsam deserunt quia dolor. Qui illo voluptate corporis dolor quibusdam. Voluptatem illo ut voluptas qui est ad.\n\nPossimus ut necessitatibus laudantium explicabo facilis. Atque alias praesentium voluptas quia aut dolor.\n\nEius quo autem velit corrupti aut saepe quod. Natus et dolorem qui fuga et. Ex delectus voluptatem sunt eveniet non.\n\nDolores minima quasi at incidunt quia. Qui et recusandae necessitatibus consectetur quibusdam alias non soluta. Dicta odit et deleniti est. Quod error autem similique sit voluptates amet.\n\nDolores excepturi laboriosam et. Nam tenetur qui minima. Dolorem rem magnam magnam. Pariatur ratione autem ut quae.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(23, 'Ut Incidunt Iure Dolor Labore Rerum Reprehenderit Voluptatem', 'ut-incidunt-iure-dolor-labore-rerum-reprehenderit-voluptatem', 3, 691, '3.jpg', 9, 'Dolor sed eum nesciunt est. In consequuntur dolores eius ut non voluptatem. Expedita illum quibusdam ut est.\n\nNumquam accusamus dolorem est sed ut illum. Delectus possimus atque nesciunt ullam omnis voluptas aperiam voluptates. Doloribus fugiat numquam maiores nisi molestiae eveniet et.\n\nConsequatur a esse doloribus et temporibus ex itaque. Magni voluptatum id et nostrum atque. At quis et molestiae accusantium ullam ipsam voluptatibus. Eaque ducimus mollitia et vitae itaque soluta et.\n\nQuo et et consequatur consequatur repellendus et. Quia corrupti saepe fuga quod. Veniam voluptatibus numquam aut. Accusantium et et tempore eum qui eum.\n\nDolores odit itaque enim sunt. Quis nihil vero qui ipsam iste.\n\nQuia ex eos earum reprehenderit hic. Blanditiis sunt velit tempora sit. Reiciendis et est consequuntur velit.\n\nMollitia nisi enim ut consequatur. Aliquid architecto corrupti vitae aliquam iure tempora dolor. Perspiciatis inventore itaque tempore quo. Velit quo aliquid omnis fuga aut voluptate voluptatem eligendi.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(24, 'Ratione A Et Nihil Incidunt', 'ratione-a-et-nihil-incidunt', 4, 861, '2.jpg', 2, 'Amet culpa totam aperiam est voluptatum et voluptatibus non. Qui distinctio quaerat corrupti dolore eveniet aliquid eos.\n\nIusto similique vel ipsa nulla molestias. Excepturi ad sit iure adipisci velit soluta. Quaerat explicabo animi omnis eligendi sit. Adipisci nihil aut earum voluptatibus eum.\n\nLibero dolor et et tempore asperiores temporibus. Et quasi accusantium molestiae cum autem sit soluta. Rerum ut cum perferendis.\n\nQuidem vitae eum aliquid ad. Perferendis error aut non et. Qui ut eveniet quibusdam incidunt aperiam.\n\nEst et similique et at corrupti. Odio quam aliquam doloremque dolores. Atque fugiat dolore ducimus cupiditate perferendis.\n\nSunt quam debitis explicabo eos ex sunt. Fugit consequatur quaerat omnis perferendis. Architecto assumenda magni quo sit iusto.\n\nQuod ipsam eligendi architecto architecto cum et quas. Dignissimos et placeat sequi sit voluptas qui ut. Qui similique corrupti voluptatum et enim magnam corrupti ullam.\n\nUnde aut inventore est dignissimos sunt doloribus. Tempore hic et ab aut vel quae ut. Vel nihil enim similique beatae.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(25, 'Tempore Officiis Officia Aut Sunt Consectetur Voluptatem', 'tempore-officiis-officia-aut-sunt-consectetur-voluptatem', 2, 589, '2.jpg', 9, 'Fugit voluptas est fuga occaecati repudiandae est. Qui nisi quos non eum explicabo ea. Quia facere quia dolorum qui et distinctio eum.\n\nPerspiciatis non tempora ea. Quis velit nulla earum. Vero autem vero enim eos. Nulla alias dolor aliquam qui.\n\nCum est sed omnis nostrum. Eveniet enim saepe voluptatibus nam unde dolorum maxime rem. Praesentium voluptatem perspiciatis fugiat occaecati ut.\n\nVel quidem tempore est aliquam quis eos dignissimos. Praesentium totam quae sed corporis rerum accusantium numquam. Ad ut qui similique et soluta. Eum fugit eius laborum.\n\nAnimi dolor ut mollitia aliquid sed iste accusantium dignissimos. Quos aut unde atque officia. Sequi sit dolor quia ea et dolores.\n\nDicta nisi voluptatem velit aut repellendus voluptatem. Delectus nihil consequatur aperiam error est ex nihil. Eum et voluptatem perspiciatis illo et.\n\nEst voluptate quo esse a ducimus. Aut doloremque veniam amet.\n\nAutem est earum minus commodi temporibus et porro. Dolor ullam consequatur vel iste eum ut. Excepturi unde sed sunt sunt doloremque. Perferendis voluptatum qui dolorem dolore ratione doloremque est dolores.\n\nTempora eligendi in aut dolore sapiente nihil. Harum aspernatur quam corporis sint voluptatem. Provident veritatis hic et accusantium illum. Dolorem corporis quis molestiae eos aspernatur voluptatum.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(26, 'Dolor Occaecati Quae', 'dolor-occaecati-quae', 3, 782, '1.jpg', 8, 'Ea minus sequi voluptatibus tenetur qui fugiat. Voluptatem doloremque facere tempore voluptatibus ut minus similique. Nobis in sequi ex et. Qui est veritatis et qui qui occaecati voluptate.\n\nSapiente qui ex sunt animi alias pariatur molestiae. Expedita mollitia hic impedit hic nostrum. Ut rerum necessitatibus facilis eveniet optio ut. Dolor molestias eveniet eos libero enim.\n\nConsequatur sint ut odio quia aspernatur voluptas. Reprehenderit provident molestias modi sed rerum reprehenderit.\n\nQuo ratione vitae rem ut aut. Non est fugit voluptas neque. Error velit quia fugiat ab quia. Voluptatibus neque dolores sunt aperiam.\n\nFuga perspiciatis error in accusamus placeat. Nemo aut unde maiores sunt ullam modi. Vitae maiores officiis iusto est eos debitis quidem. Omnis esse occaecati at molestias.\n\nEligendi dolore sunt est soluta assumenda porro. Cum incidunt saepe sed nemo et aut. Tempora autem sunt facere non reiciendis.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(27, 'Cumque Molestiae Quaerat Debitis Ut Quis', 'cumque-molestiae-quaerat-debitis-ut-quis', 1, 967, '2.jpg', 2, 'Repellat beatae aut velit in sunt. Consequuntur corporis officiis ipsum. Ipsa omnis rerum culpa sit voluptatum vel numquam. Commodi occaecati facere quas.\n\nDicta ut dolorem modi expedita. Voluptas enim consequatur sint totam. Qui ab praesentium nihil. Sed ut reprehenderit est ducimus possimus.\n\nEst qui praesentium omnis quasi asperiores non quis. Qui consequatur qui et.\n\nSuscipit qui aut et voluptatem quia quam eveniet. In quaerat velit minus ut.\n\nVoluptatem autem molestiae sed rerum sunt officiis. Praesentium iusto molestiae ad cum.\n\nRatione at praesentium voluptate similique. Explicabo nulla possimus ab porro rerum.\n\nOfficia nostrum dolore ad. Ex sit laudantium asperiores dolorem nostrum. Vel sequi reprehenderit esse itaque consectetur dolores.\n\nEligendi quas sed sed distinctio. Soluta dolor doloribus et maiores. Ratione autem rem quod eum unde error. Iure voluptas expedita fugit.\n\nOmnis nihil ut veniam ad provident. Quis qui et sed vitae quasi hic aut quibusdam. Ut quo est sint eveniet ducimus. Aut unde molestiae assumenda voluptate quam molestias.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(28, 'Perferendis Atque Sed Non Fugiat', 'perferendis-atque-sed-non-fugiat', 2, 656, '2.jpg', 9, 'Eligendi modi qui repudiandae animi. Blanditiis sunt impedit pariatur. Dolor nisi aut placeat veritatis quo. Dicta et dicta qui nemo ex et.\n\nBlanditiis porro ad quia sequi aliquid. Voluptatem velit nesciunt architecto nihil dolorem. A dolorem iusto ipsa a.\n\nBeatae atque dolorum qui vel modi. Asperiores consequuntur aut repellendus laudantium voluptatem voluptatem. Vel enim eos assumenda commodi aperiam.\n\nAut non veniam iste et soluta dolore. Vero repudiandae vel hic quis. Ea repellendus dolor quasi sint labore eius autem. Ducimus blanditiis explicabo ducimus qui.\n\nEx accusamus ut tenetur eligendi debitis velit. Voluptate autem deserunt odit neque repellat rem incidunt. Rerum et delectus necessitatibus esse aut sed harum.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(29, 'Aut Et Natus Vel Quia Aut', 'aut-et-natus-vel-quia-aut', 1, 976, '1.jpg', 5, 'Dignissimos eius qui fugit nam sint voluptas. Eum et et voluptatem. Et facilis et consequatur voluptatem vel vero.\n\nAut consequatur nulla repellat numquam earum et. Voluptas quasi omnis sit dolorem. Aspernatur optio sed non ipsam rem provident voluptatem. Officia ducimus eveniet aperiam ut molestiae.\n\nQui fugiat consequatur voluptate autem veniam et qui. Velit eveniet natus quia. Et qui ut ipsum et. Nulla sed aperiam veniam aut.\n\nDeserunt impedit ad inventore voluptates. Illo delectus officia sed a. Explicabo debitis officia fugit maxime voluptate nihil qui.\n\nVoluptate velit quos eum et. Culpa velit fuga maiores sunt aperiam quod. Eum reiciendis debitis deserunt voluptates.\n\nAccusantium reprehenderit quaerat rerum et perspiciatis rerum. Quod ad harum dolorum laboriosam similique mollitia ipsum quo. Quibusdam incidunt soluta assumenda maiores fugit excepturi. Blanditiis et molestiae fugiat excepturi magnam voluptas sint in. Molestiae et incidunt voluptatum temporibus dolorum sed unde.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(30, 'In Quis Consequatur Tenetur Et', 'in-quis-consequatur-tenetur-et', 4, 132, '2.jpg', 3, 'Sapiente dicta aspernatur tempora eos ut soluta. Dolor tempora ut impedit voluptas libero dolores rerum ipsa. Similique porro sit laboriosam.\n\nExcepturi libero ad dolores eaque asperiores. Tempore id delectus officia vero omnis voluptates. Aut ipsam quis id qui molestias porro. Adipisci explicabo natus aspernatur voluptatibus nostrum rem dolorem.\n\nRecusandae eaque ut omnis id temporibus occaecati. Dolorum eos autem fugit fugiat enim voluptatum reprehenderit id. Nobis molestiae dolores tempora inventore pariatur eos. Eum facere velit molestias dignissimos autem ut minus quas.\n\nVel inventore tenetur dignissimos deleniti maxime atque omnis. Laborum sit nemo nobis minus inventore molestias pariatur. Fuga asperiores et fugit perspiciatis perferendis. Aut voluptatem quod iusto atque laboriosam possimus. Cupiditate rem veritatis impedit voluptates quia dolores.\n\nEx ducimus impedit ipsa excepturi quisquam. Qui dolore quia earum aut. Et eaque facilis nam ut. Aspernatur nihil quis ut sapiente suscipit ipsum.\n\nOdit autem non totam nihil et. Voluptatem ducimus quisquam aut qui ut fugit nam. Temporibus autem ducimus tempore eos. Vitae eveniet quam accusamus maiores libero fugiat. Sunt vitae repellat quae et provident.\n\nConsequuntur qui cupiditate quis sed. Dolorem ratione a expedita deserunt omnis nobis. Vero impedit aut et repellat. Atque aspernatur placeat porro ullam. Rem nemo rerum et aut.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(31, 'Eligendi Vel Voluptates Qui Ipsa Voluptatibus', 'eligendi-vel-voluptates-qui-ipsa-voluptatibus', 3, 248, '3.jpg', 7, 'Architecto voluptate cupiditate voluptatem cupiditate. Qui inventore enim sit consequatur ut. Corrupti et voluptatem eos vero officia iste.\n\nSint eum optio sed consequatur amet dignissimos. Praesentium in voluptatum ut. Suscipit quam fugit sed architecto eveniet impedit in. Amet earum sunt dolor nam exercitationem et harum.\n\nOfficiis enim enim recusandae at aspernatur iste. Quaerat voluptas enim reprehenderit iure quaerat aut. Atque minus laboriosam sunt voluptatem. Rerum labore nulla dolorem voluptatem quas.\n\nEsse deserunt distinctio tempora qui. Vel minus dolores quibusdam quidem unde temporibus et. Ut aut hic et deleniti.\n\nDoloremque tempora porro illum veniam sit sed qui. Velit nihil reiciendis fuga. Et deleniti unde quia quae. Unde dolor magni nemo.\n\nA aliquam rerum totam maiores et nostrum. Eum corporis explicabo modi reprehenderit incidunt sunt. Ullam molestiae et earum. Iusto porro adipisci voluptatem provident nam.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(32, 'Et Laborum Ex Saepe Ut Hic', 'et-laborum-ex-saepe-ut-hic', 4, 945, '3.jpg', 6, 'Magnam accusantium est in est corrupti earum illo. Amet sapiente aut voluptatibus et et. Amet at culpa id et beatae in quasi. Et aut dolor vitae.\n\nQuae enim laboriosam tenetur nam illo laudantium saepe. Non quos laborum eaque aut saepe. Soluta reiciendis dignissimos magnam. At reiciendis nisi asperiores voluptatem suscipit qui eius.\n\nUt rerum esse itaque non quos fuga et reiciendis. Dolor qui esse dolore. Facilis iusto architecto et et quia amet. Non voluptate maiores sed repudiandae qui occaecati dolorum. Illum voluptatem vitae voluptas id ipsa ut.\n\nQuis ducimus nemo mollitia dolorum. Qui non voluptatem perferendis sequi itaque labore. Nisi non quibusdam est ipsa tempora rerum sit. Quisquam nihil ea aut voluptatem et minima sit.\n\nPorro itaque nemo assumenda et veniam consequuntur doloribus. Rerum eligendi atque eos voluptatibus. Aut et aut illum quia rerum nulla ducimus. Est omnis accusantium ducimus reiciendis rerum aliquid eum.\n\nArchitecto ut mollitia accusantium atque deleniti. Dolor aliquam ut expedita delectus. Quidem dolorem facere aut odit. Porro vel quidem autem.\n\nVitae est possimus accusantium fugit debitis facilis. Dolor harum ab vel excepturi et voluptatem. Praesentium a beatae ea culpa sed cupiditate. Cupiditate deleniti nisi qui eos illo.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(33, 'Accusantium Nihil Veniam Impedit Qui In Facere', 'accusantium-nihil-veniam-impedit-qui-in-facere', 2, 143, '3.jpg', 9, 'Commodi et nostrum accusamus. Fugiat reprehenderit unde ea illo eum quidem fugiat. Modi et officia est placeat voluptas impedit illo.\n\nCommodi rerum nemo voluptas. Quia magnam sit in eveniet iste doloribus.\n\nQuis necessitatibus dolorem recusandae accusamus recusandae quos omnis esse. Velit explicabo animi iusto excepturi aut facere quidem. Necessitatibus tempore perferendis quia suscipit voluptas et.\n\nEnim iure totam dolore sapiente sunt et omnis. Reprehenderit dolorum nihil est magni ut consectetur. Consequatur et sequi dolor aspernatur iusto similique. Error inventore ipsam eum maiores voluptatem perferendis et.\n\nVoluptatem consequatur harum iste omnis eum sit esse. Dolorum cupiditate repudiandae possimus incidunt quis. Eius ut est repellat fuga.\n\nDicta omnis nam repellendus cupiditate facere beatae. Ab dolorum quia accusantium expedita unde veritatis deserunt. Mollitia odio quasi sed nulla aut porro voluptates.\n\nSunt et quasi ea omnis alias aut. Non et rerum provident et minus quod tenetur nesciunt.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(34, 'Molestias Id Labore Et Id Velit', 'molestias-id-labore-et-id-velit', 3, 684, '2.jpg', 2, 'Mollitia ut vero porro voluptatem quasi praesentium. Error quia ullam quaerat facere. Porro officia delectus magnam aut repudiandae. Blanditiis non dolor labore nihil.\n\nEt reprehenderit amet animi earum et. Totam consequatur excepturi dolore ipsa eius nam repellendus. Quis molestiae sapiente qui in. Itaque vitae ea neque nam modi similique.\n\nQuis beatae modi omnis earum. Qui pariatur doloremque ut quisquam laborum est. Ad numquam qui tenetur nulla blanditiis dolorem. Eos voluptatem dignissimos omnis praesentium officiis atque et.\n\nLaboriosam qui illum totam nemo. Ipsum sequi eos voluptatem esse quia. Aliquid et temporibus iure corporis eaque. Dolore corrupti laudantium et totam minima deleniti.\n\nUnde eos ea expedita perferendis. Nesciunt et hic qui omnis. Sunt autem eaque dolores quia consequatur. Architecto enim ea quae molestias qui et qui.\n\nAut repellat dolores quo aut distinctio et. At enim impedit quo perspiciatis architecto. Placeat et nihil quas autem enim. Eos et alias voluptate iste.\n\nEst blanditiis eum qui minus odio sed molestiae. Iusto quo quia saepe et. Nihil dolore voluptatem atque minima quo et qui incidunt.\n\nIncidunt quo est omnis provident. Temporibus rerum omnis molestias voluptatibus pariatur itaque culpa at. Fugiat itaque quam corporis.\n\nVelit ut sit fugiat reprehenderit possimus error. Sint iure dolor voluptatum provident excepturi. Pariatur et est est rem laudantium. Et quam aut hic cum aliquid.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(35, 'Est Iure Labore Maxime In Et Non', 'est-iure-labore-maxime-in-et-non', 2, 311, '1.jpg', 10, 'Illo aut reprehenderit consequuntur error consequatur quis dolor. Ab quia quo error. Vitae eos veritatis ducimus blanditiis.\n\nMolestias perferendis repudiandae aut eos debitis. In nesciunt quam exercitationem saepe consequuntur sit aspernatur. Veniam animi asperiores odio.\n\nDolor facilis nobis dignissimos accusantium. Esse velit facere ipsum dicta enim. Quia dolores dolores quo laudantium in voluptatem laboriosam.\n\nEt sequi culpa ut est possimus sed. Temporibus soluta quibusdam placeat aspernatur eius quos qui eum. Libero voluptatibus ut ex magni. Voluptas illum aperiam tempore et laborum.\n\nUt nulla mollitia eos. Eveniet praesentium excepturi quia quaerat. Explicabo deleniti quis voluptatem unde sint distinctio. Accusantium laboriosam quia consequatur deleniti fugit vel. Explicabo aliquam ut quis quibusdam ea.\n\nDignissimos est sint vero unde. Repellendus dolor et quidem voluptatem sequi commodi. Id rerum ipsa dicta impedit.\n\nAdipisci veniam ipsum nobis voluptas provident eius. Velit officia nulla ut est est voluptatem. Itaque quidem reprehenderit deleniti.\n\nNisi saepe distinctio aperiam earum totam. Illo tempore quam aut et illo temporibus. Laudantium modi et sunt vel quo est commodi tempora. Quidem culpa velit quibusdam praesentium maiores.\n\nEnim eius nisi quidem tempora laudantium. Labore molestias voluptate eos dolor illo. Est delectus delectus nihil aut vel ipsam officia.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(36, 'Veniam Nisi Eos', 'veniam-nisi-eos', 3, 753, '3.jpg', 8, 'Minima ratione consequatur doloremque. Dolor accusantium molestiae quo. In est et magni velit.\n\nRepellat earum ad esse soluta. Accusantium aut repellendus fugit rerum. A voluptas soluta ut qui velit provident enim. Quam veritatis qui rem adipisci et.\n\nIllum hic eos similique dicta commodi qui culpa. Commodi fugiat fugiat non quo qui sapiente quae cupiditate. Recusandae et qui eum iusto amet odio. Corrupti rerum repellendus vero delectus repudiandae ipsam et.\n\nIpsa quam consequatur fugit aut sint mollitia saepe consequatur. Eos voluptatem ad aliquam eos iste. Est sint eveniet deleniti nulla at ratione quibusdam.\n\nVoluptatibus ratione ex repellat repudiandae aut earum voluptate provident. Ut illo tenetur quaerat fugit rerum repudiandae qui. Nobis cum excepturi inventore. Dolor dolores suscipit quis quo.\n\nAspernatur accusamus tempore laborum nobis culpa. Odit quas distinctio nobis sint. Nihil atque aliquam qui qui vitae rem provident.\n\nAut voluptas blanditiis id quisquam. Consequuntur et et maiores magnam. Ea tenetur et est delectus dignissimos et qui id.\n\nMollitia itaque excepturi eaque mollitia. Quod rem deleniti id pariatur quisquam porro quia. Eum tenetur amet iste dolorem ea.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(37, 'Magni Quasi Eos Quae Facere Praesentium', 'magni-quasi-eos-quae-facere-praesentium', 4, 243, '1.jpg', 5, 'Earum quibusdam nisi omnis enim. Porro tempore ut ut adipisci nostrum quia. Omnis labore officiis nihil tempore ratione dolorem sequi quos. Eos esse assumenda non asperiores.\n\nConsequatur ducimus est tenetur et eum. Nisi fuga voluptatibus ea ut et recusandae. Repellendus et et magni excepturi omnis. Aut maxime qui nobis enim tenetur.\n\nSequi doloribus nemo adipisci magni odio nostrum reiciendis. Sunt non sequi vitae ut officia dolor. Est ut nemo magnam natus. Dignissimos labore aliquid eaque rerum. Omnis ut aperiam et rem deserunt facilis.\n\nUt nihil ipsum similique ea omnis non harum animi. Est quia mollitia natus error ipsa omnis enim qui. Aut repudiandae voluptate recusandae et ratione sed officia. Consequatur quam laboriosam perferendis dolores vero.\n\nIn unde non voluptatem consequatur qui. Modi qui recusandae soluta aut alias repellendus a nostrum. Consequatur vel magnam iure qui et.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(38, 'Mollitia Ipsam Qui', 'mollitia-ipsam-qui', 3, 529, '1.jpg', 3, 'Est beatae libero a provident. Et praesentium iste magni sunt. Distinctio sint et ab. Ullam at alias voluptas dignissimos.\n\nMinima inventore et architecto pariatur in. Error corrupti mollitia non quibusdam dicta debitis laborum. Illo occaecati laboriosam et officiis nemo. Quo reprehenderit sunt sunt ad quidem sapiente ex.\n\nEarum laboriosam neque nam omnis beatae pariatur omnis. Occaecati molestiae non ut odio non incidunt nesciunt. Ad suscipit qui accusantium hic animi. Doloremque reprehenderit repellat praesentium molestiae adipisci velit.\n\nAdipisci possimus placeat architecto corporis corporis. Odio et error illo alias. Natus eius dolores nihil minus qui animi. Aut quam eveniet molestiae aut.\n\nAliquam perferendis cumque temporibus eos rerum. Sit laudantium quasi maxime et id. Officiis eaque enim sunt suscipit.\n\nAmet sit asperiores aut aut. Maiores ea ad facere sit ut corporis. Sit eius nemo provident voluptates at tempore.\n\nDistinctio omnis quod deserunt odit animi. Impedit cum atque quia voluptas deleniti doloremque. Incidunt suscipit qui corporis autem. Velit et corrupti sunt et omnis praesentium sed.\n\nRecusandae ipsa et autem dignissimos suscipit aspernatur ut. Reiciendis eum impedit ut fugiat autem. Aperiam ducimus dolor aut ratione dicta laborum voluptas. Inventore debitis cumque sint repellat tempora saepe ut.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(39, 'Est Praesentium Sit Cum Voluptate Et Rerum Asperiores', 'est-praesentium-sit-cum-voluptate-et-rerum-asperiores', 3, 548, '2.jpg', 9, 'Ab esse perspiciatis harum iure et. Sit quo sint hic placeat sit. Quidem eaque excepturi inventore nostrum sequi laborum est et. Eveniet ratione nostrum rerum dolorum et praesentium similique.\n\nExercitationem non ab earum numquam. Et eius veniam sit dolor quidem velit soluta qui. Omnis voluptas asperiores commodi rem molestias.\n\nEligendi nam quis velit laborum. Est et soluta aspernatur et eum repellendus. Laborum voluptates dolorem iste et aliquam odit ut.\n\nLabore molestias voluptas dolores consequatur aut aut dolor placeat. Ipsum molestias ea reprehenderit tempore. Molestiae repellendus velit non ea aut. Magnam error aut autem et in quibusdam maiores et. Sed qui facilis quod aut magnam.\n\nOptio accusamus sit suscipit in est. Distinctio consequatur est nemo accusamus et. Nihil consequatur fugit aut quia. Nesciunt vel corrupti repellat debitis et. Distinctio nihil consequatur nihil aliquam repudiandae.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(40, 'Facere Fugit Eligendi Dolorem Corporis Nostrum Omnis', 'facere-fugit-eligendi-dolorem-corporis-nostrum-omnis', 2, 157, '3.jpg', 3, 'Aut officiis pariatur et suscipit quo magni et. Omnis quos eum ut laboriosam quae vel ab.\n\nQuo asperiores iste natus error quia accusamus omnis. Nulla qui voluptas sit aut. Dolores sint harum facilis at.\n\nEsse rerum alias suscipit sed. Ipsa facilis illo dolores exercitationem.\n\nEt error iste quidem fuga quidem nesciunt beatae. Iste doloremque aperiam qui illum id. Sint recusandae harum doloremque rem ad dolor. Ipsa assumenda assumenda pariatur est quasi quas.\n\nReprehenderit quos non a. Architecto neque minus soluta maxime. Molestiae nam reprehenderit libero.\n\nIpsa repellendus cum ipsam ea odio et rem. Rerum quod mollitia dolor aperiam minima ut cumque qui. Tempora porro nihil architecto quo modi voluptate ut. Error ullam sit non ut.\n\nBlanditiis ut aut in aut laboriosam dolor qui harum. Fugit et dolor nisi. Dolor et recusandae perspiciatis dolorem provident. Dicta id qui occaecati hic ut.', '2023-04-16 02:07:53', '2023-04-16 02:07:53');
INSERT INTO `posts` (`id`, `title`, `slug`, `tag_id`, `views`, `thumbnail`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(41, 'Dolores Quis Alias Libero A Dolor', 'dolores-quis-alias-libero-a-dolor', 5, 667, '3.jpg', 2, 'Asperiores officia et ut ad quia blanditiis iure fugiat. Voluptas ut est deserunt explicabo. Exercitationem dolores ullam voluptas magnam accusantium. Et quae maxime alias dolorum.\n\nDeleniti asperiores aliquid ea quas vero doloribus. Deserunt neque fugit inventore maiores dolor error dolor delectus. Similique harum sit omnis et quod accusamus id autem.\n\nHic atque veritatis voluptatem molestias sit error distinctio. Est placeat est eum architecto natus quod.\n\nEst sit modi a. Corrupti distinctio itaque maiores. Omnis exercitationem ea qui aut.\n\nNon nihil aut similique totam nam voluptatem. Temporibus dolorem voluptatum asperiores dolores. Autem recusandae nulla consequuntur distinctio sint sint.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(42, 'Dolore Sint Id Modi Magnam', 'dolore-sint-id-modi-magnam', 1, 335, '3.jpg', 6, 'Et aut id itaque beatae non. Sit qui eligendi molestiae eveniet qui quidem voluptate. Inventore est modi non mollitia optio cupiditate.\n\nDolor omnis autem vero eveniet maxime nisi. Sequi officia eum iusto itaque accusantium qui quam. Sequi repellat et cum harum placeat. Quaerat animi error laborum.\n\nQuaerat vel molestiae quasi rerum aut repudiandae omnis. Omnis soluta repudiandae possimus blanditiis fugit. Quibusdam beatae et laboriosam odit non ad. Repudiandae accusamus dolorem unde distinctio.\n\nOdit et nostrum quibusdam dolorem. Sapiente unde magni expedita iure eos. Quis ea natus sit qui ab. Quas consequatur ipsam inventore aspernatur earum in.\n\nQuam enim fugiat quia molestias sit suscipit. Ea laudantium id aut dolores quia non.\n\nRepellat amet alias provident ab vel molestias. Quia corrupti enim dolor voluptatem. Dolorum quae consectetur fugit commodi neque.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(43, 'Voluptatem Nihil Incidunt Aut Culpa Dolor Sunt', 'voluptatem-nihil-incidunt-aut-culpa-dolor-sunt', 1, 762, '3.jpg', 2, 'Aut rem voluptatem et aut. Mollitia eaque sed laudantium est aut voluptatum assumenda debitis. Ducimus sed reprehenderit aspernatur. Aliquam velit aut tempore quod quo voluptatem.\n\nSaepe dolores voluptatem aspernatur aut eligendi. Hic error tempore neque sunt ab saepe. Fuga ipsum maiores unde consequatur architecto dolores. Autem eos saepe id quibusdam.\n\nEa commodi adipisci ut hic est. Labore et modi eum aut suscipit occaecati quibusdam. Ipsam maxime voluptates dolor exercitationem dolorum doloremque. Quaerat ut aut quasi consequatur. Eius aperiam non et voluptates expedita aspernatur voluptatum.\n\nQuidem dolore sit odit. Nulla rerum repellendus magni ut velit asperiores. Placeat et veritatis voluptatem tempora quia. Accusantium non iusto voluptatum cumque magni.\n\nEst et voluptatem odio voluptatum. Dolore eum modi quo sed quos dolore vitae accusamus. Dolores veniam debitis nulla tempora ut qui maxime est.\n\nDolor magni consequatur perspiciatis molestiae dolorem quia. Aspernatur vitae sequi vitae dolore nam. Dolor rerum assumenda delectus ab veritatis.\n\nVoluptatem explicabo fuga animi qui veniam occaecati. Iusto officia culpa eius architecto ipsam. Voluptatem voluptates ut ratione deleniti minus repellendus velit. Distinctio sed iure voluptatibus et.\n\nEnim fugiat non dolor sit facilis velit. Numquam eos ex voluptatem rerum reiciendis molestiae. Pariatur aliquid veritatis non ea similique numquam molestias.\n\nPorro architecto maiores iusto sed itaque. Natus voluptatum dolor est saepe sit omnis eos. Sit in cum qui earum saepe perferendis ipsa at. Officiis quasi numquam repudiandae cupiditate aut animi eveniet ex. Suscipit ipsum blanditiis voluptas.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(44, 'Voluptas Harum Nesciunt Natus Nobis Sed Aut', 'voluptas-harum-nesciunt-natus-nobis-sed-aut', 3, 415, '3.jpg', 1, 'Veritatis quidem facilis voluptas. Eligendi deleniti veniam maiores adipisci eum sed. Explicabo maxime non nihil. Sequi est velit minus quia dolorum.\n\nMolestias qui blanditiis sunt quas reprehenderit repellendus. Asperiores ratione reiciendis alias et dolor fuga. Earum blanditiis recusandae ducimus incidunt voluptate et quia impedit. Facilis ea vel vitae voluptatum quas aut. Et aspernatur modi a fuga quam minima.\n\nArchitecto provident et similique veniam asperiores id omnis. Soluta quasi recusandae voluptate est distinctio expedita. Velit aut ut qui ipsum. Earum optio error non asperiores.\n\nMagnam qui voluptas nobis eum in. Totam vel alias inventore. Molestias ex rerum sequi quo.\n\nQuod praesentium et beatae voluptatem. Et et est vero molestiae fugiat ullam cupiditate. Quia sunt et eum ea debitis.\n\nOfficiis praesentium eum qui tenetur quis voluptas. Nulla ad est est. Ullam esse voluptas voluptatem. Est accusantium commodi fugiat incidunt mollitia rerum.\n\nVeritatis provident molestiae in porro beatae libero ipsum. Eius voluptatibus asperiores numquam veniam et aut autem. Neque quam rerum ut in nesciunt aspernatur sequi. Ab ullam ex qui ut natus eligendi.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(45, 'Eligendi Occaecati Omnis Voluptatum', 'eligendi-occaecati-omnis-voluptatum', 4, 257, '3.jpg', 8, 'Nemo quia cumque rerum ea repellat animi ut. Est odio consequatur explicabo sapiente quibusdam debitis. Quia architecto et pariatur ut. Nesciunt eum facilis dolore ratione quas alias in.\n\nQuia ipsa eos ipsam eum. Asperiores ea saepe exercitationem perspiciatis mollitia omnis. Saepe voluptate commodi nulla sapiente corporis.\n\nRerum omnis aspernatur dolorem quis atque et. Esse in ipsam perferendis omnis. Est rerum eos doloremque fugit fuga similique quis. Maxime alias impedit sint laborum eos rerum et qui.\n\nEum impedit magnam rerum voluptate. Et in sed temporibus ut. Voluptatem voluptas dolor ipsam nihil dolorum dolore excepturi dignissimos. Iure excepturi non dolore.\n\nMollitia est possimus commodi et aut aliquam et. Voluptates sed voluptatem dolorum sequi molestiae voluptatem facilis. Molestiae debitis sapiente earum nam qui natus nisi.\n\nQuisquam tempora reiciendis aspernatur odio hic officia et. Non ut quod quia molestiae possimus ut odio voluptatem. Aperiam est et vitae dolorum repellendus odit. Tempora labore aliquam ipsum iusto tenetur. Ex voluptatem non cupiditate quia totam corrupti est.\n\nQuod itaque doloribus aliquid excepturi voluptatem. Est quaerat nulla ut recusandae ut quo aut. Dolor pariatur natus quaerat vel harum voluptates.\n\nOfficiis vitae aspernatur nihil beatae et est vel. Recusandae ut beatae laborum odio quisquam non repellendus. Consequatur iusto delectus voluptates delectus. Quo aut quis recusandae.\n\nRepudiandae earum quo provident non aut veritatis. Quaerat eius suscipit provident voluptas mollitia facere cumque. Doloribus sapiente rerum delectus consequuntur dolorum id ut.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(46, 'Eos Architecto Architecto Dicta Velit Deserunt Culpa Libero', 'eos-architecto-architecto-dicta-velit-deserunt-culpa-libero', 5, 789, '3.jpg', 9, 'Autem sed laudantium odio sunt deserunt cum. Officia velit aut aut consequatur. Accusamus voluptatem cum dolorem qui. Eveniet sunt alias magni laboriosam.\n\nRepellendus quis quae quo praesentium molestiae sapiente. Nobis quas quibusdam dolores delectus. Eum et alias itaque dolor voluptatem sunt error.\n\nVoluptas in qui voluptatum fuga. Quidem similique animi quo et. Possimus saepe dolores quas.\n\nRerum vitae id sit et omnis. Repellat optio et modi laudantium architecto sed velit nostrum. Natus eligendi deleniti atque cumque facere unde eligendi soluta.\n\nSaepe modi dolorem accusamus esse. Ab natus repellendus ut. Enim perspiciatis error qui consequatur dolore officia et aut.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(47, 'Cum Sit Itaque Distinctio Non Repudiandae Eaque Ex Enim', 'cum-sit-itaque-distinctio-non-repudiandae-eaque-ex-enim', 4, 767, '3.jpg', 5, 'Odit eius et enim in nihil molestiae aliquam. Debitis quis voluptate aut porro impedit est. In ullam eum qui ex magni error sit.\n\nAliquam in aut id consequatur quis qui. Iusto numquam soluta dolores quibusdam ut ut. Facilis facilis aspernatur ea iusto nemo sed aut.\n\nQuia illum tempora animi illum dignissimos velit. Omnis non ut animi sit quod vel culpa. Et dignissimos rerum sunt sapiente ratione sint. Praesentium omnis facilis soluta ad reiciendis sapiente provident.\n\nDolorem eum veritatis inventore commodi officia dolores. Modi laboriosam aut fugiat sed eaque. Quos cupiditate unde in ut optio amet necessitatibus.\n\nVero numquam ut facilis deleniti et cupiditate tenetur. Est vero perspiciatis sint sapiente consequatur sint. Dolor pariatur et nostrum aspernatur ipsa fuga. Sit voluptatem modi rerum soluta doloribus fugiat.\n\nIpsum aliquam nesciunt inventore blanditiis eos est ab. Deleniti enim eveniet sit ea aut iusto ea. Quia doloremque quis repellat impedit.\n\nEt cupiditate dolorum facere velit. A non aut voluptatem libero consequuntur qui. Voluptates eos quidem odit.\n\nBeatae voluptatum sunt laudantium assumenda quia voluptatem. Nihil a est id quia eveniet deserunt sed. Soluta odio doloremque placeat delectus a saepe quam. Cupiditate expedita nesciunt dicta ut omnis.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(48, 'Sed Tempora Minus Incidunt Provident Qui Non', 'sed-tempora-minus-incidunt-provident-qui-non', 5, 276, '2.jpg', 8, 'Sunt magnam velit culpa minima est molestiae. Deleniti eligendi officiis rerum est deserunt. Aut cumque repellat rerum nemo quaerat.\n\nReprehenderit est voluptas tempore explicabo qui ex cum. Aliquam similique architecto esse est. Qui voluptas inventore quisquam.\n\nCorporis eaque voluptas corrupti quisquam exercitationem. Vel odio quia odio nostrum et sed.\n\nPerferendis maiores dolorem porro ratione iste. Qui porro voluptas eum voluptas. Nihil sequi omnis laboriosam labore velit. Eum voluptatem quos ut voluptatem modi iste.\n\nEst modi ea voluptatem dolor tenetur pariatur. Deserunt fuga voluptatem animi illo aliquam. Voluptatem qui consequatur rem excepturi amet omnis.\n\nIpsa enim aut qui id et. Amet ipsum quia consequatur eum voluptate. Ea molestiae harum exercitationem nemo incidunt fugit esse. Similique occaecati reprehenderit sint omnis ut et.\n\nAliquid commodi officiis omnis ea. Accusantium similique exercitationem vitae aut ut. Perspiciatis qui ducimus aut similique natus. Numquam modi id autem.\n\nAut est occaecati nihil temporibus veritatis. Sapiente voluptas illo molestiae aut. Nesciunt exercitationem iste veniam beatae. Omnis cum inventore minima blanditiis.\n\nQuia ratione rem consequatur excepturi aliquam illo et. Harum rerum corrupti consequatur ratione commodi eum. Iure recusandae explicabo tempore corporis fugiat.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(49, 'Accusamus Doloremque Sunt Cum Et Rerum Rem', 'accusamus-doloremque-sunt-cum-et-rerum-rem', 2, 972, '3.jpg', 10, 'Nulla dolor atque voluptas et earum. Distinctio in facere perferendis id neque aut. Dolore ut nulla rerum occaecati. At quam rerum atque consectetur vel illo praesentium.\n\nAnimi voluptatem consectetur minus. Nihil excepturi commodi illum minus pariatur ut ut. Magni velit delectus ea est quia. Fugiat mollitia at maxime.\n\nAut neque ut tempore vero. Deleniti sint atque facere est. Ullam amet earum est maiores earum.\n\nDolor cupiditate ducimus consequuntur quis tempora ea. Perferendis qui reprehenderit non omnis quaerat. Voluptatum ea libero est blanditiis adipisci quisquam voluptatibus. Assumenda quo ut sunt rerum repellendus mollitia.\n\nUt consequatur modi ut deleniti. Eaque sed et cum nisi in quas. Qui ut et qui dolore molestias ea.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(50, 'Et Doloremque Voluptate Repellat Numquam Unde Voluptas', 'et-doloremque-voluptate-repellat-numquam-unde-voluptas', 4, 559, '3.jpg', 2, 'Illum nesciunt vero doloribus quia. Autem vero ducimus vel reprehenderit laudantium iusto aut.\n\nQui aliquid quod animi architecto et. Autem eius accusantium temporibus unde totam est eos. Maiores officiis qui voluptas placeat.\n\nVeniam soluta qui error aliquam dolorum. Aut qui repellat dignissimos voluptates dolore quo. Et dolor doloribus ut voluptatem aliquid ducimus.\n\nAut qui nam magni ut. Ea officia repellendus iste ut aut et. Voluptas nihil libero optio quos voluptatem.\n\nHic nesciunt amet et sequi. Expedita nesciunt recusandae excepturi sunt sint a.\n\nLaborum natus aut voluptate et illo. Natus aut laboriosam perspiciatis in quis. Omnis consequatur nostrum nulla minima possimus voluptatem.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(51, 'Eos Aut Eum', 'eos-aut-eum', 2, 808, '3.jpg', 4, 'Aut rerum doloribus enim quibusdam commodi consequatur. Molestias perspiciatis numquam tenetur doloribus. Voluptatibus ex sed adipisci tempora. Et perferendis dolores pariatur sunt debitis recusandae.\n\nLaboriosam aut maxime voluptatibus voluptatem atque voluptatem. Id expedita voluptatum sunt fugiat et laudantium. Odio velit debitis veritatis ut laudantium dolore molestiae.\n\nAliquam ea eius non omnis sed quia omnis. Recusandae fuga qui dolorum voluptate quo quia quis. Repellendus dicta ratione quos et dolore consectetur.\n\nDoloribus maiores possimus et fugit quo atque. Quia ut totam perspiciatis distinctio odio inventore distinctio. Magni possimus sapiente odio quos possimus labore. Sint dolor aut voluptas libero provident aspernatur. Et distinctio distinctio ut possimus.\n\nAdipisci dolorum id ut voluptas omnis neque saepe. Accusantium rem magni placeat aliquid nesciunt. Non rerum ipsum quas labore aut voluptatibus illo. Error sed optio sequi qui unde. Qui tenetur ratione ratione et quo.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(52, 'Qui Fugiat Tempore Est', 'qui-fugiat-tempore-est', 1, 514, '3.jpg', 8, 'Tempore quia recusandae est laboriosam fugiat. Architecto sed culpa tenetur odio provident necessitatibus. Et quis qui reiciendis velit quod aut porro. A expedita dolorum optio suscipit.\n\nAliquam nemo culpa deleniti nulla temporibus voluptas nostrum et. Dolores velit reprehenderit consequatur amet qui aut maiores.\n\nCum harum occaecati iusto blanditiis excepturi sunt. Voluptatem accusantium ut commodi quam culpa eum et aut. Sed non sequi autem tempora adipisci quo.\n\nVelit sint iure excepturi corporis dolores. Est enim molestias distinctio. Et soluta hic quia consectetur dolorum quam rerum tempore. Repudiandae aspernatur ullam autem.\n\nQui sed veritatis assumenda veritatis nihil id. Dolor sunt nihil nihil rerum sunt. Vel nesciunt laudantium non itaque qui optio reiciendis.\n\nSimilique consequatur alias deserunt ut hic animi nostrum. Rerum modi placeat quo rerum qui. Commodi saepe ipsam est. Non ipsum quisquam qui quo.\n\nEnim iste neque possimus quisquam ad minus. Nisi laboriosam et voluptas. Delectus beatae nemo ullam modi neque aliquid ipsa.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(53, 'Consectetur Repudiandae Harum Et Sint', 'consectetur-repudiandae-harum-et-sint', 5, 994, '1.jpg', 10, 'Unde reiciendis qui quibusdam sapiente id impedit. Asperiores ut officiis quam sapiente ducimus molestias saepe occaecati. Impedit at sit quisquam earum voluptatem quia.\n\nBlanditiis enim aut laboriosam cum quidem eaque. Eum magnam odit libero et. Vel qui aspernatur amet et laboriosam repellendus et.\n\nNobis nobis delectus voluptates est quidem dolore quia. Facere nam itaque minima iure sunt et assumenda molestiae. Inventore quibusdam et aperiam ex ut tempore cumque.\n\nPossimus sit voluptate quidem nulla quisquam incidunt. Nesciunt tenetur deleniti minima suscipit. Aut nam animi voluptates incidunt facere.\n\nEsse qui asperiores soluta corrupti dicta repudiandae laudantium. Vero modi facilis rerum quo et. Rerum nisi impedit incidunt eum enim.\n\nSuscipit aut deserunt totam similique debitis quae. Ipsum quam consequatur et qui sit velit quisquam labore. Omnis porro id debitis et.\n\nQui reiciendis qui iure perspiciatis perspiciatis magni eum doloremque. Dolores ut autem magnam deleniti. Ratione inventore alias praesentium placeat culpa harum.\n\nEsse vitae distinctio aliquid ea tempore. Sit nihil nihil sed beatae nihil. Voluptas perferendis quibusdam aspernatur dicta cumque est commodi repellat. Enim aliquam non magnam sit omnis.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(54, 'Vitae Magni Non Magni Velit Rerum Vitae Ea', 'vitae-magni-non-magni-velit-rerum-vitae-ea', 2, 303, '3.jpg', 6, 'Eveniet sunt aut porro voluptatem reiciendis. Vitae quibusdam rerum et corporis vel aliquid omnis laudantium. Dolorem adipisci laudantium repellendus suscipit. Repellat repellendus id impedit deleniti dignissimos fugit.\n\nAsperiores sapiente est sit voluptatem nulla non incidunt odio. Illum explicabo omnis esse velit modi est. Voluptas repellendus temporibus quia porro. Possimus aspernatur velit sit laboriosam cupiditate dolor.\n\nQui autem eos amet laborum cumque. Ipsum ab id animi consequuntur doloribus pariatur sit. Ipsam facilis voluptatem architecto omnis.\n\nVelit quos impedit voluptate reprehenderit quo. Qui fugit suscipit amet ut nam. Laboriosam inventore modi ratione et dolor.\n\nExplicabo et officia in occaecati saepe. Temporibus ut sit iusto molestias ea est. Iusto ut est ab.\n\nA dolores velit ipsam quaerat sint ab. Et est nobis qui vero cumque voluptatem. Rerum ut veniam corrupti et velit nisi voluptatem. Non et ipsam est repellendus enim quo.\n\nVoluptates voluptas quidem cumque laudantium quia sit. Ut ea quidem quia neque reiciendis commodi aut sed. Aliquam iste consequatur eum aut dolores ut iusto et.\n\nAdipisci numquam quia repudiandae nesciunt. Quae enim est nihil nemo reprehenderit consequatur enim laudantium. Dolores id consequatur non est commodi. Deleniti quo doloribus id enim perspiciatis. Quos exercitationem alias eveniet architecto iste in id delectus.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(55, 'Vel Natus Nisi Eaque', 'vel-natus-nisi-eaque', 2, 677, '1.jpg', 8, 'Asperiores repellat non deleniti est dolor eligendi. Fugiat accusamus eos et quia odit. Rerum impedit architecto non blanditiis sint. Sed odit cumque nemo quia maiores. Culpa voluptas nesciunt minima omnis corporis illo officiis veniam.\n\nDolores laborum ducimus aut cum sequi. Unde nam odio veritatis aperiam consequatur voluptatum voluptas quos. Non dolor libero consequatur ipsum ut. Laboriosam et sunt nobis minus.\n\nQui id eos sit dolorem est laborum sapiente. Cupiditate sed rerum provident natus voluptates minus. Natus culpa doloribus consequatur qui qui magni.\n\nAliquid et dolorem quis. Molestiae est a repudiandae ipsam qui nam culpa. Aperiam quo est dolorem voluptate dolor labore.\n\nSed ipsam mollitia voluptatem totam voluptate accusantium. Aut quia assumenda asperiores eligendi ad velit. Molestias velit delectus consectetur ut facere.\n\nQuod tempora a et quia est. Reiciendis omnis hic modi dicta ut dicta molestiae. Est explicabo autem sapiente aut. Et ipsum et ut qui ratione magnam.\n\nHic molestiae est at officiis illo fuga est. Nesciunt voluptas repudiandae veritatis. Fugit consequatur facilis ut excepturi enim.\n\nCum ut neque facere vitae. Assumenda quia iste molestiae optio non qui deleniti. Dolorum eos minima quia aut quod. Animi sit perspiciatis esse aut dolor.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(56, 'Enim Quo Omnis Voluptatum Excepturi Temporibus Sit Cumque Qui', 'enim-quo-omnis-voluptatum-excepturi-temporibus-sit-cumque-qui', 3, 109, '2.jpg', 8, 'Magnam animi aut quam et et atque. Inventore illo maxime magnam natus voluptates eos. Occaecati aliquid et aut. Necessitatibus molestiae suscipit modi autem consequuntur. Aliquam temporibus magnam dolor optio expedita praesentium eligendi.\n\nEt tempora est blanditiis exercitationem. Nemo nobis et est et. Est molestiae eius molestiae repellendus non. Minus iste minima hic dolore nemo saepe veritatis quibusdam.\n\nAliquid modi fugiat sed doloribus voluptate. Vel dolorem et iure recusandae et minima. Sit sed porro ea rerum quis. Ipsum ipsa suscipit et nihil.\n\nNostrum provident fugiat quasi voluptatem eveniet molestiae ea. Perspiciatis corporis quibusdam totam qui. Nulla eaque unde optio.\n\nRerum eum id omnis. Sunt id ipsum voluptas quod quo. Rem et corrupti illo sit corrupti aut et mollitia. Cum nihil sunt veritatis consectetur.\n\nEnim non omnis quia magni quae. Officia odio amet sunt atque aut ut. Fugit dolorem totam error sit.\n\nNostrum ex alias culpa ipsa provident dolorem vel minus. Ipsa assumenda voluptatibus fugit eius. Delectus nulla itaque porro iste ipsam. Rerum consequuntur numquam labore odio voluptatem.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(57, 'Non Consequatur Harum Earum Debitis', 'non-consequatur-harum-earum-debitis', 5, 443, '2.jpg', 8, 'Sit quidem et minus eos dolores minus. Praesentium sapiente rerum rerum a voluptatem quo reiciendis. Et suscipit aut quam asperiores eaque et quis.\n\nAssumenda fugiat adipisci officia et. Soluta id et est reiciendis odio quidem doloremque. Quidem ut et quis rerum rerum pariatur qui.\n\nIncidunt est laboriosam et labore sequi sit veniam provident. Omnis est assumenda reprehenderit qui. Consequatur sunt cumque libero rerum consequatur.\n\nVoluptas qui voluptas qui quae. Illo tempora incidunt inventore iste. Harum nihil voluptas nesciunt nisi ad consequatur facere.\n\nSaepe eos dolorem aspernatur sed. Minima sint sed aut qui. Sed rem est voluptatem dignissimos esse facere rerum iusto. Deleniti quasi ut veritatis mollitia.\n\nHarum repellendus facere laboriosam soluta officia. Perspiciatis placeat nam in architecto est deleniti. Magnam nostrum facere non iste est facilis omnis.\n\nEa adipisci ut illum neque voluptatem fugiat placeat. Reiciendis sit quisquam culpa id dolorem. Et ad provident non. Asperiores reprehenderit sed recusandae aut quas vel ducimus.\n\nVoluptatem ea nihil eum quod voluptatem quae laboriosam. Cum labore voluptatem qui neque animi est omnis sequi. Doloremque nostrum nihil aliquid cum aut. Nihil accusamus temporibus quisquam iusto sunt velit dolor sed. Voluptatum exercitationem aliquam nam eos suscipit ea.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(58, 'Ut Repellendus Explicabo Aperiam Laudantium Quis Illo Vitae Aliquid', 'ut-repellendus-explicabo-aperiam-laudantium-quis-illo-vitae-aliquid', 3, 532, '3.jpg', 4, 'Ipsam reiciendis ut sequi ut quo culpa. Occaecati architecto quod in non. Est nihil ex odio doloremque optio rerum quam assumenda. Eveniet aut reiciendis molestiae laudantium repellendus architecto expedita.\n\nQuia ratione eum voluptatum alias rem ut. Voluptatibus exercitationem sunt voluptas placeat natus et.\n\nRecusandae et quibusdam non libero. Non reiciendis itaque illo. Non recusandae dolorem nihil molestias nulla et in.\n\nMinus error possimus dignissimos totam. Ut nam natus quisquam. Ad porro fugiat et minima facilis. Assumenda sapiente corrupti sit consequatur laborum provident.\n\nIure incidunt accusamus libero quam dolorum eligendi. Sit qui libero aut fuga id fuga. Praesentium et amet laborum velit. Quae explicabo inventore consequuntur nemo tempora.\n\nMolestiae est consequatur autem voluptates qui corrupti. Minus et aut culpa minus non qui. Minima alias vel vel sapiente velit. Aut voluptatibus et eius dolorum voluptas.\n\nAperiam mollitia qui iusto quibusdam quia quidem. Ut omnis aut omnis. Natus nam tenetur enim quaerat. Ea veniam at nihil ipsa eaque praesentium animi. Laudantium sed facilis voluptatem sit cupiditate.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(59, 'Doloribus Occaecati Sequi Quo Velit Est Voluptates Earum Sunt', 'doloribus-occaecati-sequi-quo-velit-est-voluptates-earum-sunt', 4, 479, '3.jpg', 8, 'Dolores quisquam iste ut. Ad tempore ut et velit. Quae veniam culpa quibusdam voluptatem recusandae repudiandae. Ut voluptatem vero accusamus expedita soluta a.\n\nQuasi autem omnis quis quas molestiae eum error. Eveniet maiores et autem qui. Non illum itaque omnis qui sed illo.\n\nExcepturi ratione autem voluptatem ipsum atque. Nesciunt quis sequi vitae. Pariatur dolorem quaerat aut quo temporibus et qui. Aliquid distinctio iste nesciunt quasi aut ut error.\n\nTempora est et soluta ut. Tempora et sunt deleniti aut inventore. Quam voluptate aut aut laboriosam voluptatibus ipsam aliquam aut. Eum voluptatibus necessitatibus magni sed.\n\nEos temporibus quidem aperiam repellendus repellat nostrum illo. Dolor ipsa dignissimos tenetur dolor autem. Amet quibusdam pariatur id voluptates. Maxime est est sed vel ea voluptatem illum.\n\nInventore consectetur pariatur quia. Recusandae quod molestiae incidunt explicabo velit. Reprehenderit quis qui est non delectus saepe. Reprehenderit eaque et autem voluptas omnis.\n\nSit cumque quia voluptatem veritatis libero in tempore. Voluptatem quia eos optio non eius. Id qui voluptates numquam libero. Recusandae aut corporis error. Quibusdam quae unde nulla esse excepturi aspernatur.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(60, 'Non Est Quaerat Quasi Numquam Ipsam Quo Et Quis', 'non-est-quaerat-quasi-numquam-ipsam-quo-et-quis', 1, 644, '3.jpg', 9, 'Porro praesentium quasi fuga. Id illum est eveniet quos dolorem. Ut dolores quibusdam ullam minima iure cum et.\n\nMaiores tempora laudantium et quae. Minima aut aut incidunt beatae est neque. Aut dolor odit enim consequatur sit aliquam.\n\nModi nisi et amet et recusandae incidunt et. In omnis quia omnis unde. Rem maiores totam dolores harum. Excepturi hic voluptas quibusdam eligendi nisi.\n\nQuis consequatur non consequatur est. Nobis est officia ipsum aut ipsum eos labore earum. Consequuntur omnis voluptate sint deleniti. Culpa laboriosam eveniet consequatur et necessitatibus vero voluptates.\n\nIpsam voluptatum provident ab quidem. Asperiores aut consequatur rerum sit harum ducimus distinctio. Maxime reprehenderit repudiandae incidunt aut nisi minus. Sed ea aperiam est ut.', '2023-04-16 02:07:53', '2023-04-16 02:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `structural_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `functional_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formal_educations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nonformal_educations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experiences` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publications` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `photo`, `address`, `email`, `structural_role`, `functional_role`, `formal_educations`, `nonformal_educations`, `experiences`, `publications`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Freddy Carter V', '1.png', '6459 Cordia Greens\nMullerbury, ME 98991-7555', 'kwisozk@hotmail.com', 'Roof Bolters Mining', 'Butcher', 'Quas et dolor ipsa reiciendis. Molestias quaerat sit reiciendis dicta. Itaque omnis quod in non.\n\nMagnam et alias velit eos quia odit. Fuga hic voluptates ratione molestiae. Natus dolores ut ut ut.\n\nRem qui expedita vel debitis voluptas ea. Dignissimos maiores ducimus recusandae labore repellat molestiae. Delectus rerum perspiciatis recusandae nulla. Eos et incidunt nihil iusto.\n\nDolor veritatis fuga similique delectus veniam perspiciatis voluptatem adipisci. Perspiciatis qui quia reprehenderit voluptas ut ut est. Ut sed blanditiis et modi velit alias ut.', 'Enim et eius in hic. Iure aut aut quidem eum. Dignissimos ducimus omnis tempora ducimus illo. Quia laborum doloremque blanditiis distinctio ut.\n\nAd minima dignissimos quo mollitia ullam quidem sequi. Ea laudantium sequi ducimus qui nisi voluptatem vitae. Unde quia similique ut quos ad dolor fuga quis. Ipsum omnis porro natus. Consequatur repellat doloribus corporis aut.\n\nCumque impedit tempore libero et omnis unde qui et. Iure iste optio commodi ratione reprehenderit corrupti minus voluptas. Est et quod incidunt sit iure nihil.', 'Et odio quia voluptas temporibus aut cupiditate esse. Voluptatem velit autem natus in eos. Facere praesentium ipsa consequuntur aut perferendis. Dolore tempora debitis perspiciatis voluptatem.\n\nEt et numquam et. Qui non ut labore quia vero quis. Perspiciatis itaque explicabo sint magni non ad libero.\n\nMaiores reiciendis odio voluptatem repellat voluptatum illum. Debitis quae soluta est pariatur enim. Vitae qui hic sed in non dolor. Qui est velit impedit ipsam architecto praesentium.', 'Qui aut quia nihil voluptatem deleniti sit similique enim. Est inventore qui distinctio sed laudantium. Et quaerat ipsum reprehenderit sapiente fugiat est.\n\nExplicabo earum porro rerum cumque. Rerum magnam et dolor cupiditate similique. Qui dicta excepturi accusamus at.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(2, 'Freddie Hintz', '3.png', '37730 Ernestine Garden Suite 172\nEast Noe, NV 40657-1770', 'stephania.goyette@crist.com', 'Well and Core Drill Operator', 'Milling Machine Operator', 'Suscipit ut beatae voluptatem nisi eaque qui. Nobis sequi doloremque eaque.\n\nDistinctio odit sed possimus ratione quia. Voluptatum sapiente at eum saepe. Nihil sed quos voluptatem aspernatur accusamus optio.', 'Tempore praesentium suscipit dolor. Sed commodi nesciunt repellat cum. Voluptatibus nesciunt amet eligendi repudiandae est ut maiores.\n\nPlaceat et eos amet explicabo voluptatem eum eaque. Modi ut qui rerum animi est dolorem voluptatem et. Velit architecto est ipsum dolorum corrupti perspiciatis. Praesentium est vel et fugiat dolor omnis iure fuga.\n\nUt adipisci facilis qui sit ratione. Nemo aspernatur maiores nihil voluptatem dolor. Porro suscipit dolorem voluptas esse. Saepe voluptatem labore corrupti.\n\nMolestiae voluptas libero ut officiis quis id. Quia sunt corrupti nulla voluptatibus. Repudiandae ut quia aspernatur vel sunt saepe. Qui totam consectetur tenetur maxime omnis nam libero.', 'Reiciendis neque a consequatur placeat ullam. Cumque provident tempora maiores exercitationem maiores. Enim ratione at nostrum libero. Sint ea dolorum minus omnis eum.\n\nSit sit dicta dolores ad quos nesciunt. Et reprehenderit architecto omnis eaque voluptate accusantium ab.', 'Error nihil velit natus mollitia eligendi. Est sit laboriosam ut accusamus aut. Quidem sit sed vero nostrum debitis. Optio dolorum voluptates sunt aspernatur doloremque praesentium.\n\nAsperiores omnis quidem iste. Et eveniet facilis quibusdam possimus provident veniam. Id neque sed delectus mollitia.\n\nNulla quo eius corporis quo iure ut eos. Repudiandae perspiciatis dicta vitae sapiente minima dolor aliquam maiores.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(3, 'Joshuah Hackett', '7.png', '8257 Durgan Estate\nCrystalfort, PA 28304', 'daphnee54@gmail.com', 'Numerical Control Machine Tool Operator', 'Production Manager', 'Voluptate quaerat laudantium sed voluptate. Reprehenderit autem commodi culpa dolore voluptatem atque iusto. Dolores est est est quia aspernatur qui.\n\nAccusantium dolorem voluptates modi laboriosam totam ut. Illum ut dolorum ut doloribus. Praesentium repellendus dolorem aperiam beatae in.', 'Placeat illum molestiae repellat hic cumque id. Earum quo illum quaerat velit consectetur eius architecto. Perferendis magnam et totam quis vel qui et. Et voluptate voluptas nisi et consequatur. Pariatur consequuntur expedita cupiditate ut ratione adipisci.\n\nLaboriosam nisi in est. Voluptatibus mollitia pariatur voluptatem qui dolorem eos. Quidem maiores aliquam placeat nobis.\n\nDolorem accusamus ipsam iusto est nobis facilis ratione. Eos repudiandae quo dolorem aut architecto suscipit. Dolores possimus error quia omnis praesentium modi natus. Quam officiis placeat ut harum incidunt cupiditate natus.\n\nConsequatur repellat et commodi vero. Sit culpa temporibus dolor nisi ducimus. Perspiciatis consequatur nemo recusandae pariatur tenetur mollitia sint aut. Consequatur quia magnam nemo veniam necessitatibus aut consequatur.', 'Odit facilis reprehenderit culpa accusamus. Beatae magni qui quod occaecati porro.\n\nAb nostrum suscipit nobis veritatis et dolor deserunt. Debitis sequi accusamus minus veniam nesciunt. Nemo est autem et deserunt asperiores. Nisi quasi et cumque modi voluptas.\n\nNatus ut ut laborum qui. Magni a aut eum et. Voluptatibus dolores voluptatem non. Iste hic quisquam facere nam provident.', 'Excepturi in dolore blanditiis labore excepturi sed numquam. Ex aspernatur laborum ipsum porro eum dolores odio. Excepturi dolorem culpa non.\n\nNesciunt dolores hic expedita et architecto. Veniam saepe similique magni rerum et et. Numquam omnis suscipit distinctio incidunt.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(4, 'King Dietrich', '5.png', '55413 Grant Track Apt. 391\nRobertsburgh, NC 27501-2848', 'jenkins.rosamond@yahoo.com', 'Optical Instrument Assembler', 'Molding Machine Operator', 'Saepe eum officiis quis quasi aut aliquid. Et expedita aperiam dolor. Excepturi nesciunt accusantium corrupti consequatur consequuntur. Quisquam voluptas fugit iste cum hic cum.\n\nNam aut perspiciatis unde autem quia. Tempora et aut et reprehenderit. Impedit quasi reiciendis harum.\n\nSed et sapiente accusamus qui. Illum aspernatur dignissimos ea non illum. Qui odit voluptas non omnis dolores non voluptatibus.', 'Itaque veniam iusto et dolores at sit non. Quos velit nulla eum et. Sed quia laborum aperiam velit.\n\nBeatae incidunt provident et labore necessitatibus non. Placeat pariatur voluptate necessitatibus ut occaecati. Nulla a rem et. Rerum ut quia ut qui.\n\nEa et est facilis et. Sequi laboriosam animi perferendis magni assumenda praesentium placeat ab. Totam autem quia molestias rerum consectetur sed. Suscipit blanditiis est totam architecto vel iusto possimus. Quod non consequatur eveniet eligendi dolorum repellendus.\n\nConsequuntur delectus aliquid est iste dolor. Qui consectetur nisi saepe. Nam qui et quis id sunt sequi.', 'Consequuntur laborum repellat ea velit beatae atque maiores. Quibusdam esse similique adipisci impedit nulla fugiat. Voluptates et expedita est ea voluptatem nam dolores nihil. Expedita et et nemo deserunt harum porro.\n\nEst eum nemo ut eius eum magni. Consequatur ratione ipsam quis et et nihil dignissimos ad. Nulla rerum ut ducimus veniam praesentium.', 'Est velit quam ut sapiente at. Et dolor voluptatem ullam alias. Alias nihil voluptates quasi iste ut. Consequatur magnam similique impedit quas exercitationem ratione. Dolor et qui eos quia inventore.\n\nUnde aut incidunt perferendis placeat quis sunt doloremque ut. Tempore omnis saepe ab sunt recusandae ea odio quia. Voluptatem aut fuga omnis repudiandae harum. Qui rerum aut aut consequatur autem nulla consequatur.\n\nIpsa dignissimos quae corporis nesciunt. Voluptatem in incidunt aut cum quia occaecati corrupti. Repudiandae nostrum animi aspernatur numquam. Ut tempora sit velit doloribus rem.\n\nConsequatur perferendis cum dolore doloremque distinctio. Aut impedit atque omnis reiciendis exercitationem distinctio voluptates. Sed est voluptatem aut dolor doloribus vel.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(5, 'Hannah Altenwerth', '3.png', '3329 Ebert Mountain\nRobertston, AR 23166', 'arno33@yahoo.com', 'Amusement Attendant', 'Speech-Language Pathologist', 'Maiores harum dolorum omnis omnis atque provident ex. Nesciunt rerum consectetur sint adipisci voluptatem. Quibusdam aut et eum eius ea. Dolore incidunt est animi quas voluptates unde quis blanditiis. Accusantium ea aut deleniti omnis enim et.\n\nSoluta neque esse ab dicta facilis. In esse et quae velit.', 'Doloribus eaque quibusdam quaerat ipsum ut quo ut debitis. Aut qui et recusandae ratione et.\n\nSit officia veritatis aut consequatur sed amet. Dolore qui aut omnis in repellendus nihil assumenda est. Necessitatibus aliquam voluptate possimus in. Ipsam error necessitatibus rerum id.\n\nMagnam et dolor doloribus molestias exercitationem explicabo ratione perferendis. Temporibus et accusantium odit laborum eos. Facilis enim qui est at doloremque tempora. Voluptas vel iste eligendi rem aut minima.\n\nOmnis possimus suscipit sed asperiores mollitia culpa. Quae amet et voluptatum et. Neque nam dolor consequuntur exercitationem quod magni.', 'Et nisi aut aliquam enim amet. Ullam officia ullam et et tenetur. Aut earum ut dicta quod dolores sapiente expedita. Doloribus a eaque aliquid.\n\nAb est eligendi autem debitis iusto quod sit. Recusandae eligendi voluptatum eveniet iure possimus architecto asperiores. Vel aut delectus iste autem et.', 'Quaerat error ex aut omnis adipisci corporis. Ut debitis ad excepturi hic rerum. Praesentium perspiciatis similique neque earum.\n\nTempora beatae autem dolorem dolor. Molestiae est accusantium veniam incidunt et. Sit sequi itaque adipisci eveniet rem. Quisquam quos labore quis aut explicabo.\n\nNam quibusdam laborum quo aut quia. Nemo ab libero voluptatem mollitia impedit in non. Assumenda maxime repellendus et non.\n\nTotam praesentium autem sequi facere. Nesciunt culpa dolorum ratione velit sit odio. Ipsa rem dolor ipsam voluptatem. Voluptatem minus incidunt sint laborum molestias quis.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(6, 'Prof. Adella Swift Sr.', '7.png', '487 Barrows Ford Suite 393\nPort Emiliano, IA 71743', 'baby97@gmail.com', 'General Farmworker', 'Travel Clerk', 'In cum facere nam natus. Saepe excepturi laudantium odio eius quo.\n\nPlaceat quia ut qui quisquam. Et placeat fugiat assumenda magni deleniti vero.', 'Reiciendis odit quae modi. Enim est illum et ratione aut. Quia voluptas consequuntur eum sint qui.\n\nDolorum cumque neque id. Suscipit dolorem atque tempora expedita. Sequi dolorem aut voluptatem voluptatem ut aliquam fuga. Necessitatibus similique voluptas neque laborum aut quae. Commodi molestias ut eligendi.', 'Aliquam id est dolor. Et iusto possimus itaque voluptas ut maiores saepe. Architecto minus reiciendis et soluta quas nam laboriosam. Consequatur dolore quae maxime deserunt eos. Eveniet repudiandae voluptatem nam quia.\n\nOmnis id eum sunt ea nihil facilis. Cum blanditiis sed hic veritatis velit. Magnam eius quibusdam dicta.\n\nPerspiciatis in vero est nisi praesentium vero debitis. Officia doloribus temporibus sit sit. Aspernatur quo quod odio odit.\n\nAmet voluptas voluptatem et et facilis dolor et. Quae quidem in sed ad vel nihil iste.', 'Quaerat eos laborum pariatur doloribus molestiae porro fuga. Doloremque perferendis in odit rerum voluptates nihil amet. Deserunt et autem sequi eos aperiam eveniet consequatur. Ut aut quidem assumenda dolores magni voluptates.\n\nSaepe sit et ipsam architecto accusantium quis qui. Nesciunt atque ut dolorum cupiditate. Ullam culpa magnam hic id aut sed aut ad.\n\nNeque molestiae eius quisquam neque accusamus sint adipisci. Omnis sit dignissimos nostrum soluta quia. Praesentium sint non voluptas harum.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(7, 'Lilly Corkery', '7.png', '701 Werner Mill\nLake Mercedesburgh, NJ 88231-0513', 'ellie06@rolfson.com', 'Sys Admin', 'Recyclable Material Collector', 'Aliquid reprehenderit ex minus ipsa quasi beatae. Recusandae et est voluptatem quibusdam magni eaque a. Sed ea qui adipisci et qui aut recusandae. Et veniam quia omnis sed dolor numquam sint.\n\nMaxime id doloremque tempora nisi ratione ad. Et voluptas rerum quis nulla esse omnis ea. Aperiam culpa consequuntur maiores aut quo est facilis.', 'Aut est sed quisquam odit modi. Repellat voluptate in facere aut. Est porro recusandae deleniti adipisci quidem. Occaecati pariatur iure adipisci magni qui et. Sequi et nostrum aut inventore voluptatem pariatur.\n\nEx omnis iusto dolores velit velit qui. Quis molestiae molestiae nisi sunt inventore maiores consectetur. Qui maxime saepe alias est aut.', 'Omnis voluptatibus voluptatibus voluptas in laboriosam et quod. Id autem itaque qui. Eum ratione nesciunt natus temporibus ullam ab.\n\nAccusamus cum nulla iste aut ut in blanditiis. Explicabo aut quia expedita qui et. Quisquam molestiae facere voluptatibus nobis.', 'Nobis saepe quod quo tempore ut tenetur voluptatem. Ducimus architecto tempore sed ratione repudiandae voluptatem id.\n\nIn omnis consequuntur distinctio sapiente cumque accusantium. Ut reprehenderit qui quos voluptate voluptatem voluptatum. Neque qui consequatur placeat. Quidem facilis necessitatibus eum nihil.\n\nOdit rem natus et corporis. Quis voluptatem aspernatur animi nihil aut aut. Saepe consequuntur odio doloremque consectetur ratione itaque.\n\nEum id omnis labore veniam qui id. Odit temporibus quae eaque voluptatem nisi. Magnam itaque consequuntur vero.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(8, 'Dr. Mireille Langosh', '2.png', '7155 Christiansen Pine Apt. 947\nBahringerberg, ND 14609-2858', 'gusikowski.heber@hotmail.com', 'Head Nurse', 'Aircraft Cargo Handling Supervisor', 'Harum qui rem sunt quisquam deleniti non. Aut autem nihil quo ut accusantium amet voluptatibus. Fuga necessitatibus ipsa et error. In dolor qui quia magni.\n\nEt velit maiores consequatur. Non velit ut vel nemo doloribus.\n\nUt qui ut natus voluptatem omnis at est. Ipsum eius qui provident facilis occaecati quidem. Commodi voluptatum rem voluptatem ut modi id.\n\nProvident neque ipsa molestiae. Eius molestias suscipit id asperiores voluptatum. Excepturi voluptatum deleniti placeat nesciunt est aut omnis. Aut voluptas fuga qui odio perspiciatis impedit fugit. Dolores omnis esse eum aliquid hic tenetur a.', 'Fugiat sapiente tempora quidem. Aliquid quia qui aspernatur id animi enim numquam. Aliquid commodi omnis provident molestiae voluptatibus rerum ut. Voluptatem rerum tempora modi odit est.\n\nAut nobis nemo corrupti. Voluptate in dolores magnam ea non tempore. Qui delectus sapiente et labore aspernatur minus accusamus.', 'Quos vel animi eligendi et. Corporis sunt minima nemo quidem.\n\nPorro mollitia soluta minima sunt. Sed autem sunt ea at. Et aut nisi eum commodi ea adipisci suscipit. Harum et aliquid tempore.\n\nEius suscipit omnis praesentium nihil quia qui doloribus. Corrupti porro quia perspiciatis possimus.', 'Velit quidem quo beatae ipsa qui. Qui sed quo magnam aut. Exercitationem animi blanditiis nihil autem labore omnis vero. Voluptas reiciendis sequi ipsam sint deserunt numquam temporibus aut.\n\nSit nulla impedit sunt ducimus dolor ut ipsa. In vitae blanditiis neque cumque et molestiae rem. Itaque eius harum veniam sed.\n\nPraesentium voluptas mollitia suscipit consequatur quod voluptatem sint. Necessitatibus libero porro libero ut repellendus expedita. Et doloremque magnam fugit consectetur assumenda. Commodi repellat eos illum eligendi hic optio qui saepe.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(9, 'Keshaun Nicolas', '1.png', '201 Bernhard Cliff\nPort Cheyennetown, MT 74569', 'ccarter@yahoo.com', 'Webmaster', 'Armored Assault Vehicle Officer', 'Facere cupiditate consectetur sunt tenetur. Recusandae itaque possimus autem est ex corporis autem. Possimus ut facere esse dolores deleniti voluptas. Expedita quam aut occaecati ut possimus.\n\nLibero non eligendi delectus facilis quo. Est ut voluptatem omnis. Molestiae magnam consequatur ex consequatur ut eaque.\n\nMollitia voluptatum nihil tempora quod incidunt consequatur. Doloribus veniam ut dicta libero optio cupiditate quia. Eos nisi aut qui ad. Ut itaque omnis nihil illo maxime harum.\n\nAliquid et fugit earum et. Est asperiores quia occaecati nobis sit delectus incidunt. Mollitia blanditiis libero aperiam aut.', 'Aut eius vel eligendi beatae officia quia. Cupiditate quis natus ut ratione non adipisci ratione. Quo cupiditate et ratione deleniti.\n\nNihil quas quae accusantium dolores. Ea debitis enim velit quas eligendi consectetur maxime. Ipsum incidunt sunt natus recusandae ullam ipsam omnis. Perspiciatis cumque esse voluptatem.', 'Magnam nesciunt vitae corporis error quidem laudantium. Blanditiis dolores est vitae odit et delectus fugit. Velit repudiandae et et at delectus. Nostrum autem ducimus dicta ab alias.\n\nAut consequatur ab laborum error est voluptate molestiae. Atque cumque quod id rem ab ex sit. Est voluptas excepturi aut a qui.\n\nEst rem deserunt repellendus hic eius maiores dolorem. Ea debitis quo enim impedit qui ut vel. Velit earum aut corporis voluptate. Consequatur facere aut rerum repellat eos. Porro iste quia vitae saepe officia natus.\n\nRepellat maxime odio amet sint aut. Totam eos non sed incidunt at quibusdam. Voluptate ipsum tempore voluptas ipsum est.', 'Atque et laudantium possimus magni unde. Odio consequatur quod ipsa saepe beatae est non voluptas. Saepe fugiat culpa molestiae adipisci.\n\nEum corrupti et non. Optio ipsa dicta ut ipsam omnis harum. Blanditiis repellat nihil sed ab sint et et.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(10, 'Dr. Hulda Casper I', '2.png', '32821 Gibson Roads\nEast Richie, KS 81093-3355', 'nebert@yahoo.com', 'Healthcare', 'Industrial Engineer', 'Quam dolor et facere tempore officiis similique qui. Omnis ut quos ipsum explicabo natus natus. Vitae delectus eaque reiciendis aut velit.\n\nSunt sunt sed accusantium eaque laborum. Magnam et omnis porro vero quia. Aspernatur libero et et voluptatem maiores nemo accusantium. Et aut mollitia perferendis atque sunt assumenda.', 'Quia aperiam molestias quia. Ut illum dolores qui exercitationem officiis nihil velit. Totam corporis sint sint architecto repellat accusamus velit. Consectetur tenetur nihil ea facere quia.\n\nAccusamus officiis nemo illum eos quod culpa hic. Non voluptas et perspiciatis harum aut sit. Neque est facilis et officiis. Ut fugiat sapiente ea magnam sint non.', 'Error consequuntur voluptatem similique velit ex et dicta delectus. Suscipit atque dicta autem quibusdam. Non debitis aspernatur aperiam ullam et quam.\n\nAnimi omnis nam est aliquam aliquid quia excepturi. Qui dolores et voluptate temporibus sed et. Excepturi sapiente et voluptates blanditiis reprehenderit id hic.\n\nVoluptas corporis quos reiciendis blanditiis excepturi. Ullam adipisci perferendis voluptatem occaecati enim beatae. Iure labore est doloribus quis reiciendis reiciendis. Officia voluptates qui at eaque et maiores.\n\nMolestiae sed laudantium sapiente quis vero. Enim natus nulla accusamus ullam et culpa. Sed distinctio consequuntur harum iste aliquid autem ea magnam. Reiciendis aliquam et est velit voluptate sed qui. Delectus dolorum impedit qui nihil consectetur.', 'Voluptatum dolor quas tempore amet non dolor. Qui excepturi officiis et nemo autem aperiam sapiente. Ex quam sed quis dolorum ut voluptatem. Aut omnis quo consequuntur et ducimus sunt autem. Minima provident totam enim.\n\nSimilique aut nemo quis. Adipisci suscipit necessitatibus totam sed est. Non eligendi dignissimos numquam officia ullam ut. Perspiciatis quis reiciendis et.\n\nLabore possimus tempora nulla cupiditate similique dolor quibusdam nesciunt. Nam quam iste est hic consequatur. Mollitia debitis possimus esse neque. Atque nesciunt aliquam ut quo.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(11, 'Gaylord Heidenreich', '1.png', '593 Valentina Passage\nNew Gregoriashire, GA 89407-3344', 'sydni79@walter.info', 'Railroad Switch Operator', 'Paralegal', 'Modi consequatur suscipit consectetur consequatur. Nulla cum consequuntur non iusto deserunt. Omnis voluptas nisi quis et ea.\n\nDistinctio laudantium iusto qui omnis. Occaecati et sit inventore. Dolores vitae quia exercitationem cum quis explicabo et.\n\nHarum molestiae quo quibusdam culpa quae. Cum eius velit quia laboriosam similique vel. Et omnis ratione ea quis voluptas.\n\nQuia sed dolorum perferendis esse dolores a. Debitis officia odio optio et ut. Asperiores et nostrum ad distinctio perspiciatis debitis. Voluptatem error fugiat porro quia sed blanditiis doloremque.', 'Aut iste sequi suscipit et repellat alias eligendi. Dignissimos fugit necessitatibus et architecto enim autem excepturi eum. Quo et quaerat omnis dicta totam porro beatae. Hic deserunt laborum voluptates.\n\nEius voluptatem quia quia inventore. Enim cupiditate repudiandae nihil reprehenderit expedita sint illum.', 'Veniam ratione dolor et aut quos voluptatem facere. Culpa officiis molestiae illum itaque voluptates voluptates. Cum illo inventore illum in.\n\nEt ut sed repellat. Error consequuntur accusamus quibusdam aut possimus laboriosam et. Delectus sunt consequatur ratione commodi odio distinctio molestiae. Tempora provident aut debitis molestiae labore.\n\nAspernatur et dolor voluptatem nesciunt id est reiciendis. Ab qui occaecati cupiditate non. Ducimus dolore dolorum exercitationem quo aperiam. Non molestiae natus culpa.', 'Aut ea est dolorem. Qui ut velit quis. Temporibus eius corrupti itaque rerum autem hic ea ipsum.\n\nCum occaecati consectetur ut consequatur rem qui. Ipsum molestiae laborum aut eos aspernatur. Reiciendis ut qui odio et.\n\nQuisquam minus consequatur quos error rem voluptatem aperiam. Vel assumenda deserunt incidunt. Voluptates dolorem rerum expedita aut est similique.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(12, 'Judah Murphy', '7.png', '2141 Bayer Rue\nKozeyland, ID 31774-3653', 'botsford.palma@gmail.com', 'Vocational Education Teacher', 'Locomotive Firer', 'Sapiente quasi autem maxime voluptates nisi ut. Sed possimus repellat accusantium. Et quis voluptatem error.\n\nAb voluptates placeat animi. Eaque cumque atque et culpa ex ducimus. Quia aliquid laborum dignissimos vero. Quidem vel est et doloremque.\n\nEst atque ea sit. Et aliquam et nihil fugit. Ut sit omnis exercitationem rerum numquam iure. Doloremque assumenda debitis quaerat ad et.\n\nQuasi tenetur quia earum voluptatem quae ab. Cupiditate non et et non aut illo. Provident dolor omnis consequatur harum rem provident amet. Est aut enim atque odit tempora.', 'Voluptatibus ab velit aut harum officia voluptates officia harum. Et incidunt aut expedita qui. Aliquid facere iste ipsam dolores sed commodi.\n\nQuis labore minima ea velit. Exercitationem magni veniam totam corrupti labore ad qui praesentium.\n\nDolores porro illo consequatur nisi omnis dolorum. Architecto ea deleniti aut quia. Ex quis architecto a voluptatem excepturi.\n\nImpedit voluptas hic sed at molestias voluptas sunt. Iusto ipsum dicta reprehenderit tempore error voluptate facilis illum. Maxime eum optio hic in. Perferendis consectetur et sequi.', 'Recusandae sunt ab deserunt dolorum sed est. Qui qui provident rerum maxime modi in. Ipsum harum quibusdam eum et.\n\nArchitecto perspiciatis molestiae labore quia reiciendis veniam. Quis perferendis laboriosam adipisci ea eaque sunt quasi. Quo molestiae ipsa saepe tempore laborum dolor facere illum.\n\nDeserunt voluptatum eveniet excepturi sint non. Error aliquid vel dolor exercitationem in aut voluptatem. Excepturi corporis accusamus similique distinctio sequi.', 'Est qui sit et voluptatem. Ducimus quidem expedita nemo voluptates qui porro esse est.\n\nVoluptate alias debitis molestiae accusantium ex tempora. Amet nihil dolor quo quisquam vel. Voluptates ad nobis laboriosam debitis ut.\n\nConsequatur omnis possimus et corporis non. Natus quis consectetur dignissimos vitae praesentium minus. Culpa dolorem error quo. Incidunt tempora aut ad nihil alias fugit fugiat distinctio.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(13, 'Prof. Dawson Mann', '7.png', '96678 Emard Island\nSarahstad, NV 55048-3092', 'albertha.reichert@krajcik.com', 'Brokerage Clerk', 'First-Line Supervisor-Manager of Landscaping, Lawn Service, and Groundskeeping Worker', 'Rem itaque maxime ut. Dolores qui quibusdam iste dolorum. Voluptatem quae unde accusamus consectetur dolores eaque.\n\nRecusandae similique quibusdam unde vel. Ratione aut commodi maiores et. Dolores quis nulla est iure.\n\nNecessitatibus maxime ad itaque sunt voluptatem consequatur. Id consectetur minus voluptates officiis recusandae neque odio. Nulla atque assumenda voluptatem accusantium aperiam nesciunt dolorem. Nemo saepe hic sit et eum.\n\nEt tenetur soluta eos sed vero aperiam culpa. Aut ipsum explicabo esse totam molestiae. Et et eligendi est harum est. Repellat est rerum dolore ipsam neque.', 'Modi est itaque illum aut natus et rerum. Quibusdam repellendus repudiandae quis ea laboriosam debitis. Tempore dolore doloremque quis et voluptate. Eius maiores ab in a voluptatum.\n\nConsequuntur blanditiis omnis voluptas. Eaque qui aut sit ullam. Numquam id aut provident non. Nulla eum voluptates perspiciatis molestiae laudantium ea.', 'Modi laboriosam magnam ad eum aut. Rerum doloremque facilis aspernatur placeat aliquam consequuntur enim. Debitis dolores quam dolores quia.\n\nUt earum nesciunt enim non libero voluptas. Optio recusandae tenetur accusamus maxime facere soluta. Optio ex non accusamus quasi.', 'Quia suscipit nihil dolorum nostrum doloribus ut. Est possimus molestiae laboriosam debitis et dicta ad corporis. Consequatur ut quam harum quod perferendis.\n\nSimilique sint aliquid eum iste accusamus facilis. Esse accusamus dolorum molestiae officia et eum nemo. Fugit officia amet sint veniam laborum maiores dicta. A repellat qui delectus et sint rerum consectetur.\n\nSaepe qui dolore eum voluptatem ipsa veniam tempora. Placeat ducimus eum eveniet temporibus nostrum repellendus. Atque ex quae rerum sunt. Esse aut blanditiis at incidunt doloribus sit quis.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(14, 'Keven West V', '3.png', '6187 Annie Junction Suite 511\nTreyfort, AR 06759', 'sally22@yahoo.com', 'Respiratory Therapy Technician', 'Machine Tool Operator', 'Aliquid eius et deleniti et ut occaecati dignissimos. Ab quos omnis inventore voluptate. Iure suscipit enim dolorum consequatur.\n\nIn nihil expedita ea enim. Excepturi minima aperiam praesentium eaque amet pariatur. Debitis nisi non voluptates numquam.\n\nConsequatur veniam voluptas quidem omnis et. Maxime rerum ut reprehenderit aut assumenda qui. Ipsum non iure molestiae ipsam labore deleniti.', 'Nihil commodi vel autem nemo ut culpa. Consequatur officiis ex repellat ducimus unde qui. Ut facere eius corporis dolor.\n\nQuod dolorem fugit natus laboriosam atque eum. Adipisci sit laudantium distinctio natus tenetur. Reiciendis excepturi et maiores aut amet. Est voluptatibus numquam nesciunt voluptatibus. Dignissimos magni dolor est perferendis quo.', 'Voluptatum dolorum consequatur tempora. Tempore qui et quia ut atque.\n\nSunt recusandae optio quis quam. Officiis distinctio placeat odio. Totam autem non maiores sit.\n\nEt consequuntur debitis architecto quasi. Eveniet quis est hic doloribus. Soluta facilis facere dolorem laborum. Repellat itaque porro rerum.', 'A et repudiandae dolores voluptatibus dolorem veniam. Enim culpa velit voluptates voluptatem repudiandae omnis eum. Voluptatem impedit voluptates nemo ratione. Reprehenderit unde aut nihil.\n\nSed perferendis mollitia quia magnam et natus totam aspernatur. Dolores enim aut corporis quod qui. Expedita commodi suscipit et.\n\nMagnam minima quia sed culpa quia ducimus. Esse quae voluptates quia deleniti quia id ab ipsum. Eius eius ut rerum voluptatem culpa accusantium deleniti. Expedita modi laudantium qui consequatur.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(15, 'Agustin Walter', '2.png', '9471 Schroeder Station Suite 953\nBrentshire, DE 04409-2942', 'theresa.jaskolski@johnston.org', 'Physician Assistant', 'Tree Trimmer', 'Quaerat aperiam dolorem vero aut commodi. Culpa voluptas libero vel corrupti enim praesentium. Recusandae eum quia sunt qui soluta ab.\n\nEst animi explicabo veniam est. Ut numquam dolor ut sequi illo laboriosam. Earum suscipit corporis maxime commodi distinctio beatae. Dignissimos voluptatem sequi quos autem voluptatem ad qui sequi.', 'Magni quia autem provident tempora. Corrupti deserunt officia molestias beatae ut. Est suscipit sit voluptatum. Sint iure dignissimos vitae ea. Dolore consequatur aut hic impedit laudantium laudantium voluptatibus.\n\nVel beatae atque alias consequatur illo vel odit. Id molestiae aut quod harum omnis eum. Vel aspernatur vitae officiis incidunt sint error et.\n\nConsequatur accusamus aut sequi fuga. Nobis quod vero alias odit quis. Qui ut veritatis eius laudantium similique rerum fugiat molestias.', 'Accusantium ab at et molestias asperiores. Inventore minus ab iusto fugit ipsam tempora sit. Odit ex natus et molestiae.\n\nImpedit consectetur et quo reiciendis sint quam quis. Quam quia ut quae eligendi accusantium accusantium dolor. Dolores est sit aut ea quisquam fuga. Et voluptas eligendi fugit eaque aut ipsa voluptates. Qui sit officiis occaecati et officiis cumque ut.\n\nNemo vel quia rerum maxime fugiat quo ex qui. Nobis expedita facere quis illo. Dolores ratione aut nam sequi voluptas. Dolorem eaque beatae quam cum vero. Quam quasi quis eum omnis dicta et.', 'Natus expedita amet quo voluptatem. Incidunt ut laboriosam aut molestiae quia animi tempora. Est eos commodi ea ex aut. Ea debitis ullam quia. Eligendi enim fugit cum laborum et dolores cum.\n\nMaiores possimus nostrum ut sint explicabo totam doloribus. Ut quo nemo magnam est soluta. Eum ab quam nobis praesentium. Aperiam quisquam fugiat recusandae asperiores consequatur tempore delectus.\n\nVitae qui dolore dignissimos aut quidem deserunt consequuntur eum. Accusamus ut fugiat quo quis officiis magnam repellendus veniam.\n\nNemo eius quas et amet aliquid quia. Quia dolorum ut omnis eum. Et illo molestiae tenetur laboriosam sit aut.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(16, 'Edyth Carroll', '4.png', '9873 Auer Glens Suite 540\nSouth Maribel, MI 70789', 'rferry@yahoo.com', 'Garment', 'Forming Machine Operator', 'Itaque distinctio incidunt et et. Culpa quia officia minima voluptatum quod quibusdam ducimus ad. Voluptates dolores illo officiis sed et odio.\n\nAsperiores soluta saepe quam in tempora veniam. Atque cupiditate molestias deleniti harum. Modi non quam distinctio qui et.\n\nIure exercitationem consequatur repellendus iste iste placeat. Consequatur quia officia quis sunt beatae quia. Dolorum qui enim voluptatum expedita totam. Ratione consequatur ut minima reiciendis amet qui dolorem quod.', 'Sed odit sed sit totam culpa ullam sint. Et quis pariatur et aliquid iste omnis quo. Laborum excepturi dolorem soluta sit ut excepturi consequuntur.\n\nConsequatur atque esse quia et voluptatem. Reiciendis tenetur recusandae laudantium omnis perspiciatis ratione ad. Quas autem deleniti molestiae fuga quia. Quidem eveniet ea iste totam magni ut soluta.\n\nQuia ipsam aliquid non aperiam velit. Facilis consequatur et distinctio soluta id mollitia. Omnis officia aliquam recusandae beatae.\n\nRepellendus in et ullam saepe nihil in. Possimus distinctio cupiditate molestias aspernatur eligendi. Perferendis numquam at rerum eos.', 'Placeat qui autem ea eos excepturi reprehenderit rem aut. Et nihil et amet eum est et minus delectus. Dolore nam omnis voluptatibus provident. Unde sit et id quo maxime sit nisi.\n\nEt harum consequatur dolores esse. Ducimus sunt nesciunt illo ex laudantium consequuntur.\n\nIn expedita non vel. Porro est numquam quia ab esse accusamus quia quas. Id corrupti iure nobis autem beatae. Omnis blanditiis culpa molestiae quos.', 'Numquam consequatur quaerat dolores. Minima saepe at culpa aut rerum. Atque assumenda consequatur debitis sint illum. Consequatur error ducimus dicta recusandae.\n\nModi optio deserunt in voluptates. Est sit numquam praesentium dolorem velit veniam adipisci sunt. Fugiat voluptatibus sunt dolore nihil repellat rerum aperiam sapiente.\n\nNecessitatibus doloremque laboriosam tenetur quia. Inventore aperiam animi iure corporis. Enim rerum omnis velit ut. Nemo facere exercitationem maiores aliquid corrupti.\n\nReiciendis rem vel quasi non distinctio. Libero commodi iste earum quo ut illum expedita.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(17, 'Darius Gaylord', '1.png', '73959 Carroll Ports Apt. 803\nReganfurt, KS 47422-4264', 'terry.porter@hotmail.com', 'Personal Service Worker', 'Airline Pilot OR Copilot OR Flight Engineer', 'Suscipit magni quam autem minima voluptas. Omnis quod quis eum fugit assumenda inventore sit. Quas tempora odio aut eos omnis architecto et. Nobis ut nam quidem. Repellendus blanditiis minus magnam qui error.\n\nAliquam dolorum illum voluptatem dignissimos accusantium assumenda. Cumque quibusdam molestiae eos. Hic minus voluptas ipsam sint perferendis. Perferendis qui eos vero expedita qui. Quidem non dolorem iusto nesciunt quidem.', 'Est vel deleniti est. Non nulla dicta rerum repellat. Aut sequi voluptatem dolor. Sed totam aut ut provident qui consequatur voluptatem a. Cupiditate est eligendi sed ullam.\n\nRepellendus corporis aut aut facilis id accusamus expedita hic. Sit et eos itaque dolorem. Nisi ut atque harum dolores.\n\nNecessitatibus impedit eos assumenda officiis iste. Quibusdam maiores nam occaecati eum. Sint id quas aut et. Nihil ut corrupti labore quasi et dolor et.', 'Aut et dolores quae ducimus libero dolorum veritatis. Ut ad ipsam temporibus adipisci mollitia modi vitae laboriosam. Nulla reprehenderit sed dignissimos nostrum. Adipisci quaerat dolore explicabo cum.\n\nNon excepturi ut rem esse aut. Vero ut et reprehenderit doloremque consequatur. Quae iusto nisi recusandae minus officia asperiores quo.\n\nNihil architecto perspiciatis quia rem reiciendis. Dolor qui magnam similique quo libero sit temporibus ratione. Quia qui consequatur voluptatem provident. Sed ipsam aut qui repudiandae nostrum. Cum blanditiis pariatur voluptas dolores et provident fugit.\n\nEx debitis ut molestias sint. Architecto officia aut est architecto est voluptas. Libero error ut rerum id aut vel nobis. Ea itaque dolor quaerat totam mollitia laboriosam eos.', 'Enim voluptatem ut ullam. Nisi similique enim explicabo et. Maiores ut harum quis ducimus eaque. Id architecto quae et pariatur.\n\nQuasi quasi ut iste sit quaerat. Officiis maxime officiis explicabo sed qui. Exercitationem sed vitae aliquid aliquid.\n\nDoloremque animi commodi consequuntur voluptatum. Expedita dignissimos vel natus accusantium. Corporis sunt illo omnis voluptas quo aut quo. Aut tenetur commodi aliquam delectus laborum corporis aliquam aut.\n\nQuia consequatur sed voluptatem facere. Sed consequuntur non occaecati ea inventore facere consequatur. Aut dolor dolorem minima enim laudantium eius.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(18, 'Cary Heller', '6.png', '57240 Casimir Dam Apt. 658\nNew Luz, VT 05500-0386', 'ewald39@hotmail.com', 'Legislator', 'Fitter', 'Enim magni ipsa repellendus dolorum. Autem ut minus quam a harum reprehenderit. Sit consequatur beatae iure beatae. Sequi quia itaque sed aspernatur ullam consectetur maiores deserunt.\n\nRerum id nemo consequuntur officia placeat consectetur fugiat a. Harum magni neque nemo. Earum omnis et accusamus minus.\n\nVitae voluptatem esse omnis rem. Iure sit magni saepe dolores sapiente enim. Enim autem ipsum consequatur exercitationem. Tempora nisi eum voluptas voluptatem nihil beatae.\n\nVoluptatibus sunt fuga qui vitae fugit deserunt. Qui rerum et aut facere illo dolore. Voluptatum eaque consequatur voluptates optio sit vel eum quisquam. Est distinctio nihil est inventore.', 'Aut consectetur tempore molestias possimus ut omnis iste. Et accusantium et voluptatum aut. Omnis distinctio quibusdam ipsum.\n\nPerferendis delectus enim illum asperiores. Asperiores illum maiores corrupti facere sed sapiente omnis. Qui enim non at quibusdam itaque et perferendis. Eligendi eligendi optio sit blanditiis voluptatibus unde quia.', 'Veniam voluptas soluta est architecto aut a. Atque porro et nam vero aut. Quis a aspernatur nam quia doloremque. Pariatur et placeat voluptate natus autem. Deserunt velit recusandae non ducimus eos illo magnam.\n\nMinima incidunt quos aliquam distinctio praesentium nulla. Molestias soluta recusandae dolores ipsam. Ipsum totam excepturi eos labore. Placeat magnam et cupiditate autem.\n\nExercitationem et voluptatibus harum fuga quos eum est ipsa. Consequatur saepe rem in nobis. Molestias non quaerat consectetur voluptatibus necessitatibus laudantium tempore harum. Amet aspernatur id quis corrupti rerum sit.\n\nEst incidunt aspernatur deleniti consectetur. Ratione ut amet vitae voluptas ut possimus. Dolor quam nisi et hic. Autem soluta ullam quae architecto impedit amet nulla.', 'Pariatur et numquam dolorem et. Tempore totam cum labore voluptas magnam dolores aut neque. Cum laborum quod fuga temporibus provident repudiandae blanditiis qui. Sed nulla sequi et ut qui corrupti. Temporibus molestias accusantium ullam consectetur totam.\n\nNumquam vitae et nostrum. Earum consequatur saepe impedit. Qui id tempora aperiam et repellat. Assumenda repellendus odit vel rem perspiciatis dolore.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(19, 'Prof. Edward Hermann', '4.png', '2538 Leola Common Suite 497\nLake Pearline, NE 27356', 'myrl35@stehr.com', 'Carver', 'Landscaper', 'Minus fugiat molestias mollitia laborum quam iste eum. Ut aut porro odio. Et qui debitis qui consequuntur facilis.\n\nRerum quos provident ut consectetur autem facilis porro. Soluta expedita perferendis nemo omnis. Quae tenetur in reprehenderit quibusdam et.\n\nCorrupti quam eum non explicabo ea fugit. Aperiam eaque mollitia nemo officia. Excepturi maxime cupiditate quo eos. Ut nihil iusto qui nam. Et commodi dolore optio quasi.\n\nReprehenderit error quia id nisi vel fugiat quis quo. Cum ab itaque autem totam quia est.', 'Delectus sunt ratione in porro aut reprehenderit accusamus. Et consequuntur saepe delectus laboriosam quas. Sequi ea in nihil similique consequatur iure.\n\nSimilique aut molestias modi et. Asperiores dolore at eius est. Autem eos pariatur quisquam quidem sed quo aut. Non est ipsam qui saepe. Nihil sit officiis aut aut facilis et.', 'Et distinctio aut quia perferendis odit. Nihil odit non eius accusamus et eum occaecati. Est omnis odit nam ipsum nisi voluptatibus esse. Ea quia eaque omnis veritatis. Vitae in at qui explicabo ex voluptates.\n\nProvident et consequuntur inventore velit. Iste qui iure aut adipisci voluptas. In dolorem alias quae qui soluta quia assumenda.\n\nA quos sequi delectus. Adipisci eos molestiae et debitis repudiandae ut optio. Et ea dolorem omnis quaerat.', 'Ut repellat vero eveniet aliquid et est minus. Illum repellat expedita et odit est labore aut. Quibusdam distinctio id consequuntur doloribus consequuntur eius.\n\nSuscipit tempora sit et. Saepe occaecati error officiis accusantium placeat natus et qui. Eum libero occaecati et est est at. Quaerat aut et a voluptate.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(20, 'Ms. Estel Gaylord III', '5.png', '86053 Konopelski Mountains\nDarrickside, UT 70232-6544', 'wilbert70@yahoo.com', 'Psychology Teacher', 'Grinder OR Polisher', 'Voluptatem quidem est sunt in excepturi repellat aliquam. Ullam fugit hic fuga magni cum enim reprehenderit. Beatae laborum eum consequuntur repellendus adipisci.\n\nDolorem consequuntur ut culpa et tempora. Magni sint ea laudantium dicta itaque itaque. Placeat omnis totam cupiditate quidem voluptates aut.\n\nVoluptatem culpa ab et aut est quae. Voluptas sed nam voluptate reprehenderit perspiciatis rerum aut cupiditate. Explicabo cum nemo officia quis occaecati dicta molestiae.\n\nQuia minus sit molestias aut fugiat necessitatibus. Quis qui impedit nihil consequatur nihil dolores. Et molestiae voluptatibus ut ut iste illum.', 'Quo quasi quia ratione doloremque eligendi eius est. Repellendus rerum tempore esse pariatur deserunt error aut voluptate. Non dicta fugiat earum illum hic distinctio. Sunt maiores eos cum qui. Voluptates consequatur et consequatur veniam.\n\nRecusandae odit assumenda alias assumenda autem qui. Molestias nostrum et nemo officia ratione pariatur qui. Corporis praesentium saepe dolorum quia porro.', 'At consequatur sed qui. Molestias et eligendi est unde molestiae voluptates expedita. Est reprehenderit et eos voluptatem. Tempora ipsam unde nam dolorum aut.\n\nOfficia non doloribus sed laboriosam. Sed unde veniam nulla praesentium repellendus. Necessitatibus porro et enim quibusdam voluptas.\n\nEt iure praesentium animi est. Nostrum sapiente ut est aut cumque. Alias ut rerum aut. Ullam quis molestiae libero iste.\n\nNeque et fugit soluta consequatur. Et est ex illum minus.', 'Quod quas qui voluptas sit velit atque. Facere vel itaque maiores quia. Numquam voluptate quia ut ullam.\n\nAmet harum facilis qui. Est aliquid et exercitationem ullam modi laudantium quos tempora. Nihil quo enim rerum quo delectus corrupti. Ullam quasi et quis voluptate voluptatem qui ex velit.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(21, 'Efrain O\'Hara', '7.png', '482 Heaney Parkways\nWest Coleman, DC 14413-2648', 'donavon04@collins.net', 'Millwright', 'Embossing Machine Operator', 'Voluptas velit non quos deleniti sapiente ratione repellat architecto. Explicabo ut consequatur ullam laborum quia blanditiis. Incidunt consequatur ad assumenda quod.\n\nNihil debitis eius quia debitis ut. Voluptatem voluptatem enim dolores minus officia aut. Sed odio aliquid ut fugiat et aspernatur optio. Cupiditate suscipit vel odit.', 'Ab ut quam tempora quam sunt eos. Eos consequatur vel unde earum illo id rem. Aliquam aspernatur commodi sunt rerum maxime recusandae accusantium. Minus dolores cupiditate voluptatum eius quas corporis recusandae.\n\nOdit omnis suscipit qui enim nulla vel. Expedita aliquid sapiente tempore est sit. Voluptas odit rem accusamus aliquam voluptatem.\n\nMagnam sapiente quos repellat. Illo quos rem accusamus quisquam. Dolor sint minus est voluptatem iure. Magni necessitatibus quia quis dolor quisquam accusamus et.\n\nUllam earum eum repellendus incidunt mollitia repellat. Cum distinctio qui adipisci illo non neque. Quisquam unde et a perspiciatis et quia. Eius qui non magni in voluptas odio aut.', 'Rem sint eos quibusdam quia. Perspiciatis inventore sit consectetur dolores numquam eveniet tenetur. Et optio voluptates excepturi quod earum sit saepe sapiente. Atque nulla itaque quas.\n\nTotam eius aliquam vel ipsum cupiditate sint natus asperiores. Labore voluptate eligendi ut provident voluptas quia et. Animi labore asperiores voluptatem nam. Enim vero eos qui totam qui eius et perferendis.\n\nAdipisci beatae molestiae delectus exercitationem ratione voluptatem. Similique hic minus expedita dolorem. Inventore incidunt odio nostrum iste rem minima praesentium. Tenetur cum magni aut molestiae eligendi sint.\n\nAb molestias nemo eos labore porro placeat beatae. Eaque reiciendis impedit velit reiciendis. Velit occaecati hic magnam et praesentium iusto. Omnis voluptates accusantium adipisci velit quia et quia.', 'Sed soluta a omnis aliquid incidunt aliquid nemo illum. Qui odit explicabo molestias molestiae repudiandae. Aut odio vel hic sequi quasi fugit non repellat.\n\nSint quia est nemo quae eum eos. Omnis commodi soluta impedit ipsum. Sit sit in veniam earum provident aspernatur sint sed. Optio consequatur similique magnam laboriosam.\n\nAspernatur molestias rerum neque. Perspiciatis aut eos totam dicta quasi provident. Nesciunt dignissimos hic necessitatibus exercitationem facilis eaque sed.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(22, 'Vernon Williamson', '7.png', '474 Abernathy Crescent Suite 543\nShanychester, OK 70960-9657', 'mona.conn@moen.com', 'Annealing Machine Operator', 'Irradiated-Fuel Handler', 'Quo iusto qui odit corporis officia dolores id. Similique nobis culpa asperiores. Sapiente tempore itaque nulla praesentium.\n\nEt vitae quo voluptates omnis occaecati. Atque ut est maxime laudantium omnis architecto velit aut. Alias dolorem sint necessitatibus ipsam veniam repudiandae eum.', 'Incidunt vero praesentium enim neque. Voluptatem aperiam harum modi eligendi id voluptas. Rerum quis odit minus et. Itaque eum enim labore ab.\n\nVoluptatum voluptatibus quia omnis corporis similique nulla. Error dolorum nihil impedit itaque explicabo ullam ipsa.\n\nMinus occaecati iure quae maiores. Autem recusandae ducimus eligendi omnis excepturi qui. Omnis necessitatibus sit natus illo sed.', 'Consectetur aliquam esse molestiae architecto culpa asperiores facere. Totam ea placeat ea dignissimos temporibus cum dolorum. Rem possimus tempore distinctio error delectus sed dolorum. Officiis est et porro fuga odit molestiae.\n\nPerspiciatis non facilis modi sint consequuntur aut et. Distinctio ut exercitationem unde dolores. Totam impedit voluptas sed. Ab doloremque asperiores ex.', 'Deserunt fuga recusandae possimus atque blanditiis dolore. Fuga neque cupiditate ut perspiciatis quis. Eum voluptas et quisquam ea. Sed rerum ratione debitis exercitationem ea qui cum.\n\nDistinctio rerum vero quis qui maiores necessitatibus distinctio error. Molestiae repellat error rerum magnam enim et dicta. Sit reiciendis dolorum laudantium.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(23, 'Ludie Schultz', '2.png', '6581 Hilton Meadow\nRiceport, NE 22583-7789', 'crist.clemens@yahoo.com', 'Construction Driller', 'Real Estate Association Manager', 'Nostrum non quos earum officia quae et. Minima cupiditate aut sapiente nihil incidunt necessitatibus quod. Nemo velit provident quis. Atque sunt nihil non voluptas qui eos.\n\nIn accusamus non sunt porro. Distinctio reprehenderit ut delectus nam rerum dicta perspiciatis.\n\nAnimi omnis nemo laudantium quos reprehenderit. Eum quibusdam sunt laudantium facere mollitia consequuntur asperiores. Qui consequuntur dignissimos quia sequi itaque.\n\nCumque repellat accusamus ut aliquam cumque nulla. Cum ex mollitia occaecati ut qui tenetur. Tenetur sed iure dolor a eaque enim. Omnis omnis at deleniti in.', 'Consequatur dolorem ducimus rerum reprehenderit et. Porro dolorem nam dicta ipsa est. Quia ex aut provident a quam.\n\nModi ipsum eius sit fuga sit. Dolorem dolorum voluptatibus velit totam rem amet. Recusandae aut sunt tempore temporibus corrupti dolorem ex qui. Animi officia animi ipsum repellendus et sit.', 'Cum est perspiciatis blanditiis fugit eaque corporis earum. Suscipit sint aut et et dolor dolorem. Et qui quia consequatur. Iure non suscipit cupiditate doloremque distinctio. Enim rerum aut perferendis earum.\n\nUllam quidem quia dolore id earum perspiciatis in nemo. Labore quod incidunt aspernatur cupiditate architecto. Sunt sit corrupti quaerat. Esse animi itaque reiciendis aperiam.\n\nModi maxime veritatis neque distinctio deleniti est vero. Eos quam sint quo corrupti cumque. Quia tempore eligendi nostrum qui. Et et quaerat facere rem.\n\nEarum est modi molestiae nulla deserunt dolore. Iste tempora est consequuntur.', 'Architecto molestias eaque amet non placeat molestias. Labore et autem laudantium fugit. Consequatur quam sapiente labore in et.\n\nIpsam delectus ipsam vitae consequatur mollitia aspernatur. Corporis perspiciatis sunt tempora minima est vel. Recusandae cum sapiente asperiores neque quasi.', '2023-04-16 02:07:53', '2023-04-16 02:07:53');
INSERT INTO `staff` (`id`, `name`, `photo`, `address`, `email`, `structural_role`, `functional_role`, `formal_educations`, `nonformal_educations`, `experiences`, `publications`, `created_at`, `updated_at`) VALUES
(24, 'Carley Runolfsson', '4.png', '98340 Alanna Turnpike\nWest Hilariofurt, CA 89363-3720', 'aokon@zulauf.com', 'Social Worker', 'Zoologists OR Wildlife Biologist', 'Possimus aut consectetur tempora vel. Numquam reiciendis exercitationem quibusdam explicabo. Minus eius dolorem quo sit ducimus labore. Sed unde et officiis quo et ut.\n\nQuisquam ut repellendus minima aut et autem quasi. Asperiores ut aut necessitatibus nihil consequatur blanditiis. Dolor facere porro error autem non deleniti.\n\nRerum dolore quam quam enim culpa eveniet eius. Architecto veniam veniam alias. Dolor non ducimus vero nam enim.\n\nDicta consequatur laboriosam sed porro cupiditate. Officiis sunt eius omnis porro. Temporibus eveniet ipsa doloribus odit atque voluptas quas.', 'Ut minima sit ea voluptas voluptates. Aut non enim aut minima. Quisquam et repellendus qui sunt labore. Veritatis et corrupti ex qui placeat et.\n\nVoluptatum consequatur ea deleniti modi. Expedita optio facilis neque doloremque. Ducimus tempora id et dolorem tempore beatae qui. Sequi et et ipsam in magnam.', 'Id ullam suscipit ducimus labore nobis. Doloribus repudiandae consectetur dolorem. Ut quae ea accusamus vero quibusdam qui.\n\nPraesentium amet quod repudiandae dolores quae sed quod. Minima aut velit eaque.\n\nVoluptatibus necessitatibus aut repellendus quis. Iusto similique ab nam eum dolore amet id. Et numquam et molestiae necessitatibus ullam maiores maxime vitae. Maxime qui et est veniam reiciendis.\n\nEnim omnis rerum consequuntur blanditiis quo et. Et dolore repellendus tempore dolores. Reiciendis ex soluta in a molestiae similique deserunt. Consequatur quas quaerat et iure molestiae sequi delectus.', 'Nihil iure aliquam est beatae praesentium consequatur rerum. Dolorem dolorum autem quisquam quam laborum dolores. Qui ducimus atque voluptatum corrupti. Reprehenderit vero doloribus et.\n\nAnimi dolor ut eum quis accusantium doloremque. Id quos ullam in quaerat maxime nam molestiae. Sunt sequi facilis ut recusandae.\n\nUt quae tenetur voluptatem corrupti omnis omnis nulla quia. Autem ex praesentium dolor voluptatem. Atque non ad beatae nostrum. Fugit assumenda et omnis enim et aut exercitationem.\n\nNemo est voluptates et beatae. Sapiente id totam quam eaque accusamus. Eum dolores repellat veritatis numquam eos eos perferendis.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(25, 'Prof. Ken McDermott IV', '1.png', '1221 Nia Ford Suite 391\nEast Brisa, DC 10809', 'jwolff@hoeger.com', 'Cartoonist', 'Head Nurse', 'Aspernatur sit sed qui aliquam omnis. Quod sequi ut animi modi sequi necessitatibus autem. Enim fugiat delectus omnis.\n\nDignissimos beatae quis est et enim. Fugit incidunt omnis suscipit eum ea.\n\nPerspiciatis ratione quasi id est qui accusamus. Voluptate corrupti a illo possimus.\n\nDolorem sequi beatae et illo aspernatur. Et aut mollitia labore odio deleniti repellendus voluptatem veniam. Voluptates nulla eos recusandae voluptatem consequatur iste.', 'Mollitia perspiciatis debitis dolorem rerum. Aliquid natus error repudiandae iure enim repudiandae sed sequi. Ducimus sed sunt velit soluta ullam ipsum. Dolor ullam voluptas vel eaque repellat id aut. Tenetur mollitia id inventore saepe.\n\nNeque omnis quia exercitationem. Eum occaecati nihil et enim. At aspernatur magni aperiam reiciendis id ex similique.', 'Doloribus magnam qui quisquam vel sit rerum sit nesciunt. Enim quibusdam quia quod deleniti ut maxime sequi. Et reiciendis maxime enim rerum quisquam.\n\nEst omnis vitae ullam dolorem. Atque est quos eos id cum. Accusantium velit ut fugiat quas.\n\nEum est soluta ut in. Autem rem facilis ipsam quia. Commodi rerum qui sed suscipit reprehenderit voluptas reiciendis. Quidem eum incidunt laborum praesentium amet.\n\nAut magni deleniti esse doloremque illum dicta dolorem. Enim nihil est libero in et illo fugiat. Dolorem sit aut molestias consequatur aut totam ut.', 'Est voluptatem odit ut qui ducimus quasi unde facere. Consequatur laboriosam voluptate ut sed. Totam aspernatur ratione aut et adipisci vero.\n\nSoluta repellat totam non perferendis praesentium assumenda quis aspernatur. Fuga aliquid quis esse et. Consectetur soluta et unde officiis odio accusantium. Id corporis ut alias voluptatem maxime quas illum. Voluptatum qui dolor voluptas tempore eligendi repellat.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(26, 'Lindsay Hoeger MD', '2.png', '5624 Powlowski Lights Apt. 675\nJulieberg, VT 56347-2987', 'sadye54@hotmail.com', 'Agricultural Equipment Operator', 'Psychiatrist', 'Voluptatibus facere corrupti sed. Officiis eligendi distinctio nihil et omnis. Consequatur sed cupiditate qui dolores.\n\nQuis harum qui est occaecati aut. Consequatur voluptatibus et et. Consectetur voluptatem ut rerum autem labore enim id quasi. Cumque harum cumque exercitationem blanditiis. Ex eum mollitia architecto quia.\n\nBeatae modi ratione totam voluptas laborum iusto quia. Harum ut asperiores ut necessitatibus et. Magnam quo reprehenderit iste dolorum. Id sapiente necessitatibus libero voluptatem dolorum fuga officiis enim.', 'Omnis quia velit praesentium consequatur est distinctio occaecati. Ipsam est sed quasi. Dolorum natus reprehenderit ducimus quisquam quia quam blanditiis.\n\nDolorem expedita reprehenderit et quaerat nesciunt dignissimos. Et tenetur veniam a velit veritatis doloremque. Minus omnis fuga modi repellendus. Debitis quis magni dolores rem alias.\n\nTempora nulla et ad ut quisquam. Modi fugiat illo repellendus perferendis dolorem. Omnis facilis qui distinctio animi. Dolores ut voluptatem ut delectus est voluptatem qui.', 'Quibusdam eveniet culpa natus quis quis natus. Nemo dolor et repellendus quis.\n\nIn enim et natus voluptas. Rem perferendis accusamus molestiae rerum asperiores incidunt. Itaque quasi et quidem.', 'Sunt quibusdam omnis soluta. Dolorem saepe et qui quo. Ipsum mollitia corporis delectus accusantium.\n\nMaiores quasi numquam voluptatibus eligendi dicta ea. Voluptatem ut qui delectus consequatur dolores. Aliquam et quis accusantium nam a odio. Ratione nemo dolore sint dolores perferendis fugiat.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(27, 'Dr. Jacklyn Davis', '5.png', '390 Kulas Forges\nKelsifurt, AR 25971-7956', 'milton.mueller@harvey.com', 'Optical Instrument Assembler', 'Umpire and Referee', 'Omnis est fugiat ut hic quae explicabo. Eligendi quis sed quia et dolorem harum. Voluptatum et expedita aperiam similique.\n\nAspernatur dolores excepturi voluptatum placeat quaerat. Expedita molestias perspiciatis consectetur sed. Dolores in rem iure. Quia accusantium reprehenderit voluptatem aut eos.', 'Enim veritatis porro minus omnis facilis voluptatem. Dolor aut ut earum adipisci architecto perspiciatis eius quam. Expedita non facilis in exercitationem sint nostrum consequatur. Earum impedit eum non.\n\nSit est consequuntur eum in. Ut soluta alias cupiditate eaque non rem. Ipsam esse et est labore dolorem nostrum. Hic iure nihil repellendus atque quas hic rerum.\n\nQuia consequatur quasi tenetur delectus. Quia nulla error libero maiores qui. Et distinctio non enim praesentium.', 'Sunt doloribus sapiente tempore qui laborum itaque. Laborum voluptatibus minus ab error esse consequatur. Omnis molestias ducimus et. Ipsum dignissimos exercitationem fugiat reiciendis consequatur repellendus quo.\n\nOccaecati porro repudiandae quaerat aperiam. Rerum saepe tempore voluptatum ratione.', 'Aut ut quis beatae qui nulla repellat minus. Dolore qui occaecati aperiam odit et ullam. Omnis impedit quasi pariatur sit.\n\nInventore at assumenda veritatis eum saepe ut. Et est enim temporibus qui. Exercitationem dolores omnis quam ut distinctio blanditiis magnam.\n\nEos et ratione sit assumenda inventore. Ipsum recusandae ut minus distinctio eum. Tempore enim corrupti et aut accusamus non sed dolorum. Consequatur velit error deserunt libero officia laudantium.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(28, 'Miss Charlene Runte DVM', '5.png', '8158 Gwendolyn Locks\nBryceshire, PA 21788', 'rshields@kuphal.com', 'Plating Machine Operator', 'Cashier', 'Est iure voluptate voluptatem magni et. Et eveniet amet aut saepe aliquam. Consequatur maiores voluptatem nobis quam blanditiis aut ipsam.\n\nEt quis pariatur fugit perferendis. Cumque doloremque quia pariatur quae voluptas saepe totam. Quod voluptatem omnis consequuntur amet voluptas quod eius consequatur.\n\nTenetur quos repellat soluta est. Quidem qui et id ducimus enim error omnis. Ex et quidem maxime quia quia odio.\n\nHic laboriosam voluptatum dignissimos iste. Voluptate animi sint in harum. Omnis facere nesciunt sed voluptatem et eum. Placeat modi ullam esse.', 'Sit nobis ipsum iure sint magnam tenetur quia vero. Et accusantium alias at tenetur recusandae mollitia.\n\nLaborum enim nostrum rerum consequuntur at. Nulla autem eaque libero aspernatur est. Praesentium molestiae reprehenderit at. Nisi aut et accusamus et minus qui ipsum hic. Omnis possimus et omnis eum et placeat dolores vel.\n\nCum asperiores doloribus nostrum maxime doloribus maxime nisi repellendus. Dicta nisi rerum vitae quo. Modi perspiciatis exercitationem voluptates autem minima animi.\n\nLaudantium odio deleniti est quaerat omnis alias hic. In molestiae veniam hic dolorem pariatur tempore sit. Autem sit magni unde est autem. Qui perferendis repudiandae ea blanditiis quos.', 'Et quisquam provident esse voluptatem. Dolores quia aperiam deleniti unde ut debitis quia.\n\nQui consequuntur molestias maxime et consequatur alias. Aut et porro quia dolorem deleniti. Minima in voluptatibus repellat sequi. Ipsum voluptatem exercitationem et et voluptatem.\n\nNon et sed sunt et quia sint. Sequi neque ut unde dolorem nisi consequuntur sunt. Ut sed nesciunt et quia nemo qui. Qui placeat quod occaecati fuga dolorem assumenda.', 'Illum ullam dolor ut. Sint velit rem recusandae neque corrupti ut. Fugiat quia accusamus totam. Ut debitis et et quia ea sint.\n\nEt dolores atque rerum delectus voluptatem. Quaerat sint commodi quo explicabo. Earum eaque in et voluptatem alias odit sit. Animi maiores odit eaque dolores sit.\n\nNon qui voluptate dolorem amet ea ratione doloremque et. Ab doloremque aperiam ex ipsa iste. Ratione doloremque et ex rerum aperiam. Ut inventore ea fuga officia.\n\nAdipisci voluptas ipsam velit. Eveniet est consequatur voluptate corporis dolores. Quisquam adipisci doloribus repellendus fugiat dolor nisi. Enim sit cumque corporis quo provident.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(29, 'Paris Yost DDS', '3.png', '86353 Jakubowski Field\nSouth Jeanne, OK 88714-5947', 'crona.hortense@hotmail.com', 'Credit Authorizer', 'Mining Machine Operator', 'Ab reprehenderit officiis ipsam. Nemo harum laudantium vel dignissimos. Sint aut perspiciatis rerum et. Quaerat harum dignissimos non.\n\nQui tempora iure ipsum quo. Sit dolorem dolorem laudantium recusandae ratione nihil. Voluptas sint enim architecto rerum eveniet. Maxime voluptatem animi magni consequatur eum blanditiis est.\n\nUt quis aliquam hic minima quidem sit. Temporibus sed veritatis ab. Quod ex porro consectetur aperiam hic. Accusamus qui culpa rerum voluptas non et.\n\nDoloremque consequatur eaque optio omnis. Porro laborum vel quae nihil repudiandae voluptas. Nemo provident omnis minima. Rem totam similique assumenda iusto delectus odit. Enim assumenda qui rerum est deserunt enim.', 'Tempore ut necessitatibus libero molestiae. Esse quae culpa rerum inventore perspiciatis. Facilis consectetur nulla mollitia quidem voluptatem. Quo esse facere animi iure.\n\nSed libero dolor nihil est. Architecto fugiat qui ducimus earum repellat voluptas. Qui eveniet magni nisi eum qui. Ut molestiae accusamus commodi.', 'Sint et voluptas quia fugit quis. Consequatur totam quia necessitatibus cumque. Vero aut eaque totam a quia. Nulla ut nihil sunt magnam.\n\nDoloribus qui tempora ut sed quia sit omnis. Cupiditate dolorum nobis asperiores natus laudantium assumenda. Quis sapiente officiis nemo pariatur aut vitae similique et.', 'Dolorum soluta commodi quisquam veritatis corrupti. Cum quo in enim provident ea exercitationem aperiam.\n\nOmnis voluptatum et nam maiores sit ipsa minus. Sunt consectetur voluptas et perspiciatis et. Repellat mollitia aliquam sit eaque.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(30, 'Prof. Charles Hills II', '6.png', '1611 Cordell Ports Apt. 343\nNienowton, TX 78277', 'jkoss@yahoo.com', 'Commercial Pilot', 'Preschool Teacher', 'Ratione molestiae neque qui. Et aut praesentium repudiandae quia iusto. Fuga est magni quisquam nisi hic fugit. Et accusantium molestiae accusantium quos animi.\n\nMollitia nulla vel qui ut dolore. Quaerat expedita nihil earum error in magnam magnam. Atque temporibus possimus ad eum.', 'Natus necessitatibus et minima dolorem quis ipsam incidunt. Aut quos aut dolore. Accusamus alias minima qui delectus laudantium consequatur quia. Ut cumque magnam et rem.\n\nRepellendus quia quia dolore ipsam est tempore impedit. Veniam quia a nostrum dolores impedit est. Sit dolores qui exercitationem ut fuga.\n\nDeleniti voluptas quo asperiores quaerat commodi aliquid. Beatae voluptatem ea sunt quo quia. Et voluptas dicta cumque possimus quia est nostrum. Quo blanditiis aut possimus et. Reiciendis vero omnis et sed.\n\nConsequatur aut ut error praesentium totam nemo. Aliquam eaque rerum sit qui quia repudiandae aut. Itaque atque doloremque et nihil cumque explicabo.', 'Ut aut sapiente enim. Eius non ducimus omnis. Quidem ipsum dolorem ut aut libero et accusantium.\n\nFugiat provident voluptate autem. At dolores aut debitis nobis debitis enim quo. Dolorum omnis ut et consectetur reprehenderit et.\n\nConsequatur hic laudantium et temporibus ut. Dicta amet numquam sed ut sint harum. Deserunt autem voluptatem eum similique voluptatem quas.\n\nQuia dolore quibusdam architecto qui. Nihil dolorem aut ab nihil doloribus. Pariatur ex molestiae facere.', 'Hic rerum minus hic harum consequatur impedit. Et et ut nesciunt est similique. Provident deserunt quod pariatur repudiandae delectus aperiam voluptatum.\n\nVelit quas consequatur explicabo cumque. Quaerat quia ea sed libero. Placeat sit culpa sunt est.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(31, 'Ms. Ashleigh Zulauf DVM', '3.png', '54886 Catherine Trail Suite 554\nLake Gerald, IA 16662', 'fhalvorson@gmail.com', 'Machinist', 'Credit Checkers Clerk', 'Et optio culpa reprehenderit explicabo. Excepturi eos deleniti quod sed beatae fugiat et. Qui iusto ut beatae consequatur id dignissimos dolorum.\n\nDelectus a quo natus a harum rerum consequuntur. Quos nesciunt vel esse possimus expedita facere.\n\nAliquam expedita tempora sint totam. Ut voluptates et qui commodi. Praesentium aliquam sapiente veritatis a pariatur consequatur porro.\n\nEt ipsum facilis et consequatur deserunt. At eligendi eum ipsa sit. Itaque quo non quia quae voluptatem.', 'Iusto id sint quia praesentium blanditiis voluptas debitis. Esse sint autem iusto beatae. Non alias odio eum ipsa.\n\nDignissimos ipsam aspernatur molestiae omnis pariatur nulla. Tempore eaque numquam aut assumenda sunt ad accusamus consectetur.', 'Ratione magni ut soluta quisquam quisquam. Ipsum maxime et non dignissimos ut et repudiandae. Nesciunt minima commodi nesciunt aut iusto exercitationem et consequatur. Aliquid quae rerum dolorem ab deleniti voluptatem.\n\nEt ipsam rerum molestiae natus. Reprehenderit aspernatur nobis sed hic velit molestiae temporibus. Eaque voluptas voluptas magnam voluptate.\n\nVoluptatem distinctio corrupti rerum in in maiores. Sed voluptatibus qui soluta vel a. Culpa est totam consequuntur. Repellat dolorum non sit consectetur quam consequatur vero.\n\nAut enim debitis tempore vitae illo quia. Dignissimos iste enim omnis adipisci. Sit pariatur est reprehenderit aut rem. Id ab quo impedit quis eaque. Est reiciendis voluptatem ut repudiandae.', 'Assumenda quibusdam non eaque. Inventore aut animi et natus eligendi laudantium vero. Sed deserunt modi aut doloribus.\n\nAlias ipsum voluptatem quas et quo. Qui soluta repellendus molestiae quisquam consectetur natus quo nobis. Libero itaque cumque corporis facilis voluptatum est.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(32, 'Kennith Ullrich', '6.png', '47168 Dalton Green Apt. 481\nNorth Billberg, LA 31033-4481', 'ikutch@yahoo.com', 'Transportation Manager', 'Marking Clerk', 'Enim beatae vel dolor libero et. Voluptatem magni est architecto molestiae nobis labore possimus praesentium.\n\nSuscipit explicabo consequatur rem rerum repellat qui quia. Similique tempore quos odit ducimus earum est corporis. Ut aperiam sapiente sed. Ea id eius ut totam nihil est sit.\n\nSunt quidem illo aperiam corporis non ut quidem rerum. Ullam nobis deserunt consequatur. Est similique sed dolorum ut temporibus.', 'Excepturi repellat est id. Dicta molestias quae quia voluptatem amet totam. Est excepturi nulla sit nihil vitae ad. Temporibus quam aut alias architecto a labore sit.\n\nDucimus iure ut soluta rerum magnam velit animi. Non non consequatur illo sunt iste dolorem similique. Magnam ut possimus modi sunt unde non. Et est id natus aspernatur qui optio.\n\nPossimus impedit aut eius vero. Vitae illo nostrum molestias aut et quia ad. Sunt est fuga autem qui quo in.\n\nRerum iste et amet architecto repudiandae molestiae incidunt aperiam. Vel nihil molestias quis nobis.', 'Velit et cum aliquid omnis aliquam tempore esse. Eum et fuga et et eum ut ipsam. Ratione ratione recusandae excepturi cupiditate eum.\n\nQui ut quisquam quia similique. Voluptas repellendus dolorem beatae eum aspernatur ab ut sit. Qui eum vero consectetur id dolor.\n\nUt magnam quia aut ducimus rerum. Occaecati vel hic voluptas et nemo aspernatur. Vero saepe delectus recusandae possimus ut.\n\nLibero corporis quis non asperiores fugiat. Aut eos cum aliquam voluptatem aspernatur quia. Odio natus qui et nulla quia impedit ipsum. Rerum cum occaecati tenetur rerum aut non.', 'Veniam minima dolorum voluptatum necessitatibus. Doloribus eum labore quas odit esse laborum. Aliquam quod blanditiis aut.\n\nPossimus autem sit odio voluptatem fugiat reprehenderit incidunt et. Illo aut est et iste reprehenderit quibusdam nulla. Omnis quia illum expedita enim. Odio suscipit debitis totam fuga ad sunt. Ab quia nihil ut est.\n\nAt cupiditate dolorum mollitia ut voluptatum aut quo recusandae. Ut repellendus optio itaque eum culpa pariatur. Unde et veniam porro nam. Nihil qui voluptatibus qui dolor reiciendis architecto cupiditate.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(33, 'Percy Wuckert', '2.png', '486 Bauch Green Suite 930\nSouth Cristoballand, SC 07593', 'olga14@hotmail.com', 'Technical Director', 'Extraction Worker', 'Libero veritatis officia a quia illum nobis. Nihil aut neque est quam. Accusamus quia quis adipisci ipsum tempora.\n\nDoloremque magni est sunt neque id laboriosam. Tenetur aut doloremque quas nobis. Aut repellat itaque temporibus sit aperiam dolorem qui perspiciatis.\n\nVoluptas corporis minus iure modi et nesciunt harum. Iste asperiores hic autem rerum magnam est praesentium. Fugit eos aspernatur dolor id et ut minima.\n\nUt libero nihil alias doloremque eos doloremque iusto. Sunt quia ipsum sit optio qui sapiente eveniet laboriosam. Quia consequatur est consectetur ducimus distinctio.', 'Ad animi sunt ut. Ipsum fugiat est eligendi aut. Voluptates et minima nostrum ut.\n\nOfficia porro magnam exercitationem sed. Repudiandae recusandae rem corporis natus. Aspernatur rerum velit quam vel et.', 'Vitae temporibus distinctio culpa voluptatibus. Fugiat aspernatur rerum in expedita. Enim vel aperiam vero illum dolores. Quaerat beatae qui ea delectus mollitia est possimus.\n\nExpedita aut delectus praesentium. Quidem est odio nihil optio porro quis temporibus. Eos repellat sunt ullam commodi et eveniet suscipit. Quibusdam rerum quas dignissimos.\n\nEa voluptatem magnam blanditiis est sit atque dolorem. Et et est quis culpa exercitationem aspernatur. Ut possimus rerum ex libero porro.', 'Dolore vero et similique aut. Placeat molestias eius est soluta eligendi voluptatem exercitationem. Consectetur voluptatem alias excepturi distinctio repellat illum nemo.\n\nExercitationem ut libero eligendi animi. Blanditiis sit velit eos officiis et repellendus. Ea quis ut nesciunt et enim repellendus.\n\nOmnis nulla fuga aspernatur asperiores. Labore quibusdam dolore aspernatur natus dolor et. Ea pariatur alias quia nemo quia. Suscipit nisi fugit modi.\n\nMolestiae corrupti odit iure. Ratione delectus quibusdam voluptatem quidem.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(34, 'Dr. Layne Kuhlman', '3.png', '25966 Anderson Lane\nWest Armand, ID 01359', 'brice44@hotmail.com', 'Pipe Fitter', 'Personal Financial Advisor', 'Dignissimos et id necessitatibus illum. Atque enim fugit dolore. Aut voluptas minus assumenda aut nobis molestiae minus amet. Doloribus cum est quas earum recusandae sint repellendus.\n\nAssumenda expedita consequatur et et modi rerum. Aut sit id vitae. Id sed rerum architecto sed. Minus nihil suscipit earum iste fuga voluptatum ex dolorem.\n\nEarum cupiditate et fugiat quo quos. In et eum esse. Veritatis facilis est minus deserunt tempore aut et aliquid. Natus facere consequatur doloremque itaque.\n\nVoluptatum error repudiandae consequatur. Accusamus aut et nostrum consequuntur aut assumenda omnis. Magni neque quia est eaque ducimus nesciunt molestias.', 'Ea doloremque corrupti occaecati repellat rem aut omnis cum. Quia repellat ratione blanditiis eos cupiditate qui. Nihil magni nostrum autem est voluptatem rerum dolore.\n\nSit qui architecto error illum dolores molestiae animi et. Voluptas deleniti et architecto quisquam molestias pariatur. Explicabo excepturi officia labore nihil.', 'Id eius et quaerat unde. Voluptatum sequi quis fugit veritatis quas. Rerum quas qui cumque cum corporis voluptatibus et corporis. Inventore architecto quam atque amet.\n\nDolorem nesciunt necessitatibus reprehenderit libero. Sit omnis eos cupiditate facilis voluptatem. Eos dolores enim accusantium sunt ut possimus.', 'Quidem natus eum omnis autem. Non dolorum et non enim debitis. Deleniti odio non aspernatur pariatur et. Neque aspernatur eos assumenda ab molestiae commodi qui.\n\nId sint voluptas et facilis quaerat aut. Natus aliquid omnis deleniti maxime quia quis. Dolorem eveniet quis aut neque expedita.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(35, 'Sanford Schroeder', '3.png', '84808 Halle Hill Apt. 680\nSpencerton, FL 08963-8706', 'jalyn.grady@turcotte.org', 'Protective Service Worker', 'Transportation Worker', 'Laborum error exercitationem quas iusto dolores consequatur. Quidem ut molestiae velit quis ex voluptatum culpa. Doloribus a nostrum repellendus aspernatur ipsum et nobis nobis.\n\nAdipisci temporibus quae iusto itaque accusamus modi. Velit voluptatum quis dolor qui esse hic.', 'Qui ipsum quos ipsam necessitatibus sit omnis sequi. Et nostrum qui corrupti. Voluptatem deleniti officia laborum quia iusto fugit.\n\nEos modi molestias eos dignissimos voluptate modi laborum provident. Ipsum quasi sed eveniet nam reiciendis nihil. Mollitia molestias non saepe et quidem.\n\nEos et consequatur porro quisquam aut accusantium. Placeat sit reiciendis quaerat quod commodi quaerat. Accusamus quo aut blanditiis error modi harum. Tempora reiciendis laboriosam quam doloremque voluptatibus voluptatem.', 'Quasi at autem aut aliquid tenetur tenetur laboriosam. Nihil quaerat aliquam quam aut dolores et et. Ut sequi voluptatum consequatur aut facere quia illo repellat. Dolor sit aut fugiat ipsum et omnis maxime.\n\nAut enim magni quia quam sint cum. Dolore quia delectus vel quo dolor sed occaecati. Molestias natus debitis quisquam corrupti dolore.\n\nEveniet quia error odit rerum. Ipsa animi id omnis laboriosam. Nam aut est laborum porro pariatur quis.', 'Est voluptatibus provident impedit pariatur delectus omnis. Adipisci et non accusantium velit rerum quae laborum. Velit atque rerum blanditiis nulla iure qui tempora.\n\nQuis id ut et voluptatibus enim saepe cumque. Facilis quia quas iusto dolorem odio. Veniam a nihil asperiores. Et voluptates amet fugit natus ex quia ad.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(36, 'Tyler Skiles', '7.png', '4566 Bartell Port Apt. 565\nHartmannport, AL 68983-8097', 'keven72@moen.biz', 'Meter Mechanic', 'Dentist', 'Laboriosam eveniet error magni ipsa et sit officia officiis. At reprehenderit numquam nostrum impedit. Labore ut ut et voluptatem. Nisi earum vel rerum laborum.\n\nUllam minima non sint minus impedit similique accusamus quia. Dolores est recusandae dolores consequatur quis hic. Sit aspernatur qui mollitia rerum ut ullam. Neque et explicabo quos tempore veniam sunt.\n\nIusto ab sunt illum dolorem. Ipsa nulla atque repudiandae. Praesentium sed voluptates id earum sequi aut.', 'Harum perferendis mollitia et corrupti dolores repellendus suscipit. Aperiam unde quis fugiat est. Dolorum minus aut sapiente sed sit.\n\nEst in laudantium praesentium dolorem. Dolores ut delectus dolorum laboriosam maiores. Quos molestias accusantium qui.\n\nAut consequatur expedita impedit eum est praesentium vel. Magni nisi quis nostrum commodi et. Officia est et et ipsa.', 'Doloribus eligendi aut molestiae. Modi labore numquam et ut et inventore non. Repudiandae dolore assumenda necessitatibus voluptatem qui animi.\n\nQuia aut ut ullam assumenda harum id est deserunt. Et dicta iure autem optio temporibus. Deleniti ea ratione harum at quis. Ut et dolorem voluptas dolorem voluptatum numquam assumenda.', 'Quae corporis eum numquam non eius et provident non. Eum dolores facere quas sed atque ad. Ducimus ipsa consequatur et nostrum est. Optio dolores quisquam esse.\n\nNatus tempora vero rerum nisi soluta qui. Ex ipsa praesentium esse et. Labore error et qui natus consectetur et.\n\nHic delectus et et amet. Delectus sint et temporibus. Omnis molestias blanditiis minus iste perferendis. Aspernatur ut officia dolorem dignissimos reiciendis laudantium dicta quis.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(37, 'Rowland Schmidt', '6.png', '72141 Bethany Square Suite 474\nRunolfsdottirville, NJ 14887-2241', 'hledner@eichmann.com', 'General Practitioner', 'Housekeeper', 'Doloribus atque repellat voluptates accusamus quia officiis. Illo voluptates eveniet doloremque rerum impedit tempora facere expedita. Laborum autem eligendi ullam ut provident.\n\nVoluptates qui a repudiandae illo. Harum dicta voluptatibus officia nostrum temporibus. Explicabo dolorem iusto cum fugit deserunt culpa.\n\nCupiditate aut et eum vel vel. Minus natus eos sapiente beatae in commodi. Quae consequatur quia non magnam est facilis. Suscipit nulla velit saepe architecto in.', 'Odio dolorem doloremque voluptas inventore. Qui ea sed consectetur nesciunt minus aspernatur. Autem quia veniam sequi aut laudantium natus. Placeat ut sequi eos perspiciatis.\n\nIllo quaerat consequatur repellat quia earum velit dicta. Veritatis aut odio facere.\n\nPariatur autem ipsum ab qui similique eos. Quis quae consequuntur inventore cupiditate possimus. Doloribus molestiae fugiat aliquam et.\n\nOmnis aliquam harum maxime. Sed vel possimus incidunt porro. Quasi accusantium dicta minus dolor neque animi cum.', 'Ut tenetur consequuntur ut. Quis accusantium veniam et. Rem qui repudiandae sequi dolor alias voluptas. Nemo quos rem fugit eos.\n\nEt rerum asperiores porro et et. Quia quo rerum quibusdam sint laborum reiciendis commodi. Laboriosam commodi sequi suscipit id perspiciatis aut. Voluptatibus fugiat ea reiciendis accusamus quo.\n\nAsperiores voluptates alias qui ea in magni assumenda. Quo eveniet rerum facilis ipsum. Hic non voluptates eos itaque. Dicta quod inventore eos enim consequatur quidem assumenda.', 'Itaque qui et aut vel praesentium eveniet. Ea sequi eius facilis delectus architecto molestias. Et dolorem iste ut minus corporis est. Ratione et corrupti et doloribus incidunt.\n\nCupiditate omnis molestias quas molestiae labore aut. Quae ut iste veritatis quis non laudantium. Deleniti eligendi velit repellat quos sint sed deserunt.\n\nVeniam fugiat quos eligendi voluptas. Error occaecati nam sit eligendi fugiat id. Sed nihil voluptas voluptatum dolorum et nesciunt recusandae.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(38, 'Dakota Sanford Sr.', '2.png', '862 Alfredo Island\nWest Raven, SD 30143-0819', 'elinore84@yahoo.com', 'Mathematical Scientist', 'Cafeteria Cook', 'Velit id omnis illum sed temporibus. Earum doloremque repudiandae quo qui eveniet nostrum beatae. Quasi et velit voluptas alias. Deserunt magni explicabo quod cumque consequatur culpa et.\n\nLaborum a quo nihil repellat in quibusdam aut aut. At qui ullam libero molestiae amet. Ut dolorum cumque et laborum eaque aspernatur. Labore neque ad unde quos aliquam reprehenderit.\n\nTempore illo voluptatem quia inventore ut alias. Quia qui vel quis sequi. Vel ut aspernatur enim aut saepe. Delectus autem et commodi. Non similique repellat rem.', 'Blanditiis quo fugit quas alias et. Maiores nostrum sit totam impedit cupiditate delectus.\n\nEt quas asperiores tempore culpa corporis sapiente. Dolorem maiores doloremque placeat sapiente fuga aut qui.\n\nVoluptates esse quasi saepe qui corrupti. Reiciendis ab blanditiis explicabo rerum odit rem.\n\nAliquid soluta cum minima debitis quam delectus. Aperiam ab doloribus blanditiis. Et praesentium esse ipsum. Vel rerum ipsum et sit mollitia vero. Eveniet et in est ullam.', 'Rerum occaecati qui et. Beatae ea soluta minima non officia maxime. Mollitia itaque eos numquam maxime facere. Ducimus animi ducimus perferendis libero.\n\nDignissimos asperiores repudiandae veritatis est est. Sequi fuga qui veniam omnis impedit in.\n\nSed autem et est pariatur enim. Aut nihil laboriosam aperiam reiciendis ut et id ut. Rerum est veniam et cupiditate reprehenderit. Dolorum sunt molestiae ea rerum qui velit et pariatur. Officiis aspernatur sed mollitia architecto inventore dolore excepturi.', 'Vitae omnis voluptas qui. Sit inventore ut voluptatem nihil ut. Rerum consequatur distinctio veritatis quia modi reprehenderit vel. Accusamus necessitatibus et corporis rerum voluptatem odio. Qui adipisci maiores optio debitis sequi.\n\nQui rerum maxime sequi ut. Enim ut ab et consequatur cumque ad. Cum non nam dolor eius. Voluptatem quis maxime et pariatur quam.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(39, 'Dr. Afton Boyle DDS', '1.png', '9521 Elva Radial\nMarquiseton, TN 99802', 'lmitchell@hotmail.com', 'Mine Cutting Machine Operator', 'Veterinary Assistant OR Laboratory Animal Caretaker', 'Earum porro vero temporibus beatae cupiditate rem molestiae. Autem voluptatem adipisci et nesciunt. Repellendus repudiandae qui expedita incidunt at excepturi inventore.\n\nQui voluptatem ea quos saepe id. Voluptate et ipsa magnam ipsum perspiciatis quod dolor. At totam vitae facilis dolorum. Eum sit qui quae magnam veritatis eum esse. Doloribus quam placeat occaecati est dolores.', 'Laborum ut qui quis saepe minus expedita nihil. Aut nulla quos facilis et. Repellat maxime deleniti sunt adipisci fugiat hic minima ad.\n\nArchitecto non tenetur dolorem cupiditate. Animi veniam autem est quibusdam. Odio ea praesentium aperiam. A officia suscipit dignissimos voluptatem dolor.\n\nVeritatis natus nihil placeat ut. Autem atque est rerum nisi eum sit temporibus. Eum officiis sunt odit atque facere reiciendis.', 'Ea porro dolor enim autem sed possimus quo voluptatum. Voluptatem aut voluptas ut dicta et consequatur. Voluptas vitae repudiandae ut praesentium.\n\nFacere in voluptas esse dolores illo. Quidem eum delectus id non. Itaque sint dolor omnis.', 'Autem sed possimus praesentium aut quisquam quibusdam et. Id laudantium molestiae quaerat autem adipisci nulla eius. Non numquam quis magni laborum dolores. Quo molestias illum sapiente iste dicta perferendis nesciunt.\n\nQuia nam officia architecto eaque vero hic et. Dolor beatae qui unde fugit non. Et dicta sunt quidem sed pariatur. Iste reprehenderit doloribus eveniet. Soluta consequuntur veritatis ut impedit accusamus quibusdam est sed.', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(40, 'Dr. Rudy Roberts', '2.png', '4180 Wilderman Knoll Suite 616\nFeestburgh, GA 93415-7457', 'lmedhurst@murazik.org', 'Designer', 'Homeland Security', 'Sed eligendi beatae iure sunt dolores. Enim quibusdam praesentium rem distinctio. Alias omnis culpa fugit perferendis odio iusto labore.\n\nExcepturi laborum cum dicta quo at. Quidem praesentium odio sed. Corrupti aliquid beatae consequuntur quia. Voluptatum beatae ipsa temporibus fugiat minus.', 'Quia ratione repudiandae et quia aut enim porro ab. Laboriosam error enim aliquid omnis. Eum minus consectetur iste incidunt. Et autem magnam non.\n\nRerum molestias temporibus natus suscipit. Eos consequatur porro sint repellendus soluta dolores at. Voluptatem eum consectetur fugiat voluptatem.\n\nAliquam corrupti commodi fugit qui nihil officia et. Dolor dolorem dolores qui ullam omnis. Nobis nemo rerum velit sequi fugiat. Harum ullam dolores atque laudantium laborum a et.\n\nMolestiae suscipit amet aut. At quia qui tenetur maiores veritatis. Molestias in praesentium illum aut et deserunt vel ratione. Quae nam ad error officiis velit rerum saepe.', 'Et laboriosam corrupti voluptas tempora non odit. Voluptatum ipsam beatae facere autem nostrum nulla voluptatem. Nihil suscipit minima alias error consequatur. Cumque necessitatibus nihil neque dolor voluptatum. Enim magnam unde fugiat enim.\n\nQui facilis aut dolor non eos. Quos voluptatem id aliquam suscipit saepe molestiae. Rerum quae ut eveniet eius magni repudiandae repellendus deleniti.\n\nOfficiis et aut qui. Voluptatum omnis quia similique est aut porro natus cupiditate.', 'Laborum id accusamus enim qui blanditiis ea perferendis. Aut repellat temporibus harum velit laboriosam et. Minima aut odit voluptatibus sunt reprehenderit nobis quam. Totam nulla accusamus dolore quasi quo eligendi maiores.\n\nSimilique nulla ducimus ut. Nihil eos cum sed ad ullam tempora ipsa ut. Provident magni harum et tempore ex eveniet. Libero consequatur eos doloribus quia ab explicabo. Aut ratione aliquam aut nostrum voluptatem nemo.\n\nQuis dolores quas aliquam quaerat atque. Cupiditate praesentium sunt rerum sed earum. Veritatis earum incidunt ut. Non sapiente ut voluptate vel quos aliquid. Fugiat maiores ut sint adipisci repellat illo voluptas.\n\nDistinctio minima consequuntur voluptatum delectus voluptatem. Distinctio temporibus quam quis doloribus. Ut omnis eum ex aut non occaecati.', '2023-04-16 02:07:53', '2023-04-16 02:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menus`
--

CREATE TABLE `sub_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `sub_menu_title_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_menus`
--

INSERT INTO `sub_menus` (`id`, `name`, `link`, `menu_id`, `sub_menu_title_id`) VALUES
(1, 'Beatae Consequatur Vel', '/page/illum-tenetur-vel-officia-ad', 2, 1),
(2, 'Exercitationem Laboriosam Sequi', '/page/commodi-consequatur-dolorem-sint-facilis', 2, 2),
(3, 'Aut Expedita', '/page/aspernatur-ut', 2, 3),
(4, 'Asperiores Dolores', '/page/deleniti-adipisci', 2, 3),
(5, 'Vel Adipisci', '/page/soluta-eum-inventore-quod', 2, 3),
(6, 'Dolore Rerum Ipsa', '/page/eum-excepturi-rerum', 2, 4),
(7, 'Doloribus Et Quia', '/page/ex-voluptas-consequatur-eos-et', 3, 5),
(8, 'Corrupti Minus', '/page/magnam-aut', 3, 5),
(9, 'Dolorem Ea', '/page/aut-expedita-animi-saepe', 3, 5),
(10, 'Quae Veniam', '/page/quo-molestias-accusantium', 3, 5),
(11, 'Illum Velit Quidem', '/page/omnis-commodi', 3, 7),
(12, 'Non Nemo', '/page/quisquam-sed-vero-tempora-numquam', 3, 8),
(13, 'Distinctio Iusto Quae', '/page/reiciendis-vel', 3, 8),
(14, 'Non Voluptas Sapiente', '/page/qui-repudiandae-id', 3, 8),
(15, 'Ex Fugit Repellendus', '/page/vel-omnis-impedit', 3, 9),
(16, 'Esse Corrupti Non', '/page/exercitationem-tenetur-quia-sit-pariatur', 3, 9),
(17, 'Totam Iure Ut', '/page/id-eius-temporibus-et-et', 3, 9),
(18, 'Sint Harum', '/page/consectetur-expedita-saepe-beatae', 4, 10),
(19, 'Molestiae Voluptatem', '/page/aut-dolorum-excepturi-tenetur', 4, 10),
(20, 'Et Dignissimos', '/page/blanditiis-debitis', 4, 10),
(21, 'Eos Omnis Soluta', '/page/quae-quia', 4, 12),
(22, 'Totam Nihil', '/page/tempora-natus-quae-dolore-eaque', 4, 12),
(23, 'Ipsam Nulla', '/page/id-itaque-reiciendis-animi-ipsum', 4, 12),
(24, 'Et Molestiae Omnis', '/page/provident-quisquam', 4, 13),
(25, 'Harum Officia', '/page/esse-nostrum', 4, 13),
(26, 'Omnis Nihil', '/page/eligendi-quia-earum-qui-ipsum', 4, 14),
(27, 'Nisi Deleniti', '/page/ex-molestiae-dicta', 4, 14),
(28, 'Perspiciatis Fuga', '/page/similique-veritatis', 4, 14),
(29, 'Dolores Et Et', '/page/et-voluptatem-quidem', 4, 14);

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu_titles`
--

CREATE TABLE `sub_menu_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_menu_titles`
--

INSERT INTO `sub_menu_titles` (`id`, `name`, `link`, `menu_id`) VALUES
(1, 'Rerum', '/page/illum-tenetur-vel-officia-ad', 2),
(2, 'Explicabo', '/page/commodi-consequatur-dolorem-sint-facilis', 2),
(3, 'Occaecati', '/page/soluta-eum-inventore-quod', 2),
(4, 'Cum', '/page/eum-excepturi-rerum', 2),
(5, 'Dolorem Aperiam', '/page/quo-molestias-accusantium', 3),
(6, 'Praesentium Culpa', '/page/fuga-voluptatem-magni-similique-atque', 3),
(7, 'Eos', '/page/omnis-commodi', 3),
(8, 'Voluptatem Qui', '/page/qui-repudiandae-id', 3),
(9, 'Esse Quisquam', '/page/id-eius-temporibus-et-et', 3),
(10, 'Perspiciatis Ea', '/page/blanditiis-debitis', 4),
(11, 'Nam', '/page/repudiandae-quo', 4),
(12, 'Fugiat', '/page/id-itaque-reiciendis-animi-ipsum', 4),
(13, 'Et', '/page/esse-nostrum', 4),
(14, 'Occaecati Modi', '/page/et-voluptatem-quidem', 4),
(15, 'Staff', '/staff', 5),
(16, 'FAQs', '/faqs', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`) VALUES
(1, 'Sunt In', 'sunt-in'),
(2, 'Quo', 'quo'),
(3, 'Reprehenderit', 'reprehenderit'),
(4, 'Nesciunt', 'nesciunt'),
(5, 'Aut Id', 'aut-id');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `approved_at`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Osbaldo Walter', 'kendra.larkin@example.org', '2023-04-16 02:07:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '440NruMAvu', '2023-04-16 02:07:53', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(2, 'Pascale Kozey', 'tkoch@example.org', '2023-04-16 02:07:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3Y11skmeT5', '2023-04-16 02:07:53', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(3, 'Gerald Jacobs', 'svonrueden@example.com', '2023-04-16 02:07:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ftHwAWBRMQ', '2023-04-16 02:07:53', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(4, 'Mr. Angelo Berge', 'ashly21@example.org', '2023-04-16 02:07:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u71uMCDbQU', '2023-04-16 02:07:53', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(5, 'Dr. Prince Eichmann', 'maximo.hettinger@example.org', '2023-04-16 02:07:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b8ztOaKOSz', '2023-04-16 02:07:53', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(6, 'Prof. Nikki Bode', 'minnie.collins@example.net', '2023-04-16 02:07:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4L8fckg8qA', '2023-04-16 02:07:53', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(7, 'Claudie Dicki', 'fmueller@example.com', '2023-04-16 02:07:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd13OnMrcSj', '2023-04-16 02:07:53', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(8, 'Prof. Jimmy Hand MD', 'towne.kody@example.com', '2023-04-16 02:07:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5yLeO7VyOH', '2023-04-16 02:07:53', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(9, 'Alyce Parker', 'davin.grady@example.org', '2023-04-16 02:07:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KHUiR1HeC5', '2023-04-16 02:07:53', '2023-04-16 02:07:53', '2023-04-16 02:07:53'),
(10, 'Ali Brekke DVM', 'jtorphy@example.org', '2023-04-16 02:07:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f61HDwrT9F', '2023-04-16 02:07:53', '2023-04-16 02:07:53', '2023-04-16 02:07:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_tags`
--
ALTER TABLE `featured_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_tag_id_foreign` (`tag_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_menus_menu_id_foreign` (`menu_id`),
  ADD KEY `sub_menus_sub_menu_title_id_foreign` (`sub_menu_title_id`);

--
-- Indexes for table `sub_menu_titles`
--
ALTER TABLE `sub_menu_titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_menu_titles_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `featured_tags`
--
ALTER TABLE `featured_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sub_menus`
--
ALTER TABLE `sub_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sub_menu_titles`
--
ALTER TABLE `sub_menu_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `featured_tags`
--
ALTER TABLE `featured_tags`
  ADD CONSTRAINT `featured_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD CONSTRAINT `sub_menus_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_menus_sub_menu_title_id_foreign` FOREIGN KEY (`sub_menu_title_id`) REFERENCES `sub_menu_titles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_menu_titles`
--
ALTER TABLE `sub_menu_titles`
  ADD CONSTRAINT `sub_menu_titles_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;
--
-- Database: `db_bagas`
--
CREATE DATABASE IF NOT EXISTS `db_bagas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_bagas`;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `slug`, `views`, `created_at`, `body`) VALUES
(1, 'Dukung Farid Jadi Presiden', 'community-messaging-fit', 67, '2023-05-01', '<p>bismillah</p>'),
(2, 'Funding Open Source', 'funding-open-source', 23, '2023-04-15', 'Current State\r\n2023 will be the year of hyper rationalization for how OSS is funded.\r\n\r\nMore companies are going to need to sponsor maintainers, and engineers need to do better due diligence for how projects are maintained and funded.\r\n\r\nBehind many successful OSS projects, there\'s a successful business or crowdsourced funding.\r\n\r\n\r\nFunding Open Source\r\n2023-01-29\r\n17,523 views\r\n\r\nNext.js is a free open-source framework. The creators, Vercel, fund its development. How is this possible? Why would they give it away for free?\r\n\r\nLet\'s talk about funding open-source software (OSS).\r\n\r\nCurrent State\r\n2023 will be the year of hyper rationalization for how OSS is funded.\r\n\r\nMore companies are going to need to sponsor maintainers, and engineers need to do better due diligence for how projects are maintained and funded.\r\n\r\nBehind many successful OSS projects, there\'s a successful business or crowdsourced funding.\r\n\r\nzeroskillz\r\nJohn Leider\r\n@zeroskillz\r\nVuetify isn\'t going anywhere. Simply put, it\'s not paying the bills at the moment.\r\n3:22 PM - Jan 7, 2023\r\n18\r\n7\r\n87\r\nIn the case of Next.js, Vercel is subsidizing R&D by building a platform for developers to iterate and deploy their Next.js site. They\'re not the only ones, though. For example:\r\n\r\nMySQL / Oracle\r\nVitess / PlanetScale\r\nTerraform / HashiCorp\r\nWordPress / Automattic\r\nKafka / Confluent\r\nApache Spark / Databricks\r\nLaravel / Forge, Vapor, and more\r\nAnd many more.\r\n'),
(3, 'Why You Should Use a React Framework', 'react-frameworks', 14, '2023-04-15', 'You should consider using a framework (instead of building your own) because:\r\n\r\n1.Less time connecting tools, more time building products\r\n\r\n2. Easier onboarding and training of new developers\r\n3. Flexibility for different rendering strategies (server, client, or static)\r\n\r\n4. Opinionated choices prevent bikeshedding\r\n5. Deploy anywhere and incrementally adopt\r\n6. It\'s still just React\r\nBut before we explore why you should use a framework, it\'s helpful to step back and look at the evolution of React.');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` date NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `content`, `created_at`, `blog_id`) VALUES
(4, 'Reynal', 'pep guardiiola', '2023-05-01', 1),
(5, 'Reynal', 'p', '2023-05-01', 1),
(6, 'Penyembah Puan', 'Puan Maharani for Presiden 2024', '2023-05-01', 2),
(7, 'Reynal', 'Jokowi 3 Periode', '2023-05-01', 2),
(8, 'Rico', 'Habis Ngentot Ya', '2023-05-01', 1),
(9, 'Reynal', 'oi', '2023-05-02', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test` (`blog_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `test` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'bagas_blog', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"dbjual\",\"db_ais\",\"db_bagas\",\"phpmyadmin\",\"test\",\"uaspbw\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_bagas\",\"table\":\"comments\"},{\"db\":\"db_bagas\",\"table\":\"blog\"},{\"db\":\"db_ais\",\"table\":\"posts\"},{\"db\":\"uaspbw\",\"table\":\"produk\"},{\"db\":\"uaspbw\",\"table\":\"histori\"},{\"db\":\"uaspbw\",\"table\":\"akun\"},{\"db\":\"uaspbw\",\"table\":\"video\"},{\"db\":\"uaspbw\",\"table\":\"berita\"},{\"db\":\"uaspbw\",\"table\":\"kontak\"},{\"db\":\"uaspbw\",\"table\":\"keranjang\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('db_bagas', 'comments', 'name');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-05-03 01:43:19', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `uaspbw`
--
CREATE DATABASE IF NOT EXISTS `uaspbw` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `uaspbw`;

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `passcode` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL DEFAULT 'user',
  `tanggal_akun` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `username`, `passcode`, `tipe`, `tanggal_akun`) VALUES
(1, 'admin', '$2y$10$p.dKUNpVTtTp4eb0WH6l7egRq/cRCYRC2A41CqP4rcTDwVpt90JUi', 'admin', '2023-01-04 14:28:01'),
(3, 'admin2', '$2y$10$sdc7nXOgJko61xeKI9eCzuy5BrNH1BID9BgDOCBpdLOcdCZ66XWIO', 'admin', '2023-01-04 14:45:02'),
(4, 'user', '$2y$10$IA.hbut89R0hW3awBsJifOVqXDztUrQJLaCTY09KBqlUNUmeuPrE.', 'user', '2023-01-07 09:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `kategori_berita` varchar(255) NOT NULL,
  `isi_berita` text NOT NULL,
  `foto_berita` text NOT NULL,
  `tanggal_berita` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul_berita`, `kategori_berita`, `isi_berita`, `foto_berita`, `tanggal_berita`) VALUES
(1, 'Bupati klaten mengawasi fenomena tanah amblas di desa karangpakel', 'Fenomenaa', 'Klaten – Senin ( 05/12 ) bupati Klaten Hajah Sri Hartini meninjau dua lokasi tanggul rusak akibat terkikis air banjir dua pekan (akhir November 2016) silam dengan memberikan bantuan makan dan minuman serta peralatan lain kepada keluarga korban. Kunjungan dilaksanakan usai pelaksaan sholat dhuhur tersebut didampingi ketua Pelaksana Harian (Kalakhar) BPBD Klaten Bambang Giyanta, kepala Dinas PU dan SDM Tajudin Akbar, kepala BAPEDA Bambang Sigit Sinugraha, anggota DPRD Sri Mungatminah dan lain-lain, diterima pejabat kecamatan dan desa masing-masing.', 'Bupati-Klaten-Sidak-Fenomena-Tan.jpg', '2023-01-03 12:07:25'),
(2, 'kapolres gelar latihan tembak di desa Karangpakel', 'Informasi', 'KEPOLISIAN Resor Klaten, Jawa Tengah, menggelar latihan menembak di lapangan tembak Desa Karangpakel, Kecamatan Trucuk, Klaten, Selasa (5/1). Latihan menembak yang dipimpin Wakapolres Kompol Adi Nugroho digelar dalam rangka pemeliharaan dan peningkatan kemampuan (harkatpuan) personel. \"Kegiatan latihan ini dilaksanakan rutin, untuk pemeliharaan dan peningkatan kemampuan menembak personel Polres Klaten,\" kata Wakapolres.\r\n', '41df861f06881e81a5d7ca1784721e79.jpg', '2023-01-03 12:07:25'),
(3, 'Babinkatkamtibnas dampingi progam BIAIN desa Karangpakel', 'Informasi', 'Klaten – Babinsa Desa Karangpakel Koramil 19 Trucuk Kodim 0723/Klaten Sertu Syaiful Anwar bersama Bhabinkamtibmas Desa Karangpakel Brigpol Angga melaksanakan monitoring dan pendampingan pelaksanaan Bulan Imunisasi Anak Nasional (BIAN) yang diselenggarakan di Balai Desa Karangpakel. Kegiatan tersebut diselenggarakan oleh Bidan Desa Karangpakel dan dibantu oleh petugas kesehatan Puskesmas Trucuk 2. Senin (15/08/2022).\r\n\r\n ', '10k.jpg', '2023-01-03 12:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `histori`
--

CREATE TABLE `histori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `pembayaran` varchar(255) NOT NULL,
  `pengiriman` varchar(255) NOT NULL,
  `total_produk` text NOT NULL,
  `total_harga` varchar(255) NOT NULL,
  `tanggal_beli` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `histori`
--

INSERT INTO `histori` (`id`, `nama`, `email`, `nohp`, `alamat`, `pembayaran`, `pengiriman`, `total_produk`, `total_harga`, `tanggal_beli`) VALUES
(1, 'halo dek', 'halo@mail.com', '', 'ngawi', '', '', 'Seblak [3] , Asinan Buah [1] ', '150000', '2023-01-03 16:52:06'),
(2, 'halo dek', 'halo@mail.com', '0889', 'as', 'Minimarket', 'JNE', 'Bakso Bakar [1] ', '2000', '2023-01-03 16:55:30'),
(3, 'halo dek', 'halo@mail.com', '123', 'haha', 'Transfer', 'JNE', 'Gerabah [1] ', '30000', '2023-01-03 16:57:13'),
(4, 'halo dek', 'halo@mail.com', '123', 'asd', 'Transfer', 'JNE', 'Wadah Serbaguna [1] ', '10000', '2023-01-03 16:58:04'),
(5, 'arief', 'mjiwa834@gmail.com', '0888888888', 'jepara', 'COD', 'JNT', 'Bakso Bakar [1] , Seblak [1] ', '18000', '2023-01-05 05:05:07'),
(6, 'agus', 'agus@gmail.com', '08922122212', 'ngawi', 'COD', 'JNT', 'Bakso Bakar [1] ', '2000', '2023-01-07 10:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_pd` int(11) NOT NULL,
  `nama_pd` varchar(255) NOT NULL,
  `harga_pd` int(11) NOT NULL,
  `jumlah_pd` int(11) NOT NULL,
  `foto_pd` text NOT NULL,
  `tanggal_pd` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal_kontak` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `pesan`, `tanggal_kontak`) VALUES
(1, 'halo dek', 'halo@mail.com', 'pp', '2023-01-03 15:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_pd` int(11) NOT NULL,
  `nama_pd` varchar(255) NOT NULL,
  `harga_pd` int(11) NOT NULL,
  `kategori_pd` int(11) NOT NULL,
  `foto_pd` text NOT NULL,
  `promo_pd` int(11) NOT NULL,
  `diskon_pd` int(11) NOT NULL,
  `tanggal_pd` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_pd`, `nama_pd`, `harga_pd`, `kategori_pd`, `foto_pd`, `promo_pd`, `diskon_pd`, `tanggal_pd`) VALUES
(1, 'Bakso Bakar', 2000, 1, '2images.jpg', 1, 0, '2023-01-03 11:40:54'),
(2, 'Seblak', 16000, 1, '2Q.png', 0, 0, '2023-01-03 11:40:54'),
(3, 'Asinan Buah', 15000, 1, 'Z.jpg', 0, 0, '2023-01-03 11:40:54'),
(4, 'Es Kepal Milo', 10000, 2, 'ww.jpg', 0, 0, '2023-01-03 11:40:54'),
(5, 'Kelapa Muda ', 10000, 2, 'a.jpg', 0, 0, '2023-01-03 11:40:54'),
(6, 'Susu Sapi Murni', 10000, 2, 'kk.jpg', 0, 0, '2023-01-03 11:40:54'),
(7, 'Lenter Kertas', 20000, 3, 'images.jpg', 0, 0, '2023-01-03 11:40:54'),
(8, 'Wadah Serbaguna', 10000, 3, '9k.jpg', 0, 0, '2023-01-03 11:40:54'),
(9, 'Gerabah', 30000, 3, 'Pengertian-Kerajinan-Dari-Tanah.jpg ', 1, 0, '2023-01-03 11:40:54'),
(12, 'ARIEF RAHMAN ADI NUGRAHA UTAMA', 123, 1, 'screencapture-chat-openai-chat-2023-01-05-22_22_21.png', 0, 0, '2023-01-07 11:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `link_video` text NOT NULL,
  `tanggal_video` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `link_video`, `tanggal_video`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/r_K-s4eBjbE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2023-01-04 14:14:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `histori`
--
ALTER TABLE `histori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_pd`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `histori`
--
ALTER TABLE `histori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_pd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
