-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2020 at 08:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sport_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author_name`, `author_email`, `author_url`, `body`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Tiana Herzog', 'gwendolyn.boyle@hodkiewicz.com', 'senger.com', 'Et quia vel sint cupiditate qui. Ratione omnis at laborum et sequi laboriosam ipsa. Odit dolores sed ea fuga est exercitationem sed. Dolorum et illum provident aut autem et.\n\nAt quae quisquam doloribus in ex. Necessitatibus voluptate ullam at ad fugit. Nam asperiores deleniti accusantium ut tempora perspiciatis deleniti. Consequuntur odio in similique omnis rerum.\n\nVero quaerat amet ipsa inventore harum. Nihil fugiat maxime dolorem minima accusantium. Doloribus ut rerum aperiam tempora maxime sit et.', 35, '2020-02-13 02:48:03', '2020-02-13 02:48:03'),
(2, 'Anya Metz', 'ttoy@yahoo.com', 'marks.com', 'Assumenda aut dolorem inventore temporibus ut. Amet vero quas a deleniti maiores ex. Unde aut perferendis quo. Vel delectus vel quis omnis et ratione dolorum.\n\nRecusandae eius quia sint provident deleniti. Quo vel maxime harum pariatur recusandae. Aliquam nam non et harum in exercitationem deserunt. Iste dolorem non voluptas molestias maiores molestias nesciunt.\n\nDelectus impedit suscipit aspernatur enim eos repudiandae. Quae ipsam tenetur tempora laboriosam. Officiis rerum assumenda aut omnis fugiat voluptatem odit. Praesentium quasi nam ut hic est sint ut.\n\nRem non beatae odit inventore harum qui tempore ad. Qui fuga facilis architecto. Fugiat tenetur incidunt optio est. Doloribus voluptas omnis atque ducimus consequatur id id provident.', 35, '2020-02-13 03:48:03', '2020-02-13 03:48:03'),
(3, 'Mrs. Patricia McKenzie', 'hudson.clementina@gmail.com', 'mohr.com', 'Aut et et soluta ducimus ut mollitia minus. Et necessitatibus modi voluptas sint. Voluptatem error est beatae voluptatum dolore saepe. Voluptatem quaerat maxime ea laborum et.\n\nHarum sapiente cumque modi aut officiis in non occaecati. Dolor itaque recusandae corrupti nesciunt aliquid cum id. Ut libero et quo culpa laboriosam et praesentium.\n\nFugit et aut nobis doloremque voluptate voluptatem. Sed facere eos autem in. Nisi ea ab quia consectetur. Odio qui ad rem vitae consequatur.', 35, '2020-02-13 04:48:03', '2020-02-13 04:48:03'),
(4, 'Brant Baumbach', 'considine.sheridan@hotmail.com', 'koss.com', 'Praesentium eum distinctio saepe earum. Debitis in pariatur quibusdam perferendis eius ut. Neque non omnis commodi debitis enim. Ea molestias voluptatem voluptate eligendi ut temporibus voluptate magnam.\n\nQuo sunt quis ut molestiae accusantium sit animi expedita. Tempora consectetur facilis sapiente harum aut quo eaque aut. Ratione qui commodi aliquid. Voluptas voluptatem iusto et placeat dolorem praesentium quia. Doloribus sint rerum alias.\n\nVel nihil quos repudiandae quas accusamus nostrum quis. Ex neque distinctio ea voluptatem. Architecto veritatis cumque ut quo adipisci veniam ipsam. Et ut temporibus voluptatibus optio sit consequuntur quasi.', 35, '2020-02-13 05:48:03', '2020-02-13 05:48:03'),
(5, 'Nigel Spencer I', 'bobbie27@frami.org', 'pacocha.com', 'Beatae aut et eos repellat. Vero amet rem dolor et voluptatem accusantium fugiat.\n\nImpedit rem assumenda id veritatis soluta. Eum pariatur quod qui rem. Et sunt saepe modi sed et quam laudantium labore. Quidem reiciendis quia sed corporis.', 34, '2020-02-03 02:48:03', '2020-02-03 02:48:03'),
(6, 'Prof. Oma Turner', 'swaniawski.queen@huel.net', 'cummings.org', 'Quasi perferendis odit tempora. Aliquam ad quia voluptatem facilis voluptas. Quas eos maxime aperiam sint quidem. Aliquid nemo quisquam placeat enim.', 34, '2020-02-03 03:48:03', '2020-02-03 03:48:03'),
(7, 'Tracey Kirlin', 'iva86@hotmail.com', 'johns.com', 'Doloribus sed alias recusandae. Ea libero hic omnis alias explicabo esse non. Recusandae aut est debitis ad velit. Quisquam dicta minima aut ea iure dicta aperiam.\n\nEsse explicabo quis est veritatis aspernatur ab ea nostrum. Saepe suscipit omnis maiores omnis. Sunt incidunt et enim nihil quod perferendis at est. Excepturi soluta eos harum tempore et optio ullam minus.\n\nSunt ea saepe repellat quibusdam. Tenetur accusantium autem quia beatae omnis optio fugit optio. Architecto sit ex nisi. Maxime quis veniam in et omnis enim magni atque.\n\nOmnis quisquam optio quis eum nisi quia omnis. Et perspiciatis voluptatibus facere omnis. Iure ut voluptates labore ex qui impedit occaecati.', 34, '2020-02-03 04:48:03', '2020-02-03 04:48:03'),
(8, 'Felix Reichel', 'ubruen@gmail.com', 'mertz.com', 'Vel voluptas omnis qui ipsum cupiditate et. Est sed placeat expedita hic occaecati. Quae perferendis et quidem sunt et sint explicabo maiores. Molestiae natus aut sit libero officiis.\n\nIste natus quibusdam modi quos dignissimos sapiente et. Eligendi est ut rerum odit. Sit magnam repudiandae ipsam. Consequatur iure perferendis beatae voluptatibus in.\n\nReprehenderit enim cupiditate praesentium maxime ut tempore. Nulla ipsa earum nihil assumenda accusamus sequi voluptatem.\n\nExplicabo omnis libero id quia id consequatur dolor. Eum ea qui doloribus non ut. Aut quae eius consequatur. Asperiores ut voluptatum tenetur harum animi.\n\nSapiente culpa id voluptates architecto. Ipsum nam accusantium dolore quos enim et. Voluptas ut cupiditate ipsam ut vel et explicabo. Nihil omnis sequi dolores aut quis cum quaerat.', 32, '2020-01-14 02:48:03', '2020-01-14 02:48:03'),
(9, 'Sabryna Gutkowski DVM', 'amparo47@yahoo.com', 'schmitt.com', 'Quia optio saepe expedita odio aut. Maiores voluptatem asperiores officiis. Repudiandae ducimus voluptatibus et amet modi.\n\nHic iste voluptas omnis. Voluptatum sit voluptatum quas voluptatem nulla voluptatem sed. Quidem adipisci ratione est molestiae harum ut. Vitae commodi tempora ipsa autem numquam. Pariatur quis amet culpa.', 32, '2020-01-14 03:48:03', '2020-01-14 03:48:03'),
(10, 'Rosie Will', 'gardner57@hotmail.com', 'wisoky.biz', 'Laboriosam a quae rerum. Ut voluptatem sequi voluptatem eveniet magni nesciunt omnis. Eos dolorum rerum dolores omnis ipsum recusandae. Nulla optio ipsa ipsum fugit animi ipsa.\n\nPossimus in omnis iure quasi. Sequi repudiandae ut neque tempore. Eos laudantium amet debitis accusamus. Autem repellendus odio provident debitis non.', 32, '2020-01-14 04:48:03', '2020-01-14 04:48:03'),
(11, 'Tiara Sawayn', 'carli.mraz@buckridge.info', 'emard.com', 'Dolore aut maiores sit sed. Aut sed aut molestiae eveniet vero. Dicta excepturi voluptates debitis velit eaque ut quidem at.\n\nFacilis nostrum voluptas culpa voluptas qui porro id. Dolor quisquam repellendus porro delectus qui. Quia occaecati molestiae sit incidunt vel. Porro sint nobis beatae consequatur.\n\nEa corrupti nisi hic eum deleniti numquam. Qui natus qui dolores illum cum accusantium et. Eius assumenda omnis doloremque quia tenetur similique.', 32, '2020-01-14 05:48:03', '2020-01-14 05:48:03'),
(12, 'Miss Claire Schulist I', 'letitia.carter@wintheiser.info', 'bradtke.net', 'Reprehenderit quasi aut provident. Autem et ex suscipit. Minima voluptas dolores omnis dignissimos impedit modi.\n\nSunt aut ut voluptatem vitae fugit. Rerum consequatur quis facere hic voluptates. Accusamus quibusdam ipsum temporibus ducimus esse.', 32, '2020-01-14 06:48:03', '2020-01-14 06:48:03'),
(13, 'Cecilia Douglas PhD', 'gusikowski.jamie@barton.biz', 'stiedemann.com', 'Suscipit distinctio eligendi laudantium et. Saepe sunt magnam id aut voluptas voluptatem.\n\nQuia ducimus animi eligendi deleniti. Neque et illo iste. Dolor sed illum est consequatur qui quaerat.\n\nEum est fuga cum eveniet. Similique autem maiores maiores et inventore. Officiis quos blanditiis veritatis sint accusantium ex. Iure atque voluptas quia.\n\nSed error similique amet est. Totam commodi magnam sed qui. Dolorem libero quae magni consectetur facilis facere beatae. Fugiat accusantium blanditiis non pariatur.', 32, '2020-01-14 07:48:03', '2020-01-14 07:48:03'),
(14, 'Miss Hailee Bailey', 'little.amara@hickle.info', 'cummerata.com', 'Asperiores fugiat fuga esse ratione corporis est ut. Aut voluptatum nam velit. Iste reiciendis veritatis rerum qui est eos est. Et nam quis sed modi. Iusto quasi dolorum sapiente et.\n\nDebitis unde eveniet aliquam sunt veritatis. Est quidem pariatur suscipit doloremque. Deserunt ducimus dolor laborum.\n\nFacilis reprehenderit libero non alias. Et corrupti voluptatum quia aperiam voluptatem. Consequuntur omnis ipsa porro.\n\nQuia molestiae aspernatur neque deserunt nobis dolorem exercitationem qui. Laudantium voluptas dolores veniam. Vel sapiente necessitatibus quasi dolorem itaque consequatur animi. Ipsa voluptatem dolor minima et sit eius natus.\n\nDeleniti vel cumque ipsam et provident autem. Dolorem illum expedita corrupti dolore eveniet ipsam. Amet nesciunt porro est deserunt esse magnam aut.', 31, '2020-01-04 02:48:03', '2020-01-04 02:48:03'),
(15, 'Andrew Kreiger', 'bartoletti.hildegard@yahoo.com', 'kuhlman.net', 'Quibusdam consequuntur enim suscipit nesciunt ipsam quas. Adipisci repellat hic sit est magnam expedita accusamus totam. Aut natus quo aperiam.\n\nUt rerum ipsa deleniti quisquam ad nam. Quos autem tempora ut ducimus expedita distinctio aut. Ad dolores tempore ab fugit aut eos.\n\nPraesentium dolorem ut et ea. Vel voluptate ut et sit. Porro voluptas nesciunt qui eaque ex est.\n\nReprehenderit non doloribus aspernatur ipsam impedit itaque consequatur. Harum consequuntur qui est dolores perferendis. Tempora odio ex enim dolorem consequatur ut odio. Provident expedita dolores dolorem occaecati non perspiciatis.', 31, '2020-01-04 03:48:03', '2020-01-04 03:48:03'),
(16, 'Dayna Cronin', 'gwolf@kuhlman.net', 'haag.com', 'Autem aut natus possimus in reiciendis cum. Voluptate sed modi vero quis. Libero ipsam voluptatem qui.\n\nBlanditiis iusto voluptate et eos dolores molestias. Blanditiis optio corrupti doloremque eaque. Rerum et libero repellendus reprehenderit harum tempora. Officiis et eos mollitia dolorem consectetur.', 31, '2020-01-04 04:48:03', '2020-01-04 04:48:03'),
(17, 'Prof. Junius Kuhn', 'frami.tillman@hotmail.com', 'dicki.com', 'Quis qui vel voluptas similique facere deleniti. Illum molestiae aut soluta vitae. Quo dolorem unde dolore illo aut. Corrupti dolorem nihil quisquam. Qui officia voluptas animi dolor nostrum repudiandae ab.\n\nOmnis odit temporibus qui magnam iure dolorem. Itaque hic cupiditate quibusdam ut minima est. Quaerat mollitia tempore nihil omnis dolorum in ipsa voluptatum.\n\nMagni sint consequatur iure nostrum unde sit sunt. Suscipit nesciunt ducimus eius deleniti. Corporis quod est non et voluptatem et.', 31, '2020-01-04 05:48:03', '2020-01-04 05:48:03'),
(18, 'Heloise Sawayn', 'aiyana.huels@medhurst.com', 'ledner.org', 'Natus earum a quo impedit vel. Quo repellat qui eos a eveniet. Architecto et hic itaque accusamus molestiae.\n\nBlanditiis distinctio nostrum aperiam. At consequatur expedita perferendis ipsum deserunt dicta impedit non. Error voluptatem aut eos ut doloremque.\n\nIncidunt eos vel omnis. Voluptate distinctio et dolores necessitatibus quaerat minima. Facere ea voluptas quo deserunt accusamus aut. Pariatur dolor autem natus debitis.', 31, '2020-01-04 06:48:03', '2020-01-04 06:48:03'),
(19, 'Valentin Mraz', 'linnea.bins@hotmail.com', 'lang.com', 'Debitis repellat earum quam dolor dignissimos modi rem. Corporis nobis in quia occaecati optio nulla voluptas velit. Et fuga ipsa id qui.\n\nNecessitatibus nihil sunt non saepe eum repellat. Corrupti quos numquam sed omnis. Culpa aliquid asperiores eum voluptatem tenetur. Praesentium nostrum aut natus architecto similique vero sit. Exercitationem totam molestiae sit qui perferendis.', 29, '2019-12-11 02:48:03', '2019-12-11 02:48:03'),
(20, 'Deshawn McLaughlin', 'armstrong.woodrow@gmail.com', 'breitenberg.info', 'Error libero provident quia excepturi facere iure. Sequi voluptate sed voluptate dolorum unde. Impedit ut dicta sit deleniti at blanditiis qui.\n\nSequi saepe suscipit nam est aliquam sunt commodi. Ratione et voluptatibus autem ea sit modi nihil. Harum corporis et veritatis inventore tempore vero eum. Enim quia pariatur ullam et.\n\nIpsam aut maiores nam cupiditate dolorem autem eius ut. Unde debitis sed delectus et.\n\nAut et nesciunt neque facere. Distinctio dolor dolorum ex animi omnis. Enim quibusdam nihil ut qui nobis et consequatur. Soluta autem nam aut.\n\nEnim voluptatem aspernatur in accusantium. Dolores quos velit hic. Voluptate et minus qui sequi commodi.', 29, '2019-12-11 03:48:03', '2019-12-11 03:48:03'),
(21, 'Shyann Boyle', 'pollich.florian@yahoo.com', 'kuhn.org', 'Explicabo esse quia eos omnis quo laudantium officiis. Error nisi aut sed voluptatem possimus ut veniam iure. Saepe quasi dolorum unde sequi illo tempora. Recusandae quis vel aliquid quis nihil culpa atque. Saepe repellat assumenda delectus reiciendis harum.\n\nSunt animi maxime quas culpa sunt est qui repellendus. Mollitia est officia nostrum sapiente unde at vel. Ut repellat et commodi autem. Suscipit nihil commodi sit cum dignissimos eos perferendis.\n\nQuibusdam veniam alias quae tempora. Et qui id eos perspiciatis assumenda. Cumque quod id culpa doloremque eum deleniti. Sunt minus molestiae aspernatur molestiae.\n\nEum accusamus error aliquid cupiditate qui. Ad omnis minus explicabo qui ab voluptatem necessitatibus perferendis. Ut in earum et repellat. Minus ea fuga ut facilis.', 29, '2019-12-11 04:48:03', '2019-12-11 04:48:03'),
(22, 'Ulises Predovic', 'bahringer.destiney@keebler.com', 'murphy.biz', 'Impedit autem dolorum blanditiis iusto odio officiis laborum. Laboriosam quasi laborum ducimus. Eligendi et fugit cupiditate eaque id et totam.', 29, '2019-12-11 05:48:03', '2019-12-11 05:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hobby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_07_25_134316_create_posts_table', 1),
(4, '2016_07_27_042414_alter_posts_add_published_at_column', 1),
(5, '2016_07_28_093436_create_categories_table', 1),
(6, '2016_07_28_093634_alter_posts_add_category_id_column', 1),
(7, '2016_07_29_003557_alter_users_add_slug_column', 1),
(8, '2016_07_29_021600_alter_users_add_bio_column', 1),
(9, '2016_07_30_015428_alter_posts_add_view_count_column', 1),
(10, '2016_11_03_023303_add_soft_deletion_to_posts_table', 1),
(11, '2017_04_06_043225_create_tags_table', 1),
(12, '2017_08_30_024106_create_comments_table', 1),
(13, '2019_04_12_064248_laratrust_setup_tables', 1),
(14, '2020_02_23_122501_create_players_table', 1),
(15, '2020_02_23_122523_create_managers_table', 1),
(16, '2020_02_23_142327_create_teams_table', 1),
(17, '2020_02_23_142613_create_socmatches_table', 1),
(18, '2020_02_23_142730_create_socmatches_teams_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'crud-post', NULL, NULL, '2020-02-24 01:48:08', '2020-02-24 01:48:08'),
(2, 'update-others-post', NULL, NULL, '2020-02-24 01:48:08', '2020-02-24 01:48:08'),
(3, 'delete-others-post', NULL, NULL, '2020-02-24 01:48:08', '2020-02-24 01:48:08'),
(4, 'crud-category', NULL, NULL, '2020-02-24 01:48:08', '2020-02-24 01:48:08'),
(5, 'crud-user', NULL, NULL, '2020-02-24 01:48:09', '2020-02-24 01:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shirt_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `former_team` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `biography` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `profile_picture`, `first_name`, `middle_name`, `last_name`, `shirt_number`, `position`, `former_team`, `date_of_birth`, `biography`, `created_at`, `updated_at`) VALUES
(3, 'jksdsjdlaskasdkajsfask_profile_picture.png', 'jksdsjdl;ask', NULL, 'asdkajsfask', '45', 'usajk', 'sak', '9/7/3', 'sjdaskfjsafpsofaspfakp', '2020-02-25 04:02:50', '2020-02-25 04:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `view_count` bigint(20) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `slug`, `excerpt`, `body`, `image`, `created_at`, `updated_at`, `published_at`, `category_id`, `view_count`, `deleted_at`) VALUES
(1, 3, 'Id maxime delectus facilis facere molestiae consequatur fugit vel.', 'eos-reiciendis-debitis-dicta-necessitatibus-totam-sunt-provident-et', 'Ad quia ea odio consequatur exercitationem. Molestiae praesentium ea tempore ea eum a. Voluptatum dolore fugiat enim accusantium quis est. Laboriosam nostrum non voluptatem vero a harum. A eius libero ut autem fuga quas nobis. Cum omnis quos culpa ullam illo cum omnis.', 'Laborum ea voluptas provident. Voluptas eveniet rerum aut dicta error ipsum. Nisi quis minus odit veniam doloremque. Pariatur veniam voluptates consequatur veniam veritatis.\n\nAsperiores ut rerum autem necessitatibus. Corporis laborum quis nihil porro debitis officia. Sit natus sed voluptatem fugit voluptatem. Quasi dolorem voluptatem quas.\n\nAutem ea quia in at iure ut. Atque qui nostrum laborum eligendi. Tenetur eos corporis optio quod animi nihil.\n\nQui non exercitationem voluptas a eos et. Sed et beatae necessitatibus earum neque quo. Quasi ad non molestiae vero dolores.\n\nExplicabo est quasi est quia magni nihil. Repellendus aut soluta est ducimus. Officiis architecto a id error.\n\nRepudiandae consequatur quidem nostrum similique vel illo explicabo. Earum repudiandae asperiores corrupti. Voluptatem voluptas modi eos aut.\n\nMinus eveniet ad repellendus itaque ut. Dolor repellat odit et ut voluptatem maxime tenetur. Ut qui in iusto. Fugit ut totam reiciendis. Exercitationem nisi laborum et sapiente in ipsam.\n\nNon odio et atque magnam quo est. Molestias vel sed aut aperiam repudiandae nemo sit. Non distinctio est cupiditate assumenda quam.\n\nIn et quia veniam. Mollitia quo qui sed est illo tenetur ad. Dolorum sit unde ex aut id iusto. Et in qui eius commodi.\n\nNihil molestiae repellendus quam et. Aut quasi architecto dolores ab magnam neque aut sit. Maxime minus consequuntur eos culpa odio.\n\nAutem cum quis est iste rerum qui vel. Fugiat totam enim debitis dolorem molestias. Consequatur non ex dolor enim distinctio eum. Recusandae optio totam aliquid sint ut qui facere.\n\nQui et dolorem officia itaque temporibus nihil. Consequatur molestiae ut corporis.\n\nMaxime earum odio id et voluptatem ea ut. Pariatur temporibus recusandae ipsum. Quia quod aperiam sed quos. Ad quas optio quisquam ad alias delectus excepturi.\n\nSoluta est nesciunt eos. Molestiae laboriosam sapiente aliquid laboriosam. Et sunt numquam cum sed impedit.\n\nAperiam in explicabo veritatis enim repellendus. Odio quis deserunt id. Quo sed consequatur illum a consequatur non consequatur.', 'Post_Image_4.jpg', '2019-03-06 01:48:03', '2020-02-25 03:34:40', '2019-03-06 01:48:03', 1, 21, NULL),
(2, 2, 'Enim eius voluptate cum ab aut qui voluptatem officiis.', 'qui-quas-facilis-atque-vel', 'Impedit ut accusamus voluptas ipsum atque. Consequuntur impedit voluptas voluptas et placeat.', 'Dolorum voluptas sint omnis et. Perspiciatis quis numquam illum. Nulla distinctio explicabo cupiditate.\n\nNemo recusandae et repellendus quaerat fugiat explicabo ut. Nisi omnis labore alias soluta deleniti iure atque. Ea aut dolores quia vel soluta.\n\nNobis sed qui consequatur dignissimos dolorem est. Dolor ipsum eos deserunt voluptatibus. Harum sit praesentium sint cumque provident cum.\n\nDolorem similique quod eum dolorum. Quaerat harum est consequatur aliquid. Et distinctio quis possimus suscipit optio. Quis sed cumque distinctio facere.\n\nAccusamus esse asperiores quae. Nulla beatae ut sit ullam. Culpa repellendus voluptas voluptatem similique voluptatem adipisci et. Sit praesentium accusantium quae sint dolores.\n\nMaiores quas recusandae voluptatem porro voluptate fugit incidunt aut. Officia vitae libero incidunt voluptatum necessitatibus fuga nihil. Quaerat ut illum accusantium aut eos minus.\n\nRerum itaque laboriosam reiciendis et consequatur blanditiis ut. Similique quis ut sint maxime vel aperiam architecto. Voluptas impedit iste sit et quia delectus.\n\nPerferendis animi quidem distinctio temporibus eos. Suscipit aliquid quam distinctio. Qui animi cumque iusto dolore numquam. Reprehenderit dolores et eius quaerat error officia voluptate modi.\n\nOptio aperiam aspernatur dolore rerum fugiat vitae. Totam voluptates omnis voluptas dolore rem voluptatem facilis. Sapiente eaque quidem repellendus et quibusdam tempore velit. Porro itaque totam voluptatem quo dignissimos.\n\nItaque officiis aliquam sit repellendus dolor. Dignissimos fuga exercitationem iure consequuntur consectetur. Dolorem eveniet voluptatum ut sint. Ab est non aut laudantium est molestiae. Ut quia enim rerum iure rem ducimus molestiae.\n\nCum libero quo inventore repellat qui vitae voluptatem. Exercitationem saepe tempora cum. Nesciunt dolorum non quo inventore laudantium eligendi.', NULL, '2019-03-16 01:48:03', '2019-03-16 01:48:03', '2019-03-16 01:48:03', 1, 60, NULL),
(3, 3, 'Omnis sed laborum ut ipsam praesentium est animi temporibus explicabo.', 'hic-rerum-ut-reiciendis-consequatur-dolor-molestias', 'Ex quis ipsum exercitationem. Doloremque illo quis consequatur quam quia. Ratione incidunt saepe qui. Qui alias molestias quod quaerat velit qui id provident.', 'Occaecati dolorem in sapiente deserunt voluptatem. Doloremque magnam perspiciatis ipsa aut praesentium ut. Iusto unde quia quas voluptatem.\n\nCum animi optio id ducimus quae tenetur. Libero non ut deserunt. Et mollitia impedit eius illo nam quis doloremque facere. Omnis vel repellendus ducimus sint tempora et sint magni.\n\nOfficia unde deleniti enim iste dignissimos possimus eligendi praesentium. Est esse sed doloremque consequatur qui ipsum nulla repellat. Pariatur sequi consequatur et ab nihil hic id. Dolore ratione qui aut repellat.\n\nQuam asperiores debitis aut magni incidunt vitae. Excepturi eum ad ea quia labore laudantium porro. Autem vero sed officia et praesentium sed. Itaque iusto natus dolorem est voluptas dolorem dolorum assumenda.\n\nLabore sequi neque sit corporis eum consequuntur aperiam. Exercitationem et voluptatum dolore nulla nisi cumque consequatur. Nulla itaque aut cumque modi aliquid repellendus et.\n\nSunt repellat rerum quia dolore impedit blanditiis. Sit est molestiae quod. Enim minima qui aut sed ut ut. Voluptatum et nobis facere sapiente mollitia.\n\nLibero perferendis facilis quibusdam tempore repudiandae blanditiis excepturi culpa. Tenetur a ea reprehenderit tenetur ad nihil. Esse sit qui pariatur eos. Ducimus id aliquam unde sed neque quis cumque.\n\nQuod maiores sint qui ad. Minima ad magni sed similique illo ab officia. Aperiam voluptas aliquam deleniti placeat.\n\nDolores minima error saepe voluptas veniam quo qui. Necessitatibus asperiores asperiores dolores sit corporis. Unde dolores quos ut aut aliquid voluptate ut exercitationem. Dolor a hic illo tenetur magnam.\n\nUt quia est sit ut alias laborum doloremque. Dolorum quisquam id nesciunt.\n\nConsectetur non voluptas molestiae. Eum commodi nemo tenetur at at et.\n\nAdipisci soluta non repellendus labore. Debitis dolor et fugit est qui placeat occaecati eius. Qui iste velit cumque ipsum explicabo qui sit. Aut porro iusto cumque commodi.\n\nEsse rerum optio quia ut. Non est doloribus mollitia qui inventore. Quia sed repellendus ad neque id sed. Eveniet sint laboriosam totam atque.\n\nEius libero aspernatur consequuntur voluptas ut neque. Et fugit explicabo distinctio quos perferendis quis tempora. Adipisci est sint commodi quos ut in tempora.\n\nOptio consequuntur saepe veritatis consectetur sit omnis nam. Totam reprehenderit voluptatibus et repellat tempora illo. Sint amet voluptatem nulla neque ratione. Optio nemo corrupti consectetur explicabo laboriosam. Sit id ipsum corporis numquam.', NULL, '2019-03-26 01:48:03', '2019-03-26 01:48:03', '2019-03-26 01:48:03', 1, 30, NULL),
(4, 1, 'Sed deserunt magnam commodi nesciunt rerum nihil quas laborum dolor quidem.', 'explicabo-at-non-hic-est-molestiae', 'Eaque corporis facere tenetur ea aut voluptate. In fugiat tenetur vel dolorum ut corrupti ea. Et sunt autem distinctio similique fuga. Excepturi autem illo voluptas maiores.', 'Praesentium vel voluptas qui in optio excepturi in. Quas est officia quasi est in neque. Suscipit odit minima vel consequatur commodi ipsum. Non perspiciatis assumenda aperiam unde officiis nesciunt.\n\nUt aliquid consequuntur eveniet minus. Voluptatem ex et tempore pariatur. Voluptatem maxime maxime quae aut. Occaecati aut pariatur qui sapiente.\n\nQuod velit ex ab natus consequatur deleniti. Voluptatem qui architecto natus non consequuntur voluptatum. Corporis soluta ipsa sed deserunt non rerum praesentium. Doloremque ratione quasi libero quod nostrum.\n\nVel doloribus id cum quasi. Saepe et molestiae corrupti eligendi. Magnam magnam rerum nemo alias rerum qui esse. Nihil magni soluta repellendus illo rerum nam.\n\nNatus ut aut incidunt odit. Explicabo quis dolorum occaecati et quod. Non dolorem autem numquam est reprehenderit. Natus ut doloribus quis dolorem amet ut iste.\n\nId voluptates voluptatem aut incidunt. Vero laboriosam quia saepe tempore porro est. Veritatis et qui et totam vel neque fugiat. Ipsum sit non magnam. Ea quisquam velit cupiditate rerum aut deleniti dolorem.\n\nQuo recusandae est dignissimos deserunt commodi quibusdam id. Ex ducimus expedita eum illum voluptatem nesciunt officia nam. Assumenda tempore dignissimos corrupti quia sapiente.\n\nOccaecati odio necessitatibus architecto. Aut quaerat ut explicabo est nesciunt omnis. Provident in porro odit delectus.\n\nEt et aut laudantium fugiat in. Iure et commodi aliquam et enim tenetur. Soluta enim culpa qui dolorem vitae est ea.\n\nVero ducimus neque eum natus. Ea quia ut ducimus sed consequatur aut qui. Et sapiente sed nesciunt harum.\n\nOdit nihil voluptas iusto placeat. Id similique error placeat odio. Aut sed consequatur qui odit temporibus nulla.\n\nNostrum perferendis necessitatibus quasi sit. Maiores iure nisi est rerum pariatur suscipit. Minus voluptatem quas ex consequuntur dolore tenetur. Maiores fugit necessitatibus ipsum sint.\n\nDoloribus a eos eveniet veniam est quas sed. Minima alias sint omnis harum nam et occaecati. Et repellat enim impedit suscipit animi molestiae.\n\nOmnis iusto repudiandae quas at. Aliquid quidem sint facere quis quam. Qui dolore eum atque laborum qui sit harum.', NULL, '2019-04-05 01:48:03', '2019-04-05 01:48:03', '2019-04-05 01:48:03', 1, 60, NULL),
(5, 1, 'Et minima omnis et cum sit omnis sequi aspernatur sint magnam.', 'libero-laborum-occaecati-velit-cupiditate-ut', 'Illo est odio consequuntur voluptas rerum optio. Qui officiis et consequatur quo voluptatibus corporis ut rerum. Nobis architecto molestiae qui. Autem magnam ut at iste.', 'Provident porro quibusdam vero magni molestiae in. Eius id laborum necessitatibus repudiandae deleniti itaque quas. Alias voluptatum reprehenderit quo fuga asperiores optio. Deleniti possimus quia animi suscipit possimus. Commodi culpa id accusantium beatae accusantium est.\n\nTempore temporibus qui commodi distinctio est est. Architecto rerum numquam quam accusantium. Veniam non ea est debitis illum nesciunt.\n\nRepudiandae rerum cumque at soluta earum vel. Odio omnis officiis repellendus sequi. Laborum ut modi corporis qui blanditiis impedit. Itaque qui dignissimos dolorem porro sit eos praesentium.\n\nDolor dolorem voluptatibus non officia corporis quia. Commodi et animi ad. Nobis quas et veniam ipsa nihil.\n\nNihil quam cupiditate unde voluptas sunt blanditiis. Ea facilis velit ipsa qui aliquam. Impedit accusamus voluptatem tenetur nulla autem qui totam.\n\nRem omnis magni id qui. Quis eaque rerum architecto. Quia deleniti veniam illo ipsam repellat corporis. Assumenda veritatis rerum quidem voluptatem fugiat omnis distinctio.\n\nAut cumque odio alias quidem dolor magni nulla. Beatae iste cupiditate aperiam porro ad voluptatem voluptatem. Adipisci at est sit.\n\nError asperiores iure ut consectetur quia. Vel voluptatum est neque blanditiis neque ducimus tempora. Reprehenderit sequi vitae explicabo officia molestiae qui. Rerum maiores magnam harum harum.\n\nConsequatur odio deleniti aut rerum dolor quibusdam. Qui assumenda eos nulla. Repellat vitae vel asperiores voluptas.\n\nAccusamus eligendi cupiditate omnis quisquam quod. Totam ex eos illum et. Facere veritatis at illo voluptatem soluta. Alias necessitatibus ipsam quidem labore quo perspiciatis.', 'Post_Image_3.jpg', '2019-04-15 01:48:03', '2019-04-15 01:48:03', '2019-04-15 01:48:03', 1, 80, NULL),
(6, 3, 'Laudantium qui est quam sint eius omnis autem dolores corrupti quaerat aut non quae fugiat omnis.', 'architecto-quidem-ut-ea-ipsam-ipsam', 'Ex impedit magnam nesciunt. Nobis ipsa ea aperiam libero. Mollitia quos aut omnis blanditiis. Molestias ipsa voluptas voluptatum ut voluptate ratione tenetur dolor. Voluptatum qui tempore quo sint at natus. Distinctio id sapiente possimus sit. Sunt libero placeat cupiditate ut id molestiae.', 'Corporis aut consequatur nostrum. Doloribus distinctio dolorem est non eius.\n\nIn ea nesciunt omnis accusamus esse. Ipsum reprehenderit dolorum est esse facere quasi. Explicabo earum quaerat nihil quisquam assumenda maxime voluptatem.\n\nEos neque explicabo laborum enim et et voluptatem. Et dolor deserunt quo aut. Ratione dignissimos quidem dolorem modi vero ut.\n\nQuasi nam eveniet quidem numquam. Porro quibusdam accusamus et voluptate amet sint quae. Impedit dolores sit doloribus eaque vel. Eum sint ipsam vitae.\n\nUt perspiciatis soluta saepe accusantium tempora in. Sapiente eos molestiae placeat consequatur quo incidunt consequatur. Perspiciatis asperiores facilis deserunt molestias. Harum rem sed expedita ut sunt dolor.\n\nError ut a quis. Dolor earum sed culpa nihil saepe. Dolorem reiciendis quam ullam dolorum natus. Provident facilis nisi et inventore.\n\nEum temporibus quidem in perferendis dolor repudiandae praesentium. Fugit est a vitae fugit iure. Eum provident aperiam repellendus consequuntur omnis. Aut ut molestiae fuga est qui saepe eos.\n\nMagni totam ipsa incidunt consequatur ratione itaque. Minima sapiente explicabo molestias eligendi deleniti eius. Ut assumenda incidunt occaecati deserunt aperiam. Voluptates eos consequatur temporibus.\n\nDolor dolor eveniet reiciendis maxime debitis aliquam sit praesentium. Tempore exercitationem omnis laboriosam hic optio rerum est. Est esse consequuntur quia maxime aut cumque.\n\nIllum minima qui veniam eum voluptatem aut. Est sunt odio officiis quaerat eos saepe et qui. Reprehenderit et facere sed est ipsa nostrum et. Molestiae cum culpa mollitia laboriosam.\n\nAutem tenetur ullam aliquam deleniti. Aperiam qui voluptas aliquam consectetur velit ipsam possimus. A asperiores ut non qui. Perferendis accusamus neque nobis voluptatum perspiciatis repellendus.\n\nQuibusdam aut laboriosam aliquid est alias molestias molestias. Omnis molestiae qui est est.\n\nSequi officia nihil rerum officia laudantium voluptatem sit possimus. Pariatur exercitationem suscipit architecto qui quo molestiae. Pariatur aut aut minus. Consectetur ea quis id velit ut.\n\nIpsum velit quis odit aut ea. Sed voluptatem quam quod rerum fuga sunt. Voluptas nemo voluptas neque eos ad. Soluta eius et sed explicabo consequuntur.', NULL, '2019-04-25 01:48:03', '2019-04-25 01:48:03', '2019-04-25 01:48:03', 1, 20, NULL),
(7, 2, 'Architecto quis est praesentium accusamus ut architecto est.', 'eos-aliquam-ratione-doloribus-ea', 'Similique vel ad amet suscipit enim ea fugit in. At voluptas autem blanditiis architecto. In cum animi quos ea recusandae dolores nihil. Deleniti tempora velit praesentium qui.', 'Et nobis non repellendus eius dolorum harum dolores. Reiciendis quia et alias nostrum dolorem. Minus ut eum non voluptatem et. Doloremque voluptates qui sunt quisquam.\n\nMinus aut sit aut sunt quae odio sit aut. Dolorum aut soluta corporis atque voluptas autem. Aspernatur odit ut perspiciatis hic incidunt autem doloremque. Ipsum nulla animi aliquam.\n\nEsse pariatur minus id. Est ab expedita non sunt eligendi eaque error. Eum sequi soluta facere et corrupti. Laboriosam eligendi sequi et voluptas deleniti.\n\nNon reprehenderit nesciunt officia et delectus. Possimus ut sed blanditiis nostrum quia rerum ullam. Similique blanditiis voluptatem rerum aut impedit possimus est. Voluptatem consequatur dolores laudantium incidunt velit ut molestiae repudiandae.\n\nQuia modi earum dolorem et eos dolores. Esse voluptatibus tempora consequatur nesciunt velit aut. In aspernatur consequatur dolore ut deleniti et sit.\n\nSunt expedita reiciendis magnam esse iusto tenetur labore consectetur. Maxime reiciendis voluptas neque esse enim maxime. Nesciunt magnam qui sint placeat.\n\nQui dolorem et quisquam quia laborum nostrum nemo. Dolor sit delectus dolorum aspernatur ea et sed praesentium. Debitis autem assumenda et non aut.\n\nAmet similique cum deserunt iste enim eaque explicabo. Praesentium earum at delectus sit amet quod.\n\nVoluptatem blanditiis assumenda accusantium necessitatibus. Laboriosam rerum a molestiae quibusdam provident qui labore mollitia. Recusandae est provident consequatur illo aut enim illum. Sapiente magnam corrupti aut quae quo rerum.\n\nReprehenderit aut nihil consectetur adipisci dignissimos laborum illum esse. Quidem mollitia tempore optio eos asperiores qui laborum. Veritatis non distinctio id voluptates ex temporibus.\n\nEveniet autem aut molestias ea cum. Blanditiis dolor dolorem fugiat quasi. Sapiente quo et pariatur molestias sunt. Et quo sequi dolores voluptatibus neque ipsa repudiandae.\n\nAliquam commodi quae placeat molestiae soluta adipisci. Et nam animi consequatur voluptatem dolor voluptate. Nemo voluptatem deserunt animi.\n\nAnimi doloribus error qui ex. Sit est mollitia animi ab porro enim. Deleniti temporibus rerum facilis voluptates omnis.', NULL, '2019-05-05 01:48:03', '2020-02-25 03:44:53', '2019-05-05 01:48:03', 1, 105, NULL),
(8, 1, 'Quam explicabo est quas optio qui veritatis quidem nemo voluptate optio ut neque.', 'et-excepturi-quia-quia-hic-eos-sit-amet-tenetur', 'Omnis autem doloremque vel esse. Tempora quam non blanditiis error voluptatem hic pariatur. Dolore autem aut est possimus. Officia laboriosam dolor ut vel est molestiae ut.', 'Aliquam sint nihil dolorum ipsam quibusdam saepe. Nihil a iure natus maiores explicabo dignissimos ut voluptas. Totam ut corrupti repellat laboriosam perferendis exercitationem ut.\n\nDicta dolorum enim sit nesciunt est. Et id dolores ut nisi molestiae sed quis. Soluta nobis est enim vel porro nisi. Ipsum tempora nemo officiis aut eaque vel.\n\nRepudiandae inventore dolores quidem velit consectetur. Reiciendis tenetur reiciendis dolor doloribus. Deserunt ipsa nihil et excepturi impedit ut officia.\n\nDolor velit id repellat suscipit voluptatum. Nesciunt quae illo odit ipsam veniam. Sunt eos optio natus ipsa deserunt magni occaecati ipsam.\n\nTempora voluptatem non architecto aut. Omnis sit voluptas dolorem iure omnis voluptas. Animi aut aut sint ab placeat velit. Voluptatibus dicta illum id fugiat est est.\n\nEt nihil iste blanditiis molestiae eveniet rerum perferendis. Beatae a pariatur provident ab architecto. Reiciendis iste in assumenda et dolore.\n\nVoluptate atque ipsa aut ex ut est et. Quod tenetur rerum voluptas quis. Magnam voluptas est pariatur architecto voluptate temporibus. Consequatur et incidunt voluptas voluptate.\n\nAnimi nesciunt quas labore id eveniet unde. Quis perspiciatis dolor quia repellat. Perferendis ut ex eaque omnis aut impedit fugit voluptas.\n\nNisi dignissimos aspernatur nemo laudantium laudantium. Ipsam commodi expedita dicta natus quia. Quo quos corrupti assumenda dolore molestiae quod excepturi voluptatem.\n\nVeniam architecto fugit consequatur et voluptates eaque officiis ab. Nulla quas cupiditate velit commodi id totam consequuntur. Omnis consequatur illo et nobis odit ut pariatur.\n\nEt exercitationem eveniet omnis repellendus et odio qui. Ut quis et fugiat dolorem possimus molestiae. Beatae architecto voluptates ab similique. Laboriosam a ipsum occaecati praesentium.\n\nEveniet consequuntur vel veniam ea modi perferendis. Sed maxime perferendis sed non voluptas. Numquam recusandae vel voluptas ex aspernatur delectus.\n\nSuscipit magnam praesentium fuga non quasi necessitatibus et. Consectetur explicabo distinctio nihil quas quia commodi. Laudantium voluptatem molestias ratione quidem error.\n\nQuaerat est veniam repellendus. Mollitia ut nobis nemo. Dolore accusantium eaque aperiam voluptatem. At ad autem itaque qui dolor eaque.\n\nUt eaque hic deleniti tempora. Est assumenda distinctio sed. Fugit cumque quo placeat sed. Modi maiores qui non. Velit nihil qui voluptates voluptas.', NULL, '2019-05-15 01:48:03', '2019-05-15 01:48:03', '2019-05-15 01:48:03', 1, 90, NULL),
(9, 2, 'Voluptatem aut molestiae qui est voluptas iste inventore beatae.', 'cumque-quidem-vel-commodi-in-voluptatum-sit-ad', 'Illum illum nobis iure molestiae quis. Ut placeat iusto cum a. Tempore placeat vero in magnam assumenda in quia. Numquam ut aut exercitationem nam deleniti. Esse aliquid laboriosam earum quo cupiditate.', 'Et voluptate sed minima qui itaque corporis. Dolor sapiente doloribus corporis distinctio reiciendis. Quibusdam ut non incidunt velit tempora porro ex.\n\nVoluptas nihil laborum quae. Unde natus nemo quaerat fugiat. Soluta ea repellendus cum mollitia consequatur dolorum sed accusamus. Dolorum quo consequatur cupiditate numquam nobis beatae sequi.\n\nTempore sed temporibus reiciendis dolores illo consequatur voluptate. Minima rerum et aut quas iusto unde esse. Omnis earum et facilis quos reiciendis laudantium.\n\nIn dolore magni reiciendis repellendus fugiat in. Animi corporis eos quos dolorum non quisquam dolorem. Quam dolores molestiae eveniet id voluptate. Aliquid quidem et fugit eius qui.\n\nAperiam soluta et doloribus et dolor corporis harum voluptas. Delectus ex explicabo est qui neque necessitatibus. Voluptas quis dolores consequatur tenetur.\n\nEius soluta eos pariatur corrupti eius exercitationem eveniet explicabo. Et sit voluptas eos distinctio vitae quisquam. Aut debitis dolores quia eum.\n\nQuis nesciunt amet doloremque libero aut nostrum. Aut dignissimos neque aspernatur eveniet nihil officia. Eum ea ea quas rerum eum.\n\nPorro et quod eos suscipit et qui. Veritatis qui aut autem consequatur vel porro. Est voluptatem velit omnis laborum.\n\nVeniam voluptatem adipisci deleniti et non. Maiores voluptatem et iste aliquam.\n\nAlias quisquam et quia sint. Veritatis pariatur ex et. Nemo sed illo dolorem ex non sed laboriosam. Sed et vero et est. Saepe repellendus qui rerum et ut error fugiat.\n\nInventore vel architecto aut vero. Omnis reprehenderit et deleniti. Voluptates et ducimus iste eligendi voluptatem et.\n\nQuia quo aut dolor corrupti et omnis error atque. Ut alias commodi maiores tempore placeat veritatis porro qui. Dolorum rerum tenetur nemo ad veniam. Aperiam facilis quis autem placeat incidunt qui voluptas.\n\nEst illo fuga voluptatem odio. Commodi nostrum et et velit sunt nemo. Cupiditate consequatur commodi ea autem.\n\nEt rem eligendi eligendi aliquam quis temporibus sed. Sed repellendus sed magni repellat quidem voluptas. Tenetur saepe minus quo deserunt.', NULL, '2019-05-25 01:48:03', '2019-05-25 01:48:03', '2019-05-25 01:48:03', 1, 30, NULL),
(10, 1, 'Sunt aliquam mollitia laborum voluptatem aperiam vel ut ea dignissimos voluptatem consectetur modi.', 'maiores-odit-et-recusandae-cum', 'Eaque enim beatae dolor. Totam dolorem est laudantium distinctio voluptatem. Eos occaecati sit ratione adipisci. Ut omnis voluptatum qui quas laudantium et.', 'Saepe adipisci deleniti omnis iusto est similique. Quis eum voluptatem dolores sit commodi.\n\nSit iusto consequatur qui voluptatem. Velit eius odit sint rerum dignissimos repudiandae alias nihil. Sequi et soluta deserunt ab iusto non delectus.\n\nMaiores optio amet quis dolore quis. Esse natus occaecati maiores sit. Doloribus doloremque et quos et consequatur. Facere ut id aspernatur culpa.\n\nRerum dolorem minus qui nisi doloribus quia. Rerum quod blanditiis possimus ut optio aut. Rem nulla ut dignissimos. Ad maiores hic id culpa repudiandae ut aliquam.\n\nEaque esse alias quia eos beatae veniam beatae laudantium. Placeat et omnis fugit aut nulla. Et corrupti maxime temporibus eligendi quo dolores similique est. Eos quo qui cumque doloribus est.\n\nSimilique nobis dolores debitis rerum consequatur vel. Omnis explicabo id quae quaerat sed. Dolor harum ipsum est qui.\n\nNostrum culpa at vitae sint sit voluptas repudiandae. Saepe id est quis dolor minima reiciendis molestiae ut. Quasi quam blanditiis iste et sunt velit. Est quaerat dignissimos quod fugit.\n\nAssumenda ut quidem neque magni. Aut unde et molestiae officiis asperiores blanditiis quos nemo. Omnis temporibus optio sapiente ullam quia tempore aut similique. Praesentium quo doloremque enim hic ad.\n\nItaque et omnis alias cum perferendis optio. Sit nulla quia numquam sunt ipsa facilis. Consequatur provident iusto eum omnis nesciunt sint itaque. Ullam dolorem esse voluptatum officia.\n\nQuo et nihil sunt magnam. Debitis voluptas qui voluptatem recusandae sequi. Ratione et soluta voluptatibus corporis.', NULL, '2019-06-04 01:48:03', '2019-06-04 01:48:03', '2019-06-04 01:48:03', 1, 100, NULL),
(11, 3, 'Est quod porro autem repellendus in facilis.', 'unde-molestiae-voluptatem-modi-sit-ipsam-exercitationem-quaerat', 'Qui in labore illo ducimus ipsa asperiores. Magni dolore aliquid ullam vel. Nisi delectus optio veniam. Blanditiis at quia eum similique eius occaecati.', 'Quibusdam omnis harum velit qui. Adipisci ut assumenda eaque aut iusto impedit eos vero. Iste inventore quia assumenda rerum. Mollitia deleniti soluta culpa aspernatur.\n\nSit eaque nemo fuga est sequi dolor et. Enim ut dolor velit sint aut magnam. Voluptatem eius mollitia quia debitis alias est placeat sunt. Eaque eaque tempore facilis adipisci.\n\nVoluptatem sit et esse aut cum nulla in ducimus. Velit qui omnis quo non voluptatem eos numquam ea. Nostrum voluptas sit non nesciunt.\n\nEst dolorem odio a. Id ut consequatur eveniet ut voluptate quaerat nobis explicabo.\n\nExercitationem et porro optio omnis enim modi. Accusantium qui et dolore quasi aut. Explicabo animi aspernatur beatae veniam. Repudiandae temporibus commodi fugit consequatur. Voluptates odio accusantium deserunt provident aspernatur reprehenderit quia.\n\nExpedita esse aperiam et aliquid accusantium quis et. Animi dolor labore nam. Voluptatibus amet recusandae quo voluptate voluptatem repudiandae quis.\n\nAsperiores non quia et distinctio. Et nemo reiciendis in quis eum. Molestias facilis tenetur voluptatem sint id non. Quas voluptas accusamus ipsa a.\n\nEaque iusto dolores repudiandae voluptatem nihil. Reiciendis et eaque veritatis natus. Quia libero et optio ea quo dolorem.\n\nTempora delectus consequatur consequatur sit optio. Id ratione quia nihil impedit omnis. Sint cumque error ipsam facere error eius.\n\nEst labore est rerum dignissimos quaerat. Totam libero nesciunt ut ut dolor sed. Maiores ut exercitationem cum quaerat in quos similique.\n\nMolestias recusandae cum voluptatem velit magni. Aut aliquid omnis incidunt labore aut delectus. Quisquam voluptatem ut rerum.\n\nQui ducimus quaerat magnam praesentium. Ullam nesciunt reiciendis quas sed nisi.', 'Post_Image_4.jpg', '2019-06-14 01:48:03', '2019-06-14 01:48:03', '2019-06-14 01:48:03', 1, 70, NULL),
(12, 2, 'Qui consequatur quo ea natus id quia ad et aut corporis.', 'dicta-maiores-aut-iusto-similique-et-aut-hic', 'Impedit molestiae accusantium nostrum iusto pariatur porro voluptatum. Numquam illum dolorem necessitatibus sint ut nam. Repudiandae ut totam qui perspiciatis in et est eveniet.', 'Rerum est illum ab nihil qui qui sed. Numquam earum a et tempore id quasi tenetur. Et dolores veniam sunt necessitatibus molestias et molestias aliquid.\n\nQuaerat similique ut ipsum rerum dolorem. Suscipit asperiores est quisquam officiis. Aut odit dicta et delectus non. Aut totam ratione voluptatum aut. Fugiat enim laboriosam aut qui voluptate.\n\nEx quibusdam reiciendis id eligendi id quod. Labore illum id sit a. Itaque quo unde est soluta est quia asperiores.\n\nPorro officia labore unde magnam. Quia nobis consequatur eum beatae magni soluta dicta tempore. Qui qui consequuntur unde necessitatibus. Sed quae porro necessitatibus sint aut quo odio.\n\nQuia quisquam vero error quod vero quia est inventore. Aut aut voluptatem ex. Ratione reprehenderit perspiciatis ea veritatis molestias.\n\nIn libero voluptas tempore corrupti. Qui est nisi illum aut natus. Sed nostrum quae repudiandae porro quia nam.\n\nUt corporis debitis assumenda quidem. Possimus eum laborum et velit occaecati praesentium maxime.\n\nEt praesentium excepturi qui asperiores eum. Eum aliquam natus harum ut. Fugiat iusto deleniti itaque quas ea nihil natus.\n\nQuibusdam esse beatae ducimus quos aperiam. Quia natus cumque dolorem ut dolor laudantium. Sapiente rerum odit id itaque.\n\nQui est quia voluptas similique dignissimos blanditiis. Dolorum ut molestiae et sit praesentium hic pariatur quae. Enim vero enim aspernatur labore nostrum aut fugit. Molestiae quia ad ut recusandae quia et.\n\nQuasi qui non ut. Facilis in amet provident illo nesciunt sapiente qui autem.\n\nEx magnam aut a similique est et consequatur. Voluptate quae aut omnis quidem qui omnis. Distinctio nisi voluptate veritatis ipsa quis.\n\nIure molestiae at at nihil explicabo. Perspiciatis aut ex sed voluptate placeat molestias voluptas. Corrupti qui numquam magni architecto quas doloribus omnis et.\n\nIllum doloribus qui quia sit. Facere officia quis in sit rerum. Voluptatibus qui corrupti consequatur mollitia ut. Eos aperiam qui sapiente tenetur aut quidem.\n\nVelit quaerat eos laborum voluptatem dolorum mollitia. Est dolor voluptatum iusto molestiae numquam non doloribus. Dolorem quasi et eaque iure ut. Quia est sed enim in. Qui odit laboriosam unde aut nesciunt.', 'Post_Image_2.jpg', '2019-06-24 01:48:03', '2019-06-24 01:48:03', '2019-06-24 01:48:03', 1, 90, NULL),
(13, 1, 'Molestiae temporibus id tenetur natus delectus aliquid debitis temporibus provident.', 'qui-earum-placeat-minima-architecto-similique-voluptate', 'Quidem id laudantium vitae consequatur quo architecto. Veritatis inventore iusto numquam velit ut.', 'Aliquid pariatur cumque quibusdam consequatur dolores. Aliquid neque voluptatem ea eum cupiditate. Eveniet laudantium sit error.\n\nMagnam eos ducimus totam nihil. Corrupti libero quidem incidunt non omnis. Quia consequuntur veniam in alias. Sed quo sint perspiciatis enim reprehenderit.\n\nDolor nam molestiae error ea. Minima laborum pariatur adipisci non. Velit est dolorum doloribus. Omnis nihil dignissimos porro unde nobis qui.\n\nAperiam repellendus qui laborum eos qui magnam id assumenda. Veritatis expedita non aliquam maxime reprehenderit. Et consequuntur nulla adipisci nihil facilis totam.\n\nQuidem facere et tempore adipisci occaecati. Adipisci nulla omnis qui atque blanditiis consequuntur. Minima cupiditate sint porro perferendis est voluptatum. Impedit non et maiores eveniet. Non aperiam reprehenderit et quia fugiat aliquam.\n\nEum rerum ipsum omnis eos corporis velit. Non dolore fugiat est nostrum. Repellendus ex tenetur quidem labore quo molestias distinctio. Tenetur blanditiis in ut veritatis quas molestiae temporibus. Alias nam dignissimos eos qui cupiditate sint.\n\nVeritatis aliquid ex et eum quibusdam. Libero placeat ad dignissimos labore. Laborum voluptatibus consequatur inventore aperiam commodi.\n\nVero assumenda quo et. Libero et in recusandae qui soluta eum.\n\nIpsam dolor vitae ut natus ut perspiciatis corporis. Aspernatur minus facilis incidunt illo ut ratione voluptatem. Minus inventore perferendis et eius non. Ipsa officiis aut optio magni reiciendis aut eos.\n\nSint fuga provident sint animi qui mollitia dolores ea. Sint occaecati soluta vero voluptatem sed expedita quod. Et exercitationem fugiat odit. Aliquam id sint vero totam quos dolorum. Deserunt aut consequatur debitis aut fuga voluptates ea.\n\nSunt vero et expedita accusantium voluptates. Voluptas quo vel impedit in culpa nemo et eos. Quibusdam architecto et et.\n\nVoluptatem nulla et iusto cupiditate quas. Possimus labore adipisci odio laboriosam. Molestiae dolores quia nam. Nesciunt libero dolores ut omnis.\n\nExpedita sed inventore veritatis ex iure dolorum deserunt. Est tempora optio reprehenderit labore. Tempora incidunt et eaque eaque et. Dignissimos veritatis atque voluptatibus.', 'Post_Image_1.jpg', '2019-07-04 01:48:03', '2019-07-04 01:48:03', '2019-07-04 01:48:03', 1, 80, NULL),
(14, 2, 'Maxime officia recusandae aliquam consequatur amet tempora est.', 'voluptas-mollitia-aperiam-veritatis-adipisci-esse', 'Excepturi voluptates et cupiditate eum maiores amet. Voluptatem deleniti nam quia nihil qui qui. Rerum porro quia nesciunt rem molestiae impedit. Sequi illum asperiores ut sit sunt qui aliquid praesentium.', 'Est facilis dolorum voluptatibus sequi. Sunt ut veniam at natus. Est ipsum harum consequuntur quo.\n\nVoluptas ut molestiae qui consectetur ad enim culpa. At et culpa repellendus quia est. Quo rerum nulla eligendi facere laboriosam aut.\n\nAutem enim voluptatem ea natus nesciunt qui et sit. Veniam quia qui vero voluptatem possimus.\n\nDignissimos vel et ut excepturi autem. Similique sit possimus harum fuga dolores. Consequatur adipisci unde odio impedit. At autem soluta nam voluptas magnam nobis ducimus.\n\nSit aspernatur ut ab rem debitis. Eius ea a aut facilis optio quas. Dicta exercitationem dolorum non ut. A dolores dolor et laborum autem sit.\n\nAt inventore non adipisci autem consequatur illum facere. Quos nihil modi autem pariatur id tempora non. Reprehenderit beatae quasi sed voluptatum ut ut accusamus omnis. Consectetur et ipsa voluptates tenetur et iste. Culpa ab quia eum in.\n\nAutem dolor tempore voluptatem nostrum laudantium. Soluta et enim non architecto. Sint dicta consequatur veritatis consequuntur.\n\nDolor adipisci est quae. Quam quam sequi aut ducimus ut cum tenetur quod. Dolorum qui voluptatem et. Perspiciatis omnis voluptas dolores qui est nemo quos.\n\nLaudantium quod dolor aperiam quia asperiores et. Facilis quo et aspernatur sint debitis nobis. Sequi temporibus ullam quia et qui.\n\nReprehenderit exercitationem eos aspernatur aut. Sint odit laboriosam temporibus doloribus. Laborum facilis eum laudantium temporibus quod est et.\n\nQui et quis corrupti magnam delectus. Illo vero est sint nisi ea placeat. Doloremque blanditiis dolorum quos et consequatur.\n\nAt assumenda porro expedita earum et quas similique. Ipsam corporis alias nam. Iure dolor aut ut at vel atque. Sunt minus culpa minima.\n\nRatione qui debitis laudantium velit asperiores voluptatem. Nobis sit minima rerum accusamus omnis ut maiores consequuntur. Autem et officia sed sapiente officia nisi. Veniam magni sapiente et unde saepe iure.\n\nExcepturi rem asperiores nihil magni commodi ut nam. Nihil asperiores eum voluptatem ducimus. Neque quisquam sit aliquam velit odit vel sint ipsa. Minima minima dolor consectetur soluta aperiam.', NULL, '2019-07-14 01:48:03', '2019-07-14 01:48:03', '2019-07-14 01:48:03', 1, 90, NULL),
(15, 1, 'Qui non dolores autem minima voluptatem esse.', 'vitae-sed-ut-consequuntur-eum', 'Quas doloribus ea placeat architecto. Iste culpa dicta culpa vitae. Dolores sit necessitatibus id necessitatibus. Molestiae dolore corporis ut laudantium enim modi.', 'Voluptate at hic excepturi dicta fuga occaecati dolorum. Eius nemo rerum quod sit quas explicabo est. Odio veniam cupiditate ab ex. Sapiente qui occaecati mollitia porro rerum.\n\nSunt qui id id laudantium sed sed blanditiis. Animi corporis similique ut quia possimus. Et porro dolores impedit sequi.\n\nEt expedita eveniet nostrum cumque veniam. Iste omnis possimus a. Consequuntur eaque dolores sint unde temporibus nobis. Velit odit provident voluptas quidem dolorem.\n\nNumquam ducimus eos voluptatem minima doloribus ut temporibus. Culpa quia debitis et. Vel quae accusantium voluptatum aut quaerat accusantium. Fugit non dignissimos assumenda sequi labore laudantium consequatur.\n\nQuibusdam soluta nihil repellendus et nam. Doloremque inventore tempore illo aut. Hic qui qui et ex. Est aperiam ut et. Aliquid odit voluptatem et sunt et.\n\nOfficia eum laboriosam reprehenderit cupiditate. Rerum aut placeat veritatis saepe doloribus tempora. Perspiciatis fugiat est ipsa debitis.\n\nRerum officiis asperiores eos omnis. Ea aut ut labore. Praesentium est et similique voluptatibus. Delectus in tenetur est repellendus harum accusantium magnam.\n\nSed distinctio quia dolores nam voluptates quis. Debitis cum aut molestias quam pariatur aut quo vero. Deleniti perspiciatis eius dolorem placeat rerum. Ipsum perspiciatis est dicta reprehenderit beatae aut officia optio.\n\nNesciunt non et omnis voluptas et sit dolor quia. Voluptatem consequatur praesentium cumque corrupti est veritatis corporis. Necessitatibus est tempore natus et natus deserunt cum. Asperiores earum culpa in aut sunt sed impedit laboriosam.\n\nMolestiae architecto voluptatem veniam enim laudantium. Numquam qui facere assumenda in. Deserunt ut qui possimus nobis iure quia inventore.\n\nProvident atque sunt voluptatibus qui. Praesentium pariatur ut numquam neque esse facilis iusto. Blanditiis impedit dolore quo sed molestiae culpa rerum.\n\nIpsum earum consequuntur delectus repellendus. Numquam tempora consequatur ut voluptas hic. Iure porro excepturi quia.\n\nVoluptatem natus nulla itaque dolorem. Voluptas fugit quia aut labore enim. Rerum quibusdam blanditiis dolores aut vel ducimus ut temporibus. Aperiam dolores autem incidunt quia similique est voluptatem.', NULL, '2019-07-24 01:48:03', '2019-07-24 01:48:03', '2019-07-24 01:48:03', 1, 70, NULL),
(16, 3, 'Qui numquam sunt mollitia enim deleniti aspernatur.', 'recusandae-doloribus-mollitia-voluptates-molestiae-neque-beatae-aut', 'Est consequatur eos autem quo odio deleniti voluptatibus adipisci. Blanditiis quae iure eveniet harum eum libero et. Repellat rerum perferendis quia.', 'Voluptate nisi fugiat est occaecati perspiciatis sunt quibusdam hic. Optio excepturi quas fuga commodi laborum autem earum commodi. Numquam nemo maxime sit non ducimus. Rerum incidunt rerum fugit.\n\nAut aut optio sed omnis. Labore vel culpa error maiores perspiciatis alias sunt. Velit porro voluptatem deleniti aperiam pariatur maiores.\n\nEum aut ut et ea autem. Odio dolor non suscipit voluptatum temporibus ipsa earum. In rerum et impedit est. Eos placeat modi alias numquam quo.\n\nFacere voluptatem voluptate non sint quos alias soluta deserunt. Voluptatum nihil dolorem ab nobis molestias debitis et. Explicabo ut laudantium quibusdam dolore ea ducimus.\n\nPorro est accusamus aut asperiores eius quasi quia. Neque error eligendi consectetur similique et non magni deleniti. Quasi rerum ut nobis nobis consequatur ad architecto porro. Quae nihil sit et praesentium sapiente dolor ratione. Fugit inventore maiores est molestiae fuga repellendus qui.\n\nMaiores vitae facilis voluptas alias cumque ut officiis nostrum. Dolorem sunt ducimus sed nihil deleniti. Similique autem adipisci necessitatibus suscipit. Unde saepe odit et aliquam impedit.\n\nDoloribus non reiciendis et corrupti incidunt. Expedita ut aut dicta illum omnis a. Non voluptas repudiandae quae perspiciatis dolores omnis. Sit est deserunt ea ea dignissimos nisi.\n\nOccaecati cumque nihil est nostrum consequatur accusamus amet. Et temporibus officia autem omnis. Porro doloribus illum eveniet quia eaque sit. Quia sint dolores quo quibusdam temporibus optio dolorum.\n\nNostrum itaque consequatur dolore id. Et tenetur doloremque ab incidunt qui sed. Est excepturi quaerat sit ut sequi ullam sit fugiat.\n\nIn vel rerum rerum doloremque labore ducimus. Reprehenderit et qui voluptas modi. Sit quia fuga enim eaque possimus explicabo sint.', 'Post_Image_2.jpg', '2019-08-03 01:48:03', '2019-08-03 01:48:03', '2019-08-03 01:48:03', 1, 40, NULL),
(17, 2, 'Aut voluptas officia harum aut voluptatem sint ea ut ex quis natus ut.', 'eligendi-corrupti-tempore-odit-aliquam', 'Reprehenderit est consequatur unde doloremque esse. Quia ut nulla error rerum. Consequuntur ea voluptatem adipisci aspernatur. Dolor ut hic suscipit voluptatum nisi odio. Beatae voluptatum quis voluptatem molestiae.', 'Cum dicta optio velit voluptas. Et est consequuntur et fuga laboriosam a aliquam. Est velit sunt eaque blanditiis autem explicabo ut.\n\nAspernatur tenetur voluptas suscipit porro inventore et. At fugiat voluptas tempora nam et optio. Magnam molestiae quo eaque accusantium consequatur.\n\nIste quo ducimus itaque est et. Ratione nemo culpa itaque rerum vero. Eius commodi id autem amet error. Qui earum quam sequi enim.\n\nVelit autem et tempore. Magnam eaque nihil consequatur facilis repellat quibusdam. Quos architecto ut est occaecati amet rerum.\n\nNemo sequi consectetur ut distinctio. Consequuntur accusamus officiis blanditiis. Vitae qui sint et rerum.\n\nVero qui ad consectetur numquam. Molestiae qui explicabo repellendus rem id. Reprehenderit excepturi ipsum suscipit consequatur.\n\nUt soluta delectus porro nesciunt repellat ut omnis sit. Accusantium exercitationem voluptas expedita autem aut. Et rem deleniti ducimus occaecati dolores labore distinctio. Doloremque sint est odio laudantium est enim minus.\n\nPorro ad sunt quia qui. Libero doloremque autem sint delectus autem nobis. Vel est aspernatur hic non. Est corporis aut sequi ipsam porro aut.\n\nRerum est quod fugit quia asperiores similique. Nemo est fugit dolorem quae in odio ab. Doloribus officiis est commodi et odio debitis.\n\nIusto est deserunt rerum sequi necessitatibus molestias et. Doloribus molestiae tempora a eius. Temporibus distinctio et et ut aut. Modi magnam sit dolorum rerum tempora qui qui temporibus.\n\nNihil animi non enim reiciendis quisquam culpa consequuntur. Fugiat sit quasi omnis doloribus dolor ratione id. Ex voluptatem qui non eligendi consequatur assumenda repellendus. Perspiciatis maxime quas est sed cumque beatae.\n\nDebitis est neque beatae. Dignissimos corporis commodi tempora nemo tenetur rerum culpa velit. Doloribus reiciendis libero distinctio id pariatur eum molestias.\n\nAliquam dolore aut aut et sunt. Quo earum nihil quia et accusamus amet. Possimus enim minima dolor ex quia illum. Modi asperiores error esse illum in fugit veritatis autem.\n\nBlanditiis consequatur non non est officia eum facere sint. Fugiat dolor sit dolores. Odit autem earum non tenetur eum est. Et eum doloremque ea amet enim quia voluptatem ut.\n\nEt unde eos quia quos illum mollitia autem. Molestiae porro praesentium et qui. Dolore praesentium et voluptas at non illo omnis quos. Enim sed earum tempore totam.', NULL, '2019-08-13 01:48:03', '2019-08-13 01:48:03', '2019-08-13 01:48:03', 1, 70, NULL),
(18, 1, 'Commodi et amet quaerat minus adipisci consequuntur et consequuntur a accusamus quis hic sint in.', 'libero-aut-animi-accusantium-ut', 'Qui omnis eveniet non ullam maxime qui. Voluptates nam in impedit nisi iste. Non laboriosam et qui est similique aliquid.', 'Earum dolorem necessitatibus odit quam occaecati. Voluptas quam possimus at accusamus quia.\n\nEt minus facilis et distinctio provident ut nobis. Omnis possimus et ipsa aut mollitia et rerum. Qui dolores commodi dolores perspiciatis dolor. Laboriosam deserunt est dolores laboriosam eligendi accusamus.\n\nNulla omnis vero consequatur ut placeat. Dignissimos porro ea voluptatem iusto et et. Nobis adipisci illum veritatis.\n\nVoluptatum qui qui rerum sed temporibus rerum facilis. Quo veniam enim esse modi quis. Sapiente qui consectetur et repellendus repellat aut maxime.\n\nEt quaerat eos maiores saepe vitae. Nostrum similique vel distinctio exercitationem soluta aperiam labore. Sit quo suscipit sint veritatis at dolorem nisi. Nulla necessitatibus error hic atque iusto et.\n\nAmet at odit nulla et aliquid dolor qui. Molestiae voluptas et quasi et quam. Qui dolores est recusandae eius ut eligendi. Aut qui enim ut eum cum impedit.\n\nIncidunt quaerat soluta quaerat molestias reiciendis. Ipsam autem est deserunt ab rerum. Ab sit sunt rem aut id. Commodi sunt aut rerum nihil et.\n\nQuo et cum ad nihil. Omnis excepturi quidem nihil maxime enim. Quo quidem molestiae laborum atque deleniti et et eos. Nulla ut commodi quo.\n\nNisi dolor necessitatibus qui necessitatibus et quis. Qui quasi nobis accusantium aut sint.\n\nAutem quia fuga provident odio soluta. Deserunt sed error id et. Quasi velit ea assumenda quis est qui vel. Adipisci qui minima autem tenetur.\n\nVoluptatem tempora sapiente temporibus officiis. Ullam officiis ea excepturi harum voluptatem fugiat reiciendis est. Dolores voluptates nulla et illum.\n\nMolestias aperiam voluptas sed sit aut facere. Non quasi deleniti delectus. Eius sint minima quos ab quia explicabo facere.\n\nVoluptates ut omnis vitae unde asperiores. Dolores cupiditate rerum soluta quas non. Reiciendis quas sit aut vero. Eum perferendis repudiandae autem et qui a cumque.', NULL, '2019-08-23 01:48:03', '2019-08-23 01:48:03', '2019-08-23 01:48:03', 1, 40, NULL),
(19, 3, 'A atque adipisci cum nam non necessitatibus.', 'debitis-nemo-provident-et-facere-et-et-quidem', 'Repudiandae quod similique dolorum nisi. Facilis nihil eaque et aperiam. Omnis accusamus omnis quasi quasi incidunt accusantium aperiam sed.', 'Odit et libero sint quia amet aut maiores. Repudiandae commodi ea voluptatem dolor voluptas. Ipsam sed occaecati est dolores officiis sit similique. Voluptatem sit eius sit et omnis molestiae. Et autem eveniet quia voluptatem ut recusandae earum veniam.\n\nAt et enim voluptas quis ut fuga. Aliquam repellendus maiores veniam praesentium amet vel id. Ipsum quia laudantium enim consequatur ab quibusdam nisi unde. Ut ut eum facere et. Quia iusto atque qui adipisci nam.\n\nNon ea voluptas illum necessitatibus voluptas. Natus est ipsa quo modi perspiciatis ipsum. Qui id delectus sit reprehenderit.\n\nQuia veritatis ut voluptate sint iure delectus repellat. In voluptatibus enim porro ipsam consequatur et. Voluptatem nemo qui temporibus numquam in. Consequatur quidem quia est enim et omnis.\n\nOdio maiores voluptatem voluptas et quis dolores sunt. Dolores praesentium minus doloremque quis. Non voluptas sit aperiam consequatur maiores modi delectus.\n\nVoluptatem soluta dolores molestiae dolor sed dolore assumenda. Officia suscipit mollitia eum deserunt adipisci. Perferendis neque aspernatur sed.\n\nAut rerum consequatur perferendis laborum culpa. Consequatur unde eaque et quo sed. Est ullam fugit dolor quia.\n\nDicta qui ut molestiae. Magnam dolorem reprehenderit sunt rerum. Laudantium architecto omnis doloribus id delectus quis et.\n\nConsequatur non perferendis minus quia dolor possimus consequatur dolorem. Facere perferendis cum non. Omnis optio pariatur qui. Error necessitatibus qui consequuntur maxime sapiente.\n\nRerum odit distinctio quia maiores harum vitae. Adipisci laudantium ut eligendi amet praesentium id culpa et. Qui molestiae quam dolore impedit et rerum.\n\nUt nisi quis est omnis accusamus sit. Delectus dolor impedit dolores. Quia incidunt aut facere et dignissimos architecto voluptates. Quo similique voluptatibus aut et nulla rem ad. Ut minima pariatur ab et qui.', NULL, '2019-09-02 01:48:03', '2019-09-02 01:48:03', '2019-09-02 01:48:03', 1, 10, NULL),
(20, 1, 'Iste et saepe omnis minima et omnis doloribus.', 'et-quae-non-sapiente', 'Voluptas ut architecto vitae. Doloremque nemo odio cupiditate voluptas earum id. Assumenda aut consequatur ipsa aliquid. Nisi harum consequatur voluptas.', 'Et praesentium autem alias. Quia explicabo veniam et et ad commodi. Odit ex quisquam et soluta esse non vel. Voluptates sed reiciendis quas rem praesentium sunt.\n\nSaepe sequi eaque ipsam ut nihil est et atque. Porro ratione architecto dolorum fugiat inventore inventore sed amet. Magnam enim iure at cumque doloremque ratione aut.\n\nMolestiae amet inventore aspernatur. Enim accusamus modi et eos necessitatibus eius architecto. Minus maxime non fugit corporis voluptatem. Sit rerum tenetur tenetur est incidunt.\n\nQuas delectus consequatur molestiae natus illo. Rerum sit architecto quasi. Eum optio fugit quia dicta ut ut veniam quia. Hic libero dolores corrupti consequatur.\n\nEt labore quo at. Autem aut in ut velit. Saepe quo autem sit.\n\nEst odio voluptatibus et harum enim id. Dolores non ipsum dolor soluta vitae amet. Ut laudantium dolor voluptatibus cumque dolores aliquid corporis.\n\nNihil fuga reprehenderit rerum repellendus magni iste et voluptas. Et nulla amet consectetur corrupti quam temporibus. Id placeat eveniet voluptatem voluptatem.\n\nEst omnis et in distinctio quia. Ad voluptatem ratione et cum nemo accusantium sed. Odio et dolores sed dolor reprehenderit placeat.\n\nPerspiciatis qui ratione eos ut ea non mollitia. Autem nihil iure laborum voluptatem a vel. Nostrum provident dignissimos consequatur mollitia nihil et quisquam.\n\nDebitis et dolores ullam cum harum. Optio molestiae incidunt dolor delectus qui eum. Inventore quasi non veritatis a.\n\nDolor quia unde esse est perspiciatis molestiae eum. Voluptatem consequatur labore commodi non ut omnis dolor. Minima beatae ut ut laborum rerum qui. Quae et totam eveniet sit iusto.', 'Post_Image_5.jpg', '2019-09-12 01:48:03', '2019-09-12 01:48:03', '2019-09-12 01:48:03', 1, 10, NULL);
INSERT INTO `posts` (`id`, `author_id`, `title`, `slug`, `excerpt`, `body`, `image`, `created_at`, `updated_at`, `published_at`, `category_id`, `view_count`, `deleted_at`) VALUES
(21, 1, 'Deleniti nisi non aliquid voluptatem quae quis quidem.', 'debitis-ut-sit-distinctio-perferendis', 'Officiis qui fugit est eligendi qui. Maxime ab vel necessitatibus sint temporibus quo autem. Sunt ratione molestiae aut et soluta consequatur. Et nostrum ab fuga ea. Quo asperiores veritatis in dolore vitae. Nam quo minus quibusdam aliquid eum. Cum error ut est in doloribus.', 'Nihil eaque voluptatem ut modi reprehenderit vel. Animi rerum eos quis.\n\nSit et rerum voluptates occaecati commodi ut. Minus libero laudantium ipsa molestiae. Velit et est placeat est sint voluptates.\n\nNon enim neque qui cumque dignissimos eos quod consectetur. Ratione earum quasi cum laborum ipsa ut. Nemo autem ducimus asperiores.\n\nCum voluptate corporis recusandae. Harum et reiciendis occaecati ipsam facere repellat repudiandae. Nostrum odit ut hic maxime non qui. Explicabo officia quia ex et doloribus quia ipsa. Nostrum minus autem omnis facere repellendus doloribus est.\n\nAperiam quo quisquam optio vero quae facilis deleniti dolorem. Enim nemo nihil officia harum fuga soluta.\n\nFuga voluptatibus eos dicta voluptas qui. Architecto totam qui id fugiat voluptatem autem. Voluptatibus ea quis debitis facere temporibus. Ex minima omnis ex eos.\n\nLaudantium saepe dolorem aut deleniti. Et nihil ducimus consequatur omnis voluptatem officiis quis.\n\nIpsam accusamus dolorum omnis similique fuga velit. Quisquam vel qui ipsum nihil qui in. Voluptatum molestias expedita sed. Consequatur id facere necessitatibus accusamus.\n\nNostrum cupiditate placeat eum. Sed nam commodi libero repellendus id excepturi et.\n\nRerum architecto illo qui hic. Reprehenderit quas nobis officiis fuga fugiat reprehenderit. Ut quia hic quibusdam aliquam id velit.', NULL, '2019-09-22 01:48:03', '2019-09-22 01:48:03', '2019-09-22 01:48:03', 1, 70, NULL),
(22, 3, 'Sint hic et facere voluptas illum nulla nobis omnis sed quod labore.', 'ullam-id-aperiam-iste-sed-veniam-voluptatem', 'Nisi nihil ut excepturi consequatur. Facilis quia omnis eos et totam. Illum illo doloribus tempore nobis et. Fugit quia itaque tempore veritatis. Doloremque atque debitis magnam et.', 'Occaecati mollitia suscipit harum a. Sed enim delectus qui illum incidunt occaecati. Et est non sint illo officiis voluptas dolor.\n\nRepudiandae illo dolor ab doloremque facere. Sed dolorem numquam facere beatae consequatur et.\n\nMolestiae sit quod id impedit et eius molestiae ad. Dolorem hic quis assumenda sunt expedita. Optio quia eos in a id perferendis illum odio. Porro aut cum voluptatibus dicta libero in voluptas autem.\n\nQuia iusto animi sunt sunt. Vero accusamus ut accusantium non distinctio id molestiae. Ratione numquam veniam fuga et.\n\nEst tempora officiis occaecati nobis incidunt. Vel laborum et iusto maxime rerum rem. Eum consequatur minus dicta.\n\nDolores occaecati quae quisquam vero. Nam sit esse libero quae neque. Ut quia autem doloremque consectetur sed dicta rem voluptatem.\n\nMolestiae minus nesciunt voluptatem est autem nam asperiores. Nemo minus et quia quod. Blanditiis qui est velit consequatur numquam aliquam. Id tempora quaerat necessitatibus quaerat.\n\nDolores adipisci dolorem dolorum officia officia. Nesciunt aperiam sequi sed cum. Et quo sit debitis numquam qui eos porro.\n\nUnde est alias et odit neque iure minus. Alias ut perferendis quam totam ab. Est eum ipsum pariatur ipsum et ea. Rerum ipsum suscipit saepe quod quia sit dignissimos.\n\nFugit perspiciatis maxime nemo aut nulla tenetur. Quos sed consequatur doloremque corrupti quia. Illum aliquid neque ut. Corrupti dolorum similique officiis fugiat numquam rerum quod quis.', 'Post_Image_2.jpg', '2019-10-02 01:48:03', '2019-10-02 01:48:03', '2019-10-02 01:48:03', 1, 50, NULL),
(23, 1, 'Tempora omnis hic non et aut rerum inventore consequatur ratione est voluptatem.', 'hic-illo-labore-aut-modi', 'Ab et minima quam aliquid pariatur error qui. Molestias qui praesentium quisquam eaque delectus. Deserunt at exercitationem rem inventore sunt. Ipsum quidem exercitationem assumenda ut voluptatibus alias ducimus.', 'Perspiciatis minus optio quos. Asperiores facere molestiae odio inventore cum. Maiores sit maiores in dolorum minima.\n\nVoluptatum voluptas enim impedit nihil laborum est ut itaque. Officiis aliquid non nulla eum. Quo dolorum dolorem et voluptatem non praesentium. Facilis quia aspernatur dicta exercitationem et quam.\n\nDistinctio culpa molestiae quia. Numquam tempora neque perspiciatis sunt. Qui repellendus consequatur ut tempora dolorum iusto commodi. Amet aperiam rerum et dicta repellat deleniti corporis.\n\nBeatae consequatur consectetur voluptate. Voluptatem autem molestiae et dolores. Officia eaque fugit consequatur. Est repudiandae voluptatem enim deleniti deleniti itaque.\n\nNihil voluptate voluptatibus qui tenetur voluptatem occaecati cum. Recusandae aut hic dolorem vero ea ipsum totam. Recusandae architecto voluptatem excepturi veritatis cupiditate impedit non animi. Ut iste asperiores ducimus hic.\n\nExpedita est libero distinctio qui. Ex nobis ea eligendi quia tempora. Perferendis est dolor dignissimos impedit mollitia.\n\nTempora non odit est necessitatibus. Vero esse repellat aut cupiditate distinctio voluptatem dolorum. Consequatur in unde voluptate alias eos nostrum. Accusantium modi temporibus et enim voluptatem porro tenetur.\n\nAutem dolorum nemo at sed nobis voluptatibus placeat. Ea quisquam maxime dolorem eum similique cupiditate. Tempora vel quas voluptatem aut modi voluptatem.\n\nCupiditate at doloribus sed temporibus similique. Dolorem fugit ut est omnis dolore harum et. Quidem incidunt quam eos quia est. Quia repellendus quibusdam quaerat labore voluptatem.\n\nMolestiae aspernatur autem consequatur maiores odit ut. Est earum assumenda ex esse. Aperiam illum voluptas veritatis recusandae consectetur quas. Eius eum tempora ea doloremque sed.\n\nConsequatur iure odio pariatur. Sit et temporibus asperiores commodi et autem. Occaecati qui voluptatem voluptas voluptate consequuntur et. Repellat quae doloribus voluptas necessitatibus voluptatem sunt quia quasi.\n\nOdio alias molestiae similique sapiente voluptates sunt aut. Non voluptatem voluptatem et iste et tempore aut. Pariatur sit deleniti est sed recusandae. Veritatis id voluptates earum sint debitis sed nam.\n\nQuis nam et recusandae. Quisquam aut delectus numquam iusto qui. Exercitationem nihil veniam veniam alias sed et.\n\nEum voluptatem sit et quaerat dolorem. Est tempora ratione neque maxime et excepturi sed. Sit sint cum nemo velit facere praesentium.\n\nRerum suscipit eaque cum repellendus laboriosam sapiente harum. Eos impedit vitae qui deserunt. Enim dolore consequatur sunt omnis eum dolores. Enim exercitationem dolorum delectus dolor.', 'Post_Image_3.jpg', '2019-10-12 01:48:03', '2019-10-12 01:48:03', '2019-10-12 01:48:03', 1, 90, NULL),
(24, 2, 'Perspiciatis doloremque et labore rerum placeat a quia nesciunt nulla voluptas.', 'est-voluptates-est-debitis-ea-qui', 'Sed nostrum amet consectetur consequatur esse quia quo. Nihil maxime optio ut debitis maiores repellat consequatur iste. Voluptate recusandae aliquam ipsam nesciunt voluptas eum.', 'Eum harum iusto sunt facere qui a sit iusto. Aut ut porro dignissimos nam. Autem culpa ipsam et reiciendis sit.\n\nDolorem ea et voluptatem animi. Consequatur quod temporibus corporis voluptatum. Eius recusandae velit vitae velit eum.\n\nHic nihil qui ut alias. Tenetur debitis aspernatur quaerat quo debitis voluptates.\n\nExpedita aut beatae sunt magnam libero. Sit praesentium ea autem nisi. Est aliquam quia voluptatibus non.\n\nQuo nulla quia voluptas molestias libero. Labore non in ut. Est ut numquam est itaque. Voluptas officia et aperiam.\n\nUnde ab qui quia voluptatem autem. Voluptate nisi est explicabo dolorem. Nesciunt animi ipsam nesciunt excepturi magni ipsa qui. Accusamus tenetur rerum aut nesciunt labore eveniet et.\n\nPraesentium officiis est id inventore autem qui amet. Inventore aliquam voluptatem corrupti dolorem. Architecto impedit placeat libero aut eum accusamus laboriosam. Dicta enim sit omnis cum et.\n\nNumquam quaerat hic velit commodi. Occaecati doloremque similique rerum aperiam sed voluptate suscipit. Sit eaque nesciunt id harum nam occaecati sapiente.\n\nQuod est eveniet deserunt eos. Quod et voluptas est sed nihil voluptatem. Placeat deleniti aspernatur ut consequatur.\n\nVero et et dignissimos rem at. Animi impedit et et laudantium perspiciatis. Dolorum fuga corporis minima qui est iste alias. Quidem in harum et sit ab aut. Et neque alias est repellendus dolorum.\n\nError eos accusantium ut ipsa consequatur ratione. Ratione excepturi temporibus maxime molestias placeat recusandae cumque esse. Velit laborum sit sint facilis fuga modi similique.', 'Post_Image_5.jpg', '2019-10-22 01:48:03', '2019-10-22 01:48:03', '2019-10-22 01:48:03', 1, 100, NULL),
(25, 1, 'Id distinctio tempore quisquam sint sed unde magnam consequatur veniam.', 'vel-harum-omnis-non-rerum', 'Autem eos quos officia et distinctio. Quo repudiandae dolorem voluptatem aut voluptatem alias. Et itaque tempore fugiat nemo voluptatem. Vero perspiciatis aut nulla iste.', 'Praesentium quas occaecati voluptatibus velit. Quibusdam aut qui et. Minima numquam commodi quis placeat doloremque.\n\nMolestias qui aut doloribus. Officia exercitationem aperiam magnam facilis iure eveniet dolorum est. Aut maiores voluptas veniam beatae dolorum et.\n\nOmnis et consequuntur illo. Nemo optio voluptate quasi veritatis alias dicta fuga. Officiis sit odit eaque sed repellat rerum. Repellendus dolores ut velit ut iste cupiditate ipsam repudiandae.\n\nAtque cum quibusdam consequatur quas. Ab cum architecto quia fugit facere quis. Dolorum minus deleniti odit reprehenderit veniam. Aut quidem magni provident atque consequuntur nihil repellendus.\n\nSint aut est nihil repudiandae minus. Ipsam numquam commodi commodi vel. Impedit corporis laudantium consequatur commodi.\n\nQuia et a consequatur repellendus sapiente et incidunt voluptates. Tempora amet qui eaque vel quia maxime ea ut. Repellat quasi sunt vero neque nemo.\n\nItaque eos voluptas illo perferendis praesentium est asperiores voluptates. Incidunt aliquid neque velit quod aliquid sit. Temporibus consectetur a sapiente est quia beatae. Rem quo quo sint debitis voluptatem.\n\nSuscipit sed illum quisquam qui pariatur velit reprehenderit. Deserunt animi debitis aut voluptate dolores dolorem. Ad molestias velit explicabo ut mollitia possimus.\n\nQui sed maxime in eligendi temporibus consectetur. Voluptatem laudantium itaque velit iusto corrupti deserunt.\n\nVoluptatem cum eum culpa odit. Dolorum maxime beatae deserunt qui in aut. Numquam est est et incidunt. Ad eius provident aperiam ut quia molestiae rerum.', NULL, '2019-11-01 01:48:03', '2019-11-01 01:48:03', '2019-11-01 01:48:03', 1, 20, NULL),
(26, 3, 'Non dignissimos eos sunt consectetur rem ex qui commodi ullam vel eveniet.', 'necessitatibus-cupiditate-soluta-fugit-assumenda-ut-aperiam', 'Facilis occaecati qui quaerat. Voluptatem incidunt placeat exercitationem itaque at quae ea. Ipsum nisi libero quae cupiditate unde. Enim deleniti non id delectus.', 'Eligendi aspernatur qui consequatur blanditiis ad natus. Laudantium nisi autem voluptatem ipsam quia sed. Rerum perspiciatis voluptatem quod facilis voluptas nam in. Porro et impedit nihil provident veritatis ea. Velit est enim et vel inventore.\n\nQuam aut sint aut sit amet ipsa. Id accusantium labore dignissimos cum. Et cum ex in enim earum eius accusantium.\n\nSunt ut vitae maiores omnis incidunt assumenda. Suscipit et harum in sunt tempora. Sapiente quos dicta dolor quia aperiam natus omnis.\n\nEt soluta quas eveniet est consequatur. Blanditiis sed corporis ex nesciunt et quod velit. Nihil aut laborum rerum. Repellat a aut a aut aliquid quam tenetur.\n\nId corrupti consequatur ipsum facere quo est ut eum. Nihil voluptatum commodi asperiores tenetur quis. Id et distinctio quae modi dicta aut numquam.\n\nNesciunt quae rerum tempora assumenda et sed dolor. Quo dolores corporis adipisci odit et soluta. Omnis velit ea quia sit. Laboriosam quis laudantium fugit eaque.\n\nSequi dolores fugit nemo et omnis ad. Et omnis dignissimos quae nemo eum. Necessitatibus iste qui veritatis.\n\nQuidem temporibus nostrum saepe eius dolorem temporibus laborum numquam. Sed perferendis animi deleniti molestiae velit vel repudiandae sapiente. Beatae maxime sit ipsum facere.\n\nSed rerum itaque error assumenda. Sit molestiae laboriosam perferendis rem beatae dolor quo eum. Rerum facilis a qui.\n\nVoluptatem molestias autem dolorem a expedita. Autem laboriosam velit ab dolorum.\n\nUt blanditiis ut nemo aut quam nostrum. Sequi repellat debitis dolorem repellendus et deleniti rerum voluptatibus. Aspernatur excepturi in officiis nihil a. Incidunt qui possimus impedit quod architecto placeat qui non.\n\nExpedita consequatur nobis non ut sint est. Voluptatum saepe et modi. Distinctio autem et delectus magnam quos exercitationem. Maxime quisquam enim vero omnis corporis.\n\nAut velit modi itaque vel cum asperiores saepe. Ipsam quia cumque voluptates repellat. Dignissimos dolores consectetur ab aperiam. Qui eos est placeat iure.', 'Post_Image_4.jpg', '2019-11-11 01:48:03', '2019-11-11 01:48:03', '2019-11-11 01:48:03', 1, 30, NULL),
(27, 3, 'Adipisci illo voluptas vero nesciunt corrupti rem quisquam voluptatem est quasi quia.', 'et-laboriosam-consequatur-qui', 'Quasi dolores maxime velit iure neque quia vero quidem. Voluptatem eveniet tenetur excepturi et ut voluptatem et tenetur. Illo optio enim aliquam ea tempore dolorum qui. Voluptas harum earum asperiores dolorem nesciunt est minus.', 'Ut facilis aut non delectus. Velit consequatur repellendus nesciunt voluptas. Autem ut corporis aut eum nisi quasi expedita.\n\nVoluptatum enim perspiciatis labore eligendi dolorem animi unde ut. Iusto odit vel similique et. Voluptatem aliquid veritatis placeat consequatur aut quia voluptatum.\n\nOccaecati voluptatum rerum aut cupiditate placeat. Nam sit sint labore et veniam maxime. Officiis nobis expedita deleniti eos atque inventore.\n\nIn ut non pariatur debitis. Saepe repellendus vel qui quo debitis. Cum numquam eos aut dolorum et.\n\nExpedita temporibus minima neque quia qui labore. Voluptatem aliquid rerum id nihil expedita.\n\nAutem minus vel expedita facere adipisci eaque ratione. Rem labore a rerum adipisci aliquam rerum. Et deserunt laborum et porro. Ut qui sit quia modi corporis optio. Labore alias consequuntur perspiciatis voluptatum quo et ut.\n\nEa quam fuga ratione aut modi sed. Sunt officia deleniti voluptate culpa. Cumque vel fugit omnis amet sunt tenetur cumque.\n\nModi aut dicta consequatur sunt fugit odio. Id qui saepe non ratione veritatis recusandae sint voluptatem.\n\nQuibusdam velit eum ut accusamus. Ut laborum debitis sit recusandae vero est ut iure. Dolore qui est libero nobis necessitatibus. Quidem quia id ipsa est.\n\nIpsum et consectetur aut sunt. Architecto tenetur ab quae harum. Quo repellendus saepe quia impedit est. Praesentium doloribus accusantium aperiam quisquam voluptatem dolor et. Ullam soluta maiores soluta repellendus aut.\n\nFacere porro corporis quasi maiores voluptate inventore. Minima veritatis consequuntur animi assumenda est vel.', NULL, '2019-11-21 01:48:03', '2019-11-21 01:48:03', '2019-11-21 01:48:03', 1, 100, NULL),
(28, 1, 'Est quia quasi cupiditate earum nesciunt impedit quia.', 'omnis-ut-voluptas-delectus-ipsam-doloremque-possimus-qui-ullam', 'Quasi libero praesentium ut. Id et molestiae ut blanditiis. Mollitia in eaque voluptatibus nulla debitis omnis. Sunt modi praesentium voluptates ad.', 'Totam est ullam tempora aut numquam. Eligendi in assumenda maxime. Non reiciendis et ipsam in molestias velit. Quos eos et delectus saepe reiciendis autem nobis.\n\nRepellendus sit molestiae mollitia dicta beatae placeat eaque. Consequatur nam saepe deleniti delectus quia perspiciatis eum odit. Explicabo natus ipsa aliquam quo asperiores saepe maxime et. Harum nisi unde minus in optio ut accusamus accusantium.\n\nVelit et et magnam libero. Quo quaerat eum architecto sit ad odit quis. Alias vero error consequatur fugiat autem quaerat. Itaque atque ea ut hic nostrum repudiandae blanditiis ad.\n\nIllum nihil ratione mollitia. Sed eum incidunt minima nobis. Laborum in cumque quod consequatur dolore illo.\n\nCorrupti explicabo officiis mollitia dolores quaerat. Nihil vel ad quo. Ut totam quis in excepturi molestiae. Voluptas earum laborum porro consequatur.\n\nAliquam est quia vel error. Voluptas sed non amet magni voluptas et dolorem. Consequatur ex voluptas sed architecto maiores aliquam placeat sed.\n\nMolestiae ad voluptates dignissimos repellat dolores cum accusamus. Aliquid molestiae et est dolorem. Fugit quae eum quis atque ab est. Et nesciunt quia perspiciatis. Quos commodi omnis voluptates facilis sequi.\n\nQuibusdam tempore officia impedit sint. Omnis natus magni quia velit labore at nostrum. Tenetur qui sunt molestiae repellat. Sit sunt autem ad est minima.\n\nLabore provident aut qui libero molestiae excepturi nam. Labore pariatur modi et molestias molestiae blanditiis facilis voluptatem. Aliquam sit sequi nihil aspernatur.\n\nVel possimus ut pariatur reiciendis. Consectetur et voluptatem porro voluptas. Reprehenderit sint deserunt quas similique quod est reprehenderit.\n\nEarum consequatur ut dolorem sint dolore dolorem dolores. Id perspiciatis expedita temporibus. Maiores aut voluptas recusandae aut saepe sequi quia qui. Omnis doloremque laboriosam beatae aut rerum.\n\nConsequatur est dolor dolorem porro. Cumque atque quis nesciunt laboriosam. Vel et non vero. Voluptatem sed aperiam amet illo harum libero.\n\nEum magnam officiis id fugiat eligendi et fugit cupiditate. Rerum omnis vel repudiandae et fugit ducimus. Molestiae veniam repudiandae minus officiis.\n\nEa qui molestiae perferendis officia. Quo facere et laudantium.', 'Post_Image_3.jpg', '2019-12-01 01:48:03', '2019-12-01 01:48:03', '2019-12-01 01:48:03', 1, 50, NULL),
(29, 1, 'Aperiam facere et nihil odit blanditiis molestiae nostrum odio eum.', 'qui-nihil-est-voluptas-fuga-maxime-assumenda-aliquid-id', 'In nihil qui porro quisquam. Rerum quasi natus illum quod excepturi quae. Animi sed quibusdam itaque asperiores vel dolorem. Sequi id culpa aut. Officiis quos qui architecto dignissimos laboriosam.', 'Et dolores et esse illum. Corrupti necessitatibus et aperiam dolor. Et fugit est nobis repellat. Ipsa itaque quasi deleniti magni qui velit veritatis enim.\n\nSit dolores quo rerum voluptatibus. Est aut nam modi ab omnis eaque. Sit corrupti nostrum eligendi provident in facilis.\n\nAliquid recusandae fuga adipisci quam ab. Pariatur molestiae in quia mollitia. Illo dolorum vel hic quis occaecati temporibus. Perferendis est commodi omnis consequatur hic.\n\nEst aut maxime ea ullam assumenda. Expedita et quia sunt itaque vero quis omnis. Esse qui alias est omnis ut voluptatem. Libero totam dolorem voluptatem est accusamus dolor.\n\nEarum quis excepturi et a molestiae quia autem. Quia illo iure beatae et. Ut quo facere aut eaque quia. Quae vel aut eligendi corrupti et.\n\nQuidem debitis suscipit et et cupiditate consequatur. Est voluptatem nulla doloremque autem qui quis blanditiis. Dolorem similique quia quibusdam.\n\nUt facilis non cum et quis ipsum. Dolor nihil est et eaque.\n\nTempore voluptas earum autem nisi tenetur quaerat quia. Sunt non sint repudiandae tenetur sit iure. Blanditiis velit magnam omnis voluptas. Sed non non sunt et et.\n\nCum ut omnis sint id molestiae enim ut. Perspiciatis totam et vel rerum.\n\nVoluptatem et maiores sint quasi magnam. Velit voluptatibus ipsa esse. Modi enim voluptatem voluptatem at modi. Eos sunt molestias rerum repudiandae non qui dignissimos.\n\nReiciendis tempore commodi vel nam adipisci non est. Natus dolor et mollitia qui. At tenetur perspiciatis cumque nemo nihil eum id fugit. Aliquid aut velit velit harum voluptatem sunt.\n\nAt est non commodi. Facilis nobis corrupti dignissimos et. Quam aut quos et tempora dolorum totam. Sunt commodi explicabo sint sequi in cumque sint.\n\nMinima ipsum qui cupiditate ut eum iste. Autem nihil nihil maxime repellendus et error. Non quis velit non earum. Libero labore doloremque quo qui veritatis adipisci.', NULL, '2019-12-11 01:48:03', '2019-12-11 01:48:03', '2019-12-11 01:48:03', 1, 60, NULL),
(30, 3, 'Tenetur dolores distinctio reprehenderit consequatur nesciunt consequatur at.', 'accusamus-quidem-quis-non-iure-quisquam-et-quaerat', 'Molestiae dolores rerum ea aut error dolores quia voluptas. Iste aut odio earum neque labore rerum consequatur. Sint cupiditate commodi soluta ea. Omnis et quam aut corrupti odit fugit.', 'Saepe perspiciatis repudiandae recusandae nostrum ut. Et est fugit nihil voluptas sit. Dolores consectetur voluptas et nisi eos mollitia ipsa.\n\nNon sit cumque voluptatem voluptas quasi laborum aut impedit. Similique repellat excepturi consequatur odit debitis. Repudiandae accusamus et voluptatum ex maiores quia optio. Amet voluptas dolorem delectus reiciendis.\n\nAut voluptas sapiente aliquid et debitis quia similique. Aut voluptates omnis voluptatum maiores. Quia amet voluptatem atque at dolor. Labore hic eum architecto porro aut.\n\nAutem nihil eum earum molestias illo. Placeat rem et velit eligendi nihil saepe. Eaque sequi distinctio aut minima nesciunt et. Aut consequuntur facere ut cupiditate nisi ipsam.\n\nExercitationem doloremque voluptatibus velit aspernatur omnis debitis sequi hic. Hic omnis fugit ut fuga maxime.\n\nDolor nulla repellendus similique cumque ex temporibus reprehenderit assumenda. Atque magni aliquid saepe tempora voluptatem vitae. Voluptatem nisi ut nisi ipsa ipsam fugiat ut. Est quo velit consectetur fugit.\n\nNesciunt in dignissimos praesentium delectus nesciunt molestiae ea. Ipsam doloremque quos rerum laborum et voluptatem in. Veritatis velit qui deserunt esse quidem assumenda. Et earum tempore sapiente quia.\n\nAd earum omnis sunt assumenda odit et. Nisi tempora laborum ea sit id est eum. Rerum dolorem modi voluptatem quis voluptatibus ratione.\n\nAnimi qui non possimus. At nostrum quisquam vero similique reiciendis neque. Laborum id rem esse sed.\n\nExercitationem nihil officiis eius nisi eum expedita. Delectus eveniet eos et omnis iusto et. Cupiditate eos aut dicta voluptatem perspiciatis. Iure ea qui laudantium error.\n\nUt dicta ea amet quos doloribus autem. Tempora quisquam porro ut voluptates quas vel qui.\n\nSint debitis possimus beatae non voluptatum adipisci voluptatem eligendi. Et quam voluptatem distinctio facilis ut earum doloremque. Aliquid quaerat omnis nihil rerum neque est atque.', NULL, '2019-12-21 01:48:03', '2019-12-21 01:48:03', NULL, 1, 10, NULL),
(31, 1, 'Sunt exercitationem recusandae aut enim iure aut.', 'dolorem-voluptates-veritatis-odio-officia-sapiente-quae-nostrum', 'Quidem sint consequatur similique qui. Possimus sunt quos exercitationem magni perspiciatis beatae. Et ut voluptatibus reprehenderit nulla. Officia perferendis porro praesentium.', 'Neque nisi rerum molestiae dolore saepe. Voluptatum eligendi saepe doloremque aliquid neque adipisci. Eos repudiandae qui illo esse.\n\nDucimus rerum quasi ea exercitationem. Quia iste voluptatum ut necessitatibus. Non quo sapiente itaque quod distinctio maxime enim.\n\nQui quam consequuntur dolorem atque alias. Quis illo molestiae qui dolores. Molestiae dolore inventore soluta doloremque voluptate iure. In consequatur nisi ad.\n\nEx sed libero nobis sunt et fuga. Eius placeat quasi perferendis quis qui pariatur. Iusto et qui incidunt. Aut perspiciatis nulla error ipsum minima ut repudiandae.\n\nDolorem repellat id molestias possimus mollitia voluptatem earum. Dolorem quis a nobis aut ipsa architecto officia suscipit.\n\nQuasi placeat voluptatem minima dolorem quos autem magnam. Repellat illum quaerat quaerat labore quae quo totam. Architecto dolores cum fuga dolores voluptas repudiandae veniam id.\n\nQuasi hic nemo repudiandae impedit labore qui odit. Qui repellat blanditiis eum aut dolor. Ex omnis tempore vero recusandae distinctio quis voluptas. Rerum debitis quis vel velit saepe recusandae.\n\nOfficiis velit enim dolorum amet laboriosam qui voluptate deserunt. Rerum explicabo quam corrupti repudiandae. Illo exercitationem unde id consequatur provident. Velit exercitationem sit aliquid et dicta sed aliquid.\n\nMagni nesciunt deleniti quia ad. Numquam dignissimos molestiae nam dolorum eius aut pariatur. Enim distinctio voluptatum ea eos. Amet ipsa nisi dolor exercitationem dolor consequuntur.\n\nLabore veniam accusantium quia provident voluptas enim. Eius quae rerum rem omnis accusamus est. Alias qui dolor dolore voluptatum. Mollitia maiores laudantium sint animi magnam porro.\n\nTempore quibusdam pariatur dolore dolorem ratione doloribus. Similique quo dolores omnis eum ducimus quasi. Velit consequatur animi et quidem officia.', 'Post_Image_3.jpg', '2019-12-31 01:48:03', '2019-12-31 01:48:03', '2020-01-04 01:48:03', 1, 90, NULL),
(32, 1, 'Delectus in mollitia ut debitis eaque sint sit perferendis autem consequatur.', 'optio-quia-doloribus-dolores-omnis-sed', 'Sapiente vero error facilis natus distinctio. Impedit rerum nihil tempore ea sunt fuga fugiat. Tempore omnis quod quia dolorum nemo. Exercitationem quis debitis unde. Ea perferendis est inventore illum sapiente vitae.', 'Tempora dolore pariatur est accusamus. Quam rerum eius tempora atque harum fuga. Deserunt occaecati cum dolores eligendi voluptatum ab culpa.\n\nQuae debitis iure soluta veniam. Itaque quasi perferendis tenetur sit quia. Aperiam dolore culpa unde tempore nemo aut. Eligendi non officia unde eos. Rerum placeat est consequatur quasi quas et quia.\n\nQuia et temporibus quisquam suscipit saepe id. Doloremque voluptate quia ut iure animi autem. Saepe iure soluta velit ex.\n\nIncidunt rerum beatae ea ipsa animi. Aut est sit est. Sunt beatae error cumque et voluptatem.\n\nNihil est enim qui magni necessitatibus iste. Dolore quod et qui. Aut deleniti ut sed eaque qui. Id magnam iusto omnis aut.\n\nDucimus sunt possimus rerum eius nulla iure enim. Et reprehenderit minus quis ratione aut minima laudantium. Sed et tempora voluptatum eum aut.\n\nOmnis ut quidem libero iste autem rerum ut vel. Quia eveniet nostrum ipsa officiis. Non qui cumque architecto. Sit sit aliquid tenetur autem consequatur cum ex.\n\nFacere corrupti ipsam sint et corrupti. Voluptatem harum adipisci cupiditate fugit eligendi explicabo aut.\n\nArchitecto et temporibus natus possimus ut. Molestiae deleniti impedit vitae quasi omnis quia doloremque ipsum. Mollitia ut eveniet enim est fugit nostrum qui.\n\nTemporibus a possimus sed. Rerum modi rerum modi sint quisquam.\n\nCumque non perspiciatis eos. Vero explicabo dignissimos omnis doloremque atque. Blanditiis consequatur ducimus consequatur repellat voluptate.\n\nOfficia rerum mollitia libero sed incidunt sunt dolores. Et unde omnis et praesentium. Nulla reiciendis consequuntur accusamus voluptate non. Nostrum veniam eaque eos repellendus.\n\nAut atque ea qui aut eum fugiat soluta. Et ipsum fuga eos rem. Aut facilis exercitationem nisi dolore voluptatem accusamus ut. Ipsam rerum quo quasi repellendus. Minima velit eius tenetur omnis porro architecto pariatur.\n\nAd sunt qui eum omnis. Tempore amet qui quisquam magni sit maxime omnis. Cumque non animi doloremque a porro ex repellendus.', 'Post_Image_5.jpg', '2020-01-10 01:48:03', '2020-01-10 01:48:03', '2020-01-14 01:48:03', 1, 80, NULL),
(33, 1, 'Dolorem numquam voluptatem distinctio quas aut sed cum minus.', 'qui-ut-vero-eaque-odit', 'Soluta omnis necessitatibus aut dicta autem fugiat dolorum earum. Sunt rerum aliquam nesciunt expedita et at. Consequatur voluptatibus corporis ad repudiandae.', 'Ipsa expedita modi aut esse modi in. Sit exercitationem enim dolor qui mollitia aperiam. Quia maxime exercitationem id consequatur aut quo nostrum et.\n\nEst ut velit sit iure. Consequatur in nostrum est saepe. Quis asperiores in molestiae natus nulla suscipit vero vel.\n\nDolore fuga voluptatem sit qui. Non quaerat exercitationem aperiam dicta nam quia. Quidem sit qui nesciunt omnis voluptatibus aut est magnam.\n\nRerum similique reprehenderit earum voluptatum. Modi quas quis est est ducimus deserunt occaecati quam. Sint quae inventore ullam iusto quia doloremque nisi.\n\nVeniam unde repudiandae expedita placeat iste. Quo maxime quasi sit cupiditate nam. Aut tempore id quia maxime.\n\nUt nulla rerum delectus esse officiis ratione quis. Et nam rerum ad a optio. Possimus repellat molestiae aut eius quibusdam odit delectus architecto.\n\nMolestiae eos ea molestias iusto illo sed quas. Dignissimos non eum distinctio ipsum. Ut labore a nihil mollitia cupiditate accusamus delectus. Non perspiciatis veritatis debitis corrupti quisquam quam.\n\nConsequatur et maiores et. Facere dolores voluptatum omnis.\n\nTotam quia nemo et aut a maxime officiis. Consequatur possimus iure consequatur. Eos magnam in velit totam.\n\nId sed quod cum suscipit. Ipsam sed totam sint enim. Velit omnis laudantium iusto enim.', NULL, '2020-01-20 01:48:03', '2020-01-20 01:48:03', NULL, 1, 30, NULL),
(34, 3, 'Saepe ab porro illum illum molestiae qui mollitia voluptate quis quod.', 'neque-et-sit-repudiandae', 'Sapiente inventore perferendis nobis sunt dolorem hic temporibus. Dolores accusamus esse assumenda atque eos aut. Nulla quas enim recusandae.', 'Voluptatum reprehenderit praesentium itaque praesentium tempore. Et omnis id in. Eos nobis dicta culpa nam expedita accusantium.\n\nOmnis eligendi quasi culpa neque aut. Doloremque quo veritatis voluptatum consequatur consequatur neque. Vel magni sit voluptate repellat nisi.\n\nNemo distinctio aut qui quo ad eius id. Et est eaque voluptas asperiores iusto earum doloremque maiores. Quo rerum voluptas aperiam.\n\nQuia architecto eligendi dolore aut consequatur iusto assumenda. Quis sed minima non sunt iste. Eos eveniet voluptatem quis qui reiciendis saepe iusto. Debitis minima sit fugit quaerat et sit.\n\nFuga qui sapiente vel in voluptatem vitae ipsam. Dolores voluptatem quos sed eos ullam assumenda reiciendis. Voluptatibus qui officia ut et.\n\nIllum est dolor impedit architecto minus reprehenderit vitae. Ab sapiente et optio eligendi.\n\nMolestiae qui aut necessitatibus placeat unde. Omnis et labore quo numquam. Sunt quibusdam quis dignissimos doloribus. Quam quia reprehenderit consequatur et.\n\nEveniet recusandae quas sint doloremque. Suscipit dolores autem quaerat culpa mollitia et. Ea modi tenetur repellendus modi mollitia aliquam sequi totam.\n\nConsectetur qui ea sapiente esse numquam facere exercitationem. Quas ex praesentium hic necessitatibus nihil nesciunt. Repellendus quis amet dicta eligendi est in id tempore.\n\nSunt quis officiis expedita. Explicabo sed reiciendis minus perferendis. Aliquid aperiam nobis cumque est ut quo eveniet. Doloribus deleniti corrupti a.', 'Post_Image_4.jpg', '2020-01-30 01:48:03', '2020-02-25 03:52:32', '2020-02-03 01:48:03', 1, 23, NULL),
(35, 3, 'Omnis magnam voluptatem odit eius.', 'corrupti-corrupti-accusantium-eveniet-nihil-iusto-ea-natus', 'Mollitia ut blanditiis molestias odit animi. Aliquid doloribus quos nostrum nihil qui voluptas. Praesentium officia quos aliquam alias labore. Qui placeat qui officiis amet accusantium itaque. Illum fugit laborum fuga et et. Non ut eveniet quia commodi.', 'Aliquid esse qui adipisci impedit fugiat minus ut. Ipsum enim dignissimos aut ducimus eos autem. Quisquam accusantium dicta quaerat.\n\nNostrum modi quia autem ut sint dolorum non. Ullam nesciunt nostrum et id aliquam alias. Tempora aspernatur nisi corrupti dolorem porro exercitationem vitae. Sit quo consequatur molestiae voluptates.\n\nMaiores nisi maiores sunt consectetur enim. Nesciunt quod aliquam et molestiae. Velit architecto quae laudantium consequatur quos rerum officia quae. Nobis neque et expedita doloremque occaecati.\n\nVelit omnis quis illum beatae consequuntur dolore vitae. Et eum aut quo nesciunt id eos quia. Dolorum facilis et eum mollitia fugit maiores. Et modi neque possimus veniam.\n\nVelit expedita libero expedita dolorem et. A cum aliquid sint. Sint libero accusamus dolor occaecati voluptas consequatur ducimus quasi. Facilis quia commodi quisquam impedit qui.\n\nQui consequatur enim incidunt cumque neque. Consequatur quis omnis est qui consequatur. Aliquid beatae rem ipsum qui quisquam corrupti.\n\nSuscipit et assumenda eius nam sunt quibusdam. Vel quasi excepturi vel et eveniet. Et tenetur dolore rem quibusdam quia. Et ad veniam error cum.\n\nSuscipit nesciunt quae ratione eveniet eos consequatur. Pariatur reiciendis optio sed quae quas voluptas. Eaque sed aperiam neque.\n\nDucimus animi et sint voluptatibus. Sint quod tempore repellat eos iusto et perspiciatis. Deleniti totam qui neque qui.\n\nDolor nihil laborum autem modi repellat. Laudantium molestias dolore consequatur ab repellat exercitationem optio. Quaerat voluptatem id quis corrupti labore voluptas laboriosam.\n\nEt ex vel omnis excepturi sit. Debitis quasi temporibus nulla dolorem saepe eum et. Beatae distinctio iste voluptatibus nam.\n\nEum sequi asperiores impedit blanditiis illo ut. Expedita et et vitae blanditiis aperiam perferendis quis. Corporis officiis porro quisquam aperiam tenetur.', 'Post_Image_5.jpg', '2020-02-09 01:48:03', '2020-02-09 01:48:03', '2020-02-13 01:48:03', 1, 60, NULL),
(36, 2, 'Sed molestiae inventore molestias quia sed aut quos nesciunt molestiae deleniti iste omnis eos.', 'eligendi-ut-omnis-necessitatibus-vel-fugit-et-consectetur', 'Facere aut iure rerum harum. Eveniet reprehenderit eveniet nisi ad vel. Perspiciatis sit officiis facilis sed. Tempore odio veritatis qui occaecati corrupti. Placeat culpa iste maiores fugiat autem voluptatem. Aut cum sint aut aut cumque. Et maiores quae necessitatibus aut velit.', 'At voluptas at numquam. Ut excepturi quasi odit explicabo atque. Repudiandae dolores facere vel. Voluptatum rerum perferendis ut occaecati magnam et suscipit natus.\n\nLaborum error ut neque ex. Porro quam eligendi nam. Aspernatur qui aperiam culpa aliquid et vitae atque. Omnis ut doloribus sit molestiae excepturi perspiciatis qui.\n\nSit assumenda quaerat provident velit qui et suscipit ut. Quisquam necessitatibus quia ea quos molestias. Repellat et labore perspiciatis. Cumque dolorum neque numquam accusamus maiores voluptas. Tempore alias vero modi laborum ad omnis.\n\nOdit quia error ullam accusamus aut non. Suscipit quae neque corrupti qui accusamus. Omnis natus et earum praesentium est molestias impedit. Et sapiente dignissimos sed ea placeat vero aut at.\n\nNesciunt doloribus et voluptatum impedit. Voluptate et exercitationem minima veritatis. Quos animi asperiores enim maiores magnam.\n\nEt molestiae dolor ipsum dolores. Quasi voluptate saepe voluptatem reiciendis pariatur soluta. Blanditiis ut modi sunt ut. Est animi quo dignissimos voluptatem odio ea ut.\n\nSint qui laboriosam quo vel modi laudantium quo. Delectus nobis sequi doloremque inventore enim numquam rerum aut. Porro consectetur rerum id vitae eum quos. Assumenda et quia sed ut.\n\nPlaceat ratione aliquam dolor dolore. Rerum eos vero dolorem aut. Deleniti accusantium eos voluptatem modi quaerat aliquam minima.\n\nTempora accusantium hic quis et dolore. Mollitia quia nulla aperiam. Ab officiis quam ducimus libero quidem.\n\nId quidem aut autem. Quam accusantium ut earum quisquam consequatur magni. Consequatur cum magnam commodi exercitationem est reiciendis quo labore. Inventore in corporis voluptatem architecto voluptatem reprehenderit et.\n\nDicta dolorem et fugiat doloremque dolor qui. Voluptatem ut omnis autem rem. Soluta dolores facilis temporibus veritatis rerum quo. Labore culpa vel eius dolorum ipsam voluptate sint.\n\nAut deleniti iusto aperiam. Ipsam temporibus accusantium quia rem minima quisquam laboriosam labore. Repudiandae quaerat assumenda cum ut qui officia velit. Quasi deleniti voluptas dolorem et nihil eos.', NULL, '2020-02-19 01:48:03', '2020-02-19 01:48:03', NULL, 1, 50, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(3, 2),
(3, 4),
(4, 2),
(6, 4),
(8, 2),
(10, 1),
(12, 3),
(13, 2),
(15, 2),
(15, 3),
(16, 2),
(18, 4),
(19, 2),
(19, 3),
(20, 1),
(20, 4),
(21, 3),
(22, 1),
(23, 1),
(23, 3),
(24, 3),
(25, 1),
(25, 2),
(25, 3),
(28, 1),
(28, 2),
(28, 3),
(29, 2),
(29, 4),
(30, 4),
(32, 2),
(33, 1),
(34, 2),
(35, 1),
(35, 2),
(35, 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, '2020-02-24 01:48:06', '2020-02-24 01:48:06'),
(2, 'editor', 'Editor', NULL, '2020-02-24 01:48:06', '2020-02-24 01:48:06'),
(3, 'author', 'Author', NULL, '2020-02-24 01:48:06', '2020-02-24 01:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `socmatches`
--

CREATE TABLE `socmatches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `report_overview` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `report_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_team` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `away_team` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_score` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `away_score` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `match_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `socmatches`
--

INSERT INTO `socmatches` (`id`, `report_overview`, `report_detail`, `home_team`, `away_team`, `home_score`, `away_score`, `image`, `media_url`, `match_date`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, '10', '1', '0', '1', NULL, NULL, '2019-10-19', '2020-02-25 02:08:42', '2020-02-25 02:08:42'),
(4, NULL, NULL, '1', '16', '1', '0', NULL, NULL, '2019-11-03', '2020-02-25 02:10:29', '2020-02-25 02:10:56'),
(5, NULL, NULL, '1', '11', '5', '1', NULL, NULL, '2020-11-27', '2020-02-25 02:12:06', '2020-02-25 02:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `socmatches_teams`
--

CREATE TABLE `socmatches_teams` (
  `socmatch_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 'php', '2020-02-24 01:48:10', '2020-02-24 01:48:10'),
(2, 'Laravel', 'Laravel', '2020-02-24 01:48:10', '2020-02-24 01:48:10'),
(3, 'Symphony', 'symphony', '2020-02-24 01:48:10', '2020-02-24 01:48:10'),
(4, 'React JS', 'reactjs', '2020-02-24 01:48:10', '2020-02-24 01:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `team_base` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `team_base`, `slogan`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Catda F.C', NULL, NULL, 'catda_fc_logo.png', '2020-02-24 02:00:44', '2020-02-24 02:00:44'),
(10, 'Ntinda United', NULL, NULL, 'ntinda_united_logo.jpeg', '2020-02-24 16:55:40', '2020-02-24 16:55:40'),
(11, 'Super Heroes United Sports Academy', NULL, NULL, 'super_heroes_united_sports_academy_logo.jpeg', '2020-02-24 16:57:13', '2020-02-24 16:57:13'),
(12, 'The Super Bullets', NULL, NULL, 'the_super_bullets_logo.jpeg', '2020-02-24 16:58:03', '2020-02-24 16:58:03'),
(13, 'Black Star F.C', NULL, NULL, 'black_star_fc_logo.jpg', '2020-02-24 17:00:50', '2020-02-24 17:00:50'),
(14, 'Fire Fire F.C', NULL, NULL, 'fire_fire_fc_logo.jpg', '2020-02-24 17:01:21', '2020-02-24 17:01:21'),
(15, 'Ggaba F.C', NULL, NULL, 'ggaba_fc_logo.jpg', '2020-02-24 17:01:59', '2020-02-24 17:01:59'),
(16, 'Lungujja Galaxy', NULL, NULL, 'lungujja_galaxy_logo.jpg', '2020-02-24 17:02:47', '2020-02-24 17:02:47'),
(17, 'St.Marys F.C', NULL, NULL, 'stmarys_fc_logo.jpg', '2020-02-24 17:03:26', '2020-02-24 17:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bio` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `slug`, `bio`) VALUES
(1, 'Kazibwe Julius Junior', 'kazibwejuliusjunior@gmail.com', NULL, '$2y$10$RkamGBsXbAtqQ7u1mi8tYeNg8UffDMpHBlZN4KRrMYUMRvwbTLsE.', NULL, NULL, NULL, 'kazibwe-julius-junior', 'Voluptas quo unde voluptas iste consequatur veniam. Aliquid quae aperiam quaerat. Accusamus sequi sit id quod qui animi quo.'),
(2, 'Male Paul', 'mp@test.com', NULL, '$2y$10$mfFinJamgqVrf6wGPIQQ0u19mrLA4m1rclKdeCxRkM6uhbxWyfLpK', NULL, NULL, NULL, 'male-paul', 'Sunt voluptas necessitatibus perspiciatis dolorum. Aut rem autem at laudantium omnis sint autem. Numquam voluptas perspiciatis tempora ratione illum.'),
(3, 'Jjuuko Henry', 'jh@test.com', NULL, '$2y$10$n5RGE7aGJkIPWj8/TFho1uhD2Wb/h7dZ.J/MPG2hWGZnlDKtqUafG', NULL, NULL, NULL, 'jjuuku-henry', 'Numquam nihil ut commodi. Rerum sed doloremque tempore eos. Rerum beatae itaque aspernatur id commodi iure explicabo.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `socmatches`
--
ALTER TABLE `socmatches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socmatches_teams`
--
ALTER TABLE `socmatches_teams`
  ADD PRIMARY KEY (`socmatch_id`,`team_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `socmatches`
--
ALTER TABLE `socmatches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
