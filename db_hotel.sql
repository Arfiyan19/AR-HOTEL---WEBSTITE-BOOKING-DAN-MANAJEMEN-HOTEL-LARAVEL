-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2023 pada 09.47
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `venue` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `events`
--

INSERT INTO `events` (`id`, `name`, `image`, `date`, `venue`, `price`, `capacity`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Holi 2018', '1.jpeg', '2018-05-18', 'Hotel Garden Area', 2500, 550, 'Albatross Concert and Holi Celebration 2018. Enjoy with live music and tank wash after holi.', 1, '2023-01-11 00:21:40', NULL),
(2, 'Food Festa', '2.jpg', '2018-04-18', 'Hotel Garden Area', 3500, 350, 'Cultural Performance with food testing sessions.', 1, '2023-01-11 00:21:40', NULL),
(3, 'South Asian Youth Summit', '3.jpg', '2018-04-20', 'Leonat Conference Hall', 0, 250, 'Discussion of youth involvement in protection of cultural heritage.', 1, '2023-01-11 00:21:40', NULL),
(4, 'Regional Minority Society Conference', '4.jpg', '2018-04-15', 'Darfurd Conference Hall', 0, 100, 'Leaders of minority society discuss the involvement in politics.', 1, '2023-01-11 00:21:40', NULL),
(5, 'Bankers Society Annual Summit', '5.jpg', '2018-04-10', 'Kafe Conference Hall', 5400, 60, 'Talks by industry veterans on Central Bank limits on foreign loans.', 1, '2023-01-11 00:21:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_bookings`
--

CREATE TABLE `event_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `number_of_tickets` int(11) NOT NULL,
  `total_cost` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `payment` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `facilities`
--

CREATE TABLE `facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Air Conditioner', 'air_conditioner.png', 1, '2023-01-11 00:21:39', NULL),
(2, 'Bathtub', 'bathtub.png', 1, '2023-01-11 00:21:39', NULL),
(3, 'Breakfast', 'breakfast.png', 1, '2023-01-11 00:21:39', NULL),
(4, 'Computer', 'computer.png', 1, '2023-01-11 00:21:39', NULL),
(5, 'First Aid Kit', 'first_aid_kit.png', 1, '2023-01-11 00:21:39', NULL),
(6, 'Hair Dryer', 'hair_dryer.png', 1, '2023-01-11 00:21:39', NULL),
(7, 'Mini Bar', 'mini_bar.png', 1, '2023-01-11 00:21:39', NULL),
(8, 'Mini Cooler', 'mini_cooler.png', 1, '2023-01-11 00:21:39', NULL),
(9, 'Parking', 'parking.png', 1, '2023-01-11 00:21:39', NULL),
(10, 'Telephone', 'telephone.png', 1, '2023-01-11 00:21:39', NULL),
(11, 'Television', 'television.png', 1, '2023-01-11 00:21:39', NULL),
(12, 'Wifi', 'wifi.png', 1, '2023-01-11 00:21:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `facility_room_type`
--

CREATE TABLE `facility_room_type` (
  `facility_id` int(10) UNSIGNED NOT NULL,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `facility_room_type`
--

INSERT INTO `facility_room_type` (`facility_id`, `room_type_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-01-11 00:21:39', NULL),
(2, 1, '2023-01-11 00:21:39', NULL),
(3, 1, '2023-01-11 00:21:39', NULL),
(4, 1, '2023-01-11 00:21:39', NULL),
(5, 1, '2023-01-11 00:21:39', NULL),
(6, 1, '2023-01-11 00:21:39', NULL),
(7, 1, '2023-01-11 00:21:39', NULL),
(8, 1, '2023-01-11 00:21:39', NULL),
(9, 1, '2023-01-11 00:21:39', NULL),
(10, 1, '2023-01-11 00:21:39', NULL),
(11, 1, '2023-01-11 00:21:39', NULL),
(12, 1, '2023-01-11 00:21:39', NULL),
(1, 2, '2023-01-11 00:21:39', NULL),
(2, 2, '2023-01-11 00:21:39', NULL),
(3, 2, '2023-01-11 00:21:39', NULL),
(4, 2, '2023-01-11 00:21:39', NULL),
(5, 2, '2023-01-11 00:21:39', NULL),
(6, 2, '2023-01-11 00:21:39', NULL),
(7, 2, '2023-01-11 00:21:39', NULL),
(8, 2, '2023-01-11 00:21:39', NULL),
(9, 2, '2023-01-11 00:21:39', NULL),
(10, 2, '2023-01-11 00:21:39', NULL),
(1, 3, '2023-01-11 00:21:39', NULL),
(2, 3, '2023-01-11 00:21:39', NULL),
(3, 3, '2023-01-11 00:21:39', NULL),
(4, 3, '2023-01-11 00:21:39', NULL),
(9, 3, '2023-01-11 00:21:39', NULL),
(10, 3, '2023-01-11 00:21:39', NULL),
(12, 3, '2023-01-11 00:21:39', NULL),
(1, 4, '2023-01-11 00:21:39', NULL),
(2, 4, '2023-01-11 00:21:39', NULL),
(3, 4, '2023-01-11 00:21:39', NULL),
(4, 4, '2023-01-11 00:21:39', NULL),
(8, 4, '2023-01-11 00:21:39', NULL),
(2, 5, '2023-01-11 00:21:39', NULL),
(5, 5, '2023-01-11 00:21:39', NULL),
(7, 5, '2023-01-11 00:21:39', NULL),
(9, 5, '2023-01-11 00:21:39', NULL),
(8, 6, '2023-01-11 00:21:39', NULL),
(11, 6, '2023-01-11 00:21:39', NULL),
(12, 6, '2023-01-11 00:21:39', NULL),
(10, 4, '2023-01-11 00:21:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foods`
--

CREATE TABLE `foods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('Appetizer','Soup','Salad','Main Course','Dessert') NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `foods`
--

INSERT INTO `foods` (`id`, `name`, `type`, `image`, `price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sizzling Gambas', 'Appetizer', 'sizzling_gambas.jpeg', '630.00', 'Sizzling gambas is made with a combination of shrimp and vegetables.', 1, '2023-01-11 00:21:40', NULL),
(2, 'Calamares', 'Appetizer', 'calamares.jpg', '630.00', 'Calamares is the Filipino version of the Mediterranean breaded fried squid dish, Calamari.', 1, '2023-01-11 00:21:40', NULL),
(3, 'Tinolang Manok', 'Soup', 'tinolang_manok.jpg', '530.00', 'Tinola in Tagalog or Visayan, is a soup-based dish served as an main dish in the Philippines.', 1, '2023-01-11 00:21:40', NULL),
(4, 'Chicken Sotanghon Soup', 'Soup', 'chicken_sotanghon_soup.jpg', '410.00', 'Chicken Sotanghon Soup is a soup made with bite-sized chicken, cellophane noodles and vegetables.', 1, '2023-01-11 00:21:40', NULL),
(5, 'Mixed Green Salad', 'Salad', 'mixed_green_salad.jpg', '370.00', 'Garlic, crushed red pepper flakes season the light vinaigrette that dresses this refreshing salad.', 1, '2023-01-11 00:21:40', NULL),
(6, 'Chef\'s Salad', 'Salad', 'chef_salad.jpg', '400.00', 'Chef salad is an American salad consisting of eggs, meat, chicken, tomatoes, cucumbers and cheese.', 1, '2023-01-11 00:21:40', NULL),
(7, 'Beefsteak Tagalog', 'Main Course', 'beefsteak_tagalog.jpg', '650.00', 'Beefsteak Tagalog is a dish of pieces of salted and peppered sirloin.', 1, '2023-01-11 00:21:40', NULL),
(8, 'Cordon Bleu', 'Main Course', 'cordon_bleu.jpg', '630.00', 'A cordon bleu is a dish of meat wrapped around cheese, then breaded and pan-fried or deep-fried.', 1, '2023-01-11 00:21:40', NULL),
(9, 'Chicken Pork Adobo', 'Main Course', 'chicken_pork_adobo.jpg', '630.00', 'Chicken Pork Adobo is a version of classic Filipino stew combining chicken pieces and pork cubes.', 1, '2023-01-11 00:21:40', NULL),
(10, 'Grilled Squid', 'Main Course', 'grilled_squid.jpg', '550.00', 'The simple grilled squid recipe uses a fantastic cumin marinade for a Middle Eastern twist.', 1, '2023-01-11 00:21:40', NULL),
(11, 'Fresh Fruit Platter', 'Dessert', 'fresh_fruit_platter.jpg', '300.00', 'It is a base of ripe, colorful, sliced melons and pineapples.', 1, '2023-01-11 00:21:40', NULL),
(12, 'Banana Split', 'Dessert', 'banana_split.jpg', '360.00', 'A banana split is an ice cream-based dessert.', 1, '2023-01-11 00:21:40', NULL),
(13, 'Chocolate Vanilla Sundae', 'Dessert', 'chocolate_vanilla_sundae.jpeg', '200.00', 'This is a rich sundae made with brownies, vanilla ice cream, chocolate syrup, and whipped cream.', 1, '2023-01-11 00:21:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_orders`
--

CREATE TABLE `food_orders` (
  `food_id` int(10) UNSIGNED NOT NULL,
  `room_booking_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `cost` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `caption` varchar(30) DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `images`
--

INSERT INTO `images` (`id`, `name`, `caption`, `is_primary`, `status`, `room_type_id`, `created_at`, `updated_at`) VALUES
(1, '1.jpg', 'Bright Room', 1, 1, 1, '2023-01-11 00:21:39', NULL),
(2, '2.jpg', 'Out View', 0, 1, 1, '2023-01-11 00:21:39', NULL),
(3, '3.jpg', 'Swimming in the Dusk', 0, 1, 1, '2023-01-11 00:21:39', NULL),
(4, '4.jpg', 'A fine Winter', 1, 1, 2, '2023-01-11 00:21:39', NULL),
(5, '5.jpg', 'Minimal', 0, 1, 2, '2023-01-11 00:21:39', NULL),
(6, '6.jpg', 'Abstract', 0, 1, 2, '2023-01-11 00:21:39', NULL),
(7, '7.jpg', 'New Concept', 1, 1, 3, '2023-01-11 00:21:39', NULL),
(8, '8.jpg', 'New Concept', 0, 1, 3, '2023-01-11 00:21:39', NULL),
(9, '9.jpg', 'Best Concept', 0, 1, 3, '2023-01-11 00:21:39', NULL),
(10, '10.jpg', 'New thing', 1, 1, 4, '2023-01-11 00:21:39', NULL),
(11, '11.jpg', 'Room with cool aspects', 0, 1, 4, '2023-01-11 00:21:39', NULL),
(12, '12.jpg', 'Amazing Room', 0, 1, 4, '2023-01-11 00:21:39', NULL),
(13, '13.jpg', 'Room with ac', 1, 1, 5, '2023-01-11 00:21:39', NULL),
(14, '14.jpg', 'Cozy Room', 0, 1, 5, '2023-01-11 00:21:39', NULL),
(15, '15.jpg', 'Artful room', 0, 1, 5, '2023-01-11 00:21:39', NULL),
(16, '16.jpg', 'Sculpture Room', 1, 1, 6, '2023-01-11 00:21:39', NULL),
(17, '17.jpg', 'Bath Room', 0, 1, 6, '2023-01-11 00:21:39', NULL),
(18, '18.jpg', 'Cooler Room', 0, 1, 6, '2023-01-11 00:21:39', NULL),
(19, '19.jpg', 'Whats new', 0, 1, 2, '2023-01-11 00:21:39', NULL),
(20, '20.jpg', 'Summer Breeze', 0, 1, 2, '2023-01-11 00:21:39', NULL),
(21, '21.jpg', 'Autumn Breeze', 0, 1, 3, '2023-01-11 00:21:39', NULL),
(22, '22.jpg', 'New Breeze', 0, 1, 1, '2023-01-11 00:21:39', NULL),
(23, '23.jpg', 'Full Breeze', 0, 1, 1, '2023-01-11 00:21:39', NULL),
(24, '24.jpg', 'Coz Breeze', 0, 1, 1, '2023-01-11 00:21:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_29_024654_create_slider_table', 1),
(4, '2018_03_29_024713_create_facilities_table', 1),
(5, '2018_03_29_024753_create_room_types_table', 1),
(6, '2018_03_29_024939_create_facility_room_type_table', 1),
(7, '2018_03_29_025055_create_images_table', 1),
(8, '2018_03_29_025121_create_rooms_table', 1),
(9, '2018_03_29_025157_create_room_bookings_table', 1),
(10, '2018_03_29_025158_create_reviews_table', 1),
(11, '2018_03_29_031146_create_foods_table', 1),
(12, '2018_03_29_031207_create_food_orders_table', 1),
(13, '2018_04_07_022022_create_events_table', 1),
(14, '2018_04_08_025158_create_event_bookings_table', 1),
(15, '2018_05_06_035355_create_pages_table', 1),
(16, '2018_05_06_050318_create_subscribers_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(15) NOT NULL,
  `url_title` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `title`, `url_title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About', 'about', 'Our Hotel is best among all.', 1, '2023-01-11 00:21:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` varchar(100) NOT NULL,
  `rating` enum('0','1','2','3','4','5') NOT NULL,
  `approval_status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `room_booking_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_number` varchar(5) NOT NULL,
  `description` text NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rooms`
--

INSERT INTO `rooms` (`id`, `room_number`, `description`, `available`, `status`, `room_type_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'Et ea laudantium omnis. Nihil ab ut sunt. Veritatis magni voluptatem consectetur harum et non nemo. Et quibusdam omnis fugiat nam voluptatem ipsa tempore quos.', 1, 1, 5, '2023-01-11 00:21:39', '2023-01-11 00:21:39'),
(2, '2', 'Provident accusamus quasi cupiditate reprehenderit aut voluptatum vero. Cumque est ut repellat corporis. Ut unde qui alias velit itaque autem aut.', 1, 1, 3, '2023-01-11 00:21:39', '2023-01-11 00:21:39'),
(3, '3', 'Voluptatum vel quisquam fugit illo. Eveniet sit aspernatur repellendus sit perspiciatis. Eum repellendus aut officiis saepe. Inventore quidem repudiandae pariatur aliquid dicta ipsam alias cum.', 1, 1, 3, '2023-01-11 00:21:39', '2023-01-11 00:21:39'),
(4, '4', 'Saepe dolore saepe et delectus aspernatur. Qui deleniti molestias et aperiam expedita minus. Cumque aut enim quae. Facere consequatur repellat aliquid perferendis.', 1, 1, 1, '2023-01-11 00:21:39', '2023-01-11 00:21:39'),
(5, '5', 'Sit ut iste officia vel illo dolores sapiente. Enim ipsam et aut ea voluptatem cumque. Ut voluptatem quia commodi ducimus.', 1, 1, 5, '2023-01-11 00:21:39', '2023-01-11 00:21:39'),
(6, '6', 'Enim eius rerum sed odit aliquid eos. Alias vitae reprehenderit magni quia a inventore nobis ipsa. Qui totam tempora magnam incidunt.', 1, 1, 5, '2023-01-11 00:21:39', '2023-01-11 00:21:39'),
(7, '7', 'Enim voluptatem exercitationem adipisci commodi porro aperiam. Ex minus id unde at. Repellat aut voluptatibus sunt velit accusantium.', 1, 1, 4, '2023-01-11 00:21:39', '2023-01-11 00:21:39'),
(8, '8', 'Et quam sit earum qui illum et ut. Sit est saepe eaque sint tempore.', 1, 1, 1, '2023-01-11 00:21:39', '2023-01-11 00:21:39'),
(9, '9', 'Quod nihil dicta ipsam eos. Quam et itaque et consectetur quam. Mollitia et eius aut dolores eveniet eveniet. Dolores et officia deserunt ducimus eum et cumque.', 1, 1, 5, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(10, '10', 'Cupiditate aut modi quam velit qui. Excepturi facere deleniti eligendi veritatis fuga aut. Earum occaecati atque qui qui minima.', 1, 1, 5, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(11, '11', 'Placeat ut sed laudantium aut quas. Quas minus vitae ea illum autem. Et et reprehenderit et quo alias est. Quidem nostrum laboriosam quia ab rerum necessitatibus.', 1, 1, 4, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(12, '12', 'Rerum corrupti voluptatum est et sunt ipsum. Modi dolores voluptas fuga est beatae sapiente. Et vel quo quisquam ut earum sint nostrum.', 1, 1, 3, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(13, '13', 'Mollitia dolores voluptas accusantium maiores ipsa et. Totam autem aut corrupti aut distinctio eaque hic enim. Corporis voluptas est nobis nemo velit.', 1, 1, 3, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(14, '14', 'Fuga id et recusandae excepturi perferendis quam et. Eos voluptatem in sint aut dolores vero vero. Harum necessitatibus consequuntur ipsum. Et ab quibusdam fugit maxime doloremque molestiae quisquam.', 1, 1, 4, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(15, '15', 'Molestiae minus voluptates aut molestias blanditiis. Nihil et laborum ea tenetur et. Tempora consequatur consequatur quos eligendi in aperiam. Expedita illo praesentium quisquam ex ab.', 1, 1, 3, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(16, '16', 'Ut maxime culpa ut consequatur id minima quia voluptas. Id beatae quis eaque in explicabo eius cupiditate. Enim placeat unde harum ipsum saepe nam. Qui enim expedita perspiciatis enim.', 1, 1, 6, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(17, '17', 'Temporibus nihil iure nam hic sed voluptas. Et consequatur ipsum vel eveniet a odit. Optio nesciunt aut reiciendis laborum.', 1, 1, 1, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(18, '18', 'Omnis dolor rerum eveniet et cupiditate libero. Rem tenetur ut mollitia. Quo fuga facere nihil libero. Quisquam ut minima sit voluptatem.', 1, 1, 6, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(19, '19', 'Minus iure officia officiis amet et. Omnis quam perspiciatis hic velit non sit. Ipsum neque tenetur quidem quisquam debitis.', 1, 1, 6, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(20, '20', 'Consectetur voluptatem est sed animi. Sit ipsa vero ratione quia unde. Nisi dolor dolore dolorem recusandae est. Excepturi sed aut quidem.', 1, 1, 5, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(21, '21', 'Fugiat enim voluptas quisquam est laudantium quibusdam. Dolorem voluptas et atque enim labore consequatur id alias. Nobis eveniet id deleniti qui omnis.', 1, 1, 5, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(22, '22', 'Sed qui est tenetur qui itaque asperiores modi. Sapiente voluptas consequatur natus. Minus ipsum nihil et quia molestiae.', 1, 1, 4, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(23, '23', 'Rerum molestias autem corrupti. Architecto aut exercitationem et soluta. Qui dicta eos sapiente expedita magni.', 1, 1, 2, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(24, '24', 'Totam sit eos ad voluptatem rerum. Quidem fugit reiciendis facilis dolor eaque eius praesentium veritatis. Corrupti quas qui aut est et sequi.', 1, 1, 5, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(25, '25', 'Nobis sed quia voluptatum et eligendi. Repellat modi qui sunt dolore.', 1, 1, 1, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(26, '26', 'Commodi numquam dolores nobis nesciunt. Est eaque aut vel animi. Quisquam tenetur possimus et voluptatibus dolorem a aut.', 1, 1, 5, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(27, '27', 'Laborum consequatur non sed eligendi. Aliquid eaque qui et. Itaque vero reiciendis incidunt impedit dolorum.', 1, 1, 6, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(28, '28', 'At deserunt porro architecto eveniet iusto corrupti id. Unde non tenetur qui aut molestias accusantium dolorem. Occaecati expedita culpa repellat et eum exercitationem distinctio.', 1, 1, 6, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(29, '29', 'Quae quia et ipsam laudantium est animi. Facilis corrupti sunt enim sit. Quidem explicabo quas eum commodi est. Eligendi veritatis quis fugiat atque.', 1, 1, 3, '2023-01-11 00:21:40', '2023-01-11 00:21:40'),
(30, '30', 'Voluptatem dolorem quis assumenda corrupti. Autem laboriosam assumenda ea et et veritatis temporibus. Rerum voluptatum quos recusandae libero.', 1, 1, 5, '2023-01-11 00:21:40', '2023-01-11 00:21:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `room_bookings`
--

CREATE TABLE `room_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `arrival_date` date NOT NULL,
  `departure_date` date DEFAULT NULL,
  `room_cost` int(11) NOT NULL,
  `status` enum('pending','checked_in','checked_out','cancelled') NOT NULL DEFAULT 'pending',
  `payment` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `room_bookings`
--

INSERT INTO `room_bookings` (`id`, `room_id`, `user_id`, `arrival_date`, `departure_date`, `room_cost`, `status`, `payment`, `created_at`, `updated_at`) VALUES
(7, 4, 1, '2023-01-11', '2023-01-11', 295212, 'pending', 0, '2023-01-11 01:07:22', '2023-01-11 01:07:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `room_types`
--

CREATE TABLE `room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `cost_per_day` int(11) NOT NULL,
  `discount_percentage` int(11) NOT NULL DEFAULT 0,
  `size` int(11) DEFAULT NULL,
  `max_adult` int(11) DEFAULT 0,
  `max_child` int(11) DEFAULT 0,
  `description` text DEFAULT NULL,
  `room_service` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `room_types`
--

INSERT INTO `room_types` (`id`, `name`, `cost_per_day`, `discount_percentage`, `size`, `max_adult`, `max_child`, `description`, `room_service`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Suite', 250000, 5, 3000, 10, 5, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\r\n\r\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 1, 1, '2023-01-11 00:21:39', '2023-01-11 00:21:39'),
(2, 'Mini Suite', 180000, 10, 2000, 8, 4, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\r\n\r\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 1, 1, '2023-01-11 00:21:39', '2023-01-11 00:21:39'),
(3, 'Ultra Deluxe', 140000, 0, 1400, 5, 2, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\r\n\r\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 1, 1, '2023-01-11 00:21:39', '2023-01-11 00:21:39'),
(4, 'Luxury Room', 90000, 0, 800, 4, 2, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\r\n\r\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 0, 1, '2023-01-11 00:21:39', '2023-01-11 00:21:39'),
(5, 'Premium Room', 160000, 0, 500, 3, 2, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\r\n\r\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 0, 1, '2023-01-11 00:21:39', '2023-01-11 00:21:39'),
(6, 'Normal Room', 130000, 0, 300, 2, 1, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\r\n\r\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 0, 1, '2023-01-11 00:21:39', '2023-01-11 00:21:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `small_title` varchar(30) DEFAULT NULL,
  `big_title` varchar(30) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `link_text` varchar(15) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id`, `name`, `small_title`, `big_title`, `description`, `link`, `link_text`, `status`, `created_at`, `updated_at`) VALUES
(1, '1.jpg', 'AR HOTEL', 'SELAMAT DATANG', 'Booking Hotel Murah dan Berkualitas', 'room_type/1', 'Book Now', 1, '2023-01-11 00:21:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `about` varchar(300) DEFAULT NULL,
  `facebook_id` varchar(191) DEFAULT NULL,
  `twitter_id` varchar(191) DEFAULT NULL,
  `google_id` varchar(191) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `phone`, `address`, `email`, `password`, `avatar`, `about`, `facebook_id`, `twitter_id`, `google_id`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Arfiyan', 'Wahyu', 'female', '9866893439', 'Kathmandu', 'admin@gmail.com', '$2y$10$xUekrIX5MsfFZQs2PDa77.WvjnLUiZIQ5jXb25v6WUlv5xzZ.70Uu', 'man.png', 'hello from the other world', NULL, NULL, NULL, 'admin', 1, 'hbye61NpqDIGY3CTn9uzMWG9DmjvrvPMaOMvstpQGnzUeHlxaFRkBgzjsPey', '2023-01-11 00:21:37', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_name_unique` (`name`);

--
-- Indeks untuk tabel `event_bookings`
--
ALTER TABLE `event_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_bookings_user_id_index` (`user_id`),
  ADD KEY `event_bookings_event_id_index` (`event_id`);

--
-- Indeks untuk tabel `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `facilities_name_unique` (`name`);

--
-- Indeks untuk tabel `facility_room_type`
--
ALTER TABLE `facility_room_type`
  ADD KEY `facility_room_type_facility_id_index` (`facility_id`),
  ADD KEY `facility_room_type_room_type_id_index` (`room_type_id`);

--
-- Indeks untuk tabel `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `food_orders`
--
ALTER TABLE `food_orders`
  ADD KEY `food_orders_food_id_index` (`food_id`),
  ADD KEY `food_orders_room_booking_id_index` (`room_booking_id`);

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_room_type_id_index` (`room_type_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_room_booking_id_index` (`room_booking_id`);

--
-- Indeks untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rooms_room_number_unique` (`room_number`),
  ADD KEY `rooms_room_type_id_index` (`room_type_id`);

--
-- Indeks untuk tabel `room_bookings`
--
ALTER TABLE `room_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_bookings_room_id_index` (`room_id`),
  ADD KEY `room_bookings_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_types_name_unique` (`name`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_facebook_id_unique` (`facebook_id`),
  ADD UNIQUE KEY `users_twitter_id_unique` (`twitter_id`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `event_bookings`
--
ALTER TABLE `event_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `room_bookings`
--
ALTER TABLE `room_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `event_bookings`
--
ALTER TABLE `event_bookings`
  ADD CONSTRAINT `event_bookings_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `facility_room_type`
--
ALTER TABLE `facility_room_type`
  ADD CONSTRAINT `facility_room_type_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facility_room_type_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `food_orders`
--
ALTER TABLE `food_orders`
  ADD CONSTRAINT `food_orders_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_orders_room_booking_id_foreign` FOREIGN KEY (`room_booking_id`) REFERENCES `room_bookings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_room_booking_id_foreign` FOREIGN KEY (`room_booking_id`) REFERENCES `room_bookings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `room_bookings`
--
ALTER TABLE `room_bookings`
  ADD CONSTRAINT `room_bookings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
