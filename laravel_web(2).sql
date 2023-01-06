-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: serverdbubunt
-- Tempo de geração: 06-Jan-2023 às 17:35
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `laravel_web`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `about_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `short_title`, `short_description`, `long_description`, `about_image`, `created_at`, `updated_at`) VALUES
(1, 'I have transform your ideas into remarkable digital products teste', '20+ Years Experience In this game, Means Product Designing teste', 'I love to work in User Experience & User Interface designing. Because I love to solve the design problem and find easy and better solutions to solve it. I always try my best to make good user interface with the best user experience. I have been working as a UX Designer teste', '<p class=\"desc\">&nbsp;teste There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated lorem ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<ul class=\"about__exp__list\">\r\n<li>\r\n<h5 class=\"title\">User experience design - (Product Design)</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to unseery.</p>\r\n</li>\r\n<li>\r\n<h5 class=\"title\">Web and user interface design - Development</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of lorem ipsum.</p>\r\n</li>\r\n<li>\r\n<h5 class=\"title\">Interaction design - Animation</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable.</p>\r\n</li>\r\n</ul>', 'upload/home_about/1751841707108106.png', '2022-12-10 15:05:10', '2022-12-14 16:56:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `blog_title`, `blog_image`, `blog_tags`, `blog_description`, `created_at`, `updated_at`) VALUES
(1, '8', 'Make communication Fast and Effectively.', 'upload/blog/1754006401984209.jpg', 'tags,react', '<p><span style=\"color: #68666c; font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable</span></p>', '2023-01-02 18:18:23', '2023-01-03 13:04:52'),
(3, '7', 'Facebook design is dedicated to what\'s new in design', 'upload/blog/1754006550096851.jpg', 'Facebook,site,php', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Definition Business strategy can be understood as the course of action or set of decisions which assist the entrepreneurs in achieving specific business objectives.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">It is nothing but a master plan that the management of a company implements to secure a competitive position in the market, carry on its operations, please customers and achieve the desired ends of the business.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">In business, it is the long-range sketch of the desired image, direction and destination of the organization. It is a scheme of corporate intent and action, which is carefully planned and flexibly designed with the purpose of</p>\r\n<ul class=\"services__details__list\" style=\"box-sizing: border-box; padding: 0px; margin: 30px 0px 28px; color: #68666c; font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500;\">Achieving effectiveness,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Perceiving and utilizing opportunities,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Mobilising resources,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Securing an advantageous position,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Meeting challenges and threats,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Directing efforts and behaviour and</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Gaining command over the situation.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">A business strategy is a set of competitive moves and actions that a business uses to attract customers, compete successfully, strengthening performance, and achieve organizational goals. It outlines how business should be carried out to reach the desired ends</p>\r\n<div class=\"services__details__img\" style=\"box-sizing: border-box; margin: 32px 0px 35px; color: #68666c; font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 25px; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x));\">&nbsp;</div>\r\n</div>', '2023-01-03 13:03:17', '2023-01-03 13:54:04'),
(4, '9', 'How to increase your productivity at work - 2021', 'upload/blog/1754006620206030.jpg', 'work', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Definition Business strategy can be understood as the course of action or set of decisions which assist the entrepreneurs in achieving specific business objectives.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">It is nothing but a master plan that the management of a company implements to secure a competitive position in the market, carry on its operations, please customers and achieve the desired ends of the business.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">In business, it is the long-range sketch of the desired image, direction and destination of the organization. It is a scheme of corporate intent and action, which is carefully planned and flexibly designed with the purpose of</p>\r\n<ul class=\"services__details__list\" style=\"box-sizing: border-box; padding: 0px; margin: 30px 0px 28px; color: #68666c; font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500;\">Achieving effectiveness,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Perceiving and utilizing opportunities,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Mobilising resources,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Securing an advantageous position,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Meeting challenges and threats,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Directing efforts and behaviour and</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Gaining command over the situation.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">A business strategy is a set of competitive moves and actions that a business uses to attract customers, compete successfully, strengthening performance, and achieve organizational goals. It outlines how business should be carried out to reach the desired ends</p>', '2023-01-03 13:04:24', NULL),
(5, '3', 'The PHP Framework for Web Artisans', 'upload/blog/1754006803232476.png', 'laravel,php', '<p class=\"mt-6 max-w-xl mx-auto text-center text-gray-700 text-md leading-relaxed md:mt-8 md:text-lg lg:mt-10\" style=\"border: 0px solid #e7e8f2; box-sizing: border-box; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(10,178,245,0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; max-width: 36rem !important; text-align: center !important; line-height: 1.75rem !important; --tw-text-opacity: 1 !important; color: rgb(86 84 84/var(--tw-text-opacity)) !important; font-size: 1.125rem !important; font-family: scandia-web, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; margin: 2.5rem !important auto !important 0px auto !important;\">Laravel is a web application framework with expressive, elegant syntax. We&rsquo;ve already laid the foundation &mdash; freeing you to create without sweating the small things.</p>', '2023-01-03 13:07:19', '2023-01-03 13:10:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_category`, `created_at`, `updated_at`) VALUES
(1, 'Social', '2022-12-27 17:38:11', '2022-12-27 17:38:11'),
(2, 'Facebook', '2022-12-27 17:40:13', '2022-12-27 17:40:13'),
(3, 'laravel', '2022-12-27 17:40:43', '2022-12-27 17:40:43'),
(6, 'VueJS', NULL, NULL),
(7, 'Story', NULL, NULL),
(8, 'Social', NULL, NULL),
(9, 'Work', NULL, NULL),
(12, NULL, NULL, NULL),
(13, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(3, 'Leandro dos Santos', 'lds.leosantos@gmail.com', 'Duvida sobre o envento', '31999999999', 'tstetest', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `footers`
--

CREATE TABLE `footers` (
  `id` bigint UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `footers`
--

INSERT INTO `footers` (`id`, `number`, `short_description`, `address`, `email`, `facebook`, `twitter`, `copyright`, `created_at`, `updated_at`) VALUES
(1, '+81383 766 284558', 'teset  There are many variations of passages of lorem ipsum available but the majority have suffered alteration in some form is also here. teste', 'testeLevel teste 13, 2 Elizabeth Steereyt setMelbourne, Victoria 3000', 'testenoreply@envato.com', 'www.facebookteste.com', 'www.twtttietester.com', 'Copyrightteste @ Theme_Pure All right Reserved', '2023-01-03 14:58:53', '2023-01-03 18:23:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_slides`
--

CREATE TABLE `home_slides` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_slide` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `home_slides`
--

INSERT INTO `home_slides` (`id`, `title`, `short_title`, `home_slide`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'I will give you Best Product in the shortest time teime', 'I\'m a Rasalina based product design & visual designer focused on crafting clean & user‑friendly experiences test', 'upload/home_slide/1751662893664965.png', 'https://www.youtube.com/watch?v=XHOmBV4js_E', NULL, '2022-12-08 19:15:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_04_210718_create_home_slides_table', 2),
(6, '2022_12_10_144239_create_abouts_table', 3),
(7, '2022_12_16_140534_create_multi_images_table', 4),
(8, '2022_12_19_153921_create_portfolios_table', 5),
(9, '2022_12_27_135627_create_blog_categories_table', 6),
(10, '2022_12_27_154751_create_blogs_table', 7),
(11, '2023_01_03_175224_create_footers_table', 8),
(12, '2023_01_05_113850_create_contacts_table', 9),
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2022_12_04_210718_create_home_slides_table', 1),
(18, '2022_12_10_144239_create_abouts_table', 1),
(19, '2022_12_16_140534_create_multi_images_table', 1),
(20, '2022_12_19_153921_create_portfolios_table', 1),
(21, '2022_12_27_135627_create_blog_categories_table', 1),
(22, '2022_12_27_154751_create_blogs_table', 1),
(23, '2023_01_03_175224_create_footers_table', 1),
(24, '2023_01_05_113850_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint UNSIGNED NOT NULL,
  `multi_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `multi_images`
--

INSERT INTO `multi_images` (`id`, `multi_image`, `created_at`, `updated_at`) VALUES
(4, 'upload/multi/1752652856176312.png', '2022-12-17 22:03:42', '2022-12-19 17:26:54'),
(5, 'upload/multi/1752489077518169.jpg', '2022-12-17 22:03:44', NULL),
(6, 'upload/multi/1752489080404768.jpg', '2022-12-17 22:03:47', NULL),
(7, 'upload/multi/1752489082137516.jpg', '2022-12-17 22:03:48', NULL),
(8, 'upload/multi/1752489083836073.jpg', '2022-12-17 22:03:49', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('lds.leosantos@gmail.com', '$2y$10$59oVSIjgE6uE5YPfH5/gAO4N/6dO0whES0ZNsu/rPLKmYTghyA1ty', '2022-11-26 21:28:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint UNSIGNED NOT NULL,
  `portfolio_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `portfolios`
--

INSERT INTO `portfolios` (`id`, `portfolio_name`, `portfolio_title`, `portfolio_image`, `portfolio_description`, `created_at`, `updated_at`) VALUES
(1, 'Achieving tes', 'Achieving effectiveness,test', 'upload/portfolio/1752745321431012.jpg', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">testeDefinition: Business strategy can be understood as the course of action or set of decisions which assist the entrepreneurs in achieving specific business objectives.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">It is nothing but a master plan that the management of a company implements to secure a competitive position in the market, carry on its operations, please customers and achieve the desired ends of the business.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">In business, it is the long-range sketch of the desired image, direction and destination of the organization. It is a scheme of corporate intent and action, which is carefully planned and flexibly designed with the purpose of</p>\r\n<ul class=\"services__details__list\" style=\"box-sizing: border-box; padding: 0px; margin: 30px 0px 28px; color: #68666c; font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500;\">Achieving effectiveness,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Perceiving and utilizing opportunities,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Mobilising resources,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Securing an advantageous position,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Meeting challenges and threats,</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Directing efforts and behaviour and</li>\r\n<li style=\"box-sizing: border-box; list-style: none; position: relative; padding-left: 30px; color: #191b1e; font-weight: 500; margin-top: 6px;\">Gaining command over the situation.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">A business strategy is a set of competitive moves and actions that a business uses to attract customers, compete successfully, strengthening performance, and achieve organizational goals. It outlines how business should be carried out to reach the desired ends</p>', '2022-12-20 17:05:52', '2022-12-20 17:56:36'),
(2, 'Strategy', 'Nature of Business Strategy', 'upload/portfolio/1752742306600635.jpg', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 18px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">A business strategy is a combination of proactive actions on the part of management, for the purpose of enhancing the company&rsquo;s market position and overall performance and reactions to unexpected developments and new market.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; font-size: 16px; font-weight: 400; line-height: 1.75; color: #68666c; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">The maximum part of the company&rsquo;s present strategy is a result of formerly initiated actions and business approaches, but when market conditions take an unanticipated turn, the company requires a strategic reaction to cope with contingencies. Hence, for unforeseen development, a part of the business strategy is formulated as a reasoned response nature of business strategy.</p>', '2022-12-20 17:08:41', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `profile_image`, `email`, `email_verified_at`, `password`, `username`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Leandro dos Santos', '202211272318pexels-julie-aagaard-1374064.jpg', 'lds.leosantos@gmail.com', '2022-11-19 22:39:55', '$2y$10$.M8ZDNNZ1OzI92v/733C8uO4ZTz9KNWYqTDr7UhWPmJM6Jc/N6a42', 'leo-santos', '8ZAEXDqGSsXlM8cTfZZsTGc0dMr1tnFh7CBpdcqIYDrq64Nv8AhF2WvjaSBC', '2022-11-19 03:07:31', '2022-12-02 03:25:05'),
(3, 'Greice Anne', NULL, 'greiceanne@gmail.com', '2022-11-19 22:38:23', '$2y$10$DwmnRdy4LoPqsZ8/CoGyFO.HJms98FtLIFL8dN14wxOYl0iBfG4pS', 'greice-anne', NULL, '2022-11-19 22:36:28', '2022-11-19 22:38:23'),
(4, 'Demo Mostração', NULL, 'demomostracao@gmail.com', '2022-11-19 23:13:36', '$2y$10$OEMBwiCyTKbUhIoHCkujZeFgf4ZGZspOIcrabo6FKmXUtSpBsHwNO', 'demo-mostracao', NULL, '2022-11-19 23:13:27', '2022-11-19 23:13:36'),
(5, 'Leandro Grecei', NULL, 'leo_leosantos20@yahoo.com.br', '2022-11-23 03:33:30', '$2y$10$VMklwSQMMsS3GhSUObWQzuAP717EMhOkXcapSiflFsPFp.GUDcikO', 'leo-greice', NULL, '2022-11-23 03:32:28', '2022-11-23 03:33:30');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `home_slides`
--
ALTER TABLE `home_slides`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `home_slides`
--
ALTER TABLE `home_slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
