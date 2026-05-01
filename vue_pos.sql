-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2025 at 06:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(20,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Beauty', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(2, 'Fragrances', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(3, 'Furniture', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(4, 'Groceries', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(5, 'Home Decoration', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(6, 'Kitchen Accessories', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(7, 'Laptops', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(8, 'Mens Shirts', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(9, 'Mens Shoes', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(10, 'Mens Watches', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(11, 'Mobile Accessories', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(12, 'Motorcycle', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(13, 'Skin Care', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(14, 'Smartphones', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(15, 'Sports Accessories', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(16, 'Sunglasses', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(17, 'Tablets', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(18, 'Tops', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(19, 'Vehicle', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(20, 'Womens Bags', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(21, 'Womens Dresses', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(22, 'Womens Jewellery', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(23, 'Womens Shoes', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(24, 'Womens Watches', '2025-10-25 12:29:13', '2025-10-25 12:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `salary` decimal(20,8) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `joining_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(20,8) NOT NULL,
  `expense_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_00_000000_create_settings_table', 1),
(2, '2014_10_00_000001_add_group_column_on_settings_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2024_06_26_020636_create_categories_table', 1),
(8, '2024_07_12_094131_create_suppliers_table', 1),
(9, '2024_07_17_094527_create_unit_types_table', 1),
(10, '2024_07_18_094528_create_products_table', 1),
(11, '2024_07_21_014022_create_expenses_table', 1),
(12, '2024_07_21_075714_create_employees_table', 1),
(13, '2024_07_21_112837_create_customers_table', 1),
(14, '2024_07_22_103204_create_salaries_table', 1),
(15, '2024_09_05_013146_create_carts_table', 1),
(16, '2024_09_13_101423_create_orders_table', 1),
(17, '2024_09_13_102312_create_order_items_table', 1),
(18, '2024_09_21_105318_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `sub_total` decimal(20,8) NOT NULL,
  `tax_total` decimal(20,8) DEFAULT NULL,
  `discount_total` decimal(20,8) DEFAULT NULL,
  `total` decimal(20,8) NOT NULL,
  `paid` decimal(20,8) NOT NULL,
  `due` decimal(20,8) NOT NULL,
  `profit` decimal(20,8) NOT NULL,
  `loss` decimal(20,8) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_json` longtext NOT NULL,
  `quantity` decimal(20,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `product_number` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `root` varchar(255) DEFAULT NULL,
  `buying_price` decimal(20,8) NOT NULL,
  `selling_price` decimal(20,8) NOT NULL,
  `buying_date` timestamp NULL DEFAULT NULL,
  `unit_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` decimal(20,8) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `supplier_id`, `name`, `product_number`, `description`, `product_code`, `root`, `buying_price`, `selling_price`, `buying_date`, `unit_type_id`, `quantity`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Powder Canister', 'P-IxkW2', 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.', '1VC', '0P2', 14.99000000, 108.99000000, '1973-01-13 18:00:00', 1, 89.00000000, '1.webp', 'active', '2025-10-25 12:29:14', '2025-10-25 12:29:14'),
(2, 1, 3, 'Red Lipstick', 'P-ltdfY', 'The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.', 'Atr', 'KbA', 12.99000000, 70.99000000, '1991-04-12 18:00:00', 7, 91.00000000, '1.webp', 'active', '2025-10-25 12:29:14', '2025-10-25 12:29:14'),
(3, 1, 2, 'Red Nail Polish', 'P-SC1R6', 'The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.', 'Web', '53f', 8.99000000, 93.99000000, '1990-09-16 18:00:00', 8, 79.00000000, '1.webp', 'active', '2025-10-25 12:29:14', '2025-10-25 12:29:14'),
(4, 2, 3, 'Dior J\'adore', 'P-ngxxO', 'J\'adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.', 'rmW', 'fPb', 89.99000000, 139.99000000, '2022-02-07 18:00:00', 8, 98.00000000, '1.webp', 'active', '2025-10-25 12:29:15', '2025-10-25 12:29:15'),
(5, 2, 1, 'Dolce Shine Eau de', 'P-mBt9F', 'Dolce Shine by Dolce & Gabbana is a vibrant and fruity fragrance, featuring notes of mango, jasmine, and blonde woods. It\'s a joyful and youthful scent.', 'vMl', 'ovt', 69.99000000, 135.99000000, '1981-07-25 18:00:00', 3, 4.00000000, '1.webp', 'active', '2025-10-25 12:29:15', '2025-10-25 12:29:15'),
(6, 2, 1, 'Gucci Bloom Eau de', 'P-oeGAV', 'Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It\'s a modern and romantic scent.', 'nJM', '6Jq', 79.99000000, 127.99000000, '1983-04-29 18:00:00', 9, 91.00000000, '1.webp', 'active', '2025-10-25 12:29:15', '2025-10-25 12:29:15'),
(7, 3, 3, 'Bedside Table African Cherry', 'P-XZx81', 'The Bedside Table in African Cherry is a stylish and functional addition to your bedroom, providing convenient storage space and a touch of elegance.', '9E8', 'YHC', 299.99000000, 329.99000000, '1995-03-04 18:00:00', 6, 64.00000000, '1.webp', 'active', '2025-10-25 12:29:16', '2025-10-25 12:29:16'),
(8, 3, 2, 'Knoll Saarinen Executive Conference Chair', 'P-7yAU0', 'The Knoll Saarinen Executive Conference Chair is a modern and ergonomic chair, perfect for your office or conference room with its timeless design.', 'lPa', 'g3M', 499.99000000, 509.99000000, '1992-12-06 18:00:00', 7, 26.00000000, '1.webp', 'active', '2025-10-25 12:29:16', '2025-10-25 12:29:16'),
(9, 3, 1, 'Wooden Bathroom Sink With Mirror', 'P-v67zE', 'The Wooden Bathroom Sink with Mirror is a unique and stylish addition to your bathroom, featuring a wooden sink countertop and a matching mirror.', 'iNH', '2Me', 799.99000000, 897.99000000, '1971-04-22 18:00:00', 4, 7.00000000, '1.webp', 'active', '2025-10-25 12:29:17', '2025-10-25 12:29:17'),
(10, 4, 2, 'Cat Food', 'P-469mR', 'Nutritious cat food formulated to meet the dietary needs of your feline friend.', '5VM', 'Ua5', 8.99000000, 94.99000000, '2007-11-26 18:00:00', 8, 46.00000000, '1.webp', 'active', '2025-10-25 12:29:18', '2025-10-25 12:29:18'),
(11, 4, 1, 'Chicken Meat', 'P-9Sq8E', 'Fresh and tender chicken meat, suitable for various culinary preparations.', 'kY4', '5RZ', 9.99000000, 60.99000000, '2025-08-30 18:00:00', 2, 97.00000000, '1.webp', 'active', '2025-10-25 12:29:18', '2025-10-25 12:29:18'),
(12, 4, 1, 'Cooking Oil', 'P-qbZow', 'Versatile cooking oil suitable for frying, sautéing, and various culinary applications.', 'ZOA', 'N15', 4.99000000, 68.99000000, '2010-01-31 18:00:00', 9, 10.00000000, '1.webp', 'active', '2025-10-25 12:29:19', '2025-10-25 12:29:19'),
(13, 4, 1, 'Cucumber', 'P-r3nGQ', 'Crisp and hydrating cucumbers, ideal for salads, snacks, or as a refreshing side.', 'PuT', 'ClJ', 1.49000000, 72.49000000, '1989-03-04 18:00:00', 6, 84.00000000, '1.webp', 'active', '2025-10-25 12:29:19', '2025-10-25 12:29:19'),
(14, 4, 1, 'Dog Food', 'P-36oH1', 'Specially formulated dog food designed to provide essential nutrients for your canine companion.', 'UDB', 'zxx', 10.99000000, 44.99000000, '1991-03-22 18:00:00', 8, 71.00000000, '1.webp', 'active', '2025-10-25 12:29:19', '2025-10-25 12:29:19'),
(15, 4, 3, 'Eggs', 'P-XAGtO', 'Fresh eggs, a versatile ingredient for baking, cooking, or breakfast.', 'cmI', 'GkF', 2.99000000, 82.99000000, '2014-11-22 18:00:00', 7, 9.00000000, '1.webp', 'active', '2025-10-25 12:29:19', '2025-10-25 12:29:19'),
(16, 4, 3, 'Fish Steak', 'P-KJG3I', 'Quality fish steak, suitable for grilling, baking, or pan-searing.', 'nTy', 'y54', 14.99000000, 103.99000000, '1997-12-03 18:00:00', 9, 74.00000000, '1.webp', 'active', '2025-10-25 12:29:20', '2025-10-25 12:29:20'),
(17, 4, 1, 'Green Bell Pepper', 'P-47XAK', 'Fresh and vibrant green bell pepper, perfect for adding color and flavor to your dishes.', 'DUH', 'QjB', 1.29000000, 50.29000000, '1986-07-12 18:00:00', 7, 33.00000000, '1.webp', 'active', '2025-10-25 12:29:20', '2025-10-25 12:29:20'),
(18, 4, 2, 'Green Chili Pepper', 'P-DUqxW', 'Spicy green chili pepper, ideal for adding heat to your favorite recipes.', '58c', 'Aet', 0.99000000, 34.99000000, '1987-04-13 18:00:00', 7, 3.00000000, '1.webp', 'active', '2025-10-25 12:29:20', '2025-10-25 12:29:20'),
(19, 4, 3, 'Honey Jar', 'P-rJWCd', 'Pure and natural honey in a convenient jar, perfect for sweetening beverages or drizzling over food.', 'QQE', '2PS', 6.99000000, 44.99000000, '2011-12-13 18:00:00', 3, 34.00000000, '1.webp', 'active', '2025-10-25 12:29:20', '2025-10-25 12:29:20'),
(20, 4, 1, 'Ice Cream', 'P-0AZ8J', 'Creamy and delicious ice cream, available in various flavors for a delightful treat.', '68o', 'IDU', 5.49000000, 84.49000000, '1991-07-13 18:00:00', 4, 27.00000000, '1.webp', 'active', '2025-10-25 12:29:21', '2025-10-25 12:29:21'),
(21, 4, 1, 'Juice', 'P-Tj6se', 'Refreshing fruit juice, packed with vitamins and great for staying hydrated.', 'eZA', 'Q9Z', 3.99000000, 26.99000000, '2023-04-03 18:00:00', 9, 50.00000000, '1.webp', 'active', '2025-10-25 12:29:21', '2025-10-25 12:29:21'),
(22, 4, 3, 'Kiwi', 'P-YF6kq', 'Nutrient-rich kiwi, perfect for snacking or adding a tropical twist to your dishes.', 'aTG', 'aPl', 2.49000000, 13.49000000, '2001-12-05 18:00:00', 5, 99.00000000, '1.webp', 'active', '2025-10-25 12:29:21', '2025-10-25 12:29:21'),
(23, 4, 3, 'Lemon', 'P-uTZNC', 'Zesty and tangy lemons, versatile for cooking, baking, or making refreshing beverages.', 'smD', 'AAc', 0.79000000, 85.79000000, '2025-09-03 18:00:00', 9, 31.00000000, '1.webp', 'active', '2025-10-25 12:29:23', '2025-10-25 12:29:23'),
(24, 4, 2, 'Milk', 'P-PWV8H', 'Fresh and nutritious milk, a staple for various recipes and daily consumption.', 'esH', 'd8O', 3.49000000, 18.49000000, '2019-01-25 18:00:00', 1, 27.00000000, '1.webp', 'active', '2025-10-25 12:29:25', '2025-10-25 12:29:25'),
(25, 4, 2, 'Mulberry', 'P-DMfiw', 'Sweet and juicy mulberries, perfect for snacking or adding to desserts and cereals.', 'P0J', 'v5D', 4.99000000, 88.99000000, '1988-03-05 18:00:00', 3, 99.00000000, '1.webp', 'active', '2025-10-25 12:29:25', '2025-10-25 12:29:25'),
(26, 4, 1, 'Nescafe Coffee', 'P-oYF8H', 'Quality coffee from Nescafe, available in various blends for a rich and satisfying cup.', 'qf4', 'qdD', 7.99000000, 106.99000000, '2008-05-30 18:00:00', 8, 57.00000000, '1.webp', 'active', '2025-10-25 12:29:27', '2025-10-25 12:29:27'),
(27, 4, 2, 'Potatoes', 'P-65CR1', 'Versatile and starchy potatoes, great for roasting, mashing, or as a side dish.', 'AgE', 'zv2', 2.29000000, 34.29000000, '2007-05-09 18:00:00', 9, 13.00000000, '1.webp', 'active', '2025-10-25 12:29:27', '2025-10-25 12:29:27'),
(28, 4, 3, 'Protein Powder', 'P-aQIiw', 'Nutrient-packed protein powder, ideal for supplementing your diet with essential proteins.', '2FF', 'OPn', 19.99000000, 115.99000000, '2016-06-07 18:00:00', 4, 80.00000000, '1.webp', 'active', '2025-10-25 12:29:28', '2025-10-25 12:29:28'),
(29, 4, 3, 'Red Onions', 'P-VrkKo', 'Flavorful and aromatic red onions, perfect for adding depth to your savory dishes.', 'zdq', '1BT', 1.99000000, 98.99000000, '1973-11-08 18:00:00', 4, 82.00000000, '1.webp', 'active', '2025-10-25 12:29:30', '2025-10-25 12:29:30'),
(30, 4, 3, 'Rice', 'P-TolYX', 'High-quality rice, a staple for various cuisines and a versatile base for many dishes.', 'EcT', 'k6p', 5.99000000, 42.99000000, '1981-12-08 18:00:00', 1, 59.00000000, '1.webp', 'active', '2025-10-25 12:29:30', '2025-10-25 12:29:30'),
(31, 4, 2, 'Soft Drinks', 'P-b35eo', 'Assorted soft drinks in various flavors, perfect for refreshing beverages.', 'lGK', '1m9', 1.99000000, 23.99000000, '1997-05-15 18:00:00', 7, 53.00000000, '1.webp', 'active', '2025-10-25 12:29:32', '2025-10-25 12:29:32'),
(32, 4, 3, 'Strawberry', 'P-o5dGp', 'Sweet and succulent strawberries, great for snacking, desserts, or blending into smoothies.', 'ZX8', 'Nkg', 3.99000000, 26.99000000, '1987-02-26 18:00:00', 5, 46.00000000, '1.webp', 'active', '2025-10-25 12:29:33', '2025-10-25 12:29:33'),
(33, 4, 2, 'Tissue Paper Box', 'P-16k2K', 'Convenient tissue paper box for everyday use, providing soft and absorbent tissues.', 'aGj', '5Yo', 2.49000000, 32.49000000, '2008-03-16 18:00:00', 4, 86.00000000, '1.webp', 'active', '2025-10-25 12:29:34', '2025-10-25 12:29:34'),
(34, 4, 2, 'Water', 'P-CLJ9e', 'Pure and refreshing bottled water, essential for staying hydrated throughout the day.', 'XlI', 'DAt', 0.99000000, 84.99000000, '1998-06-21 18:00:00', 3, 53.00000000, '1.webp', 'active', '2025-10-25 12:29:36', '2025-10-25 12:29:36'),
(35, 5, 2, 'House Showpiece Plant', 'P-NsCrW', 'The House Showpiece Plant is an artificial plant that brings a touch of nature to your home without the need for maintenance. It adds greenery and style to any space.', 'zam', 'vNs', 39.99000000, 99.99000000, '1987-02-02 18:00:00', 4, 28.00000000, '1.webp', 'active', '2025-10-25 12:29:38', '2025-10-25 12:29:38'),
(36, 5, 3, 'Plant Pot', 'P-vc4RV', 'The Plant Pot is a stylish container for your favorite plants. With a sleek design, it complements your indoor or outdoor garden, adding a modern touch to your plant display.', 'cOv', 'E4J', 14.99000000, 84.99000000, '2019-11-28 18:00:00', 8, 59.00000000, '1.webp', 'active', '2025-10-25 12:29:39', '2025-10-25 12:29:39'),
(37, 5, 1, 'Table Lamp', 'P-SYro9', 'The Table Lamp is a functional and decorative lighting solution for your living space. With a modern design, it provides both ambient and task lighting, enhancing the atmosphere.', 'xc2', 'kwB', 49.99000000, 64.99000000, '1996-12-23 18:00:00', 6, 9.00000000, '1.webp', 'active', '2025-10-25 12:29:40', '2025-10-25 12:29:40'),
(38, 6, 1, 'Black Whisk', 'P-L3kJl', 'The Black Whisk is a kitchen essential for whisking and beating ingredients. Its ergonomic handle and sleek design make it a practical and stylish tool.', '3S9', '2hn', 9.99000000, 69.99000000, '1970-01-25 18:00:00', 7, 73.00000000, '1.webp', 'active', '2025-10-25 12:29:42', '2025-10-25 12:29:42'),
(39, 6, 3, 'Boxed Blender', 'P-YVwTg', 'The Boxed Blender is a powerful and compact blender perfect for smoothies, shakes, and more. Its convenient design and multiple functions make it a versatile kitchen appliance.', 'mRI', '68m', 39.99000000, 113.99000000, '2017-12-05 18:00:00', 7, 9.00000000, '1.webp', 'active', '2025-10-25 12:29:43', '2025-10-25 12:29:43'),
(40, 6, 1, 'Carbon Steel Wok', 'P-yFMh6', 'The Carbon Steel Wok is a versatile cooking pan suitable for stir-frying, sautéing, and deep frying. Its sturdy construction ensures even heat distribution for delicious meals.', 'OuN', 'iXb', 29.99000000, 129.99000000, '2008-02-27 18:00:00', 9, 40.00000000, '1.webp', 'active', '2025-10-25 12:29:44', '2025-10-25 12:29:44'),
(41, 6, 2, 'Chopping Board', 'P-E9c7q', 'The Chopping Board is an essential kitchen accessory for food preparation. Made from durable material, it provides a safe and hygienic surface for cutting and chopping.', 'ZGM', 'VBd', 12.99000000, 38.99000000, '1991-08-22 18:00:00', 5, 14.00000000, '1.webp', 'active', '2025-10-25 12:29:46', '2025-10-25 12:29:46'),
(42, 6, 1, 'Citrus Squeezer Yellow', 'P-euemB', 'The Citrus Squeezer in Yellow is a handy tool for extracting juice from citrus fruits. Its vibrant color adds a cheerful touch to your kitchen gadgets.', 'rqk', 'Qgr', 8.99000000, 22.99000000, '2024-08-19 18:00:00', 4, 22.00000000, '1.webp', 'active', '2025-10-25 12:29:48', '2025-10-25 12:29:48'),
(43, 6, 1, 'Egg Slicer', 'P-3hKJ7', 'The Egg Slicer is a convenient tool for slicing boiled eggs evenly. It\'s perfect for salads, sandwiches, and other dishes where sliced eggs are desired.', 'QKc', 'jLK', 6.99000000, 69.99000000, '2019-02-18 18:00:00', 8, 40.00000000, '1.webp', 'active', '2025-10-25 12:29:49', '2025-10-25 12:29:49'),
(44, 6, 2, 'Electric Stove', 'P-dQQHc', 'The Electric Stove provides a portable and efficient cooking solution. Ideal for small kitchens or as an additional cooking surface for various culinary needs.', 'ix3', 'pyA', 49.99000000, 145.99000000, '1990-03-27 18:00:00', 2, 21.00000000, '1.webp', 'active', '2025-10-25 12:29:50', '2025-10-25 12:29:50'),
(45, 6, 1, 'Fine Mesh Strainer', 'P-ula3U', 'The Fine Mesh Strainer is a versatile tool for straining liquids and sifting dry ingredients. Its fine mesh ensures efficient filtering for smooth cooking and baking.', 'BLI', 'fm2', 9.99000000, 23.99000000, '1975-07-12 18:00:00', 6, 85.00000000, '1.webp', 'active', '2025-10-25 12:29:52', '2025-10-25 12:29:52'),
(46, 6, 2, 'Fork', 'P-Bqgtx', 'The Fork is a classic utensil for various dining and serving purposes. Its durable and ergonomic design makes it a reliable choice for everyday use.', 'ZXi', 'xtX', 3.99000000, 33.99000000, '1989-08-14 18:00:00', 8, 7.00000000, '1.webp', 'active', '2025-10-25 12:29:53', '2025-10-25 12:29:53'),
(47, 6, 3, 'Glass', 'P-3S43a', 'The Glass is a versatile and elegant drinking vessel suitable for a variety of beverages. Its clear design allows you to enjoy the colors and textures of your drinks.', 'VDZ', 'V57', 4.99000000, 19.99000000, '2022-09-06 18:00:00', 7, 46.00000000, '1.webp', 'active', '2025-10-25 12:29:54', '2025-10-25 12:29:54'),
(48, 6, 3, 'Grater Black', 'P-B3Tqa', 'The Grater in Black is a handy kitchen tool for grating cheese, vegetables, and more. Its sleek design and sharp blades make food preparation efficient and easy.', 'Ekh', '67S', 10.99000000, 33.99000000, '1973-04-21 18:00:00', 7, 84.00000000, '1.webp', 'active', '2025-10-25 12:29:55', '2025-10-25 12:29:55'),
(49, 6, 2, 'Hand Blender', 'P-u9JB2', 'The Hand Blender is a versatile kitchen appliance for blending, pureeing, and mixing. Its compact design and powerful motor make it a convenient tool for various recipes.', 'AwS', 'joI', 34.99000000, 120.99000000, '1999-06-26 18:00:00', 6, 84.00000000, '1.webp', 'active', '2025-10-25 12:29:56', '2025-10-25 12:29:56'),
(50, 6, 1, 'Ice Cube Tray', 'P-Fd3vC', 'The Ice Cube Tray is a practical accessory for making ice cubes in various shapes. Perfect for keeping your drinks cool and adding a fun element to your beverages.', 'Z7h', 'nZE', 5.99000000, 47.99000000, '2002-05-01 18:00:00', 7, 13.00000000, '1.webp', 'active', '2025-10-25 12:29:58', '2025-10-25 12:29:58'),
(51, 6, 2, 'Kitchen Sieve', 'P-PVNrk', 'The Kitchen Sieve is a versatile tool for sifting and straining dry and wet ingredients. Its fine mesh design ensures smooth results in your cooking and baking.', 'xgj', 'Y3c', 7.99000000, 81.99000000, '1989-07-12 18:00:00', 7, 68.00000000, '1.webp', 'active', '2025-10-25 12:29:59', '2025-10-25 12:29:59'),
(52, 6, 3, 'Knife', 'P-dwFNw', 'The Knife is an essential kitchen tool for chopping, slicing, and dicing. Its sharp blade and ergonomic handle make it a reliable choice for food preparation.', 'aX1', 'ktx', 14.99000000, 81.99000000, '2016-10-11 18:00:00', 1, 7.00000000, '1.webp', 'active', '2025-10-25 12:29:59', '2025-10-25 12:29:59'),
(53, 6, 1, 'Lunch Box', 'P-S1rsq', 'The Lunch Box is a convenient and portable container for packing and carrying your meals. With compartments for different foods, it\'s perfect for on-the-go dining.', 'qRV', 'SaU', 12.99000000, 97.99000000, '2009-05-19 18:00:00', 5, 94.00000000, '1.webp', 'active', '2025-10-25 12:30:01', '2025-10-25 12:30:01'),
(54, 6, 3, 'Microwave Oven', 'P-Lyjc5', 'The Microwave Oven is a versatile kitchen appliance for quick and efficient cooking, reheating, and defrosting. Its compact size makes it suitable for various kitchen setups.', 'HFs', 'UtU', 89.99000000, 129.99000000, '1976-03-27 18:00:00', 1, 59.00000000, '1.webp', 'active', '2025-10-25 12:30:02', '2025-10-25 12:30:02'),
(55, 6, 2, 'Mug Tree Stand', 'P-pza3M', 'The Mug Tree Stand is a stylish and space-saving solution for organizing your mugs. Keep your favorite mugs easily accessible and neatly displayed in your kitchen.', 'rdP', 'yGD', 15.99000000, 58.99000000, '1977-12-18 18:00:00', 5, 88.00000000, '1.webp', 'active', '2025-10-25 12:30:03', '2025-10-25 12:30:03'),
(56, 6, 2, 'Pan', 'P-vwEsG', 'The Pan is a versatile and essential cookware item for frying, sautéing, and cooking various dishes. Its non-stick coating ensures easy food release and cleanup.', 'UHR', 'KeR', 24.99000000, 89.99000000, '1970-06-14 18:00:00', 3, 90.00000000, '1.webp', 'active', '2025-10-25 12:30:05', '2025-10-25 12:30:05'),
(57, 6, 1, 'Plate', 'P-MxFGA', 'The Plate is a classic and essential dishware item for serving meals. Its durable and stylish design makes it suitable for everyday use or special occasions.', 'NHf', 'g9m', 3.99000000, 42.99000000, '1997-05-16 18:00:00', 5, 66.00000000, '1.webp', 'active', '2025-10-25 12:30:06', '2025-10-25 12:30:06'),
(58, 6, 3, 'Red Tongs', 'P-HFAkf', 'The Red Tongs are versatile kitchen tongs suitable for various cooking and serving tasks. Their vibrant color adds a pop of excitement to your kitchen utensils.', '3qz', 'v4D', 6.99000000, 87.99000000, '1995-01-17 18:00:00', 1, 82.00000000, '1.webp', 'active', '2025-10-25 12:30:07', '2025-10-25 12:30:07'),
(59, 6, 3, 'Silver Pot With Glass Cap', 'P-AW76o', 'The Silver Pot with Glass Cap is a stylish and functional cookware item for boiling, simmering, and preparing delicious meals. Its glass cap allows you to monitor cooking progress.', 'D6d', 'uOP', 39.99000000, 75.99000000, '1975-03-01 18:00:00', 3, 40.00000000, '1.webp', 'active', '2025-10-25 12:30:08', '2025-10-25 12:30:08'),
(60, 6, 2, 'Slotted Turner', 'P-CaYnS', 'The Slotted Turner is a kitchen utensil designed for flipping and turning food items. Its slotted design allows excess liquid to drain, making it ideal for frying and sautéing.', 'ufe', '0Me', 8.99000000, 107.99000000, '1987-07-17 18:00:00', 4, 88.00000000, '1.webp', 'active', '2025-10-25 12:30:09', '2025-10-25 12:30:09'),
(61, 6, 2, 'Spice Rack', 'P-ktVuL', 'The Spice Rack is a convenient organizer for your spices and seasonings. Keep your kitchen essentials within reach and neatly arranged with this stylish spice rack.', 'PkU', 'D0J', 19.99000000, 93.99000000, '2023-05-01 18:00:00', 9, 79.00000000, '1.webp', 'active', '2025-10-25 12:30:11', '2025-10-25 12:30:11'),
(62, 6, 1, 'Spoon', 'P-jlChQ', 'The Spoon is a versatile kitchen utensil for stirring, serving, and tasting. Its ergonomic design and durable construction make it an essential tool for every kitchen.', 'U8z', 'U0M', 4.99000000, 62.99000000, '1998-10-18 18:00:00', 6, 59.00000000, '1.webp', 'active', '2025-10-25 12:30:12', '2025-10-25 12:30:12'),
(63, 6, 2, 'Tray', 'P-3tKFu', 'The Tray is a functional and decorative item for serving snacks, appetizers, or drinks. Its stylish design makes it a versatile accessory for entertaining guests.', 'LdL', 'CFd', 16.99000000, 82.99000000, '1983-07-02 18:00:00', 8, 71.00000000, '1.webp', 'active', '2025-10-25 12:30:13', '2025-10-25 12:30:13'),
(64, 6, 2, 'Wooden Rolling Pin', 'P-A8x8M', 'The Wooden Rolling Pin is a classic kitchen tool for rolling out dough for baking. Its smooth surface and sturdy handles make it easy to achieve uniform thickness.', 'h9s', 'aDs', 11.99000000, 81.99000000, '1989-07-17 18:00:00', 5, 80.00000000, '1.webp', 'active', '2025-10-25 12:30:14', '2025-10-25 12:30:14'),
(65, 6, 2, 'Yellow Peeler', 'P-DXY4S', 'The Yellow Peeler is a handy tool for peeling fruits and vegetables with ease. Its bright yellow color adds a cheerful touch to your kitchen gadgets.', 'HBl', 'RC9', 5.99000000, 90.99000000, '1972-02-24 18:00:00', 4, 35.00000000, '1.webp', 'active', '2025-10-25 12:30:15', '2025-10-25 12:30:15'),
(66, 7, 3, 'Huawei Matebook X Pro', 'P-vfshr', 'The Huawei Matebook X Pro is a slim and stylish laptop with a high-resolution touchscreen display, offering a premium experience for users on the go.', 'x2X', 'Zdm', 1399.99000000, 1493.99000000, '1976-08-16 18:00:00', 2, 75.00000000, '1.webp', 'active', '2025-10-25 12:30:16', '2025-10-25 12:30:16'),
(67, 7, 1, 'Lenovo Yoga 920', 'P-kVtq6', 'The Lenovo Yoga 920 is a 2-in-1 convertible laptop with a flexible hinge, allowing you to use it as a laptop or tablet, offering versatility and portability.', 'Mzv', '0fb', 1099.99000000, 1134.99000000, '2018-06-04 18:00:00', 2, 40.00000000, '1.webp', 'active', '2025-10-25 12:30:17', '2025-10-25 12:30:17'),
(68, 7, 1, 'New DELL XPS 13 9300 Laptop', 'P-ieoki', 'The New DELL XPS 13 9300 Laptop is a compact and powerful device, featuring a virtually borderless InfinityEdge display and high-end performance for various tasks.', 'QbP', 'ADa', 1499.99000000, 1525.99000000, '2013-10-26 18:00:00', 7, 74.00000000, '1.webp', 'active', '2025-10-25 12:30:19', '2025-10-25 12:30:19'),
(69, 8, 2, 'Man Plaid Shirt', 'P-MEAlB', 'The Man Plaid Shirt is a timeless and versatile men\'s shirt with a classic plaid pattern. Its comfortable fit and casual style make it a wardrobe essential for various occasions.', 'AfZ', 'GtN', 34.99000000, 124.99000000, '1988-10-11 18:00:00', 4, 82.00000000, '1.webp', 'active', '2025-10-25 12:30:20', '2025-10-25 12:30:20'),
(70, 8, 2, 'Man Short Sleeve Shirt', 'P-8dBk6', 'The Man Short Sleeve Shirt is a breezy and stylish option for warm days. With a comfortable fit and short sleeves, it\'s perfect for a laid-back yet polished look.', 'RHX', 'rZO', 19.99000000, 47.99000000, '1986-03-06 18:00:00', 4, 2.00000000, '1.webp', 'active', '2025-10-25 12:30:22', '2025-10-25 12:30:22'),
(71, 8, 2, 'Men Check Shirt', 'P-TisyJ', 'The Men Check Shirt is a classic and versatile shirt featuring a stylish check pattern. Suitable for various occasions, it adds a smart and polished touch to your wardrobe.', 'dU9', 'KLC', 27.99000000, 94.99000000, '1989-12-13 18:00:00', 5, 95.00000000, '1.webp', 'active', '2025-10-25 12:30:22', '2025-10-25 12:30:22'),
(72, 9, 1, 'Puma Future Rider Trainers', 'P-oR4E1', 'The Puma Future Rider Trainers offer a blend of retro style and modern comfort. Perfect for casual wear, these trainers provide a fashionable and comfortable option for everyday use.', 'Bbv', 'lKF', 89.99000000, 179.99000000, '1993-05-15 18:00:00', 5, 90.00000000, '1.webp', 'active', '2025-10-25 12:30:24', '2025-10-25 12:30:24'),
(73, 9, 1, 'Sports Sneakers Off White & Red', 'P-hABEw', 'The Sports Sneakers in Off White and Red combine style and functionality, making them a fashionable choice for sports enthusiasts. The red and off-white color combination adds a bold and energetic touch.', 'vsI', 'WGj', 119.99000000, 189.99000000, '2005-02-22 18:00:00', 5, 17.00000000, '1.webp', 'active', '2025-10-25 12:30:24', '2025-10-25 12:30:24'),
(74, 9, 1, 'Sports Sneakers Off White Red', 'P-8FRIz', 'Another variant of the Sports Sneakers in Off White Red, featuring a unique design. These sneakers offer style and comfort for casual occasions.', 'ypU', 'BTy', 109.99000000, 195.99000000, '1982-06-22 18:00:00', 5, 62.00000000, '1.webp', 'active', '2025-10-25 12:30:25', '2025-10-25 12:30:25'),
(75, 10, 1, 'Rolex Cellini Date Black Dial', 'P-B0TXK', 'The Rolex Cellini Date with Black Dial is a classic and prestigious watch. With a black dial and date complication, it exudes sophistication and is a symbol of Rolex\'s heritage.', 'iTe', 'R1P', 8999.99000000, 9043.99000000, '2023-08-21 18:00:00', 7, 40.00000000, '1.webp', 'active', '2025-10-25 12:30:27', '2025-10-25 12:30:27'),
(76, 10, 3, 'Rolex Cellini Moonphase', 'P-AHGji', 'The Rolex Cellini Moonphase is a masterpiece of horology, featuring a moon phase complication and exquisite design. It reflects Rolex\'s commitment to precision and elegance.', 'wEF', '250', 12999.99000000, 13088.99000000, '1974-05-09 18:00:00', 9, 36.00000000, '1.webp', 'active', '2025-10-25 12:30:28', '2025-10-25 12:30:28'),
(77, 10, 2, 'Rolex Datejust', 'P-Mx3xa', 'The Rolex Datejust is an iconic and versatile timepiece with a date window. Known for its timeless design and reliability, it\'s a symbol of Rolex\'s watchmaking excellence.', '1Vz', '0eR', 10999.99000000, 11021.99000000, '1972-10-10 18:00:00', 5, 86.00000000, '1.webp', 'active', '2025-10-25 12:30:29', '2025-10-25 12:30:29'),
(78, 10, 2, 'Rolex Submariner Watch', 'P-rsTYG', 'The Rolex Submariner is a legendary dive watch with a rich history. Known for its durability and water resistance, it\'s a symbol of adventure and exploration.', '69b', 'l1L', 13999.99000000, 14020.99000000, '1992-11-25 18:00:00', 7, 55.00000000, '1.webp', 'active', '2025-10-25 12:30:30', '2025-10-25 12:30:30'),
(79, 11, 2, 'Apple AirPods Max Silver', 'P-Hbz0T', 'The Apple AirPods Max in Silver are premium over-ear headphones with high-fidelity audio, adaptive EQ, and active noise cancellation. Experience immersive sound in style.', '7LE', 'KX9', 549.99000000, 633.99000000, '2003-06-07 18:00:00', 6, 59.00000000, '1.webp', 'active', '2025-10-25 12:30:32', '2025-10-25 12:30:32'),
(80, 11, 3, 'Apple Airpower Wireless Charger', 'P-iR5wj', 'The Apple AirPower Wireless Charger provides a convenient way to charge your compatible Apple devices wirelessly. Simply place your devices on the charging mat for effortless charging.', 'UbF', 'otZ', 79.99000000, 138.99000000, '2014-12-20 18:00:00', 4, 1.00000000, '1.webp', 'active', '2025-10-25 12:30:33', '2025-10-25 12:30:33'),
(81, 11, 3, 'Apple HomePod Mini Cosmic Grey', 'P-IxGAb', 'The Apple HomePod Mini in Cosmic Grey is a compact smart speaker that delivers impressive audio and integrates seamlessly with the Apple ecosystem for a smart home experience.', 'lGo', 'u3u', 99.99000000, 134.99000000, '1984-12-15 18:00:00', 9, 27.00000000, '1.webp', 'active', '2025-10-25 12:30:34', '2025-10-25 12:30:34'),
(82, 11, 2, 'Apple iPhone Charger', 'P-rhPf6', 'The Apple iPhone Charger is a high-quality charger designed for fast and efficient charging of your iPhone. Ensure your device stays powered up and ready to go.', 'Rdu', 'OXq', 19.99000000, 101.99000000, '2012-08-04 18:00:00', 9, 31.00000000, '1.webp', 'active', '2025-10-25 12:30:35', '2025-10-25 12:30:35'),
(83, 11, 1, 'Apple MagSafe Battery Pack', 'P-f1WC5', 'The Apple MagSafe Battery Pack is a portable and convenient way to add extra battery life to your MagSafe-compatible iPhone. Attach it magnetically for a secure connection.', '2xG', 'Bj9', 99.99000000, 194.99000000, '1999-05-18 18:00:00', 9, 1.00000000, '1.webp', 'active', '2025-10-25 12:30:35', '2025-10-25 12:30:35'),
(84, 11, 3, 'Apple Watch Series 4 Gold', 'P-tcTDx', 'The Apple Watch Series 4 in Gold is a stylish and advanced smartwatch with features like heart rate monitoring, fitness tracking, and a beautiful Retina display.', 'WgN', 'N8K', 349.99000000, 448.99000000, '2022-10-27 18:00:00', 7, 33.00000000, '1.webp', 'active', '2025-10-25 12:30:37', '2025-10-25 12:30:37'),
(85, 11, 3, 'Beats Flex Wireless Earphones', 'P-nyC1z', 'The Beats Flex Wireless Earphones offer a comfortable and versatile audio experience. With magnetic earbuds and up to 12 hours of battery life, they are ideal for everyday use.', 'kHX', 'zyx', 49.99000000, 124.99000000, '1976-02-24 18:00:00', 1, 50.00000000, '1.webp', 'active', '2025-10-25 12:30:38', '2025-10-25 12:30:38'),
(86, 11, 3, 'iPhone 12 Silicone Case with MagSafe Plum', 'P-P6hc7', 'The iPhone 12 Silicone Case with MagSafe in Plum is a stylish and protective case designed for the iPhone 12. It features MagSafe technology for easy attachment of accessories.', 'NNK', '4yn', 29.99000000, 94.99000000, '1989-09-19 18:00:00', 2, 69.00000000, '1.webp', 'active', '2025-10-25 12:30:38', '2025-10-25 12:30:38'),
(87, 11, 3, 'Monopod', 'P-GsDJ7', 'The Monopod is a versatile camera accessory for stable and adjustable shooting. Perfect for capturing selfies, group photos, and videos with ease.', 'V5M', 'Uhh', 19.99000000, 63.99000000, '2023-10-27 18:00:00', 5, 48.00000000, '1.webp', 'active', '2025-10-25 12:30:39', '2025-10-25 12:30:39'),
(88, 11, 1, 'Selfie Lamp with iPhone', 'P-OdCbs', 'The Selfie Lamp with iPhone is a portable and adjustable LED light designed to enhance your selfies and video calls. Attach it to your iPhone for well-lit photos.', 'YRa', 'qYq', 14.99000000, 100.99000000, '1972-07-21 18:00:00', 7, 58.00000000, '1.webp', 'active', '2025-10-25 12:30:40', '2025-10-25 12:30:40'),
(89, 11, 3, 'Selfie Stick Monopod', 'P-6BTBA', 'The Selfie Stick Monopod is a extendable and foldable device for capturing the perfect selfie or group photo. Compatible with smartphones and cameras.', 'C5G', 'E08', 12.99000000, 85.99000000, '2018-04-19 18:00:00', 2, 11.00000000, '1.webp', 'active', '2025-10-25 12:30:41', '2025-10-25 12:30:41'),
(90, 11, 2, 'TV Studio Camera Pedestal', 'P-p74yw', 'The TV Studio Camera Pedestal is a professional-grade camera support system for smooth and precise camera movements in a studio setting. Ideal for broadcast and production.', 'Aeh', 'ZLZ', 499.99000000, 526.99000000, '1996-08-14 18:00:00', 1, 15.00000000, '1.webp', 'active', '2025-10-25 12:30:42', '2025-10-25 12:30:42'),
(91, 12, 1, 'MotoGP CI.H1', 'P-nlz5f', 'The MotoGP CI.H1 is a high-performance motorcycle inspired by MotoGP racing technology. It offers cutting-edge features and precision engineering for an exhilarating riding experience.', 'NgU', 'l5P', 14999.99000000, 15073.99000000, '2015-03-11 18:00:00', 3, 10.00000000, '1.webp', 'active', '2025-10-25 12:30:43', '2025-10-25 12:30:43'),
(92, 12, 3, 'Scooter Motorcycle', 'P-WJcFs', 'The Scooter Motorcycle is a practical and fuel-efficient bike ideal for urban commuting. It features a step-through design and user-friendly controls for easy maneuverability.', 'tta', '6Ae', 2999.99000000, 3075.99000000, '2012-10-08 18:00:00', 4, 84.00000000, '1.webp', 'active', '2025-10-25 12:30:45', '2025-10-25 12:30:45'),
(93, 12, 1, 'Sportbike Motorcycle', 'P-YX85r', 'The Sportbike Motorcycle is designed for speed and agility, with a sleek and aerodynamic profile. It\'s suitable for riders looking for a dynamic and thrilling riding experience.', 'khZ', '1Zp', 7499.99000000, 7523.99000000, '2021-11-03 18:00:00', 6, 0.00000000, '1.webp', 'active', '2025-10-25 12:30:46', '2025-10-25 12:30:46'),
(94, 13, 2, 'Vaseline Men Body and Face Lotion', 'P-EHA7p', 'Vaseline Men Body and Face Lotion is a specially formulated lotion designed to provide long-lasting moisture to men\'s skin. It absorbs quickly and helps keep the skin hydrated and healthy.', 'k7E', 'lIv', 9.99000000, 61.99000000, '2021-12-16 18:00:00', 9, 95.00000000, '1.webp', 'active', '2025-10-25 12:30:48', '2025-10-25 12:30:48'),
(95, 14, 3, 'iPhone 13 Pro', 'P-kidDK', 'The iPhone 13 Pro is a cutting-edge smartphone with a powerful camera system, high-performance chip, and stunning display. It offers advanced features for users who demand top-notch technology.', 'ONi', 'VnL', 1099.99000000, 1151.99000000, '2001-03-04 18:00:00', 4, 56.00000000, '1.webp', 'active', '2025-10-25 12:30:50', '2025-10-25 12:30:50'),
(96, 14, 2, 'iPhone X', 'P-iDLVJ', 'The iPhone X is a flagship smartphone featuring a bezel-less OLED display, facial recognition technology (Face ID), and impressive performance. It represents a milestone in iPhone design and innovation.', 'Xs4', 'Rjx', 899.99000000, 989.99000000, '1988-10-08 18:00:00', 6, 37.00000000, '1.webp', 'active', '2025-10-25 12:30:50', '2025-10-25 12:30:50'),
(97, 14, 3, 'Oppo A57', 'P-fgTtH', 'The Oppo A57 is a mid-range smartphone known for its sleek design and capable features. It offers a balance of performance and affordability, making it a popular choice.', 'OfV', 'CaO', 249.99000000, 344.99000000, '2016-01-18 18:00:00', 3, 19.00000000, '1.webp', 'active', '2025-10-25 12:30:51', '2025-10-25 12:30:51'),
(98, 14, 3, 'Oppo F19 Pro Plus', 'P-D0yA3', 'The Oppo F19 Pro Plus is a feature-rich smartphone with a focus on camera capabilities. It boasts advanced photography features and a powerful performance for a premium user experience.', 'Qxb', 'nOs', 399.99000000, 478.99000000, '2004-11-17 18:00:00', 8, 78.00000000, '1.webp', 'active', '2025-10-25 12:30:52', '2025-10-25 12:30:52'),
(99, 14, 3, 'Oppo K1', 'P-htwra', 'The Oppo K1 series offers a range of smartphones with various features and specifications. Known for their stylish design and reliable performance, the Oppo K1 series caters to diverse user preferences.', 'Rnk', 'yHU', 299.99000000, 318.99000000, '1999-05-18 18:00:00', 6, 55.00000000, '1.webp', 'active', '2025-10-25 12:30:52', '2025-10-25 12:30:52'),
(100, 14, 2, 'Realme C35', 'P-R8Nfn', 'The Realme C35 is a budget-friendly smartphone with a focus on providing essential features for everyday use. It offers a reliable performance and user-friendly experience.', '1H6', 'aO2', 149.99000000, 167.99000000, '2005-02-16 18:00:00', 9, 48.00000000, '1.webp', 'active', '2025-10-25 12:30:53', '2025-10-25 12:30:53'),
(101, 14, 3, 'Realme X', 'P-YiObi', 'The Realme X is a mid-range smartphone known for its sleek design and impressive display. It offers a good balance of performance and camera capabilities for users seeking a quality device.', 'gAb', '8aX', 299.99000000, 363.99000000, '1971-01-03 18:00:00', 8, 12.00000000, '1.webp', 'active', '2025-10-25 12:30:54', '2025-10-25 12:30:54'),
(102, 14, 1, 'Realme XT', 'P-2UOvU', 'The Realme XT is a feature-rich smartphone with a focus on camera technology. It comes equipped with advanced camera sensors, delivering high-quality photos and videos for photography enthusiasts.', '23J', 'oSh', 349.99000000, 400.99000000, '1990-09-06 18:00:00', 1, 80.00000000, '1.webp', 'active', '2025-10-25 12:30:55', '2025-10-25 12:30:55'),
(103, 14, 1, 'Samsung Galaxy S7', 'P-WlS9b', 'The Samsung Galaxy S7 is a flagship smartphone known for its sleek design and advanced features. It features a high-resolution display, powerful camera, and robust performance.', 'KQF', '3o5', 299.99000000, 382.99000000, '2020-07-13 18:00:00', 7, 67.00000000, '1.webp', 'active', '2025-10-25 12:30:55', '2025-10-25 12:30:55'),
(104, 14, 1, 'Samsung Galaxy S8', 'P-1R3gF', 'The Samsung Galaxy S8 is a premium smartphone with an Infinity Display, offering a stunning visual experience. It boasts advanced camera capabilities and cutting-edge technology.', 'zS6', 'd2S', 499.99000000, 581.99000000, '1979-08-21 18:00:00', 3, 0.00000000, '1.webp', 'active', '2025-10-25 12:30:56', '2025-10-25 12:30:56'),
(105, 14, 1, 'Samsung Galaxy S10', 'P-7OHNd', 'The Samsung Galaxy S10 is a flagship device featuring a dynamic AMOLED display, versatile camera system, and powerful performance. It represents innovation and excellence in smartphone technology.', 'uLs', 'V7X', 699.99000000, 760.99000000, '2013-02-10 18:00:00', 1, 19.00000000, '1.webp', 'active', '2025-10-25 12:30:56', '2025-10-25 12:30:56'),
(106, 14, 3, 'Vivo S1', 'P-GxxWv', 'The Vivo S1 is a stylish and mid-range smartphone offering a blend of design and performance. It features a vibrant display, capable camera system, and reliable functionality.', 'PNb', '1sO', 249.99000000, 343.99000000, '2002-04-02 18:00:00', 3, 50.00000000, '1.webp', 'active', '2025-10-25 12:30:57', '2025-10-25 12:30:57'),
(107, 14, 2, 'Vivo V9', 'P-c0Thg', 'The Vivo V9 is a smartphone known for its sleek design and emphasis on capturing high-quality selfies. It features a notch display, dual-camera setup, and a modern design.', '4Bs', 'Yy9', 299.99000000, 384.99000000, '1981-07-11 18:00:00', 9, 82.00000000, '1.webp', 'active', '2025-10-25 12:30:58', '2025-10-25 12:30:58'),
(108, 14, 1, 'Vivo X21', 'P-roC8z', 'The Vivo X21 is a premium smartphone with a focus on cutting-edge technology. It features an in-display fingerprint sensor, a high-resolution display, and advanced camera capabilities.', 'db0', 'g2f', 499.99000000, 570.99000000, '1976-08-16 18:00:00', 3, 7.00000000, '1.webp', 'active', '2025-10-25 12:30:59', '2025-10-25 12:30:59'),
(109, 15, 1, 'Baseball Glove', 'P-rnNGo', 'The Baseball Glove is a protective glove worn by baseball players. It is designed to catch and field the baseball, providing players with comfort and control during the game.', 'Gmr', '4v6', 24.99000000, 116.99000000, '1980-08-30 18:00:00', 8, 22.00000000, '1.webp', 'active', '2025-10-25 12:30:59', '2025-10-25 12:30:59'),
(110, 15, 2, 'Basketball', 'P-DvNdh', 'The Basketball is a standard ball used in basketball games. It is designed for dribbling, shooting, and passing in the game of basketball, suitable for both indoor and outdoor play.', 'mah', 'aHm', 14.99000000, 53.99000000, '1972-10-20 18:00:00', 4, 75.00000000, '1.webp', 'active', '2025-10-25 12:31:00', '2025-10-25 12:31:00'),
(111, 15, 2, 'Basketball Rim', 'P-wwBQz', 'The Basketball Rim is a sturdy hoop and net assembly mounted on a basketball backboard. It provides a target for shooting and scoring in the game of basketball.', 'bby', 'j6v', 39.99000000, 92.99000000, '1986-01-21 18:00:00', 4, 43.00000000, '1.webp', 'active', '2025-10-25 12:31:00', '2025-10-25 12:31:00'),
(112, 15, 2, 'Cricket Ball', 'P-ocwpz', 'The Cricket Ball is a hard leather ball used in the sport of cricket. It is bowled and batted in the game, and its hardness and seam contribute to the dynamics of cricket play.', 'JEb', 'fDC', 12.99000000, 97.99000000, '2013-07-31 18:00:00', 2, 30.00000000, '1.webp', 'active', '2025-10-25 12:31:00', '2025-10-25 12:31:00'),
(113, 15, 2, 'Cricket Bat', 'P-WjckJ', 'The Cricket Bat is an essential piece of cricket equipment used by batsmen to hit the cricket ball. It is made of wood and comes in various sizes and designs.', 'MuE', '0H9', 29.99000000, 93.99000000, '1981-06-05 18:00:00', 8, 98.00000000, '1.webp', 'active', '2025-10-25 12:31:01', '2025-10-25 12:31:01'),
(114, 15, 2, 'Cricket Helmet', 'P-pFhNC', 'The Cricket Helmet is a protective headgear worn by cricket players, especially batsmen and wicketkeepers. It provides protection against fast bowling and bouncers.', 'Za2', 'nCv', 44.99000000, 101.99000000, '2017-09-30 18:00:00', 6, 10.00000000, '1.webp', 'active', '2025-10-25 12:31:01', '2025-10-25 12:31:01'),
(115, 15, 3, 'Cricket Wicket', 'P-1EV4t', 'The Cricket Wicket is a set of three stumps and two bails, forming a wicket used in the sport of cricket. Batsmen aim to protect the wicket while scoring runs.', 'Wgm', 'HgS', 29.99000000, 124.99000000, '2011-05-25 18:00:00', 5, 25.00000000, '1.webp', 'active', '2025-10-25 12:31:03', '2025-10-25 12:31:03'),
(116, 15, 2, 'Feather Shuttlecock', 'P-fYO5e', 'The Feather Shuttlecock is used in the sport of badminton. It features natural feathers and is designed for high-speed play, providing stability and accuracy during matches.', 'eCA', 'Qle', 5.99000000, 80.99000000, '2019-12-17 18:00:00', 7, 95.00000000, '1.webp', 'active', '2025-10-25 12:31:04', '2025-10-25 12:31:04'),
(117, 15, 2, 'Football', 'P-d40sQ', 'The Football, also known as a soccer ball, is the standard ball used in the sport of football (soccer). It is designed for kicking and passing in the game.', 'K2l', 'dRz', 17.99000000, 64.99000000, '1978-03-25 18:00:00', 9, 96.00000000, '1.webp', 'active', '2025-10-25 12:31:05', '2025-10-25 12:31:05'),
(118, 15, 2, 'Golf Ball', 'P-mGMU6', 'The Golf Ball is a small ball used in the sport of golf. It features dimples on its surface, providing aerodynamic lift and distance when struck by a golf club.', 'Xbx', 'O1W', 9.99000000, 24.99000000, '2023-06-30 18:00:00', 1, 84.00000000, '1.webp', 'active', '2025-10-25 12:31:06', '2025-10-25 12:31:06'),
(119, 15, 1, 'Iron Golf', 'P-fZheE', 'The Iron Golf is a type of golf club designed for various golf shots. It features a solid metal head and is used for approach shots, chipping, and other golfing techniques.', 'pv0', 'WyA', 49.99000000, 134.99000000, '2002-02-05 18:00:00', 9, 90.00000000, '1.webp', 'active', '2025-10-25 12:31:07', '2025-10-25 12:31:07'),
(120, 15, 3, 'Metal Baseball Bat', 'P-8zXlT', 'The Metal Baseball Bat is a durable and lightweight baseball bat made from metal alloys. It is commonly used in baseball games for hitting and batting practice.', 'a9c', 'Y5u', 29.99000000, 99.99000000, '1972-04-10 18:00:00', 6, 16.00000000, '1.webp', 'active', '2025-10-25 12:31:07', '2025-10-25 12:31:07'),
(121, 15, 2, 'Tennis Ball', 'P-lXxqf', 'The Tennis Ball is a standard ball used in the sport of tennis. It is designed for bouncing and hitting with tennis rackets during matches or practice sessions.', 'INA', 'eUo', 6.99000000, 106.99000000, '2004-09-12 18:00:00', 8, 28.00000000, '1.webp', 'active', '2025-10-25 12:31:09', '2025-10-25 12:31:09'),
(122, 15, 2, 'Tennis Racket', 'P-IqArR', 'The Tennis Racket is an essential piece of equipment used in the sport of tennis. It features a frame with strings and a grip, allowing players to hit the tennis ball.', 'a4z', 'odd', 49.99000000, 121.99000000, '2000-06-14 18:00:00', 5, 6.00000000, '1.webp', 'active', '2025-10-25 12:31:10', '2025-10-25 12:31:10'),
(123, 15, 1, 'Volleyball', 'P-xcmL7', 'The Volleyball is a standard ball used in the sport of volleyball. It is designed for passing, setting, and spiking over the net during volleyball matches.', 'A6S', 'FWM', 11.99000000, 50.99000000, '2025-03-06 18:00:00', 2, 0.00000000, '1.webp', 'active', '2025-10-25 12:31:11', '2025-10-25 12:31:11'),
(124, 16, 1, 'Green and Black Glasses', 'P-ngspT', 'The Green and Black Glasses feature a bold combination of green and black colors, adding a touch of vibrancy to your eyewear collection. They are both stylish and eye-catching.', 'Pko', 'XK3', 34.99000000, 100.99000000, '1987-11-21 18:00:00', 1, 24.00000000, '1.webp', 'active', '2025-10-25 12:31:12', '2025-10-25 12:31:12'),
(125, 16, 1, 'Party Glasses', 'P-ucY5a', 'The Party Glasses are designed to add flair to your party outfit. With unique shapes or colorful frames, they\'re perfect for adding a playful touch to your look during celebrations.', 'MYr', 'bBG', 19.99000000, 101.99000000, '2022-09-27 18:00:00', 6, 86.00000000, '1.webp', 'active', '2025-10-25 12:31:13', '2025-10-25 12:31:13'),
(126, 16, 3, 'Sunglasses', 'P-fzGzF', 'The Sunglasses offer a classic and simple design with a focus on functionality. These sunglasses provide essential UV protection while maintaining a timeless look.', 'X2T', 'hWr', 22.99000000, 63.99000000, '2003-08-09 18:00:00', 8, 27.00000000, '1.webp', 'active', '2025-10-25 12:31:14', '2025-10-25 12:31:14'),
(127, 17, 1, 'Samsung Galaxy Tab White', 'P-IfmGe', 'The Samsung Galaxy Tab in White is a sleek and versatile Android tablet. With a vibrant display, long-lasting battery, and a range of features, it offers a great user experience for various tasks.', 'NmA', 'UhS', 349.99000000, 436.99000000, '1986-03-30 18:00:00', 7, 92.00000000, '1.webp', 'active', '2025-10-25 12:31:16', '2025-10-25 12:31:16'),
(128, 18, 3, 'Gray Dress', 'P-IstyU', 'The Gray Dress is a versatile and chic option for various occasions. With a neutral gray color, it can be dressed up or down, making it a wardrobe staple for any fashion-forward individual.', 'Ssf', 'jIo', 34.99000000, 56.99000000, '1996-06-02 18:00:00', 6, 55.00000000, '1.webp', 'active', '2025-10-25 12:31:17', '2025-10-25 12:31:17'),
(129, 18, 1, 'Short Frock', 'P-tPtyX', 'The Short Frock is a playful and trendy dress with a shorter length. Ideal for casual outings or special occasions, it combines style and comfort for a fashionable look.', 'f7L', 'IJV', 24.99000000, 59.99000000, '1990-10-23 18:00:00', 4, 22.00000000, '1.webp', 'active', '2025-10-25 12:31:18', '2025-10-25 12:31:18'),
(130, 18, 1, 'Tartan Dress', 'P-zlLkS', 'The Tartan Dress features a classic tartan pattern, bringing a timeless and sophisticated touch to your wardrobe. Perfect for fall and winter, it adds a hint of traditional charm.', 'XtQ', 'YLm', 39.99000000, 110.99000000, '1999-10-13 18:00:00', 9, 73.00000000, '1.webp', 'active', '2025-10-25 12:31:20', '2025-10-25 12:31:20'),
(131, 19, 1, 'Dodge Hornet GT Plus', 'P-dRF0H', 'The Dodge Hornet GT Plus is a compact and agile hatchback, perfect for urban driving with a touch of sportiness.', 'BKM', 'Kpc', 24999.99000000, 25093.99000000, '1984-04-04 18:00:00', 6, 82.00000000, '1.webp', 'active', '2025-10-25 12:31:21', '2025-10-25 12:31:21'),
(132, 19, 3, 'Durango SXT RWD', 'P-6tGsj', 'The Durango SXT RWD is a spacious and versatile SUV, known for its strong performance and family-friendly features.', 'YyY', 'F3v', 36999.99000000, 37050.99000000, '1970-11-15 18:00:00', 6, 95.00000000, '1.webp', 'active', '2025-10-25 12:31:22', '2025-10-25 12:31:22'),
(133, 19, 2, 'Pacifica Touring', 'P-6L1Gk', 'The Pacifica Touring is a stylish and well-equipped minivan, offering comfort and convenience for family journeys.', 'LVT', 'aze', 31999.99000000, 32084.99000000, '1988-12-26 18:00:00', 3, 53.00000000, '1.webp', 'active', '2025-10-25 12:31:23', '2025-10-25 12:31:23'),
(134, 20, 1, 'Prada Women Bag', 'P-QxR6d', 'The Prada Women Bag is an iconic designer bag that exudes elegance and luxury. Crafted with precision and featuring the Prada logo, it\'s a statement piece for fashion enthusiasts.', 'yrF', 'kNO', 599.99000000, 675.99000000, '2012-03-02 18:00:00', 6, 75.00000000, '1.webp', 'active', '2025-10-25 12:31:24', '2025-10-25 12:31:24'),
(135, 20, 3, 'White Faux Leather Backpack', 'P-D76Pr', 'The White Faux Leather Backpack is a trendy and practical backpack for the modern woman. With a sleek white design and ample storage space, it\'s perfect for both casual and on-the-go styles.', '3w4', 'OaJ', 39.99000000, 64.99000000, '1993-03-28 18:00:00', 8, 39.00000000, '1.webp', 'active', '2025-10-25 12:31:25', '2025-10-25 12:31:25'),
(136, 20, 1, 'Women Handbag Black', 'P-OLl4x', 'The Women Handbag in Black is a classic and versatile accessory that complements various outfits. With a timeless black color and functional design, it\'s a must-have in every woman\'s wardrobe.', '8AG', '06X', 59.99000000, 154.99000000, '2008-04-18 18:00:00', 8, 11.00000000, '1.webp', 'active', '2025-10-25 12:31:25', '2025-10-25 12:31:25'),
(137, 21, 3, 'Corset With Black Skirt', 'P-sjIRG', 'The Corset With Black Skirt is a chic and versatile outfit that pairs a fashionable corset with a classic black skirt. It offers a trendy and coordinated look for various occasions.', 'T2V', '7GJ', 79.99000000, 169.99000000, '1984-03-29 18:00:00', 5, 33.00000000, '1.webp', 'active', '2025-10-25 12:31:27', '2025-10-25 12:31:27'),
(138, 21, 2, 'Dress Pea', 'P-sTYNL', 'The Dress Pea is a stylish and comfortable dress with a pea pattern. Perfect for casual outings, it adds a playful and fun element to your wardrobe, making it a great choice for day-to-day wear.', 'v3C', '3jP', 49.99000000, 116.99000000, '1992-02-09 18:00:00', 7, 6.00000000, '1.webp', 'active', '2025-10-25 12:31:28', '2025-10-25 12:31:28'),
(139, 21, 2, 'Marni Red & Black Suit', 'P-OmhAO', 'The Marni Red & Black Suit is a sophisticated and fashion-forward suit ensemble. With a combination of red and black tones, it showcases a modern design for a bold and confident look.', 'K5e', 'lvX', 179.99000000, 278.99000000, '1977-04-23 18:00:00', 9, 62.00000000, '1.webp', 'active', '2025-10-25 12:31:29', '2025-10-25 12:31:29'),
(140, 22, 3, 'Tropical Earring', 'P-Gq1Sg', 'The Tropical Earring is a fun and playful accessory inspired by tropical elements. Featuring vibrant colors and a lively design, it\'s perfect for adding a touch of summer to your look.', 'MDv', 'NSw', 19.99000000, 59.99000000, '1978-11-03 18:00:00', 7, 1.00000000, '1.webp', 'active', '2025-10-25 12:31:31', '2025-10-25 12:31:31'),
(141, 23, 1, 'Golden Shoes Woman', 'P-Q9VoD', 'The Golden Shoes for Women are a glamorous choice for special occasions. Featuring a golden hue and stylish design, they add a touch of luxury to your outfit.', 'FYp', 'wzW', 49.99000000, 100.99000000, '2017-10-04 18:00:00', 5, 88.00000000, '1.webp', 'active', '2025-10-25 12:31:32', '2025-10-25 12:31:32'),
(142, 23, 2, 'Pampi Shoes', 'P-L6C8l', 'Pampi Shoes offer a blend of comfort and style for everyday use. With a versatile design, they are suitable for various casual occasions, providing a trendy and relaxed look.', 'ZIH', 'Iqp', 29.99000000, 91.99000000, '1986-07-26 18:00:00', 2, 49.00000000, '1.webp', 'active', '2025-10-25 12:31:33', '2025-10-25 12:31:33'),
(143, 23, 1, 'Red Shoes', 'P-cCwGo', 'The Red Shoes make a bold statement with their vibrant red color. Whether for a party or a casual outing, these shoes add a pop of color and style to your wardrobe.', '4GL', 'aWF', 34.99000000, 84.99000000, '2018-05-17 18:00:00', 2, 7.00000000, '1.webp', 'active', '2025-10-25 12:31:35', '2025-10-25 12:31:35'),
(144, 24, 3, 'Rolex Datejust Women', 'P-Pc1DW', 'The Rolex Datejust Women\'s watch is an iconic timepiece designed for women. With a timeless design and a date complication, it offers both elegance and functionality.', 'dUR', '2Xw', 10999.99000000, 11020.99000000, '1993-02-21 18:00:00', 6, 4.00000000, '1.webp', 'active', '2025-10-25 12:31:36', '2025-10-25 12:31:36');
INSERT INTO `products` (`id`, `category_id`, `supplier_id`, `name`, `product_number`, `description`, `product_code`, `root`, `buying_price`, `selling_price`, `buying_date`, `unit_type_id`, `quantity`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(145, 24, 3, 'Watch Gold for Women', 'P-UihMZ', 'The Gold Women\'s Watch is a stunning accessory that combines luxury and style. Featuring a gold-plated case and a chic design, it adds a touch of glamour to any outfit.', 'OS6', 'FTf', 799.99000000, 817.99000000, '1998-10-20 18:00:00', 4, 0.00000000, 'manager-17614577843505.jpg', 'active', '2025-10-25 12:31:37', '2025-10-25 23:49:44'),
(146, 24, 3, 'Women\'s Wrist Watch', 'P-BrXIe', 'The Women\'s Wrist Watch is a versatile and fashionable timepiece for everyday wear. With a comfortable strap and a simple yet elegant design, it complements various styles.', 'mE1', 'J4x', 129.99000000, 168.99000000, '1984-04-05 18:00:00', 1, 12.00000000, 'delivarymanjpg-17614536648441.jpg', 'active', '2025-10-25 12:31:39', '2025-10-25 22:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,8) NOT NULL,
  `salary_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `val` text DEFAULT NULL,
  `group` varchar(255) NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `photo`, `shop_name`, `created_at`, `updated_at`) VALUES
(1, 'Kari Goldner I', 'owalter@larkin.com', '(336) 380-4567', '25428 Schulist Valleys\nLake Rogersview, AL 22506-3202', 'supplier-1.jpg', 'Kassulke-Herzog', '2025-10-25 12:29:12', '2025-10-25 12:29:12'),
(2, 'Glennie Krajcik DDS', 'katlynn.pfeffer@gmail.com', '+1 (458) 365-2013', '444 Rempel Mountains Apt. 395\nTaniahaven, HI 44089', 'supplier-2.jpg', 'Rodriguez, Pfannerstill and Douglas', '2025-10-25 12:29:12', '2025-10-25 12:29:12'),
(3, 'Michael McGlynn MD', 'linnea.lind@hotmail.com', '1-432-844-3321', '2976 Yost Springs Suite 867\nLake Theronmouth, TN 15434', 'supplier-3.jpg', 'Bayer Inc', '2025-10-25 12:29:12', '2025-10-25 12:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_number` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `paid_through` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unit_types`
--

CREATE TABLE `unit_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unit_types`
--

INSERT INTO `unit_types` (`id`, `name`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'Piece', 'p', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(2, 'Kilogram', 'kg', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(3, 'Gram', 'g', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(4, 'Liter', 'l', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(5, 'Milliliter', 'ml', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(6, 'Meter', 'm', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(7, 'Centimeter', 'cm', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(8, 'Inch', 'in', '2025-10-25 12:29:13', '2025-10-25 12:29:13'),
(9, 'Foot', 'ft', '2025-10-25 12:29:13', '2025-10-25 12:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Moynul Islam Shimanto', 'moynulislamshimanto24@gmail.com', NULL, '$2y$12$zvogcNmm4r44UEQmOnqXNu6M3W3g7ZuNmM3/0tUKh1FDUJc9ZeGtK', 'images-1-17614579977197.png', NULL, '2025-10-25 22:01:52', '2025-10-25 23:53:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_name_index` (`name`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_amount_index` (`amount`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_due_index` (`due`),
  ADD KEY `orders_profit_index` (`profit`),
  ADD KEY `orders_loss_index` (`loss`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`),
  ADD KEY `products_unit_type_id_foreign` (`unit_type_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salaries_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `unit_types`
--
ALTER TABLE `unit_types`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit_types`
--
ALTER TABLE `unit_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_unit_type_id_foreign` FOREIGN KEY (`unit_type_id`) REFERENCES `unit_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
