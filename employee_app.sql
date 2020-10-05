-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2020 at 06:48 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `othername` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `residential_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `digital_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hometown` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` int(11) NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_holder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GRA_tin_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SSNIT_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `firstname`, `surname`, `othername`, `gender`, `nationality`, `birth`, `email`, `residential_address`, `postal_address`, `digital_address`, `home_phone`, `mobile_phone`, `hometown`, `marital`, `region`, `facebook`, `twitter`, `instagram`, `linkedin`, `skype`, `whatsapp`, `photo_id`, `bank_name`, `branch`, `account_holder`, `account_number`, `GRA_tin_number`, `SSNIT_number`, `created_at`, `updated_at`) VALUES
(2, 'Linda', 'James', 'Ralph Puckett', 'male', 'Eiusmod ipsum et do', '2019-07-17', 'rizonod@mailinator.com', 'Et culpa voluptate a', 'Voluptatem sed alia', 'Non natus aute est u', '0000000000', '1111111111', 'Molestias totam beat', 'single', 'Ut numquam maiores q', 'Nisi amet nihil del', 'Enim quaerat officia', 'Nisi modi esse est', 'Magnam culpa quis ne', 'Nostrud aute lorem l', 'Magna dolore eos qu', 2, 'Leila Haley', 'Voluptas asperiores', 'Tempor consequatur', '561', '191', '795', '2020-10-05 15:31:26', '2020-10-05 15:31:26'),
(3, 'Oleg', 'Wise', 'Garrett Farrell', 'female', 'Consequat Temporibu', '1984-06-23', 'hyfezisona@mailinator.com', 'Possimus adipisicin', 'Irure dolorem sit au', 'Dolorem occaecat qua', '1111111111', '2222222222', 'Qui ipsum commodo li', 'married', 'Deserunt optio qui', 'Minima qui dolor ali', 'In eligendi in bland', 'Reiciendis elit sol', 'Nisi dolores aliquam', 'Facere obcaecati sim', 'Nobis itaque sapient', 3, 'Doris Watson', 'Consectetur mollit', 'Voluptate eum nihil', '28', '866', '98', '2020-10-05 15:32:25', '2020-10-05 15:32:25'),
(4, 'Whoopi', 'Andrews', 'Amanda Callahan', 'female', 'Consequuntur corrupt', '2004-08-16', 'femoz@mailinator.com', 'Quis aut quo quasi o', 'Exercitation accusan', 'Sed expedita ut amet', '4444444444', '4444444447', 'Dolores repudiandae', 'single', 'Sunt vitae dolores r', 'Eveniet molestiae n', 'Est quia rerum nihi', 'Nulla id nemo obcaec', 'Pariatur Maxime lab', 'A minim atque sequi', 'Reprehenderit a qui', 4, 'Xenos Stark', 'Ut reprehenderit te', 'Qui alias deleniti n', '444', '846', '299', '2020-10-05 15:36:16', '2020-10-05 15:36:16'),
(5, 'Alexa', 'Bates', 'John Erickson', 'male', 'Nostrum voluptates e', '1982-02-23', 'wibyqamub@mailinator.com', 'Et incidunt ex fuga', 'Vel dolorem architec', 'Sapiente est repudi', '4444444456', '4444444488', 'Fugiat ipsum volupt', 'married', 'Dolores possimus ad', 'Non consequatur Lau', 'Officia eos tempora', 'Quis dicta delectus', 'Possimus et minima', 'Iusto in dolore est', 'Nesciunt deleniti d', 5, 'Zephr Sweeney', 'Voluptatibus ipsam q', 'Ea qui eum delectus', '167', '403', '113', '2020-10-05 15:37:15', '2020-10-05 15:37:15'),
(6, 'Evangeline', 'Berger', 'Lewis Pratt', 'female', 'Consequatur anim ali', '1984-10-27', 'pylecisofy@mailinator.com', 'Ut qui iste doloremq', 'Facere consectetur', 'Et sint in tempor q', '1444444444', '2444444444', 'Quis aut elit paria', 'married', 'Sunt culpa ullamco', 'Quibusdam commodi no', 'Deleniti laborum in', 'Maiores aut minus el', 'Veritatis quisquam r', 'Aut eos dolorum aut', 'In voluptatem Quam', 6, 'Leila Joyce', 'Esse exercitation se', 'Commodo debitis duis', '11', '803', '169', '2020-10-05 15:38:38', '2020-10-05 15:38:38'),
(7, 'Eleanor', 'Burgess', 'Gage Pacheco', 'male', 'Voluptatem Deserunt', '1986-04-17', 'geqefox@mailinator.com', 'Voluptas impedit vo', 'Quis amet odio volu', 'Cum pariatur Error', '1111181111', '0000004000', 'Mollitia rem quis ma', 'married', 'Ea non est dolorem', 'In rerum ullamco ani', 'Laborum Adipisci fu', 'Dolore dolorum volup', 'Laboris sunt commodo', 'Voluptas veritatis e', 'Voluptas accusantium', 7, 'Gareth Mullen', 'Lorem ipsa dolor au', 'Et sed dolorem dolor', '459', '143', '625', '2020-10-05 16:16:25', '2020-10-05 16:16:25'),
(8, 'Indigo', 'Boyle', 'Ian Mack', 'female', 'Recusandae Providen', '1980-08-10', 'cipyn@mailinator.com', 'Eligendi facere quae', 'Rem ab vitae quas si', 'Quia temporibus quae', '0000005600', '2222422222', 'Ad rem doloremque di', 'single', 'Laboriosam consequa', 'Sit culpa reprehend', 'Lorem soluta ex ut e', 'Laboris voluptas mol', 'Aliquid qui exceptur', 'Eum sed aliqua Fugi', 'Nam illum omnis qui', 8, 'Baxter Villarreal', 'Iure ad ullamco inci', 'Aliquid eveniet con', '732', '93', '815', '2020-10-05 16:21:36', '2020-10-05 16:21:36'),
(9, 'Sara', 'Hickman', 'Benjamin Pratt', 'male', 'Qui voluptas commodi', '1996-08-12', 'cyjykyhodo@mailinator.com', 'Quia accusamus non q', 'Provident unde qui', 'Voluptatibus necessi', '1111111133', '2222222221', 'Consequuntur vel ea', 'single', 'Soluta harum culpa', 'Minim ex inventore c', 'Ullamco ab corrupti', 'Minus qui aut ut ali', 'Aut sit laboriosam', 'Ad excepturi dolores', 'Qui itaque enim earu', 9, 'Xantha Ortega', 'Ut quisquam similiqu', 'Voluptas consequatur', '844', '193', '355', '2020-10-05 16:22:34', '2020-10-05 16:22:34'),
(10, 'Leo', 'Yates', 'Jarrod Ayala', 'male', 'Est esse est volupta', '1992-11-26', 'pufutyf@mailinator.com', 'Quod adipisci quasi', 'Reiciendis fugiat et', 'Repudiandae at dicta', '0000000888', '1111111000', 'Deserunt sed et dolo', 'single', 'Velit nulla illum c', 'Quae id a nemo nihi', 'Aliquid id saepe ven', 'Iusto qui reprehende', 'Voluptatem ea quam', 'Quam ea eum ut ipsam', 'Sint et nostrum aut', 10, 'Jin Harris', 'Hic sed ut labore ab', 'Voluptates voluptate', '476', '143', '412', '2020-10-05 16:25:48', '2020-10-05 16:25:48'),
(11, 'Cadman', 'Caldwell', 'Darryl Glover', 'male', 'Beatae duis hic in v', '1994-03-11', 'tyjyhuza@mailinator.com', 'Repellendus Quo nat', 'Aliquam aute sit of', 'Soluta ullamco repud', '1111111130', '2222222228', 'Assumenda incidunt', 'single', 'Quisquam ut omnis no', 'Et facilis aliqua V', 'Hic nostrum adipisci', 'Repudiandae lorem pa', 'Sed est et ea moles', 'Ratione quia autem a', 'Corporis proident u', 11, 'Erin Williamson', 'Eaque praesentium ar', 'Ut quis enim labore', '511', '891', '157', '2020-10-05 16:26:33', '2020-10-05 16:26:33');

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
(3, '2020_09_29_120422_create_photos_table', 1),
(4, '2020_09_29_120835_create_roles_table', 1),
(5, '2020_09_29_125605_create_employees_table', 1);

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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `file`, `created_at`, `updated_at`) VALUES
(1, '16019117940QpP2NSG.jpg', '2020-10-05 15:29:54', '2020-10-05 15:29:54'),
(2, '16019118860QpP2NSG.jpg', '2020-10-05 15:31:26', '2020-10-05 15:31:26'),
(3, '160191194536.jpg', '2020-10-05 15:32:25', '2020-10-05 15:32:25'),
(4, '160191217643.jpg', '2020-10-05 15:36:16', '2020-10-05 15:36:16'),
(5, '160191223544.jpg', '2020-10-05 15:37:15', '2020-10-05 15:37:15'),
(6, '160191231846.jpg', '2020-10-05 15:38:38', '2020-10-05 15:38:38'),
(7, '160191458576.jpg', '2020-10-05 16:16:25', '2020-10-05 16:16:25'),
(8, '160191489680.jpg', '2020-10-05 16:21:36', '2020-10-05 16:21:36'),
(9, '160191495486.jpg', '2020-10-05 16:22:34', '2020-10-05 16:22:34'),
(10, '160191514791.jpg', '2020-10-05 16:25:47', '2020-10-05 16:25:47'),
(11, '160191519397.jpg', '2020-10-05 16:26:33', '2020-10-05 16:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'guest', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'james', 'james@gmail.com', NULL, '$2y$10$DcanLyB.26.pMToYdMLbwuNImT8MnAlrRGydt4BykI5X9TW7jaWaa', 'vMp993t31zLD0mR4cqrUxTLfOVIu4EGHMXNnZ9UGGZWnHtvVGFH4fdm2NZb8', '2020-10-05 14:54:01', '2020-10-05 14:54:01'),
(2, 2, 'jerry', 'jerry@gmail.com', NULL, '$2y$10$r9eouyTaiTdB2pvG3tO/..K1hnQKzsj/G7J/25hpOEYx8DLUs8b4W', 'bj21WUzFqNebAOetcaz0c5wYoIC6TySWnaAxmweB7T4b5aOYS7uiY9gZZxHc', '2020-10-05 16:23:18', '2020-10-05 16:23:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
