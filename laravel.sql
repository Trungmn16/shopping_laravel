-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 25, 2022 lúc 04:00 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jordan', 2, 'jordan', '2022-04-15 03:37:35', '2022-04-15 03:38:13', NULL),
(2, 'Nike', 0, 'nike', '2022-04-15 03:37:42', '2022-04-15 03:37:42', NULL),
(3, 'Adidas', 0, 'adidas', '2022-04-15 03:37:49', '2022-04-15 03:37:49', NULL),
(4, 'Puma', 0, 'puma', '2022-04-15 03:38:06', '2022-04-15 03:38:06', NULL),
(5, 'Vans', 0, 'vans', '2022-04-15 03:38:54', '2022-04-15 03:38:54', NULL),
(6, 'Balenciaga', 0, 'balenciaga', '2022-04-15 03:39:12', '2022-04-15 03:39:12', NULL),
(7, 'Super Star', 3, 'super-star', '2022-04-15 03:39:58', '2022-04-15 03:39:58', NULL),
(8, 'Stan Smith', 3, 'stan-smith', '2022-04-15 03:40:15', '2022-04-15 03:40:15', NULL),
(9, 'Air Force', 2, 'air-force', '2022-04-15 03:41:14', '2022-04-15 03:41:14', NULL),
(10, 'Old Skool', 5, 'old-skool', '2022-04-15 03:41:37', '2022-04-15 03:41:37', NULL),
(11, 'Slip On', 5, 'slip-on', '2022-04-15 03:41:55', '2022-04-15 03:41:55', NULL),
(12, 'Track Trainers', 6, 'track-trainers', '2022-04-15 03:42:11', '2022-04-15 03:42:11', NULL),
(13, 'Speed Trainer Cuffed', 6, 'speed-trainer-cuffed', '2022-04-15 03:42:26', '2022-04-15 03:42:26', NULL),
(14, 'Ember Trail', 4, 'ember-trail', '2022-04-15 03:42:48', '2022-04-15 03:42:48', NULL),
(15, 'Cell Alien OG', 4, 'cell-alien-og', '2022-04-15 03:43:03', '2022-04-15 03:43:03', NULL),
(16, 'Converse', 0, 'converse', '2022-04-16 21:22:07', '2022-04-16 21:22:07', NULL),
(17, 'Thuong dinh', 16, 'thuong-dinh', '2022-04-16 21:23:10', '2022-04-16 21:23:10', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `slug`, `deleted_at`) VALUES
(1, 'Giày thể thao', 0, '2022-03-16 06:00:55', '2022-04-15 03:43:16', 'giay-the-thao', '2022-04-15 03:43:16'),
(2, 'Jordan', 1, '2022-03-16 06:01:04', '2022-04-15 03:43:27', 'jordan', '2022-04-15 03:43:27'),
(3, 'Adidas', 1, '2022-03-16 06:01:36', '2022-04-15 03:43:30', 'adidas', '2022-04-15 03:43:30'),
(4, 'nike', 1, '2022-03-16 06:01:52', '2022-04-15 03:43:34', 'nike', '2022-04-15 03:43:34'),
(5, 'Nike', 0, '2022-04-15 03:43:52', '2022-04-15 03:43:52', 'nike', NULL),
(6, 'Adidas', 0, '2022-04-15 03:43:58', '2022-04-15 03:43:58', 'adidas', NULL),
(7, 'Vans', 0, '2022-04-15 03:44:19', '2022-04-15 03:44:19', 'vans', NULL),
(8, 'Puma', 0, '2022-04-15 03:44:33', '2022-04-15 03:44:33', 'puma', NULL),
(9, 'Balenciaga', 0, '2022-04-15 03:44:56', '2022-04-15 03:44:56', 'balenciaga', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_16_111940_create_categories_table', 1),
(5, '2021_06_18_164929_add_column_deleted_at_table_categories', 1),
(6, '2021_06_20_081130_create_menus_table', 1),
(7, '2021_06_20_094244_add_col_slug_to_menus_tables', 1),
(8, '2021_06_20_102745_add_col_soft_delete_to_menus_table', 1),
(9, '2021_06_24_084929_create_products_table', 1),
(10, '2021_06_24_085211_create_product_images_table', 1),
(11, '2021_06_24_085323_create_tags_table', 1),
(12, '2021_06_24_085403_create_product_tags_table', 1),
(13, '2021_07_07_100020_add_column_feature_image_name', 1),
(14, '2021_07_08_091310_add_column_image_name_to_table_product_image', 1),
(15, '2021_07_09_160705_add_column_name_alter_tags_table', 1),
(16, '2021_07_16_163813_add_column_deleted_at_product_table', 1),
(17, '2021_07_21_084511_create_sliders_table', 1),
(18, '2021_07_22_141315_add_col_deleted_at', 1),
(19, '2021_07_22_142918_create_settings_table', 1),
(20, '2021_07_22_155728_add_col_type_to_settings_table', 1),
(21, '2021_07_23_120923_create_roles_table', 1),
(22, '2021_07_23_120943_create_permissions_table', 1),
(23, '2021_07_23_121132_create_table_user_role', 1),
(24, '2021_07_23_121200_create_table_permission_role', 1),
(25, '2021_07_23_150952_add_col_deleted_at_table_users', 1),
(26, '2021_07_23_152050_add_col_deleted_at_table_role_user', 1),
(27, '2021_07_24_160459_add_col_parent_id_permission', 1),
(28, '2021_07_24_173710_add_col_keycode_permission', 1),
(29, '2021_07_29_121246_add_col_view_product', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `parent_id`, `key_code`) VALUES
(1, 'Danh mục sản phẩm', 'Danh mục sản phẩm', NULL, NULL, 0, ''),
(2, 'Danh sách danh mục ', 'Danh sách danh mục ', NULL, NULL, 1, 'list_category'),
(3, 'Thêm danh mục sản phẩm', 'Thêm danh mục sản phẩm', NULL, NULL, 1, 'add_category'),
(4, 'Sửa danh mục sản phẩm', 'Sửa danh mục sản phẩm', NULL, NULL, 1, 'edit_category'),
(5, 'Xoá danh mục sản phẩm', 'Xoá danh mục sản phẩm', NULL, NULL, 1, 'delete_category'),
(6, 'Menu', 'Menu', NULL, NULL, 0, ''),
(7, 'Danh sách menu', 'Danh sách menu', NULL, NULL, 6, 'list_menu'),
(8, 'Thêm menu', 'Thêm menu', NULL, NULL, 6, 'add_menu'),
(9, 'Sửa menu', 'Sửa menu', NULL, NULL, 6, 'edit_menu'),
(10, 'Xoá menu', 'Xoá menu', NULL, NULL, 6, 'delete_menu'),
(11, 'Silder', 'Silder', NULL, NULL, 0, ''),
(12, 'Danh sách Silder', 'Danh sách Silder', NULL, NULL, 11, 'list_silder'),
(13, 'Thêm Silder', 'Thêm Silder', NULL, NULL, 11, 'add_silder'),
(14, 'Sửa Silder', 'Sửa Silder', NULL, NULL, 11, 'edit_silder'),
(15, 'Xoá Silder', 'Xoá Silder', NULL, NULL, 11, 'delete_silder'),
(16, 'Sản phẩm', 'Sản phẩm', NULL, NULL, 0, ''),
(17, 'Danh sách sản phẩm', 'Danh sách sản phẩm', NULL, NULL, 16, 'list_product'),
(18, 'Thêm sản phẩm', 'Thêm sản phẩm', NULL, NULL, 16, 'add_product'),
(19, 'Sửa sản phẩm', 'Sửa sản phẩm', NULL, NULL, 16, 'edit_product'),
(20, 'Xoá sản phẩm', 'Xoá sản phẩm', NULL, NULL, 16, 'delete_product'),
(21, 'Settings', 'Settings', NULL, NULL, 0, ''),
(22, 'Danh sách Settings', 'Danh sách Settings', NULL, NULL, 21, 'list_setting'),
(23, 'Thêm Settings', 'Thêm Settings', NULL, NULL, 21, 'add_setting'),
(24, 'Sửa Settings', 'Sửa Settings', NULL, NULL, 21, 'edit_setting'),
(25, 'Xoá Settings', 'Xoá Settings', NULL, NULL, 21, 'delete_setting'),
(26, 'Quản lý người dùng', '', NULL, NULL, 0, ''),
(27, 'Danh sách người dùng', 'Danh sách người dùng', NULL, NULL, 26, ''),
(28, 'Thêm người dùng', 'Thêm người dùng', NULL, NULL, 26, ''),
(29, 'Sửa người dùng', 'Sửa người dùng', NULL, NULL, 26, ''),
(30, 'Xoá người dùng', 'Xoá người dùng', NULL, NULL, 26, ''),
(31, 'Quản lý vai trò', 'Quản lý vai trò', NULL, NULL, 0, ''),
(32, 'Danh sách vai trò', 'Danh sách vai trò', NULL, NULL, 31, ''),
(33, 'Thêm vai trò', 'Thêm vai trò', NULL, NULL, 31, ''),
(34, 'Sửa vai trò', 'Sửa vai trò', NULL, NULL, 31, ''),
(35, 'Xoá vai trò', 'Xoá vai trò', NULL, NULL, 31, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 1, 4, NULL, NULL),
(4, 1, 5, NULL, NULL),
(5, 1, 7, NULL, NULL),
(6, 1, 8, NULL, NULL),
(7, 1, 9, NULL, NULL),
(8, 1, 10, NULL, NULL),
(9, 1, 12, NULL, NULL),
(10, 1, 13, NULL, NULL),
(11, 1, 14, NULL, NULL),
(12, 1, 15, NULL, NULL),
(13, 1, 17, NULL, NULL),
(14, 1, 18, NULL, NULL),
(15, 1, 19, NULL, NULL),
(16, 1, 20, NULL, NULL),
(17, 1, 22, NULL, NULL),
(18, 1, 23, NULL, NULL),
(19, 1, 24, NULL, NULL),
(20, 1, 25, NULL, NULL),
(21, 1, 27, NULL, NULL),
(22, 1, 28, NULL, NULL),
(23, 1, 29, NULL, NULL),
(24, 1, 30, NULL, NULL),
(25, 1, 32, NULL, NULL),
(26, 1, 33, NULL, NULL),
(27, 1, 34, NULL, NULL),
(28, 1, 35, NULL, NULL),
(29, 2, 2, NULL, NULL),
(30, 2, 7, NULL, NULL),
(31, 2, 12, NULL, NULL),
(32, 2, 17, NULL, NULL),
(33, 2, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `view_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`, `deleted_at`, `view_count`) VALUES
(1, 'Nike Air Force 1', '39525451', '/storage\r\n\r\n', 'giày thể thao hàn quốc', 1, 2, NULL, NULL, 'AirForce1', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Quản trị hệ thống', NULL, NULL),
(2, 'guest', 'Khách hàng', NULL, NULL),
(3, 'developer', 'Phát triển hệ thống', NULL, NULL),
(4, 'content', 'Chỉnh sửa nội dung', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 1, NULL, NULL, NULL),
(6, 1, 1, '2022-04-15 04:40:50', '2022-04-15 04:40:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`, `type`) VALUES
(1, 'facebook', 'https://www.facebook.com/profile.php?id=100011150795738', '2022-04-13 00:40:38', '2022-04-13 00:40:38', 'Text');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `image_name`, `image_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jordan Air11', 'giày thể thao hàn quốc', 'Air Force 1.png', '/storage/app/public/slider/v6z569kcfCvm.png', '2022-03-16 06:03:08', '2022-04-15 04:36:36', NULL),
(2, 'Jordan', 'hihi', 'Air Force 1.png', '/storage/slider//v6z569kcfCvm.png', '2022-04-15 04:37:08', '2022-04-15 04:42:54', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Trung', 'maitrungmnt01@gmail.com', NULL, '$2y$10$RJy4eigpQq78IK8nTvdKqe7kYhJMmgmmdTUjJNuqy5XX17wHq4Zum', 'XnZaLIitZsEKxdOw86jNPPDYePzzt60ejdYdDuOFK01ML2c5HIGWLIByGknw', '2022-03-15 11:03:54', '2022-04-15 05:15:58', NULL),
(2, 'phuong', 'phuonghap123@gmail.com', NULL, '$2y$10$6t4/ZVaoLBkM8ewdYnWQ0ud8Z1NuUetCwfEZ/y2ww389Z/s/c.2Sa', NULL, NULL, '2022-04-15 05:43:30', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
