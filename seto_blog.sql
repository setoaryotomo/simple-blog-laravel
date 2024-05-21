-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2024 at 12:24 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seto_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(2, 'Web Design', 'web-design', '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(3, 'Personal', 'personal', '2023-10-24 03:48:42', '2023-10-24 03:48:42');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_20_105229_create_posts_table', 1),
(6, '2023_10_21_020940_create_categories_table', 1),
(7, '2023_10_26_105042_add_is_admin_to_users_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Recusandae aspernatur reprehenderit.', 'voluptate-ullam-consectetur-et-deserunt-consequatur-laboriosam-numquam-sapiente', NULL, 'Dolores a nostrum ducimus sit facere quis. Natus magni et aut. Ullam vero voluptatem error rerum asperiores impedit quaerat. Qui reprehenderit praesentium distinctio aut.', '<p>Ut odio occaecati aut dolores qui. Veniam qui est minus voluptatem odit ad. Modi dolores dolorum eligendi natus. Beatae sint quae odio asperiores sed.</p><p>Voluptatem rem accusantium est nihil architecto tempora. Similique nobis nisi quis. Provident dolor ipsa vel molestiae.</p><p>Reprehenderit tenetur cumque cupiditate. Sunt aut odio consequatur et quam.</p><p>Eum et autem ipsa itaque id eos. Itaque laboriosam explicabo iure quod omnis inventore ut. Sed ex atque officiis fuga alias odio maiores. At eum sit aliquid veritatis sapiente ipsum.</p><p>Ut necessitatibus quod adipisci voluptatibus. Hic laboriosam recusandae dignissimos. Aut voluptates et aperiam sed. Eos illo debitis aperiam ea.</p><p>Repudiandae laborum asperiores vero voluptate fugit quia facere. Quia aut et rerum atque accusamus voluptatem mollitia. Optio aspernatur itaque et laborum cum dolores.</p><p>Pariatur enim sit ipsam et fugit veritatis. Cumque esse hic rem recusandae dolores atque in. Ut illo sed aspernatur autem sit voluptatum omnis.</p><p>Iure sint est deserunt deserunt. Consequatur omnis veritatis distinctio ut eligendi.</p><p>Quae ad ab voluptas saepe. Quae et deleniti assumenda nisi molestiae id voluptatem.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(2, 2, 1, 'Iste est est dolor.', 'rem-rerum-maxime-aliquid-voluptas-repellendus', NULL, 'Consequatur nostrum alias ullam ducimus ipsa neque corporis. Omnis rem recusandae quis quia voluptatem aliquid. Reprehenderit esse aut deleniti.', '<p>Qui id aut et rerum et aut officiis. Ut quia dolorum alias magnam nostrum. Hic atque accusamus ut explicabo illum deserunt. Recusandae corporis neque quo quia ut quia at.</p><p>Consectetur dignissimos repudiandae adipisci repellendus. Quidem vero sint ut illum qui sint ea eum. Repellat voluptates recusandae porro saepe porro sunt animi. Omnis velit id non.</p><p>Dolore velit accusamus ullam ratione. Voluptate recusandae repellat rem officia similique repellat dolores. Qui numquam facilis praesentium error iure ut eos. Aperiam enim sunt reiciendis culpa ut.</p><p>Animi et nam facilis aperiam ullam. Quibusdam aliquid voluptatum aperiam sint itaque qui aut non. Veniam et dolores omnis et. Dignissimos dolorem ut nemo recusandae veritatis.</p><p>Tempore quo dolores neque ea ut quo ut non. Mollitia facere sapiente et aut nisi. Expedita dicta dolor quia deserunt fugit.</p><p>Sapiente perferendis reiciendis aperiam ut voluptas occaecati nihil. In ad voluptatem distinctio ratione voluptas. Natus ad numquam molestiae perferendis sit perspiciatis blanditiis.</p><p>Est ut tenetur sunt eveniet quam. Vel est sit accusantium fuga omnis officiis consequatur velit.</p><p>Alias odio quod nesciunt commodi. Beatae et facere culpa. Porro saepe mollitia ipsa expedita quidem dolor vel. Non facere deleniti molestiae illo illo.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(3, 3, 3, 'Harum officiis nam.', 'nemo-delectus-rerum-vero-quibusdam', NULL, 'Quia aut quis vitae. Suscipit et totam suscipit nobis exercitationem dolores. Omnis rerum rerum inventore qui sit. Exercitationem occaecati illo autem ea rerum aut ut inventore.', '<p>Voluptate error earum est velit iure. Molestiae nam temporibus quia provident sit. Et dolorum aut provident voluptatem.</p><p>Atque repellat soluta dolor ratione. Quibusdam sit sint accusantium asperiores illo ipsam cumque. Est est molestias iusto harum omnis similique facilis. Qui non sint nihil facere cum et.</p><p>Dolores architecto velit officiis laborum. Et quod eligendi magnam mollitia doloremque repudiandae veritatis qui. Minus accusantium quis accusantium velit officia.</p><p>Ut dignissimos numquam atque quidem. Sequi ea ut sint. Doloremque facilis aut in quae mollitia vero vitae. Adipisci doloremque perferendis eveniet explicabo ut ab. Eum consequuntur officia facere delectus velit.</p><p>Eos ratione accusantium quia sequi ea. Enim vel ratione quae vel illo voluptatem.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(4, 1, 2, 'Doloremque ducimus nostrum et minima sit eos.', 'sint-quae-et-placeat-autem-et', NULL, 'Vel enim aut consectetur dolorum aperiam. Molestias aliquid voluptatem qui delectus hic sit rerum. Debitis quis dolor veritatis porro. Et beatae consequatur rerum aut omnis.', '<p>Quasi ut sint qui culpa accusantium. Facere atque aperiam recusandae impedit voluptas praesentium rerum. Numquam omnis amet quia sunt.</p><p>Qui est ab nisi consequatur. Aut earum est occaecati aliquam suscipit voluptate. Et laborum beatae perspiciatis voluptates dolorum sequi quidem.</p><p>Illo dolorum consectetur voluptas fugit dolor reiciendis. Dolorem voluptatem eos sit repellendus cupiditate. Non facilis aut dolorem itaque. Cumque incidunt maxime est minus. Cum qui sapiente in.</p><p>Qui incidunt harum veritatis dolorem. Molestias in et assumenda est sunt. Nostrum fugit tenetur vero odit rerum.</p><p>Est necessitatibus debitis nulla natus rem enim. Nobis reprehenderit modi debitis eos non.</p><p>Velit molestias doloribus rem et consequatur recusandae qui. Officiis rerum minima ab nisi modi explicabo. Earum illum tenetur qui repudiandae dolor explicabo eaque. Delectus voluptatibus laborum pariatur dolorum.</p><p>Ducimus debitis aut odio est ea vero. Voluptatem corrupti nobis facere. Quaerat reiciendis voluptates asperiores ea alias minima. Nihil similique est dolores est commodi aliquid. Ipsa eos est nobis reiciendis nulla non atque.</p><p>Eos tenetur magni doloribus praesentium ut dolor. Voluptatem libero odit voluptates id quis quo nihil.</p><p>Laborum non ab cumque ut. Sed ut perspiciatis fugiat iste dolorem. Tenetur architecto quis iste exercitationem porro non. Molestiae ut atque quae delectus dolores et porro.</p><p>Esse quaerat est molestiae dignissimos. Excepturi ut vero sunt dolorem eum. Similique quae tenetur laborum quibusdam eos accusantium.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(5, 3, 1, 'Unde accusantium illum facere et molestias qui.', 'quia-sunt-voluptatem-tempora-inventore-illum-sit-aperiam', NULL, 'Debitis iusto molestiae deleniti non asperiores tempora recusandae. Et quam consequuntur autem cupiditate quidem laborum ad. Aut est quam nulla iure eos nulla. Repellat ex commodi beatae accusamus eos quam.', '<p>Nostrum reiciendis dicta ea sunt quos quaerat. Dignissimos aut omnis molestiae optio. Quis doloremque voluptatem sit labore officiis ipsum. Nobis enim assumenda ut et asperiores. Quidem dolorem deleniti est.</p><p>Nulla dolor consequatur ea excepturi. Maiores illum eos blanditiis. Molestiae reprehenderit sint commodi eum minima.</p><p>Nam ipsum sunt deleniti beatae itaque. Iusto temporibus est molestiae. Labore fugiat sit fugiat temporibus voluptatibus consequuntur. Quis repudiandae quod id voluptates consequatur molestiae nihil. Iusto voluptatem rerum expedita aliquam omnis eius qui.</p><p>Illum provident sint enim. Laudantium velit deserunt vel doloremque ut. Voluptatem nobis aut voluptatem dolorum rerum. In numquam aspernatur ut ad expedita est pariatur.</p><p>Eligendi qui voluptates doloremque et quam. Placeat aut et et rem vel earum repudiandae. Quae deserunt repudiandae aut id sapiente. Voluptas ducimus ut sed et alias.</p><p>Qui et porro dolor ut et suscipit dolor. Excepturi est ipsa atque officia pariatur sequi. Qui quae excepturi itaque. Est optio rerum beatae velit itaque est unde.</p><p>Molestiae ut voluptatem et nisi voluptas assumenda. Odio voluptatem et corrupti itaque ratione quo. In quas id sint omnis nulla consequuntur non.</p><p>Et voluptate consequatur eos autem rem laborum molestias. Molestiae non ipsum ad. In optio at cumque sunt impedit laudantium temporibus aut. Soluta voluptatem animi atque autem ex. Ipsam natus quidem recusandae rerum.</p><p>Fugit cumque debitis voluptas dolores. Est aut ab ut dolor earum mollitia ut. Numquam ex aspernatur pariatur omnis. Molestiae tempore culpa inventore optio debitis quisquam autem. Est non eligendi labore et amet illo tenetur.</p><p>Quisquam alias laborum saepe ut culpa dolorum distinctio quo. Quod voluptates debitis voluptatem debitis commodi facere.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(6, 2, 1, 'Perspiciatis nesciunt sit nam molestiae consectetur.', 'voluptatem-dolorum-aut-qui-eveniet-dolorum-vero', NULL, 'Ut voluptatem itaque repudiandae ut ut repudiandae velit. Aut aut et eveniet dolor facere ipsa. Suscipit quia qui ut quia eaque.', '<p>Aut animi et eligendi et corporis accusamus dignissimos dolor. Est saepe minima recusandae. Itaque quasi eos inventore pariatur voluptate quia. Aut quia numquam expedita facilis.</p><p>Optio quasi nemo odit voluptatibus. Minus possimus aperiam laborum dolore distinctio quod. Molestiae cum optio maxime. Consequatur voluptatem laborum porro non modi sequi assumenda. Libero praesentium qui autem dolor voluptatem omnis est et.</p><p>Voluptates rerum est ab aliquid. Omnis enim architecto ut dolorum dolorem. Ut dignissimos veniam delectus molestiae magni ea. Voluptatem iste voluptatem doloremque veritatis voluptate dolor.</p><p>Architecto rerum sit doloremque dolorem reprehenderit voluptas. Molestiae ad vel sint corporis. Rerum consequatur aut officiis quod nam ullam rerum quos. Alias quas repellat sed non.</p><p>Asperiores dolorem vel non quia molestiae. Ea officia sit et voluptates. At sit qui qui eum voluptatem numquam eaque enim. Et qui reprehenderit alias consequatur earum ut.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(7, 2, 1, 'Eius in sed unde impedit ea sint sit.', 'delectus-in-non-quibusdam-occaecati-necessitatibus-dolorem-voluptas-et', NULL, 'Ipsam beatae est qui non ut. Aut est beatae reprehenderit ducimus. Modi omnis unde omnis ut sed vitae. Odio occaecati distinctio dolores aliquid ipsa magnam.', '<p>Rerum voluptates vero voluptate ullam quam consequuntur recusandae. Eveniet officiis corporis est sint. Dicta quisquam eius eaque aut rerum.</p><p>Aut magni et reprehenderit nam ipsa. Hic cumque commodi et velit dolores. Optio qui qui nostrum consequatur.</p><p>Tempora molestias similique ut non animi. Ut deleniti porro perferendis hic voluptas aut ut nisi.</p><p>At quod vero distinctio. Perferendis voluptatem consequatur aut et. Ut cum ut velit dolorem labore dolores laboriosam.</p><p>Aut alias doloremque ut et. Molestias asperiores mollitia possimus voluptatum. Ut et culpa accusantium.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(8, 1, 3, 'Ut atque et error iste veniam.', 'distinctio-voluptatum-molestiae-quisquam-quo', NULL, 'Quam nemo dolore similique harum quia corporis impedit. Minus porro et aut aliquam laborum ea maxime.', '<p>Amet in blanditiis dolore voluptas magni sit perferendis. Sunt et ab sit dolores qui consequuntur. Eum et non voluptatem doloribus. Quia sunt aut qui pariatur.</p><p>Aut vero quibusdam rerum nihil. Enim aliquam adipisci ducimus dolores. Numquam maxime cumque quidem quaerat et maiores consequatur.</p><p>Quisquam quaerat omnis voluptatibus reiciendis voluptas. Commodi illum maxime beatae voluptate excepturi voluptate.</p><p>Nam dolor est sit architecto sapiente. Nihil ut voluptatibus quia. Commodi est ex dolore debitis. Quidem voluptates non ipsa assumenda delectus eos et nostrum. Molestias dolorem in necessitatibus sit iure.</p><p>Recusandae molestiae itaque sequi minus aspernatur culpa velit. Voluptate nostrum tempore maxime veniam dolores harum dolores. Sit omnis eos et ut cumque voluptas.</p><p>Ipsum veritatis eos fugit sunt sint. Cumque saepe qui temporibus quaerat. Natus sed ipsa suscipit enim architecto accusantium. Laudantium beatae eligendi non ut at sunt.</p><p>Ad quidem voluptatem et velit veniam. Architecto rerum recusandae deserunt qui vel est vel. Et voluptatem in quis quaerat quia fugit excepturi maxime. Sit harum assumenda et tempore qui earum autem.</p><p>Vel fuga eum nulla repellat. Delectus culpa eligendi rem possimus facere quia veniam. Sit commodi cumque est dignissimos ea et.</p><p>Voluptatem tenetur aut nulla voluptatem assumenda. Dolore nihil qui dolorem quia ullam. Dolorum cumque ab deserunt ea nemo in mollitia. Excepturi corrupti sunt animi voluptatem expedita.</p><p>Aut doloremque id et sunt libero. Vitae cumque quisquam aut ratione. Est recusandae assumenda et nihil vel ut illo asperiores. Dignissimos harum aut debitis nemo.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(9, 2, 3, 'Laudantium ipsam hic molestiae.', 'molestias-ipsa-aut-nemo-quasi-aperiam-sit-iure-natus', NULL, 'Modi explicabo voluptatem quisquam numquam sunt doloremque molestiae. Ratione excepturi beatae voluptate atque repellat.', '<p>Eveniet laboriosam ab sunt quis omnis. Totam illum enim omnis sed est aut. Voluptatem ad earum et vero voluptatum.</p><p>In quia eos qui in similique et praesentium. Sapiente doloribus nihil aut quaerat.</p><p>Qui omnis ducimus qui sint molestiae. Minima ut voluptatem a sunt veniam animi vel. Saepe fugit delectus voluptatem nihil reiciendis libero. Voluptas voluptatibus temporibus delectus voluptates at.</p><p>Exercitationem veniam et error nihil qui quia dolore. Quas molestiae dignissimos sit sit ut fugiat. Adipisci a omnis qui est reprehenderit totam. Doloribus eum est sint cumque eveniet temporibus.</p><p>Iste eius atque modi ducimus. Eius et fugiat asperiores commodi. Debitis omnis eaque architecto ducimus accusantium. Ea aliquam atque incidunt et dolorem.</p><p>Magni consequatur alias voluptatibus ut tempora aut. Qui est dignissimos quam ipsum earum aut quo. Iure molestiae voluptatem officia maiores id. Rerum quos aut est incidunt veniam provident dolor.</p><p>Qui suscipit facere quo dolore eveniet aut aut. Blanditiis aut at dolor nesciunt eos et consequatur. Corporis rerum placeat et asperiores. Laboriosam rerum commodi doloremque.</p><p>Voluptates dolor commodi omnis sunt non doloribus unde corrupti. Et eos voluptas temporibus. Pariatur amet facilis sit voluptas ea nesciunt.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(10, 1, 2, 'Ut cumque dolorem deserunt enim.', 'adipisci-nesciunt-tempore-odit-cumque-amet-omnis-et-cumque', NULL, 'Modi tempora vel quis qui rerum et. Asperiores esse unde suscipit non vel omnis fugit. Dolor in optio eveniet cum ab perferendis illo.', '<p>Nesciunt quia ullam aut aut recusandae. Voluptatem ea temporibus aut et voluptatum. Sint et soluta velit praesentium consequatur.</p><p>Et tempora dolores magnam qui. Dolorem consequatur quas qui necessitatibus est eos quidem a.</p><p>Consequatur non eos aut enim accusantium excepturi fuga. Suscipit maiores tempore magnam sunt et. Soluta numquam eum aut ut temporibus debitis eligendi. Veritatis qui voluptatem eius eum incidunt impedit. Vel enim culpa iusto dolor alias accusamus officia.</p><p>Eum veniam mollitia sit ipsam repellendus iure officia. Nobis iste odio quia cum omnis necessitatibus. Aut blanditiis totam rerum sequi. Qui distinctio expedita sint sit.</p><p>Esse distinctio assumenda qui sint delectus beatae quia. Dolores labore aut quisquam at qui laudantium. Aliquid fugit reiciendis omnis reiciendis. Ut consequatur est rem impedit libero veritatis aut aut.</p><p>Et tempora et voluptatibus. Ducimus sit est temporibus est esse inventore.</p><p>Et deserunt consequatur eaque sint ea possimus sit. Eius voluptas deleniti ratione rerum quisquam voluptate. Id voluptatum eaque delectus qui molestiae.</p><p>Corporis eos est quia deleniti illo doloremque pariatur qui. Asperiores repellat illum non. Et sed nam et.</p><p>Atque consequatur vel ipsam nobis minus ex. Voluptatum perspiciatis molestiae quo. Sed accusantium distinctio non. Nobis eaque pariatur rerum.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(11, 2, 3, 'Hic dignissimos non minima voluptate.', 'repellat-aut-expedita-quisquam-et', NULL, 'Quis et quis voluptas aut nam distinctio. Quia deserunt consequatur error optio quasi quia. Vel quod quae quisquam hic et.', '<p>Dolorem hic dolore qui ut molestiae. Iste optio aut animi enim voluptas delectus omnis. Facilis enim sit et autem. Pariatur in amet quia consequatur asperiores totam.</p><p>Et voluptatem aut occaecati tempora nulla quo accusamus. Exercitationem quia odit rerum voluptatem.</p><p>A ad quia aut. Tempora fuga quia ducimus corporis doloribus laborum occaecati. Ipsum sed at aut quia.</p><p>Unde consectetur rerum nemo est aut. Est consequatur at nihil nihil hic voluptatum tempora aspernatur. Aspernatur a laudantium in delectus.</p><p>Iusto consequatur totam in inventore saepe. Enim sed et eum et. Consequatur quod aliquid qui. Et quod pariatur animi sed. Iure iste earum sed consequatur quaerat.</p><p>Qui quia et similique quia sed. Ut quis est occaecati voluptatem voluptatibus nam deserunt. Omnis sed sit nulla delectus.</p><p>Fuga ut neque perferendis perspiciatis vel voluptatem. Qui eos sint in omnis. Reiciendis esse neque consequatur odio delectus nesciunt.</p><p>Animi dolores quis molestiae qui facere a voluptate. Repellendus optio ut praesentium corporis cum dolorem et. Unde exercitationem optio reiciendis laboriosam modi. Ut porro impedit totam ipsa et ea non modi.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(12, 2, 2, 'Culpa quia officia cupiditate.', 'asperiores-est-quae-perferendis-ipsa', NULL, 'Maiores magnam sed et optio. Optio dolores consectetur est et perspiciatis adipisci quo sint. Ratione ipsam qui provident in similique aut deleniti. Cum eos culpa repudiandae eos voluptas voluptatem et molestiae.', '<p>Amet rerum nemo ut non tempore recusandae ut. Molestiae officia ut et repellendus quam. Ipsum minima excepturi corporis sit nemo et et exercitationem.</p><p>Consequatur ducimus vel est libero fugit in vel. Ducimus nam enim ratione et magni voluptas itaque. Nihil accusantium voluptatum deserunt accusamus. Ratione omnis quia vel sit.</p><p>Provident rem hic laudantium commodi tenetur. Minima earum aut suscipit iste non et. Eligendi mollitia quod qui occaecati iste sed ut. Ullam ea doloribus numquam ea.</p><p>Unde sed quod dignissimos quod voluptates quidem. Nisi debitis est suscipit et. Sit harum at qui et. Soluta eos rem eum quam.</p><p>Enim accusamus quae non voluptates est nesciunt atque. Dolores tempore quia rem expedita ad autem numquam. Nulla qui maxime ducimus rerum aut error. Nihil sed quia quae. Ratione voluptates rem vel officia est eum quis.</p><p>Aliquid necessitatibus ut non rem qui autem impedit. Et amet voluptatem veniam id suscipit aperiam quis in.</p><p>Et facilis dolor quis dolores eos doloribus. Praesentium hic sequi voluptatum molestias molestiae et est. Dolorem cumque totam quia sed reprehenderit impedit. Provident minus quia quis dignissimos sit voluptas.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(13, 1, 3, 'Sunt commodi animi id rem ipsa tenetur reprehenderit dolore aut magnam praesentium.', 'at-autem-a-consequuntur-ab-id-aut-animi', NULL, 'Aliquid aliquam sit qui iure quod et quo. Necessitatibus impedit aut nobis iusto. Exercitationem molestias quia perferendis consequuntur consequatur aut.', '<p>Dignissimos placeat ab numquam eos. Iure architecto aut voluptatem maiores sint doloremque incidunt. Aut odio beatae porro in placeat. Necessitatibus veniam velit animi et tempora laborum.</p><p>Natus tenetur fugiat maiores. Tenetur fugiat eaque animi ullam ea consectetur. Sit eligendi saepe deserunt fugiat ea quibusdam architecto.</p><p>Omnis distinctio minima nam tempore veniam. Aut iste et ipsum dolor sapiente voluptatum quo.</p><p>Sint veritatis est et ducimus voluptatem est fugiat. Quam perspiciatis impedit ipsam fugiat quia sed voluptates. Et laudantium vel animi omnis ea et iste voluptatibus.</p><p>Voluptatem quis architecto porro voluptas itaque corrupti vero. Voluptatum consequatur et a veniam qui eum dolorem. Non tempora et tempore odio nihil quaerat.</p><p>Quibusdam sit qui adipisci necessitatibus architecto doloribus. Rerum aut quam omnis dolores est consequuntur cumque. Sint reprehenderit ut reprehenderit facilis necessitatibus et.</p><p>Est nihil quibusdam labore ipsam minus. Nihil similique dolorem aut sunt quo quibusdam qui. Autem earum eos ex vitae. Nostrum non aut voluptas aperiam rerum quo.</p><p>Nostrum vel sit et eligendi quia. Eveniet enim et facilis itaque facere repellat eaque. Veniam possimus quisquam assumenda nemo.</p><p>Error quis eos qui assumenda molestiae. Fugiat molestiae earum exercitationem nisi ratione exercitationem. Quis beatae vel est rerum.</p><p>Aliquid quidem nihil et voluptas culpa. Et et aut iste rerum. Et eveniet non iste expedita voluptatem dolores.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(14, 2, 2, 'Aut labore quia commodi reiciendis.', 'neque-voluptate-harum-eveniet-optio-tempore', NULL, 'Reprehenderit ullam voluptatem aperiam est qui. Fuga numquam qui temporibus cum sunt fugit velit eaque. Non beatae quibusdam animi accusamus culpa.', '<p>Optio est nesciunt dolor id ipsum. Provident vero quae placeat enim a nam. Dolor et aliquid magnam at et illo. Molestiae laborum ut eum voluptatem. Quia occaecati placeat magni fugiat tempore libero.</p><p>Consectetur ut est sit dolores voluptas velit consequatur. Maxime eveniet vel eligendi quia et eveniet commodi.</p><p>Odit molestias veniam et et error consequatur quod. Aliquid dolore aut porro ratione quasi. Rerum et reprehenderit perferendis eaque odit optio. Quia enim suscipit consectetur hic eos blanditiis.</p><p>Perspiciatis consequuntur est et modi. Vero cumque necessitatibus atque porro et nisi. Quod laudantium aut sapiente est fugiat natus aut. Est eligendi est cupiditate sed.</p><p>Modi eum adipisci et in quis doloribus. Eos in a ab voluptatem. Harum culpa nihil aut. Ex architecto a quia ab.</p><p>Rerum in sunt velit sit natus placeat omnis. Blanditiis molestiae rerum ut quod. Inventore corrupti voluptatem magni voluptas voluptas eos dolores. Quasi aut veniam omnis id at delectus assumenda.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(15, 2, 1, 'Voluptatem earum unde accusamus fugit nulla consequatur ut aliquam totam.', 'delectus-ipsam-in-explicabo', NULL, 'Architecto hic voluptatem error repellendus nam dolore eaque. Qui illum atque dolorem sit ipsum. Tempora distinctio qui eum magni corrupti.', '<p>Repellat sit fugit veritatis molestias et. Nam aut consequatur adipisci. Nobis animi perspiciatis quis nulla tempore quos voluptatum. Rem sunt id rerum dolor at maiores consequatur nesciunt.</p><p>Quo aperiam neque dolorum enim ut. Modi et eaque et libero voluptatem quos vel. Sed qui quis sit aliquid.</p><p>Sit vel et perspiciatis quod. Et optio quis dolore sed. Amet ad alias non animi tempore. Sunt qui qui et facilis voluptatum.</p><p>Nihil itaque quo neque corrupti sed veritatis labore. Temporibus molestiae consequatur et unde et culpa. Porro suscipit rem error sit nulla et quisquam iure. Dolores molestias placeat et culpa rerum autem voluptates.</p><p>Magnam exercitationem in voluptates dolor quas et qui. Vel voluptatum aut non modi. Distinctio atque eaque in consectetur aut. Illum voluptas error dolores fugit.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(16, 2, 3, 'Est debitis iste illum autem sit consequatur error.', 'et-nisi-eligendi-earum-velit', NULL, 'Beatae quo et autem quis incidunt qui. Quia vel ut voluptatum eveniet voluptate vitae. Eum commodi accusantium sint. Rerum voluptates ex eveniet aut commodi accusamus omnis.', '<p>Culpa quis beatae at. Voluptas architecto perspiciatis dignissimos quia. Est distinctio qui repellendus molestiae possimus mollitia.</p><p>Sunt sunt rerum laborum facilis est aut et. Enim aliquam et ut nihil ipsa sit. Maxime iusto fuga voluptatum dignissimos voluptas. Sit commodi rem iure quis.</p><p>Sapiente blanditiis cumque consequatur maiores aspernatur minima asperiores. Non hic consequuntur sequi. Aspernatur corrupti non quisquam dolores rerum est. Voluptatum dolores tempora omnis amet sint vel sit ad.</p><p>Velit et quam corporis ut explicabo. Et odit dolore perferendis quaerat.</p><p>Nobis nobis in architecto voluptas vel dignissimos et voluptate. Provident sed esse suscipit rerum fugiat in. Optio et nam doloribus corrupti aut ut iure.</p><p>Et ut perferendis non et. Quis non voluptatem commodi rerum incidunt minima ab vero. Harum odit non necessitatibus quia. Inventore fuga amet similique ut rerum.</p><p>Cumque accusamus fugit eos laudantium dolorem voluptatem consequuntur voluptates. Ex cupiditate optio officiis dignissimos corrupti iste. Hic sit pariatur impedit eos nobis aut. Tempore inventore distinctio architecto ipsam error consectetur at.</p><p>Aliquid totam earum quasi architecto est debitis. Tenetur et recusandae expedita consequatur. Eius aut eum facilis sunt deserunt autem.</p><p>Aut optio atque in veritatis doloremque odit. Inventore et id recusandae beatae repellat culpa. Autem soluta id provident nihil veniam aspernatur.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(17, 3, 1, 'Aut molestiae ducimus vitae voluptatem veniam.', 'nostrum-dignissimos-illum-voluptatem-laboriosam', NULL, 'Id nihil molestias omnis magni culpa. Porro aspernatur nihil quas doloribus ea dolores exercitationem rerum. Neque eos vitae placeat nemo quidem fuga.', '<p>Qui incidunt rerum optio enim repellat. Est enim vel recusandae at. Voluptatem reprehenderit enim modi. Quos ea voluptatem ut.</p><p>Recusandae non quos sit placeat molestiae. Aliquam aliquid nulla alias. Iste labore hic facilis ea inventore fugiat.</p><p>Quae temporibus totam vitae quia hic incidunt illum sed. Vero assumenda tempora aperiam qui deleniti. Quos dolorem unde voluptatibus ad. Maxime repudiandae ducimus assumenda qui et est.</p><p>Inventore dolores soluta eius eum quia nisi veritatis. Aut aut et ullam eos officiis eius. Et enim nisi qui dicta sapiente cum sed.</p><p>Quia illo non ipsum et consequatur repudiandae. Delectus quam sapiente possimus at. Aliquam odit aliquam magni deleniti qui.</p><p>Aliquid eos voluptate ducimus quo voluptate repudiandae. Reprehenderit molestiae assumenda quasi quaerat ab. Omnis ut velit ut quasi atque aperiam. Qui aut saepe molestias quia enim nam.</p><p>Labore laboriosam est unde voluptatem possimus. Dolorum cupiditate sint fuga sit voluptas omnis non. Consectetur in eveniet ea ullam quidem. Sed est omnis dolores reiciendis alias dolorem voluptatem.</p><p>Ipsa consequatur quo ex sequi voluptas optio doloremque. Nostrum qui consequatur rerum dicta voluptatem quibusdam numquam. Fugiat enim voluptatibus et porro aspernatur rerum. Omnis eos vitae doloribus quidem quisquam ut atque.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(18, 2, 2, 'Nam commodi quam accusamus expedita.', 'aut-fuga-molestiae-quisquam-quis', NULL, 'Illum aspernatur consectetur beatae ea. Nobis architecto aperiam totam. Atque qui sunt ut.', '<p>Odit et aut voluptatem velit in sequi. Ad ex consectetur qui iure et doloribus. Error quod sint nisi neque dolor repudiandae voluptatem. Distinctio hic vero consequatur quisquam aperiam quaerat consequatur.</p><p>Sit doloremque sit eos error unde. Esse vel repellat quis quaerat ut cumque quis. Quam tempora qui est ea est. Asperiores ex sit voluptate a.</p><p>Dolorum sed aperiam doloremque. Veritatis soluta enim et aut ab ut animi eos. Rerum sit qui fugiat labore illo. Accusamus sed sunt a reprehenderit ducimus laborum aut.</p><p>Qui delectus autem eos sit. Debitis minus impedit et optio. Doloremque provident provident doloremque repellendus molestiae nisi cum. Non voluptatibus a maiores nesciunt qui. Qui esse amet hic id eveniet aliquam.</p><p>Et incidunt sunt et placeat tempora quia et dolorem. Consequatur officia aperiam temporibus fugit maiores. Itaque maxime aut est cum et quam. Reprehenderit porro rem et molestiae explicabo quis est.</p><p>Qui alias nulla ipsam necessitatibus est esse eum et. Quia repellat similique doloremque eos explicabo quisquam perspiciatis perspiciatis. Recusandae repellat ducimus sint enim perspiciatis repudiandae reprehenderit. Voluptatem tempore nostrum corporis quod deleniti ratione asperiores exercitationem.</p><p>Consequuntur voluptatem fuga quae tenetur iusto. Et quidem tenetur autem soluta vel. Cum occaecati eos aperiam quae. Velit in aspernatur qui ex suscipit reprehenderit dolores.</p><p>Itaque magni quam quae ea dolor officia. Delectus optio dolorum rerum velit amet in. Exercitationem quo in dolorum ea animi. Voluptas eligendi iste placeat. Similique quia sed magnam et atque repellendus ipsum.</p><p>Quia odio officiis modi. Corrupti a modi quia voluptates distinctio rerum. Voluptatem ut blanditiis consequatur quis velit delectus qui. Hic commodi nostrum maiores sint et eum.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(19, 1, 2, 'Praesentium ullam nostrum repellendus natus.', 'quae-temporibus-blanditiis-nostrum-enim', NULL, 'Omnis et adipisci ut accusamus animi cum. Architecto accusamus odio aut cumque. Facere excepturi rem animi quia.', '<p>Veniam accusantium iure ea vel. Molestiae eos nam eveniet.</p><p>Rerum provident et aspernatur rem et. Nulla in omnis explicabo aut voluptatibus non sapiente. Sed sapiente tempore est sit fugiat qui nulla.</p><p>Perspiciatis quas quidem doloribus nisi eos qui. Expedita suscipit eius eius minima nihil ipsa. Assumenda ex enim recusandae eum.</p><p>Ex necessitatibus alias quisquam deleniti ea. Occaecati nihil molestiae ut praesentium vero exercitationem assumenda. Quia aut quod dolor expedita nihil.</p><p>Ipsum voluptate eum incidunt placeat laudantium sapiente quo. Repudiandae quo nisi pariatur quod eligendi sit quia eum.</p><p>Soluta occaecati explicabo exercitationem sint est odit. Accusamus aut quae ipsa qui. Eos sunt dolore maiores commodi ut dicta in delectus.</p><p>Distinctio est maiores minima error. Nesciunt eos perferendis magnam laudantium et. Illo minima laboriosam voluptatem nesciunt aut vel.</p><p>Fuga adipisci atque qui totam eos iste consequatur. Autem recusandae sint expedita nemo incidunt asperiores. Ut aut adipisci unde perferendis. Quam minus ut aut.</p><p>Libero quasi quod corporis quia aut est. Et voluptatibus et vel. Sunt voluptatem dolor eos enim. Quia aut vero cum ad nam est.</p><p>Nesciunt non omnis accusantium quidem. Explicabo odit temporibus iure consequatur ut dolorem sunt. Quis laboriosam qui minus tempore commodi non. Fugiat doloribus soluta sit.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(20, 1, 1, 'Optio consequatur cum.', 'ducimus-omnis-neque-reiciendis-quos-eum-architecto-sed', NULL, 'Doloremque aut et quo sapiente itaque numquam perspiciatis. Recusandae voluptas earum placeat voluptatem sint quo ut. Sed dolor quam dolorum recusandae nihil corporis.', '<p>Et id explicabo repudiandae velit. Possimus occaecati nesciunt est reiciendis adipisci aut consequuntur. Rem dolores voluptatem voluptas facilis repellendus. Doloremque tenetur delectus quia libero corrupti mollitia.</p><p>Consequatur magni ut molestiae optio molestias molestiae nihil. Veritatis in id nihil qui excepturi. Doloribus et illum animi consequatur laudantium rerum. Laborum eius maxime odit sed qui nemo ea rerum. Possimus eveniet nisi totam minus est aut.</p><p>Magnam id provident eum et est occaecati sint. Aut commodi cumque ratione commodi. Atque fugiat architecto atque ratione eum quam quia. Quisquam omnis quis libero voluptatibus non.</p><p>Eos ut qui inventore aut. Aliquam in ex harum quas quod commodi officia. Sit culpa cumque quia dolores et illum et.</p><p>Eligendi vero perferendis eum necessitatibus possimus distinctio tenetur voluptatem. Vitae provident non dolores qui molestiae at molestiae. Magnam ullam totam cumque incidunt corporis. Distinctio minus est et. Accusamus voluptatem veniam atque aut quidem quia optio.</p><p>Aut quod pariatur fuga animi at similique at consequuntur. Voluptate labore reprehenderit vero quaerat. Totam quod sit odio nobis accusamus et blanditiis. Nesciunt sed vero explicabo est porro esse voluptatum sunt.</p><p>In ex voluptas sit rerum possimus. Voluptate qui molestias molestiae iusto deserunt aliquid. Laborum hic voluptate numquam quidem pariatur voluptatem omnis. Quae voluptas ex qui eum non. Rerum quae illo et illo autem tempora.</p>', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42'),
(22, 3, 4, 'JUDUL', 'judul', 'post-images/uVUxJnZdTEl7q33v11IyTKq5eV96shJcQhtSeofC.jpg', 'body123asasaassasasasasasasaasassaassasasasasa&lt;iframe src=\"https://www.google.com/maps/embed?pb=!...', '<div><strong><em><del>body</del></em></strong></div><ul><li>1</li><li>2</li><li>3</li></ul><div>asasaassasasasasasasa</div><div>asassaassasasasasa</div><div>&lt;iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15840.854720314808!2d110.4108019!3d-6.9840907!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e708b4f19af0393%3A0x11304de4230ded0d!2sLawang%20Sewu!5e0!3m2!1sen!2sid!4v1698571931793!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"&gt;&lt;/iframe&gt;</div>', NULL, '2023-10-29 02:32:56', '2023-10-29 02:33:53'),
(23, 2, 5, 'baru', 'coba-baru', 'post-images/43iRseSMAk133Cr7yvkB4XMFQfIqCoinqo1lzvCt.jpg', 'hello &lt;iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15840.854720314808!2d110....', '<div>hello &lt;iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15840.854720314808!2d110.4108019!3d-6.9840907!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e708b4f19af0393%3A0x11304de4230ded0d!2sLawang%20Sewu!5e0!3m2!1sen!2sid!4v1716285565625!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"&gt;&lt;/iframe&gt;</div>', NULL, '2024-05-21 02:59:58', '2024-05-21 03:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Seto Aryotomo', 'setoaryotomo', 'seto@gmail.com', NULL, '$2y$10$rKKEzIoeD7D7kGr8g/Wheexjq.t7QOCCZ85HoasITTHN4wPwrGhbu', NULL, '2023-10-24 03:48:42', '2023-10-24 03:48:42', 1),
(2, 'Viktor Wacana', 'rahayu86', 'nrima.adriansyah@example.net', '2023-10-24 03:48:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B49LKUy6kp', '2023-10-24 03:48:42', '2023-10-24 03:48:42', 0),
(3, 'Ibrahim Wijaya', 'ajiman81', 'hari.suryono@example.com', '2023-10-24 03:48:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wz2bZE7FET', '2023-10-24 03:48:42', '2023-10-24 03:48:42', 0),
(4, 'Heryanto Siregar', 'jaya.hutapea', 'ariyanti@example.org', '2023-10-24 03:48:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EcXWJg1ctgtOVUev5kQS5yt1FtXTUiQ0mX1RqcpkWRGBMaI7WoF7GwIFDYIC', '2023-10-24 03:48:42', '2023-10-24 03:48:42', 0),
(5, 'Seto', 'seto', 'seto4137@gmail.com', NULL, '$2y$10$ZOKLmqShKUn9EG5eHj6woeXgOZZqwfTopNtxCS02/lVJ9/G8sANXu', NULL, '2024-05-21 02:58:18', '2024-05-21 02:58:18', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
