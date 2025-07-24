-- phpMyAdmin SQL Dump
-- version 5.2.1deb1+deb12u1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 24 juil. 2025 à 21:44
-- Version du serveur : 10.11.11-MariaDB-0+deb12u1
-- Version de PHP : 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecodeli`
--

-- --------------------------------------------------------

--
-- Structure de la table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `administrateurs`
--

CREATE TABLE `administrateurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_utilisateur` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `administrateurs`
--

INSERT INTO `administrateurs` (`id`, `id_utilisateur`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(2, 4, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(3, 55, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(4, 56, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(5, 57, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(6, 58, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(7, 62, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(8, 66, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(9, 67, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(10, 69, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(11, 70, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(12, 72, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(13, 73, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(14, 75, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(15, 80, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(16, 81, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(17, 82, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(18, 83, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(19, 85, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(20, 2, '2025-06-29 15:50:38', '2025-06-29 15:50:38'),
(21, 3, NULL, NULL),
(23, 112, '2025-07-11 08:24:33', '2025-07-11 08:24:33');

-- --------------------------------------------------------

--
-- Structure de la table `annonces_prestataires`
--

CREATE TABLE `annonces_prestataires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `date` datetime NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `code_validated_at` timestamp NULL DEFAULT NULL,
  `client_nom` varchar(255) DEFAULT NULL,
  `client_email` varchar(255) DEFAULT NULL,
  `adresse_prestation` text DEFAULT NULL,
  `date_prestation` date DEFAULT NULL,
  `heure_prestation` time DEFAULT NULL,
  `id_prestataire` bigint(20) UNSIGNED NOT NULL,
  `id_client` bigint(20) UNSIGNED DEFAULT NULL,
  `code_validation` varchar(6) DEFAULT NULL,
  `code_generated_at` timestamp NULL DEFAULT NULL,
  `id_prestation` bigint(20) UNSIGNED DEFAULT NULL,
  `statut_validation` enum('en_attente','valide','termine') NOT NULL DEFAULT 'en_attente',
  `validated_at` timestamp NULL DEFAULT NULL,
  `validated_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annonces_prestataires`
--

INSERT INTO `annonces_prestataires` (`id`, `created_at`, `updated_at`, `title`, `description`, `category`, `price`, `date`, `location`, `status`, `code_validated_at`, `client_nom`, `client_email`, `adresse_prestation`, `date_prestation`, `heure_prestation`, `id_prestataire`, `id_client`, `code_validation`, `code_generated_at`, `id_prestation`, `statut_validation`, `validated_at`, `validated_by`) VALUES
(82, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 'Tonte de pelouse et taille de haies', 'Error quia ad rerum quod ut suscipit et sed nisi facere quasi qui dicta voluptas voluptas veritatis hic dolore.', 'Informatique', 198.21, '2025-07-28 11:36:11', 'Proche Gare, Nice', 1, NULL, NULL, NULL, NULL, NULL, NULL, 18, 43, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(83, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 'Cours de mathématiques niveau lycée', 'Et perspiciatis ut deserunt optio dolorem numquam occaecati dolore fugit amet eos suscipit et harum.', 'Événementiel', 380.18, '2025-07-14 11:24:48', 'Périphérie, Strasbourg', 2, NULL, NULL, NULL, NULL, NULL, NULL, 18, 43, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(84, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 'Installation d\'étagères murales', 'Corrupti eos magnam velit ipsa atque temporibus fuga odio vel quod sunt aperiam omnis nihil enim.', 'Informatique', 490.59, '2025-07-28 20:21:55', 'Proche Gare, Nice', 1, NULL, NULL, NULL, NULL, NULL, NULL, 18, 43, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(85, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 'Nettoyage complet d\'appartement', 'Veritatis id qui et eum placeat odio reprehenderit iste fugiat sit dicta quidem esse minima adipisci molestias eum quibusdam.', 'Bricolage', 391.62, '2025-07-17 13:34:49', 'Hypercentre, Bordeaux', 2, NULL, NULL, NULL, NULL, NULL, NULL, 19, 36, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(86, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 'Préparation de repas pour événement', 'Consequatur accusamus sunt iusto non rem ipsam voluptas voluptatem et voluptas omnis.', 'Bricolage', 397.67, '2025-07-08 01:56:53', 'Proche Gare, Nice', 2, NULL, NULL, NULL, NULL, NULL, NULL, 19, 36, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(87, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 'Séance de coiffure à domicile', 'Ipsam aliquam consequatur velit dolorum officiis non voluptatem in est atque ad magni blanditiis dolorem corporis.', 'Santé', 30.61, '2025-08-04 07:42:42', 'Hypercentre, Paris', 0, NULL, NULL, NULL, NULL, NULL, NULL, 19, 36, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(88, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 'Dépannage informatique', 'Dolor tempore exercitationem amet accusantium aspernatur quaerat tenetur eaque dolor.', 'Jardinage', 208.64, '2025-07-19 15:14:32', 'Périphérie, Rennes', 1, NULL, NULL, NULL, NULL, NULL, NULL, 20, 40, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(89, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 'Montage de meubles IKEA', 'Voluptatem id alias dolore quasi illo tenetur ullam quos quo id natus numquam a.', 'Beauté', 374.6, '2025-08-05 19:25:42', 'Zone Résidentielle, Marseille', 1, NULL, NULL, NULL, NULL, NULL, NULL, 20, 40, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(90, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 'Traduction de documents', 'Quia aliquid dolor suscipit quidem voluptas tenetur libero laudantium nostrum et asperiores officiis animi fugit rerum expedita qui nam ipsa.', 'Beauté', 223.01, '2025-07-17 10:05:06', 'Quartier Sud, Toulouse', 0, NULL, NULL, NULL, NULL, NULL, NULL, 20, 40, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(91, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 'Tonte de pelouse et taille de haies', 'Id pariatur sed dolorum modi iure est repellat adipisci ea rerum.', 'Transport', 490.66, '2025-07-20 21:17:21', 'Proche Gare, Nice', 0, NULL, NULL, NULL, NULL, NULL, NULL, 21, 52, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(92, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 'Réparation de robinet qui fuit', 'Beatae consequatur vel consequatur et quia omnis et harum ducimus nesciunt.', 'Nettoyage', 138.84, '2025-07-12 03:56:50', 'Quartier Nord, Lille', 0, NULL, NULL, NULL, NULL, NULL, NULL, 21, 52, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(93, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 'Montage de meubles IKEA', 'Suscipit non non non optio minus et quod quos harum voluptatibus.', 'Informatique', 49.13, '2025-07-14 21:25:05', 'Quartier Sud, Nantes', 3, NULL, NULL, NULL, NULL, NULL, NULL, 21, 52, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(94, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 'Installation d\'étagères murales', 'Labore delectus rem et rerum porro consequuntur est laboriosam sit beatae et consectetur harum dolores est nam.', 'Santé', 445.6, '2025-08-03 21:59:14', 'Quartier Sud, Montpellier', 0, NULL, NULL, NULL, NULL, NULL, NULL, 22, 53, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(95, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 'Traduction de documents', 'Numquam mollitia possimus itaque animi possimus adipisci earum eos impedit natus laudantium rerum corporis quidem architecto quas.', 'Éducation', 70.35, '2025-07-17 04:36:26', 'Proche Gare, Marseille', 2, NULL, NULL, NULL, NULL, NULL, NULL, 22, 53, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(96, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 'Nettoyage complet d\'appartement', 'Officia in enim libero reiciendis facilis et distinctio sapiente et id sint debitis tempore natus quo quam maiores doloremque dolores.', 'Éducation', 450.02, '2025-07-28 00:24:00', 'Zone Résidentielle, Toulouse', 1, NULL, NULL, NULL, NULL, NULL, NULL, 22, 53, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(97, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 'Tonte de pelouse et taille de haies', 'Qui dolor minus facere non aut sint qui debitis explicabo dignissimos optio magni numquam sequi.', 'Santé', 137.22, '2025-07-09 20:14:34', 'Hypercentre, Strasbourg', 3, NULL, NULL, NULL, NULL, NULL, NULL, 23, 49, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(98, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 'Garde d\'animaux pendant vacances', 'Harum eveniet ratione est ea excepturi et et reprehenderit officia.', 'Santé', 158.54, '2025-07-06 20:05:15', 'Quartier Nord, Nice', 3, NULL, NULL, NULL, NULL, NULL, NULL, 23, 49, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(99, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 'Préparation de repas pour événement', 'Quia et dicta maiores et consectetur ratione sed provident non harum quo animi eos est vel et pariatur dolorem.', 'Conseil', 115.78, '2025-07-20 02:10:48', 'Proche Gare, Nantes', 3, NULL, NULL, NULL, NULL, NULL, NULL, 23, 49, NULL, NULL, NULL, 'en_attente', NULL, NULL),
(101, '2025-07-16 20:44:40', '2025-07-16 21:24:33', 'test', 'test', NULL, 23, '2025-07-16 09:00:00', 'Paris', 1, NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, 'PJCUAY', NULL, 64, 'termine', '2025-07-16 21:05:51', 2),
(102, '2025-07-16 21:07:09', '2025-07-16 23:20:00', 'tes', 'ttes', NULL, 23, '2025-07-16 09:00:00', 'Strasbourg', 2, NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, 'Q03POY', NULL, 65, 'termine', '2025-07-16 23:20:00', 2),
(103, '2025-07-16 23:20:46', '2025-07-16 23:23:25', 'test', 'test', NULL, 234, '2025-07-24 09:00:00', 'Paris', 2, NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, 'E8VDIZ', NULL, 64, 'termine', '2025-07-16 23:23:25', 2);

-- --------------------------------------------------------

--
-- Structure de la table `badges`
--

CREATE TABLE `badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` enum('quality','performance','reliability','popularity','achievement') NOT NULL,
  `level` enum('bronze','silver','gold','platinum') NOT NULL,
  `requirements` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`requirements`)),
  `icon` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `id_utilisateur` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `conditions` tinyint(1) NOT NULL DEFAULT 0,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `notifications` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `prenom`, `adresse`, `telephone`, `id_utilisateur`, `created_at`, `updated_at`, `conditions`, `newsletter`, `notifications`, `email`) VALUES
(1, 'Aikaya', 'Revia', '15 Rue de la République, 75011 Paris', '0123456789', 2, '2025-06-28 15:44:09', '2025-07-16 23:24:44', 0, 0, 0, NULL),
(2, 'Fay', 'Lenora', '125 Boulevard Haussmann, Lyon', '0416979801', 7, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(3, 'Metz', 'Korbin', '76 Avenue des Champs-Élysées, Toulouse', '0418887339', 10, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(4, 'Schuster', 'Meta', '141 Boulevard Victor Hugo, Le Havre', '0855318511', 11, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(5, 'Jerde', 'Daphney', '128 Avenue de la Liberté, Lyon', '0822897885', 13, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(6, 'Kohler', 'Rupert', '66 Avenue de la Liberté, Nantes', '0726353457', 20, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(7, 'Graham', 'Jasper', '165 Rue de Rivoli, Rennes', '0179137380', 21, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(8, 'Mayer', 'Jaylon', '187 Rue de Rivoli, Saint-Étienne', '0719891841', 27, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(9, 'Marquardt', 'Percival', '184 Boulevard Saint-Germain, Lille', '0208067707', 34, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(10, 'Schinner', 'Elenor', '163 Place de la Mairie, Saint-Étienne', '0507063150', 35, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(11, 'Bahringer', 'Pierce', '197 Boulevard Haussmann, Grenoble', '0343484136', 40, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(12, 'Gorczany', 'Raven', '166 Rue du Commerce, Reims', '0620023213', 41, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(13, 'Harvey', 'Trudie', '196 Boulevard Saint-Germain, Lille', '0687867379', 43, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(14, 'Feeney', 'Sammie', '158 Rue de la République, Marseille', '0154323288', 44, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(15, 'Leannon', 'Sam', '33 Boulevard Haussmann, Paris', '0977283355', 45, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(16, 'Predovic', 'Eudora', '118 Boulevard Victor Hugo, Montpellier', '0186525485', 52, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0, 0, 0, NULL),
(17, 'Waters', 'Nicole', '13 Rue de Rivoli, Bordeaux', '0142128985', 88, '2025-06-28 15:44:41', '2025-06-28 15:44:41', 0, 0, 0, NULL),
(18, 'Marvin', 'Moises', '55 Place de la Mairie, Rennes', '0320685376', 89, '2025-06-28 15:44:41', '2025-06-28 15:44:41', 0, 0, 0, NULL),
(19, 'Muller', 'Chloe', '147 Avenue de la Liberté, Rennes', '0408237011', 90, '2025-06-28 15:44:41', '2025-06-28 15:44:41', 0, 0, 0, NULL),
(25, 'Jérémy', 'zzzzz', '9 sentier des piottes', '0650493018', 103, '2025-06-29 15:52:33', '2025-06-29 15:52:33', 0, 0, 0, NULL),
(27, 'Test', 'Test', 'Test', '8481514848481', 105, '2025-06-30 14:37:18', '2025-06-30 14:37:18', 0, 0, 0, NULL),
(29, 'Test', 'Test', 'Test', '08481818', 107, '2025-06-30 14:41:11', '2025-06-30 14:41:11', 0, 0, 0, NULL),
(31, 'Lucas', 'VALLION', '12 rue mongenot', '0781519668', 109, '2025-06-30 22:09:30', '2025-06-30 22:09:30', 0, 0, 0, NULL),
(32, 'Lucas', 'VALLION', '12 rue mongenot', '0781519668', 110, '2025-06-30 22:20:59', '2025-06-30 22:20:59', 0, 0, 0, NULL),
(34, 'Lucas', 'VALLION', '12 rue mongenot', '0781519668', 112, '2025-07-01 16:39:00', '2025-07-01 16:39:00', 0, 0, 0, NULL),
(35, 'Dubois', 'Marie', '123 Rue de la Paix, 75001 Paris', '+33123456789', 113, '2025-07-04 08:53:19', '2025-07-04 08:53:19', 0, 0, 0, 'marie.dubois@email.com'),
(36, 'Spencer', 'Citlalli', '139 Rue de Rivoli, Nantes', '0421979666', 115, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 0, 0, 0, NULL),
(37, 'Carter', 'Ralph', '198 Boulevard Haussmann, Strasbourg', '0653187184', 116, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 0, 0, 0, NULL),
(38, 'Goodwin', 'Sadie', '162 Avenue Charles de Gaulle, Nantes', '0150805192', 117, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 0, 0, 0, NULL),
(39, 'Simonis', 'Cleveland', '159 Rue Saint-Martin, Nantes', '0740629358', 118, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 0, 0, 0, NULL),
(40, 'Leffler', 'Tiara', '101 Boulevard Saint-Germain, Rennes', '0388565440', 119, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 0, 0, 0, NULL),
(41, 'Pagac', 'Lemuel', '31 Avenue de la Liberté, Saint-Étienne', '0723287241', 120, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 0, 0, 0, NULL),
(42, 'Cruickshank', 'Shaylee', '84 Rue de la Paix, Toulon', '0366608209', 121, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 0, 0, 0, NULL),
(43, 'Herman', 'Royce', '66 Rue du Commerce, Montpellier', '0622245022', 122, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 0, 0, 0, NULL),
(44, 'Dietrich', 'Pat', '195 Avenue Charles de Gaulle, Montpellier', '0145166272', 123, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 0, 0, 0, NULL),
(45, 'Rempel', 'Jewel', '57 Boulevard Haussmann, Nice', '0999097188', 124, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 0, 0, 0, NULL),
(46, 'Marquardt', 'Kelly', '39 Rue Saint-Martin, Strasbourg', '0810724892', 125, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 0, 0, 0, NULL),
(47, 'O\'Hara', 'Omari', '46 Rue de la République, Strasbourg', '0633626493', 126, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 0, 0, 0, NULL),
(48, 'Farrell', 'Kasandra', '39 Boulevard Haussmann, Lyon', '0343429227', 127, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 0, 0, 0, NULL),
(49, 'Greenfelder', 'Lindsay', '134 Boulevard Haussmann, Marseille', '0308277915', 128, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 0, 0, 0, NULL),
(50, 'Nolan', 'Corrine', '83 Avenue des Champs-Élysées, Lyon', '0736803314', 129, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 0, 0, 0, NULL),
(51, 'Sporer', 'Ola', '66 Rue de la Paix, Nice', '0598917405', 130, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 0, 0, 0, NULL),
(52, 'Purdy', 'Fannie', '168 Rue de Rivoli, Paris', '0843930075', 131, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 0, 0, 0, NULL),
(53, 'Dach', 'Lyla', '45 Rue de la République, Nantes', '0208506929', 132, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 0, 0, 0, NULL),
(54, 'Lebsack', 'Jerrod', '98 Avenue des Champs-Élysées, Reims', '0707689629', 133, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 0, 0, 0, NULL),
(55, 'Morar', 'Derick', '47 Place de la Mairie, Montpellier', '0143967304', 134, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 0, 0, 0, NULL),
(56, 'Lucas', 'VALLION', '12 rue mongenot', '00000000', 135, '2025-07-07 09:02:18', '2025-07-07 09:02:18', 0, 0, 0, NULL),
(59, 'test', 'test', 'test', '000000', 138, '2025-07-09 14:36:14', '2025-07-09 14:36:14', 0, 0, 0, NULL),
(60, 'Jérémy', 'aaaaaaaaaa', '9 sentier des piottes', '0650493018', 140, '2025-07-20 20:42:41', '2025-07-20 20:42:41', 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commercants`
--

CREATE TABLE `commercants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_entreprise` varchar(255) NOT NULL,
  `prenom_responsable` varchar(255) NOT NULL,
  `nom_responsable` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `code_postal` varchar(255) DEFAULT NULL,
  `numero_siret` varchar(255) NOT NULL,
  `numero_tva` varchar(255) DEFAULT NULL,
  `date_creation_entreprise` date DEFAULT NULL,
  `nombre_employes` varchar(20) NOT NULL,
  `motivation` text DEFAULT NULL,
  `experience_commerce` text DEFAULT NULL,
  `accepte_conditions` tinyint(1) NOT NULL DEFAULT 0,
  `accepte_traitement_donnees` tinyint(1) NOT NULL DEFAULT 0,
  `statut_validation` enum('en attente','validé','rejeté') NOT NULL DEFAULT 'en attente',
  `subscription_plan` enum('free','platine','diamond') NOT NULL DEFAULT 'free',
  `subscription_status` enum('active','inactive','cancelled','past_due') NOT NULL DEFAULT 'active',
  `plan_type` varchar(255) NOT NULL DEFAULT 'free',
  `subscription_start_date` timestamp NULL DEFAULT NULL,
  `subscription_end_date` timestamp NULL DEFAULT NULL,
  `stripe_customer_id` varchar(255) DEFAULT NULL,
  `stripe_subscription_id` varchar(255) DEFAULT NULL,
  `monthly_delivery_limit` int(11) NOT NULL DEFAULT 5,
  `monthly_deliveries_used` int(11) NOT NULL DEFAULT 0,
  `usage_reset_date` date DEFAULT NULL,
  `has_advanced_analytics` tinyint(1) NOT NULL DEFAULT 0,
  `has_priority_delivery` tinyint(1) NOT NULL DEFAULT 0,
  `has_api_access` tinyint(1) NOT NULL DEFAULT 0,
  `has_priority_support` tinyint(1) NOT NULL DEFAULT 0,
  `has_custom_integrations` tinyint(1) NOT NULL DEFAULT 0,
  `date_verification` timestamp NULL DEFAULT NULL,
  `message_refus` text DEFAULT NULL,
  `authentification_2FA` tinyint(1) NOT NULL DEFAULT 0,
  `email_responsable` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `bic` varchar(255) DEFAULT NULL,
  `titulaire_compte` varchar(255) DEFAULT NULL,
  `site_web` varchar(255) DEFAULT NULL,
  `description_activite` text DEFAULT NULL,
  `produits_services` text DEFAULT NULL,
  `zone_livraison` varchar(255) DEFAULT NULL,
  `types_produits` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`types_produits`)),
  `horaires_ouverture` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`horaires_ouverture`)),
  `image` varchar(255) DEFAULT NULL,
  `id_utilisateur` bigint(20) UNSIGNED NOT NULL,
  `documents` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commercants`
--

INSERT INTO `commercants` (`id`, `nom_entreprise`, `prenom_responsable`, `nom_responsable`, `adresse`, `ville`, `code_postal`, `numero_siret`, `numero_tva`, `date_creation_entreprise`, `nombre_employes`, `motivation`, `experience_commerce`, `accepte_conditions`, `accepte_traitement_donnees`, `statut_validation`, `subscription_plan`, `subscription_status`, `plan_type`, `subscription_start_date`, `subscription_end_date`, `stripe_customer_id`, `stripe_subscription_id`, `monthly_delivery_limit`, `monthly_deliveries_used`, `usage_reset_date`, `has_advanced_analytics`, `has_priority_delivery`, `has_api_access`, `has_priority_support`, `has_custom_integrations`, `date_verification`, `message_refus`, `authentification_2FA`, `email_responsable`, `telephone`, `iban`, `bic`, `titulaire_compte`, `site_web`, `description_activite`, `produits_services`, `zone_livraison`, `types_produits`, `horaires_ouverture`, `image`, `id_utilisateur`, `documents`, `created_at`, `updated_at`) VALUES
(5, 'Ecodeli', 'VALLION', 'Lucas', '12 rue mongenot', 'Paris', '75012', 'sqdqsdsqdsqd', 'qdsdqsdsqdsqdqs', '2000-12-06', '50+', 'qsdqsdsqddqdsqsdsqsdsq', 'qsdqsdqsdqsdqsq', 1, 1, 'validé', 'diamond', 'active', 'diamond', '2025-07-20 21:19:24', '2025-08-20 21:19:24', NULL, 'sub_1Rn4dhQnnivP7VK5ZVRtckGm', 999999, 0, '2025-08-01', 0, 0, 0, 0, 0, '2025-07-20 21:07:28', NULL, 0, 'lucas.vallion05@gmail.com', '0781519668', 'dsqdsqdqsdsqdqsdsqdsqd', NULL, 'Lucas VALLION', 'http://185.255.112.204:4040/', 'sqddqsdsqsqddqsdsq', 'sqdqsdqsdsq', 'Paris', NULL, '\"{\\\"lundi\\\":{\\\"ferme\\\":true},\\\"mardi\\\":{\\\"ferme\\\":true},\\\"mercredi\\\":{\\\"ferme\\\":true},\\\"jeudi\\\":{\\\"ferme\\\":true},\\\"vendredi\\\":{\\\"ferme\\\":true},\\\"samedi\\\":{\\\"ferme\\\":true},\\\"dimanche\\\":{\\\"ferme\\\":true}}\"', NULL, 112, NULL, '2025-07-20 20:35:32', '2025-07-20 21:19:24'),
(6, 'azerty', 'aaaaaaaaaa', 'Jérémy', '9 sentier des piottes', 'noisy le grand', '93160', '1234568123567', 'FR12312312312', '2025-07-10', '50+', 'J4AIME AEJAAEUIHAZEOIAUHZEOIUAY', 'AZZEEOIAUZEPOAZIUEAOPIEUAEOPIUAOIPZE', 1, 1, 'validé', 'platine', 'active', 'platine', '2025-07-20 21:48:11', '2025-08-20 21:48:11', NULL, 'sub_1Rn55VQnnivP7VK5x3kFUE7l', 50, 0, '2025-08-01', 0, 0, 0, 0, 0, '2025-07-20 22:02:56', NULL, 0, 'botose6352@forexru.com', '0650493018', 'FR123567123561723567123', NULL, 'Jérémy aaaaaaaaaa', 'https://ecodeli.com', 'azeazeazeaze', 'bio, fruits_legumes, boissons, azeazeazeaze', 'noisy le grand', NULL, '\"{\\\"lundi\\\":{\\\"ferme\\\":true},\\\"mardi\\\":{\\\"ferme\\\":true},\\\"mercredi\\\":{\\\"ferme\\\":true},\\\"vendredi\\\":{\\\"ferme\\\":true},\\\"jeudi\\\":{\\\"ferme\\\":true},\\\"samedi\\\":{\\\"ferme\\\":true},\\\"dimanche\\\":{\\\"ouverture\\\":\\\"12:00\\\",\\\"fermeture\\\":\\\"11:00\\\"}}\"', NULL, 140, NULL, '2025-07-20 20:48:52', '2025-07-20 22:02:56');

-- --------------------------------------------------------

--
-- Structure de la table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prestation_id` varchar(255) NOT NULL,
  `user1_id` bigint(20) UNSIGNED NOT NULL,
  `user2_id` bigint(20) UNSIGNED NOT NULL,
  `last_message_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conversations`
--

INSERT INTO `conversations` (`id`, `prestation_id`, `user1_id`, `user2_id`, `last_message_at`, `created_at`, `updated_at`) VALUES
(31, '1', 1, 2, '2025-07-06 12:41:11', '2025-07-06 12:41:11', '2025-07-10 10:36:49'),
(33, '74', 2, 10, '2025-07-16 23:21:17', '2025-07-10 09:15:54', '2025-07-16 23:21:17');

-- --------------------------------------------------------

--
-- Structure de la table `conversation_participants`
--

CREATE TABLE `conversation_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` enum('client','prestataire','livreur') NOT NULL,
  `last_read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conversation_participants`
--

INSERT INTO `conversation_participants` (`id`, `conversation_id`, `user_id`, `user_type`, `last_read_at`, `created_at`, `updated_at`) VALUES
(1, 31, 1, 'client', NULL, '2025-07-06 12:41:11', '2025-07-06 12:41:11'),
(2, 31, 2, 'prestataire', NULL, '2025-07-06 12:41:11', '2025-07-06 12:41:11'),
(3, 33, 2, 'client', NULL, '2025-07-10 09:15:54', '2025-07-10 09:15:54'),
(4, 33, 10, 'prestataire', NULL, '2025-07-10 09:15:54', '2025-07-10 09:15:54');

-- --------------------------------------------------------

--
-- Structure de la table `conversation_participants_table_new`
--

CREATE TABLE `conversation_participants_table_new` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `document_justificatifs`
--

CREATE TABLE `document_justificatifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `chemin` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `document_justificatifs`
--

INSERT INTO `document_justificatifs` (`id`, `user_id`, `filename`, `chemin`, `type`, `created_at`, `updated_at`) VALUES
(22, 112, 'image-removebg-preview (3) (2).png', 'documents/yRX6uziWI8whjmv2idreEh2NhG4G8aEc6dnUSUM3.png', 'kbis', '2025-07-20 20:35:32', '2025-07-20 20:35:32'),
(23, 112, 'Administration_Linux_1j (1) (1).pdf', 'documents/2jmWZuOJ3FsgqVr3uIZik9nIAZPaRMS52SOsR7dc.pdf', 'attestation_assurance', '2025-07-20 20:35:32', '2025-07-20 20:35:32'),
(24, 112, 'image-removebg-preview (3) (2).png', 'documents/DWPM0uelv8hM4PaSrdB9QWhreqjZDqbAK6styPmC.png', 'image_entreprise', '2025-07-20 20:35:32', '2025-07-20 20:35:32'),
(25, 140, 'Capture d\'écran 2024-01-30 190729.png', 'documents/LQ9ynoJdZ2HtIOZBPyA35IruEPn8UGuUXhgPGmx3.png', 'kbis', '2025-07-20 20:48:52', '2025-07-20 20:48:52'),
(26, 140, 'Capture d\'écran 2024-12-27 232740.png', 'documents/HnE8Vbe0sxovGEkAXyWMuJhqqs81nt7ezWb3PXhv.png', 'attestation_assurance', '2025-07-20 20:48:52', '2025-07-20 20:48:52'),
(27, 140, 'dEkj-aOcIw52B9RsgY-opyWnw_1a9BBfCZSMwXEBz3M.jpeg', 'documents/nsI5vsc3jYmPkKBjG0eQRF9hZ5BFtO3gucByye6H.jpg', 'image_entreprise', '2025-07-20 20:48:52', '2025-07-20 20:48:52'),
(28, 112, 'image-removebg-preview (3) (2).png', 'documents/Um5HknCLcYaJZx86GersJBLeN92qgf7virQs56T3.png', 'carte_identite', '2025-07-20 21:55:55', '2025-07-20 21:55:55'),
(29, 112, 'image-removebg-preview (3) (2).png', 'documents/tyESmD1TN0TFd6NrY10I5t8JXKzZ2MbIiFlLORS4.png', 'permis_conduire', '2025-07-20 21:55:55', '2025-07-20 21:55:55'),
(30, 140, 'Capture d\'écran 2024-02-11 181454.png', 'documents/APu5NeJUJ5TGWa5Jcncump6nYhX5Pfv98yuagcef.png', 'carte_identite', '2025-07-20 21:58:02', '2025-07-20 21:58:02');

-- --------------------------------------------------------

--
-- Structure de la table `entrepots`
--

CREATE TABLE `entrepots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `max_capacity` int(11) NOT NULL DEFAULT 0,
  `current_capacity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entrepots`
--

INSERT INTO `entrepots` (`id`, `created_at`, `updated_at`, `name`, `address`, `max_capacity`, `current_capacity`) VALUES
(1, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Entrepôt Toulon - Zone Industrielle Nord #8099', '42 Zone Industrielle Nord, Toulon', 4933, 1239),
(2, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Entrepôt Nice - Parc d\'Activités Est #4594', '30 Parc d\'Activités Est, Nice', 3241, 2346),
(3, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Entrepôt Toulon - Zone Industrielle Nord #1441', '24 Zone Industrielle Nord, Toulon', 3135, 1678),
(4, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Entrepôt Nantes - Centre Logistique #1079', '25 Centre Logistique, Nantes', 4888, 374),
(5, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Entrepôt Le Havre - Centre Logistique #5815', '9 Centre Logistique, Le Havre', 1108, 565),
(6, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Entrepôt Toulon - Zone Franche #2983', '15 Zone Franche, Toulon', 1925, 1090),
(7, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Entrepôt Strasbourg - Zone Franche #4255', '28 Zone Franche, Strasbourg', 2199, 1409),
(8, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Entrepôt Paris - Parc d\'Activités Est #4850', '22 Parc d\'Activités Est, Paris', 2368, 855),
(9, '2025-06-28 15:44:41', '2025-06-28 15:44:41', 'Entrepôt Saint-Étienne - Zone Industrielle Nord #1999', '32 Zone Industrielle Nord, Saint-Étienne', 2918, 1295),
(10, '2025-06-28 15:44:41', '2025-06-28 15:44:41', 'Entrepôt Toulon - Zone Logistique Sud #3812', '6 Zone Logistique Sud, Toulon', 4263, 3458),
(11, '2025-06-28 15:44:41', '2025-06-28 15:44:41', 'Entrepôt Le Havre - Zone Logistique Sud #9905', '32 Zone Logistique Sud, Le Havre', 2662, 2259),
(12, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 'Entrepôt Lille - Centre Logistique #8255', '31 Centre Logistique, Lille', 4073, 550),
(13, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 'Entrepôt Bordeaux - Parc d\'Activités Est #7631', '42 Parc d\'Activités Est, Bordeaux', 4374, 339),
(14, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 'Entrepôt Toulon - Parc d\'Activités Est #9941', '24 Parc d\'Activités Est, Toulon', 829, 462),
(15, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 'Entrepôt Paris - Zone Logistique Sud #1360', '29 Zone Logistique Sud, Paris', 3502, 2084),
(16, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 'Entrepôt Lyon - Zone Franche #8121', '36 Zone Franche, Lyon', 2976, 1259),
(17, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 'Entrepôt Toulon - Centre Logistique #6811', '36 Centre Logistique, Toulon', 1733, 1208);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `insurances`
--

CREATE TABLE `insurances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `policy_number` varchar(255) NOT NULL,
  `type` enum('responsabilite_civile','decennale','materiel','protection_juridique') NOT NULL,
  `coverage_amount` decimal(10,2) NOT NULL,
  `start_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `documents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`documents`)),
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `insurance_claims`
--

CREATE TABLE `insurance_claims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `insurance_id` bigint(20) UNSIGNED DEFAULT NULL,
  `prestation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('dommage_materiel','blessure','vol','autre') NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `incident_date` date NOT NULL,
  `status` enum('pending','processing','approved','rejected') NOT NULL DEFAULT 'pending',
  `documents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`documents`)),
  `company_response` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livraisons`
--

CREATE TABLE `livraisons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_livraison` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `poids` double NOT NULL,
  `taille` varchar(255) NOT NULL,
  `adresse_depart` varchar(255) NOT NULL,
  `adresse_arrivee` varchar(255) NOT NULL,
  `prix` double NOT NULL,
  `instructions` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `id_client` bigint(20) UNSIGNED NOT NULL,
  `id_livreur` bigint(20) UNSIGNED DEFAULT NULL,
  `entrepot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_commercant` bigint(20) UNSIGNED DEFAULT NULL,
  `articles_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`articles_data`)),
  `priorite` enum('normale','urgent') NOT NULL DEFAULT 'normale',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `livraisons`
--

INSERT INTO `livraisons` (`id`, `type_livraison`, `description`, `poids`, `taille`, `adresse_depart`, `adresse_arrivee`, `prix`, `instructions`, `status`, `id_client`, `id_livreur`, `entrepot_id`, `created_by_commercant`, `articles_data`, `priorite`, `created_at`, `updated_at`) VALUES
(1, 'Économique', 'Livraison de Fleurs', 23.31, 'XXL', '145 Rue de Rivoli, Paris', '88 Place de la Mairie, Bordeaux', 7.65, 'Atque explicabo debitis rem impedit qui.', 4, 1, 2, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(2, 'Express', 'Livraison de Livres', 39.68, 'M', '26 Rue du Commerce, Strasbourg', '198 Boulevard Haussmann, Marseille', 13.7, 'Neque eius vitae vero.', 4, 2, 8, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(3, 'Fragile', 'Livraison de Électroménager', 35.83, 'XXL', '194 Avenue Charles de Gaulle, Strasbourg', '127 Boulevard Haussmann, Nantes', 6.33, 'Dolor perspiciatis optio quia mollitia fugiat natus.', 1, 3, 7, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(4, 'Express', 'Livraison de Vêtements', 28.49, 'M', '104 Place de la Mairie, Bordeaux', '124 Boulevard Haussmann, Toulouse', 18.13, 'Nesciunt molestiae officiis voluptas exercitationem voluptatem nihil.', 1, 3, 7, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(5, 'Standard', 'Livraison de Livres', 31.89, 'L', '60 Rue de la République, Marseille', '143 Rue du Commerce, Lyon', 18.39, 'Voluptas in dolore fugit voluptatum voluptate vel optio.', 4, 4, 10, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(6, 'Standard', 'Livraison de Documents importants', 15.19, 'XXL', '182 Place de la Mairie, Marseille', '165 Rue Saint-Martin, Lille', 11.38, 'Dolor eos nihil fuga non.', 2, 5, 1, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-07-16 20:17:41'),
(7, 'Économique', 'Livraison de Colis Amazon', 31.9, 'XL', '137 Rue Saint-Martin, Nantes', '23 Rue de la République, Lille', 16.63, 'Quaerat veritatis dolor velit cumque.', 1, 5, 2, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(8, 'Standard', 'Livraison de Courses alimentaires', 33.57, 'XS', '133 Boulevard Haussmann, Lille', '176 Avenue de la Liberté, Bordeaux', 16.21, 'Iste beatae eum et architecto natus dolor quidem.', 4, 6, 2, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(9, 'Fragile', 'Livraison de Matériel informatique', 28.67, 'XL', '176 Avenue de la Liberté, Marseille', '182 Rue Saint-Martin, Lille', 23.28, 'Iste et ut exercitationem eaque sunt.', 2, 7, 3, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(10, 'Express', 'Livraison de Gâteau d\'anniversaire', 44.59, 'M', '26 Rue de la République, Lyon', '123 Rue de Rivoli, Toulouse', 3.44, 'Est sed sapiente aperiam recusandae quasi magnam accusamus commodi.', 4, 7, 3, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(11, 'Fragile', 'Livraison de Gâteau d\'anniversaire', 28.41, 'XXL', '160 Avenue de la Liberté, Nice', '133 Rue du Commerce, Paris', 11.87, 'Debitis voluptatum odit aut est dolores recusandae dignissimos.', 4, 7, 3, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(12, 'Réfrigéré', 'Livraison de Médicaments', 42.46, 'S', '178 Rue Saint-Martin, Marseille', '147 Rue de la République, Strasbourg', 12.37, NULL, 2, 8, 7, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(13, 'Express', 'Livraison de Vêtements', 30.25, 'S', '22 Rue Saint-Martin, Marseille', '151 Avenue de la Liberté, Marseille', 7.29, NULL, 4, 9, 6, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(14, 'Prioritaire', 'Livraison de Matériel informatique', 49.68, 'M', '102 Avenue de la Liberté, Strasbourg', '5 Place de la Mairie, Lille', 18.7, 'Quod magnam qui eligendi voluptates accusamus amet.', 4, 9, 6, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(15, 'Réfrigéré', 'Livraison de Livres', 12, 'XS', '178 Rue de Rivoli, Nantes', '55 Rue du Commerce, Strasbourg', 20.8, NULL, 2, 10, 10, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(16, 'Express', 'Livraison de Gâteau d\'anniversaire', 12.6, 'XS', '131 Rue du Commerce, Lille', '120 Boulevard Victor Hugo, Strasbourg', 5.48, NULL, 2, 11, 6, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(17, 'Volumineux', 'Livraison de Colis Amazon', 33.97, 'XL', '29 Avenue Charles de Gaulle, Nice', '72 Rue de la République, Strasbourg', 7.64, NULL, 1, 11, 6, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(18, 'Réfrigéré', 'Livraison de Courses alimentaires', 17.23, 'XXL', '123 Boulevard Victor Hugo, Toulouse', '71 Rue du Commerce, Rennes', 5.6, 'Aliquid amet quisquam architecto sunt est vel quidem.', 3, 11, 6, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(19, 'Standard', 'Livraison de Gâteau d\'anniversaire', 36.83, 'M', '59 Boulevard Victor Hugo, Montpellier', '181 Boulevard Haussmann, Montpellier', 13.64, 'Vero sint ratione quis animi.', 4, 12, 1, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(20, 'Standard', 'Livraison de Électroménager', 44.29, 'XL', '106 Avenue Charles de Gaulle, Bordeaux', '183 Rue de Rivoli, Montpellier', 10.77, 'Commodi nesciunt aut natus eum.', 2, 12, 1, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(21, 'Express', 'Livraison de Fleurs', 43.5, 'XS', '141 Rue Saint-Martin, Nice', '35 Boulevard Haussmann, Toulouse', 21.55, NULL, 1, 13, 3, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(22, 'Fragile', 'Livraison de Gâteau d\'anniversaire', 41.99, 'M', '95 Rue Saint-Martin, Lille', '44 Boulevard Victor Hugo, Rennes', 10.17, NULL, 3, 13, 3, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(23, 'Prioritaire', 'Livraison de Colis Amazon', 28.2, 'XS', '133 Avenue de la Liberté, Montpellier', '30 Boulevard Victor Hugo, Nantes', 22.33, 'Nisi libero quaerat maxime dolor molestiae fugit.', 3, 14, 5, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(24, 'Économique', 'Livraison de Électroménager', 27.79, 'XL', '43 Boulevard Haussmann, Rennes', '176 Boulevard Haussmann, Montpellier', 23.97, 'Occaecati quis illum aut consequuntur et adipisci ad.', 3, 15, 3, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(25, 'Fragile', 'Livraison de Matériel informatique', 0.23, 'XS', '125 Avenue de la Liberté, Lyon', '28 Rue de la République, Toulouse', 9.08, NULL, 1, 15, 3, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(26, 'Économique', 'Livraison de Fleurs', 26.64, 'XXL', '20 Rue de la République, Bordeaux', '146 Rue Saint-Martin, Bordeaux', 6.65, NULL, 2, 16, 8, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:10', '2025-06-28 15:44:10'),
(27, 'Prioritaire', 'Livraison de Médicaments', 27.7, 'M', '111 Rue de la République, Nice', '83 Boulevard Haussmann, Nice', 4.08, 'Itaque aperiam non deleniti velit ea molestiae.', 1, 17, 12, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:41', '2025-06-28 15:44:41'),
(28, 'Fragile', 'Livraison de Médicaments', 18.39, 'L', '117 Avenue de la Liberté, Montpellier', '4 Avenue Charles de Gaulle, Toulouse', 17.14, 'Aspernatur est eius iste culpa reiciendis commodi quia.', 3, 18, 12, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:41', '2025-06-28 15:44:41'),
(29, 'Réfrigéré', 'Livraison de Livres', 46.63, 'S', '52 Rue du Commerce, Paris', '146 Boulevard Haussmann, Paris', 4.07, NULL, 3, 19, 11, NULL, NULL, NULL, 'normale', '2025-06-28 15:44:41', '2025-06-28 15:44:41'),
(31, 'Express', 'Livraison de Gâteau d\'anniversaire', 32.02, 'XXL', '7 Boulevard Haussmann, Lyon', '82 Rue Saint-Martin, Paris', 22.61, NULL, 1, 36, 14, NULL, NULL, NULL, 'normale', '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(32, 'Réfrigéré', 'Livraison de Livres', 11.25, 'XS', '29 Zone Logistique Sud, Paris', '103 Avenue de la Liberté, Strasbourg', 22.66, 'Recusandae quas asperiores aut consequatur.', 0, 37, 1, 15, NULL, NULL, 'normale', '2025-07-06 12:31:45', '2025-07-16 20:08:33'),
(33, 'Volumineux', 'Livraison de Matériel informatique', 11.62, 'S', '86 Place de la Mairie, Lille', '60 Boulevard Victor Hugo, Nice', 12.2, 'Sed est voluptate quisquam nostrum non commodi.', 2, 38, 13, NULL, NULL, NULL, 'normale', '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(34, 'Réfrigéré', 'Livraison de Matériel informatique', 7.78, 'S', '187 Rue Saint-Martin, Marseille', '123 Boulevard Victor Hugo, Bordeaux', 22.8, NULL, 2, 39, 1, NULL, NULL, NULL, 'normale', '2025-07-06 12:31:45', '2025-07-16 21:06:22'),
(35, 'Économique', 'Livraison de Électroménager', 7.82, 'L', '111 Place de la Mairie, Nantes', '7 Rue de la République, Nantes', 18.98, NULL, 2, 40, 13, NULL, NULL, NULL, 'normale', '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(36, 'Standard', 'Livraison de Gâteau d\'anniversaire', 10.44, 'M', '121 Avenue de la Liberté, Montpellier', '76 Rue de la République, Strasbourg', 13.8, NULL, 2, 41, 1, NULL, NULL, NULL, 'normale', '2025-07-06 12:31:45', '2025-07-16 23:19:33'),
(37, 'Prioritaire', 'Livraison de Électroménager', 40.94, 'L', '46 Boulevard Victor Hugo, Marseille', '186 Avenue de la Liberté, Lille', 13.01, 'Autem molestiae ut accusantium eum.', 2, 42, 14, NULL, NULL, NULL, 'normale', '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(38, 'Réfrigéré', 'Livraison de Matériel informatique', 35.28, 'XL', '175 Rue du Commerce, Lyon', '50 Boulevard Haussmann, Lille', 6.39, 'Et ad est sed inventore est similique incidunt.', 3, 43, 13, NULL, NULL, NULL, 'normale', '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(39, 'Standard', 'Livraison de Gâteau d\'anniversaire', 34.73, 'S', '87 Avenue Charles de Gaulle, Rennes', '198 Avenue de la Liberté, Lille', 15.12, 'Quod tempore autem omnis eos.', 4, 44, 14, NULL, NULL, NULL, 'normale', '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(40, 'Standard', 'Livraison de Électroménager', 37.73, 'L', '81 Place de la Mairie, Lille', '75 Avenue de la Liberté, Nice', 9.84, 'Vel assumenda dolores est dolorum facere rerum totam.', 1, 45, 14, NULL, NULL, NULL, 'normale', '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(41, 'Prioritaire', 'Livraison de Documents importants', 48.52, 'XL', '137 Avenue de la Liberté, Marseille', '36 Boulevard Victor Hugo, Nantes', 6.97, 'Blanditiis quia iusto autem consectetur quaerat id.', 1, 46, 15, NULL, NULL, NULL, 'normale', '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(42, 'Standard', 'Livraison de Électroménager', 43.59, 'S', '169 Rue du Commerce, Strasbourg', '41 Avenue de la Liberté, Paris', 3.79, 'Nihil officiis harum blanditiis tenetur enim ut fugit.', 2, 47, 16, NULL, NULL, NULL, 'normale', '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(43, 'Fragile', 'Livraison de Gâteau d\'anniversaire', 33.9, 'L', '15 Avenue de la Liberté, Montpellier', '189 Avenue Charles de Gaulle, Marseille', 8.93, NULL, 2, 48, 1, NULL, NULL, NULL, 'normale', '2025-07-06 12:33:20', '2025-07-16 23:19:38'),
(44, 'Prioritaire', 'Livraison de Courses alimentaires', 39.43, 'L', '197 Avenue de la Liberté, Bordeaux', '188 Rue de Rivoli, Toulouse', 20.95, NULL, 1, 49, 16, NULL, NULL, NULL, 'normale', '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(45, 'Standard', 'Livraison de Vêtements', 4.54, 'M', '134 Boulevard Victor Hugo, Nantes', '76 Rue de Rivoli, Nantes', 13.87, 'Qui nemo sit facere aut rem molestiae.', 4, 50, 15, NULL, NULL, NULL, 'normale', '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(46, 'Standard', 'Livraison de Documents importants', 19.47, 'M', '78 Boulevard Haussmann, Bordeaux', '153 Avenue Charles de Gaulle, Lille', 9.86, 'Aliquam aliquam illo sit ut.', 1, 51, 16, NULL, NULL, NULL, 'normale', '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(47, 'Standard', 'Livraison de Vêtements', 40.06, 'XS', '52 Boulevard Haussmann, Lille', '21 Rue Saint-Martin, Strasbourg', 24.32, NULL, 1, 52, 15, NULL, NULL, NULL, 'normale', '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(48, 'Réfrigéré', 'Livraison de Gâteau d\'anniversaire', 7.47, 'S', '187 Rue du Commerce, Strasbourg', '165 Boulevard Victor Hugo, Rennes', 10.74, 'Quia aut aut velit omnis dignissimos officiis incidunt ea.', 1, 53, 15, NULL, NULL, NULL, 'normale', '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(49, 'Express', 'Livraison de Vêtements', 39.74, 'S', '28 Boulevard Victor Hugo, Nice', '118 Rue du Commerce, Montpellier', 22.88, 'Quidem rem nam voluptatem id.', 4, 54, 16, NULL, NULL, NULL, 'normale', '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(50, 'Économique', 'Livraison de Fleurs', 12.61, 'XS', '96 Boulevard Victor Hugo, Rennes', '186 Boulevard Haussmann, Rennes', 7.56, NULL, 1, 55, 1, NULL, NULL, NULL, 'normale', '2025-07-06 12:33:20', '2025-07-16 23:19:29'),
(53, 'commercant', 'Livraison commerçant - 1 article(s)', 11, 'XL', '12 Rue Mongenot, 75012 Paris, France', '145 Rue de Courcelles, 75017 Paris, France', 27, '', 1, 31, 1, NULL, NULL, '[{\"nom\":\"sqdsqdqs\",\"quantite\":1,\"poids\":11}]', 'normale', '2025-07-16 18:19:13', '2025-07-16 20:08:47'),
(54, 'Livraison Standard', 're', 23, '20x18x20', '36 Centre Logistique, Toulon', '37 Rue de Rivoli, 75004 Paris, France', 1414, 're', 0, 1, 24, 17, NULL, NULL, 'normale', '2025-07-16 19:36:01', '2025-07-20 22:09:11'),
(55, 'Livraison Standard', 'de', 23, '23x23x23', 'Pl. du Trocadéro et du 11 Novembre, Paris, France', 'Parc de la Feyssine, 69100 Villeurbanne, France', 796, NULL, 2, 1, 24, NULL, NULL, NULL, 'normale', '2025-07-16 21:05:34', '2025-07-20 22:29:47'),
(56, 'Livraison Express', 'test2', 23, '12', 'Tramway de Strasbourg, 67200 Strasbourg, France', 'Paris, 83470 Seillons-Source-d\'Argens, France', 1914, 're', 1, 1, 24, NULL, NULL, NULL, 'normale', '2025-07-16 23:24:27', '2025-07-20 22:07:45'),
(57, 'commercant', 'Livraison commerçant - 1 article(s)', 71, 'XL', '9 Sent. des Piottes, 93160 Noisy-le-Grand, France', 'Av. Montaigne, 75008 Paris, France', 147, 'azzeazeaze', 0, 25, NULL, NULL, 6, '[{\"nom\":\"J\\u00e9r\\u00e9my Damas\",\"quantite\":12,\"poids\":71}]', 'normale', '2025-07-20 21:42:14', '2025-07-20 21:42:14'),
(58, 'commercant', 'Livraison commerçant - 1 article(s)', 0, 'S', '9 Sent. des Piottes, 93160 Noisy-le-Grand, France', 'ZA Valdonne, 13124 Peypin, France', 5, 'zz', 1, 25, 24, 12, 6, '[{\"nom\":\"J\\u00e9r\\u00e9my Damas\",\"quantite\":1,\"poids\":0}]', 'normale', '2025-07-20 21:46:09', '2025-07-20 22:08:40'),
(59, 'commercant', 'Livraison commerçant - 1 article(s)', 0, 'S', '24 Parc d\'Activités Est, Toulon', 'ZA Valdonne, 13124 Peypin, France', 5, 'zz', 0, 25, 24, 14, 6, '[{\"nom\":\"J\\u00e9r\\u00e9my Damas\",\"quantite\":1,\"poids\":0}]', 'normale', '2025-07-20 21:46:09', '2025-07-20 22:11:52'),
(60, 'commercant', 'Livraison commerçant - 1 article(s)', 0, 'S', '9 Sent. des Piottes, 93160 Noisy-le-Grand, France', 'ZA Valdonne, 13124 Peypin, France', 5, 'zz', 0, 25, NULL, NULL, 6, '[{\"nom\":\"J\\u00e9r\\u00e9my Damas\",\"quantite\":1,\"poids\":0}]', 'normale', '2025-07-20 21:46:09', '2025-07-20 21:46:09'),
(61, 'commercant', 'Livraison commerçant - 1 article(s)', 12, 'XL', '9 Sent. des Piottes, 93160 Noisy-le-Grand, France', 'Pl. Emile Zola, 44100 Nantes, France', 29, '', 0, 25, NULL, NULL, 6, '[{\"nom\":\"J\\u00e9r\\u00e9my Damas\",\"quantite\":12,\"poids\":12}]', 'normale', '2025-07-20 21:47:01', '2025-07-20 21:47:01'),
(62, 'Livraison Standard', 'azazeaze', 1212, '12x1212x21', 'All. d\'Azay-le-Rideau, 37540 Saint-Cyr-sur-Loire, France', 'Dom. du pinsan, 33320 Eysines, France', 1048, 'qsddqs', 1, 60, 24, NULL, NULL, NULL, 'normale', '2025-07-20 22:36:28', '2025-07-20 22:37:17');

-- --------------------------------------------------------

--
-- Structure de la table `livraisons_commercant`
--

CREATE TABLE `livraisons_commercant` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commercant_id` bigint(20) UNSIGNED NOT NULL,
  `livreur_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_nom` varchar(255) NOT NULL,
  `client_prenom` varchar(255) NOT NULL,
  `client_telephone` varchar(255) NOT NULL,
  `client_email` varchar(255) DEFAULT NULL,
  `adresse_recuperation` text NOT NULL,
  `adresse_livraison` text NOT NULL,
  `articles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`articles`)),
  `poids_total` decimal(8,2) NOT NULL,
  `statut` enum('en_attente','assignee','en_cours','livree','annulee') NOT NULL DEFAULT 'en_attente',
  `priorite` enum('normale','urgent') NOT NULL DEFAULT 'normale',
  `instructions` text DEFAULT NULL,
  `date_assignation` timestamp NULL DEFAULT NULL,
  `date_recuperation` timestamp NULL DEFAULT NULL,
  `date_livraison` timestamp NULL DEFAULT NULL,
  `date_annulation` timestamp NULL DEFAULT NULL,
  `motif_annulation` text DEFAULT NULL,
  `prix_livraison` decimal(8,2) DEFAULT NULL,
  `statut_paiement` enum('en_attente','paye','rembourse') NOT NULL DEFAULT 'en_attente',
  `code_suivi` varchar(255) NOT NULL,
  `notes_livreur` text DEFAULT NULL,
  `note_client` int(11) DEFAULT NULL,
  `commentaire_client` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livreurs`
--

CREATE TABLE `livreurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `statut_validation` enum('en attente','validé','rejeté') NOT NULL DEFAULT 'en attente',
  `date_verification` date DEFAULT NULL,
  `authentification_2FA` tinyint(1) NOT NULL DEFAULT 0,
  `id_utilisateur` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_vehicule` varchar(255) DEFAULT NULL,
  `numero_permis` varchar(255) DEFAULT NULL,
  `date_permis` date DEFAULT NULL,
  `numero_assurance` varchar(255) DEFAULT NULL,
  `compagnie_assurance` varchar(255) DEFAULT NULL,
  `disponibilite` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`disponibilite`)),
  `zones_livraison` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`zones_livraison`)),
  `motivation` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `accepte_conditions` tinyint(1) NOT NULL DEFAULT 0,
  `accepte_traitement_donnees` tinyint(1) NOT NULL DEFAULT 0,
  `ville` varchar(255) DEFAULT NULL,
  `code_postal` varchar(255) DEFAULT NULL,
  `message_refus` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `livreurs`
--

INSERT INTO `livreurs` (`id`, `nom`, `prenom`, `adresse`, `telephone`, `iban`, `statut_validation`, `date_verification`, `authentification_2FA`, `id_utilisateur`, `created_at`, `updated_at`, `type_vehicule`, `numero_permis`, `date_permis`, `numero_assurance`, `compagnie_assurance`, `disponibilite`, `zones_livraison`, `motivation`, `experience`, `accepte_conditions`, `accepte_traitement_donnees`, `ville`, `code_postal`, `message_refus`) VALUES
(1, 'Conx', 'Keven', '102 Rue de Rivoli, Montpellier', '0547648062', 'FR1319421284442HBHS75384Q20', 'validé', '2025-06-10', 0, 2, '2025-06-28 15:44:09', '2025-07-16 23:14:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(2, 'Cormier', 'Alison', '154 Place de la Mairie, Lille', '0296355169', 'FR577485979793AZUE93LD6Q051', 'rejeté', NULL, 1, 8, '2025-06-28 15:44:09', '2025-06-28 15:44:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(3, 'Champlin', 'Levi', '155 Place de la Mairie, Rennes', '0788051741', 'FR454685260896FGB380U28J579', 'validé', '2025-04-13', 1, 12, '2025-06-28 15:44:09', '2025-07-11 08:41:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(4, 'Rippin', 'Nasir', '58 Rue du Commerce, Toulon', '0476009401', 'FR0825109251403DM0RA3YD1291', 'validé', '2025-06-06', 0, 14, '2025-06-28 15:44:09', '2025-06-28 15:44:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(5, 'Durgan', 'Lourdes', '154 Rue de Rivoli, Bordeaux', '0455311251', 'FR1221986998689P40913675680', 'en attente', '2025-03-15', 0, 17, '2025-06-28 15:44:09', '2025-06-28 15:44:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(6, 'Klocko', 'Leilani', '156 Rue du Commerce, Reims', '0447843950', 'FR964737677147K7BVP38761698', 'validé', NULL, 0, 18, '2025-06-28 15:44:09', '2025-07-20 20:54:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(7, 'Corkery', 'Georgette', '57 Rue de la République, Toulouse', '0815373590', 'FR688962612094ZR09S2BDCMC98', 'en attente', NULL, 0, 28, '2025-06-28 15:44:09', '2025-06-28 15:44:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(8, 'Ward', 'Ellie', '189 Avenue Charles de Gaulle, Lyon', '0606856431', 'FR160092681488JCVYR3YDM9153', 'validé', '2025-05-07', 0, 37, '2025-06-28 15:44:09', '2025-06-28 15:44:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(9, 'Boyle', 'Yasmin', '137 Boulevard Victor Hugo, Marseille', '0143982198', 'FR169473726102T89G15WL22116', 'rejeté', NULL, 1, 38, '2025-06-28 15:44:09', '2025-06-28 15:44:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(10, 'Welch', 'Davonte', '145 Boulevard Haussmann, Rennes', '0828910706', 'FR6122652804469783M9J6CBE43', 'validé', '2025-04-19', 0, 42, '2025-06-28 15:44:09', '2025-06-28 15:44:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(11, 'Heidenreich', 'Keven', '157 Place de la Mairie, Strasbourg', '0526910806', 'FR364388763080GVPJQ5YWVH073', 'en attente', '2025-06-04', 0, 94, '2025-06-28 15:44:41', '2025-06-28 15:44:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(12, 'Konopelski', 'Santina', '123 Rue Saint-Martin, Toulouse', '0318910816', 'FR2225866062345I4Q8BS900968', 'en attente', NULL, 0, 95, '2025-06-28 15:44:41', '2025-06-28 15:44:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(13, 'Kihn', 'Orville', '169 Boulevard Haussmann, Grenoble', '0854884497', 'FR0917815787897IN6LZ4H38X17', 'en attente', '2025-01-31', 0, 121, '2025-07-06 12:31:45', '2025-07-06 12:31:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(14, 'Dare', 'Gerhard', '20 Boulevard Victor Hugo, Toulouse', '0562158218', 'FR17653080841425D7MH26FIB95', 'en attente', '2025-06-29', 0, 122, '2025-07-06 12:31:45', '2025-07-06 12:31:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(15, 'Crooks', 'Kacie', '132 Place de la Mairie, Montpellier', '0744601594', 'FR118340739241DE0Z798JPC261', 'validé', '2025-02-25', 0, 131, '2025-07-06 12:33:20', '2025-07-06 12:33:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(16, 'Ferry', 'Erica', '119 Rue de Rivoli, Strasbourg', '0511357600', 'FR171109255002XKF9A5AQMS839', 'validé', '2025-05-22', 0, 132, '2025-07-06 12:33:20', '2025-07-06 12:33:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(23, 'Lucas', 'VALLION', '12 rue mongenot', '0781519668', 'qsdsqdqsdqsdsqd', 'en attente', NULL, 0, 112, '2025-07-20 21:55:55', '2025-07-20 21:55:55', 'scooter', 'SQDSQDQSDQSDQ', '2000-12-06', 'sqdsqdsqdsq', 'dqsdqsdsqd', '[\"matin\",\"soir\"]', '[\"centre_ville\",\"quartier_sud\"]', 'dqsdsqdqsdsqdq', 'dssqdsqdsqsdsqd', 1, 1, 'Paris', '75012', NULL),
(24, 'Jérémy', 'aaaaaaaaaa', '9 sentier des piottes', '0650493018', 'FRAZEAZEAZEAZEAZE', 'validé', NULL, 0, 140, '2025-07-20 21:58:02', '2025-07-20 21:58:45', 'velo', NULL, NULL, '122123123123123123', 'AZEAZEAZEAZE', '[\"jours_feries\",\"apres_midi\",\"weekend\",\"soir\"]', '[\"centre_ville\",\"quartier_sud\",\"banlieue\"]', 'AZEAZEAZEAZE', 'AZEAZEAZEAZE', 1, 1, 'Noisy-le-Grand', '93160', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `status` enum('sending','delivered','read') NOT NULL DEFAULT 'delivered',
  `message_type` enum('text','image','file') NOT NULL DEFAULT 'text',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `sender_id`, `content`, `file_url`, `file_name`, `file_type`, `status`, `message_type`, `metadata`, `read_at`, `created_at`, `updated_at`) VALUES
(196, 31, 1, 'Bonjour, je suis intéressé par votre prestation!', NULL, NULL, NULL, 'delivered', 'text', NULL, NULL, '2025-07-06 12:41:11', '2025-07-06 12:41:11'),
(197, 31, 2, 'Bonjour! Je serais ravi de vous aider.', NULL, NULL, NULL, 'delivered', 'text', NULL, NULL, '2025-07-06 12:41:11', '2025-07-06 12:41:11'),
(198, 31, 2, 're', NULL, NULL, NULL, 'delivered', 'text', NULL, NULL, '2025-07-06 19:57:30', '2025-07-06 19:57:30'),
(199, 31, 2, 'test', NULL, NULL, NULL, 'delivered', 'text', NULL, NULL, '2025-07-06 20:10:22', '2025-07-06 20:10:22'),
(200, 33, 2, 're', NULL, NULL, NULL, 'delivered', 'text', NULL, NULL, '2025-07-10 09:15:56', '2025-07-10 09:15:56'),
(201, 31, 2, 're', NULL, NULL, NULL, 'delivered', 'text', NULL, NULL, '2025-07-10 10:36:49', '2025-07-10 10:36:49'),
(202, 33, 2, 'fd', NULL, NULL, NULL, 'delivered', 'text', NULL, NULL, '2025-07-16 21:37:16', '2025-07-16 21:37:16'),
(203, 33, 2, 're', NULL, NULL, NULL, 'delivered', 'text', NULL, NULL, '2025-07-16 21:37:24', '2025-07-16 21:37:24'),
(204, 33, 2, 're', NULL, NULL, NULL, 'delivered', 'text', NULL, NULL, '2025-07-16 21:39:02', '2025-07-16 21:39:02'),
(205, 33, 2, 're', NULL, NULL, NULL, 'delivered', 'text', NULL, NULL, '2025-07-16 23:21:17', '2025-07-16 23:21:17');

-- --------------------------------------------------------

--
-- Structure de la table `mfa_resets`
--

CREATE TABLE `mfa_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `secret` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` timestamp NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mfa_resets`
--

INSERT INTO `mfa_resets` (`id`, `user_id`, `secret`, `token`, `expires_at`, `used`, `created_at`, `updated_at`) VALUES
(13, 112, '37HB5MHLM7D6U2G6', 'e16a51d95b9bc43912c3f5bcba88e098e1feb60291420f6a6ff8de135c8ff3df', '2025-07-01 17:25:28', 0, '2025-07-01 17:15:28', '2025-07-01 17:15:28');

-- --------------------------------------------------------

--
-- Structure de la table `mfa_secrets`
--

CREATE TABLE `mfa_secrets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `secret` varchar(255) NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mfa_secrets`
--

INSERT INTO `mfa_secrets` (`id`, `user_id`, `secret`, `is_verified`, `created_at`, `updated_at`) VALUES
(1, 2, '', 1, '2025-06-29 15:47:54', '2025-06-29 15:47:54'),
(3, 3, '$2y$10$b0q7mTlag.bXCD33N0QlnOVDUJye8GV0dVc/Go3DMJVJ8p8ER2RFq', 1, NULL, NULL),
(4, 1, 'sqdsqdqsdqsdqsdqdsq', 1, '2025-06-29 13:28:55', '2025-06-29 13:28:55'),
(9, 103, 'CQGIQU35GIMXLYK3', 1, '2025-06-29 15:52:33', '2025-06-29 15:53:12'),
(11, 107, 'FTZE77OIAQY2DJHH', 1, '2025-06-30 14:41:11', '2025-06-30 14:41:29'),
(18, 109, 'KLRL6KC4X3GLZZJW', 0, '2025-06-30 22:19:59', '2025-06-30 22:19:59'),
(22, 110, 'FFUIK4TEOUUI4S7N', 0, '2025-06-30 22:23:56', '2025-06-30 22:23:56'),
(26, 112, '43676XGN5ZDRN7TJ', 1, '2025-07-01 16:39:00', '2025-07-01 16:40:10'),
(34, 135, 'TTJD3IXQT4WQOYX6', 0, '2025-07-07 09:36:46', '2025-07-07 09:36:46'),
(36, 140, '5PACO3NHETLHEOH6', 1, '2025-07-20 20:42:41', '2025-07-20 20:43:26');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_21_144038_create_clients_table', 1),
(5, '2025_03_21_144038_create_commercants_table', 1),
(6, '2025_03_21_144038_create_livreurs_table', 1),
(7, '2025_03_21_144038_create_prestataires_table', 1),
(8, '2025_03_29_142803_create_personal_access_tokens_table', 1),
(9, '2025_03_29_160910_rename_mot_de_passe_to_password_in_users_table', 1),
(10, '2025_04_08_144850_create_mfa_secrets_table', 1),
(11, '2025_04_17_095611_create_annonces_prestataires_table', 1),
(12, '2025_04_17_102054_add_preferences_to_clients', 1),
(13, '2025_04_18_100146_create_prestations_table', 1),
(14, '2025_04_23_185153_create_livraisons_table', 1),
(15, '2025_05_03_003713_create_administrateurs_table', 1),
(16, '2025_05_04_124758_create_paiements_table', 1),
(17, '2025_05_05_160058_create_document_justificatifs_table', 1),
(18, '2025_05_18_122938_create_tickets_table', 1),
(19, '2025_05_18_122939_create_reponses_tickets_table', 1),
(20, '2025_05_30_235716_add_photo_profil_to_users_table', 1),
(21, '2025_05_31_003217_create_achievements_table', 1),
(22, '2025_05_31_003233_create_user_achievements_table', 1),
(23, '2025_06_07_214842_create_entrepot_table', 1),
(24, '2025_06_14_182258_add_newsletter_subscribed_to_users_table', 1),
(25, '2025_06_14_182325_create_newsletters_table', 1),
(26, '2025_06_14_190643_create_notations_livreurs_table', 1),
(27, '2025_06_27_193544_add_category_to_prestations_table', 1),
(28, '2025_06_27_193825_add_category_to_annonces_prestataires_table', 1),
(29, '2025_06_27_210336_create_conversations_table', 1),
(30, '2025_06_27_210343_create_messages_table', 1),
(31, '2025_06_27_210348_create_validations_table', 1),
(32, '2025_06_27_210355_create_badges_table', 1),
(33, '2025_06_27_210401_create_user_badges_table', 1),
(34, '2025_06_27_210407_create_insurances_table', 1),
(36, '2025_06_27_210413_create_insurance_claims_table', 2),
(37, '2025_06_29_122824_make_id_client_nullable_in_annonces_prestataires_table', 2),
(39, '2025_06_30_150900_add_id_prestation_to_annonces_prestataires_table', 3),
(40, '2025_06_30_151500_assign_prestations_to_existing_annonces', 3),
(41, '2024_06_30_000000_create_password_reset_tokens_table', 4),
(42, '2025_06_30_000000_add_validation_fields_to_validations_table', 5),
(43, '2025_06_30_151000_update_existing_annonces_with_default_prestation', 5),
(44, '2025_06_30_215156_drop_validations_table', 5),
(45, '2025_06_30_215203_create_validation_codes_table', 5),
(46, '2025_06_30_232205_drop_old_validation_tables_and_create_simple_codes', 6),
(47, '2025_07_01_000001_create_mfa_resets_table', 7),
(48, '2025_07_01_120000_modify_prestation_codes_for_flexible_references', 8),
(49, '2025_07_02_000001_add_validation_fields_to_annonces_prestataires', 9),
(50, '2025_07_04_104036_create_validation_codes_table', 10),
(51, '2025_07_04_104408_add_validation_fields_to_prestations_table', 10),
(52, '2025_07_04_104524_add_email_to_clients_table', 10),
(53, '2025_07_04_104738_add_note_moyenne_to_prestataires_table', 10),
(54, '2025_07_04_105407_change_status_column_type_in_prestations_table', 11),
(55, '2025_07_04_105515_change_status_column_type_in_prestations_table', 11),
(56, '2025_07_04_122807_add_validation_fields_to_annonces_prestataires_table', 12),
(61, '2025_07_04_123000_add_code_validation_to_annonces_prestataires', 13),
(62, '2025_07_05_232513_update_messages_table_for_chat', 13),
(63, '2025_07_06_140730_modify_conversations_table_for_chat', 13),
(64, '2025_07_06_140802_create_conversation_participants_table_new', 13),
(66, '2025_07_11_113654_add_form_fields_to_livreurs_table', 14),
(67, '2025_07_11_113844_add_path_to_document_justificatifs_table', 15),
(68, '2025_07_11_120000_add_form_fields_to_commercants_table', 16),
(69, '2025_07_11_121000_add_missing_commercant_fields', 17),
(70, '2025_07_11_123930_fix_nombre_employes_column_in_commercants_table', 18),
(71, '2025_07_11_130224_add_documents_column_to_commercants_table', 19),
(72, '2025_01_16_120000_add_subscription_fields_to_commercants_table', 20),
(73, '2025_01_16_122000_create_livraisons_commercant_table', 21),
(75, '2025_07_16_180652_add_commercant_fields_to_livraisons_table', 22),
(76, '2025_01_16_121000_create_livraisons_table', 23),
(77, '2025_07_06_140801_create_conversation_participants_table_new', 24),
(78, '2025_07_16_183920_add_plan_type_to_commercants_table', 25),
(79, '2025_07_16_220454_add_entrepot_id_to_livraisons_table', 26);

-- --------------------------------------------------------

--
-- Structure de la table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `contenu` longtext NOT NULL,
  `statut` enum('brouillon','programme','envoye') NOT NULL DEFAULT 'brouillon',
  `date_envoi` timestamp NULL DEFAULT NULL,
  `nb_destinataires` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notations_livreurs`
--

CREATE TABLE `notations_livreurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_livraison` bigint(20) UNSIGNED NOT NULL,
  `id_client` bigint(20) UNSIGNED NOT NULL,
  `id_livreur` bigint(20) UNSIGNED NOT NULL,
  `note` decimal(2,1) NOT NULL COMMENT 'Note de 1 à 5',
  `commentaire` text DEFAULT NULL,
  `criteres_notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Détail des notes par critères (ponctualité, politesse, etc.)' CHECK (json_valid(`criteres_notes`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notations_livreurs`
--

INSERT INTO `notations_livreurs` (`id`, `id_livraison`, `id_client`, `id_livreur`, `note`, `commentaire`, `criteres_notes`, `created_at`, `updated_at`) VALUES
(1, 18, 11, 6, 2.1, 'Livraison en retard mais le livreur était sympathique.', '{\"ponctualite\":2,\"qualite_service\":1.8,\"communication\":2.5,\"soin_colis\":2.1}', '2025-06-28 15:44:12', '2025-06-28 15:44:12'),
(2, 22, 13, 3, 4.2, 'Je suis très satisfait de cette prestation.', '{\"ponctualite\":4.6000000000000005,\"qualite_service\":4.1000000000000005,\"communication\":3.8000000000000003,\"soin_colis\":4.1000000000000005}', '2025-06-28 15:44:12', '2025-06-28 15:44:12'),
(3, 23, 14, 5, 1.4, 'Je suis très satisfait de cette prestation.', '{\"ponctualite\":1.5,\"qualite_service\":1.7999999999999998,\"communication\":1,\"soin_colis\":1.7}', '2025-06-28 15:44:12', '2025-06-28 15:44:12'),
(4, 24, 15, 3, 4.7, 'Livraison effectuée sans problème.', '{\"ponctualite\":4.4,\"qualite_service\":5,\"communication\":4.4,\"soin_colis\":5}', '2025-06-28 15:44:12', '2025-06-28 15:44:12');

-- --------------------------------------------------------

--
-- Structure de la table `paiements`
--

CREATE TABLE `paiements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `montant` double NOT NULL,
  `id_utilisateur` bigint(20) UNSIGNED NOT NULL,
  `id_prestation` bigint(20) UNSIGNED DEFAULT NULL,
  `id_livraison` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `paiements`
--

INSERT INTO `paiements` (`id`, `created_at`, `updated_at`, `montant`, `id_utilisateur`, `id_prestation`, `id_livraison`, `status`) VALUES
(1, '2025-06-28 15:44:10', '2025-06-28 15:44:10', 93.29, 43, NULL, NULL, 1),
(2, '2025-06-28 15:44:10', '2025-06-28 15:44:10', 371.24, 43, NULL, NULL, 1),
(3, '2025-06-28 15:44:10', '2025-06-28 15:44:10', 23.14, 11, NULL, NULL, 1),
(4, '2025-06-28 15:44:10', '2025-06-28 15:44:10', 96.38, 11, NULL, NULL, 1),
(5, '2025-06-28 15:44:10', '2025-06-28 15:44:10', 27.05, 13, NULL, NULL, 1),
(6, '2025-06-28 15:44:10', '2025-06-28 15:44:10', 22.33, 13, NULL, NULL, 1),
(7, '2025-06-28 15:44:10', '2025-06-28 15:44:10', 25, 13, NULL, NULL, 1),
(8, '2025-06-28 15:44:10', '2025-06-28 15:44:10', 211.16, 21, NULL, NULL, 1),
(9, '2025-06-28 15:44:10', '2025-06-28 15:44:10', 82.93, 35, NULL, NULL, 1),
(10, '2025-06-28 15:44:10', '2025-06-28 15:44:10', 401.27, 35, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('staff.waveparadise@gmail.com', '$2y$12$8XQ19LULpW9iz/5NgufHxeFnI7pnJYCEPymc9WV5/C2QLsSMeR0qW', '2025-06-30 14:30:41'),
('amnesiaoffi.mc@gmail.com', '$2y$12$2eXSMiEdDfG.O9N2jFKFYe0NXIaj5SQsyWjgs1uhUqx1QwKuprHJe', '2025-06-30 14:42:08');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(22, 'App\\Models\\Users', 3, 'mobile-token', '1e1e6914f4e02869be7fcabddcd077164b385829c15b37f53e4c1537e7569798', '[\"*\"]', '2025-07-16 19:28:35', NULL, '2025-07-16 19:28:27', '2025-07-16 19:28:35');

-- --------------------------------------------------------

--
-- Structure de la table `prestataires`
--

CREATE TABLE `prestataires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `competences` text DEFAULT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `statut_validation` enum('en attente','validé','rejeté') NOT NULL DEFAULT 'en attente',
  `id_utilisateur` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note_moyenne` decimal(3,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `prestataires`
--

INSERT INTO `prestataires` (`id`, `nom`, `prenom`, `adresse`, `telephone`, `email`, `competences`, `iban`, `statut_validation`, `id_utilisateur`, `created_at`, `updated_at`, `note_moyenne`) VALUES
(1, 'Damas', 'Jean', '42 Avenue des Champs-Élysées, 75008 Paris', '0987654321', 'jdamas.2624@gmail.com', 'Plomberie, Électricité, Bricolage', 'FR1420041010050500013M02606', 'validé', 3, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0.00),
(2, 'Kirlin', 'Lea', '20 Rue Saint-Martin, Le Havre', '0107685570', 'harvey.mortimer@example.org', 'Menuiserie, Déménagement, Rédaction, Cours particuliers', 'FR776124124618G3MZO22RHJ558', 'validé', 9, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0.00),
(3, 'Schuster', 'Erwin', '90 Rue du Commerce, Grenoble', '0117639769', 'abbey.lynch@example.net', 'Déménagement, Réparation informatique, Jardinage, Électricité', 'FR386761608035MW1O145JH6383', 'en attente', 15, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0.00),
(4, 'Gusikowski', 'Olga', '156 Rue de la République, Toulouse', '0980543533', 'eterry@example.org', 'Massage', 'FR804085885801N3A54370HFJ39', 'en attente', 26, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0.00),
(5, 'Hayes', 'Vincenza', '125 Place de la Mairie, Grenoble', '0706693205', 'jtillman@example.net', 'Peinture, Menuiserie, Photographie, Rédaction', 'FR083241577509II3S7647QAX12', 'rejeté', 29, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0.00),
(6, 'Pfeffer', 'Mireille', '49 Boulevard Victor Hugo, Paris', '0696167884', 'marco53@example.com', 'Photographie, Peinture', 'FR402730064432504GKIHIX8116', 'en attente', 31, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0.00),
(7, 'Franecki', 'Abigale', '90 Boulevard Haussmann, Montpellier', '0423939454', 'camden38@example.net', 'Cours particuliers', 'FR045235665237N5NDBZF90D309', 'rejeté', 32, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0.00),
(8, 'Wiegand', 'Vella', '190 Avenue de la Liberté, Reims', '0959297581', 'ariel69@example.com', 'Rédaction, Peinture, Plomberie, Cours particuliers', 'FR3883095312561NLM0W7RSY173', 'rejeté', 36, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0.00),
(9, 'Bailey', 'Nova', '197 Boulevard Victor Hugo, Marseille', '0619497357', 'gerhard.brekke@example.org', 'Électricité', 'FR575405569361J358BA57HL922', 'rejeté', 39, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0.00),
(10, 'Tromp', 'Neva', '69 Boulevard Haussmann, Toulouse', '0516506729', 'savanna05@example.org', 'Coiffure', 'FR214175172901XLN0JKJI8EN47', 'validé', 2, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0.00),
(11, 'Gusikowski', 'Ignatius', '115 Avenue Charles de Gaulle, Toulouse', '0328529852', 'ifriesen@example.net', 'Coiffure, Cours particuliers, Réparation informatique', 'FR097233437589LY1959GR1F260', 'validé', 49, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0.00),
(12, 'Larkin', 'Tre', '191 Boulevard Victor Hugo, Marseille', '0396659733', 'brody86@example.com', 'Réparation informatique, Rédaction, Nettoyage, Traduction', 'FR706015593482ZV3S6EJ3R9260', 'validé', 50, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0.00),
(13, 'Sipes', 'Chaya', '63 Boulevard Victor Hugo, Nantes', '0859937349', 'bergstrom.madaline@example.com', 'Menuiserie, Cours particuliers', 'FR8767338089539731JXWAEKX00', 'validé', 53, '2025-06-28 15:44:09', '2025-06-28 15:44:09', 0.00),
(14, 'Barton', 'Micah', '107 Boulevard Victor Hugo, Nice', '0282933300', 'sanford.fisher@example.org', 'Photographie, Rédaction, Traduction', 'FR741034908893PQHQ912OJ2150', 'validé', 91, '2025-06-28 15:44:41', '2025-06-28 15:44:41', 0.00),
(15, 'Pouros', 'Patricia', '48 Boulevard Haussmann, Lyon', '0413333021', 'edmond.mcglynn@example.net', 'Cours particuliers, Montage de meubles, Électricité, Traduction', 'FR276290230790IZD5HI9FN3H29', 'en attente', 92, '2025-06-28 15:44:41', '2025-06-28 15:44:41', 0.00),
(16, 'Shields', 'Malcolm', '167 Rue Saint-Martin, Reims', '0554675050', 'ole94@example.com', 'Coiffure, Peinture, Rédaction', 'FR886004967545ARA36D62QI454', 'rejeté', 93, '2025-06-28 15:44:41', '2025-06-28 15:44:41', 0.00),
(17, 'Martin', 'Pierre', '456 Avenue des Champs, 75008 Paris', '+33987654321', 'pierre.martin@email.com', 'Livraison, Manutention', 'FR1420041010050500013M02606', 'validé', 114, '2025-07-04 08:53:19', '2025-07-04 08:53:19', 0.00),
(18, 'Paucek', 'Augustine', '5 Rue du Commerce, Toulon', '0777820784', 'tara.cummings@example.com', 'Jardinage, Photographie, Nettoyage', 'FR609591706201515B94Z0VC639', 'validé', 118, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 0.00),
(19, 'Tremblay', 'Lelia', '85 Avenue Charles de Gaulle, Toulon', '0690428598', 'mkirlin@example.org', 'Montage de meubles, Traduction, Massage', 'FR7881588357432973JI40R8M52', 'en attente', 119, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 0.00),
(20, 'Klein', 'Jayson', '180 Rue de Rivoli, Rennes', '0694415167', 'gavin88@example.net', 'Livraison, Nettoyage, Menuiserie, Déménagement', 'FR229045963338GAH576O5TW849', 'validé', 120, '2025-07-06 12:31:45', '2025-07-06 12:31:45', 0.00),
(21, 'Hills', 'Griffin', '159 Avenue Charles de Gaulle, Grenoble', '0836100224', 'verla72@example.org', 'Peinture, Coiffure', 'FR5267022343131UTU78D3N4Y90', 'validé', 128, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 0.00),
(22, 'Koch', 'Fermin', '187 Boulevard Haussmann, Toulouse', '0296882126', 'kolby39@example.com', 'Traduction, Jardinage, Photographie, Déménagement', 'FR4321842829600PT13HN8UWX63', 'en attente', 129, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 0.00),
(23, 'Reynolds', 'Leanna', '16 Rue de Rivoli, Toulon', '0349973857', 'rohan.alvena@example.net', 'Électricité, Montage de meubles', 'FR5964639783090151JK9G94526', 'en attente', 130, '2025-07-06 12:33:20', '2025-07-06 12:33:20', 0.00);

-- --------------------------------------------------------

--
-- Structure de la table `prestations`
--

CREATE TABLE `prestations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'en_cours',
  `id_prestataire` bigint(20) UNSIGNED NOT NULL,
  `code_validation` varchar(10) DEFAULT NULL,
  `date_validation` timestamp NULL DEFAULT NULL,
  `heure` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `id_client` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `prestations`
--

INSERT INTO `prestations` (`id`, `created_at`, `updated_at`, `title`, `description`, `category`, `price`, `location`, `status`, `id_prestataire`, `code_validation`, `date_validation`, `heure`, `date`, `id_client`) VALUES
(64, '2025-07-16 19:48:02', '2025-07-16 20:44:16', 'test', 'test', 'Autre', 23, 'Paris', '1', 10, NULL, NULL, NULL, NULL, NULL),
(65, '2025-07-16 21:06:47', '2025-07-16 21:06:47', 'tes', 'ttes', 'Jardinage', 23, 'Strasbourg', '1', 10, NULL, NULL, NULL, NULL, 1),
(66, '2025-07-16 23:20:20', '2025-07-16 23:20:20', 'cre', 'cre', 'Cours particuliers', 23, 'Paris', '1', 10, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reponses_tickets`
--

CREATE TABLE `reponses_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `utilisateur_id` bigint(20) UNSIGNED DEFAULT NULL,
  `administrateur_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reponses_tickets`
--

INSERT INTO `reponses_tickets` (`id`, `created_at`, `updated_at`, `message`, `ticket_id`, `utilisateur_id`, `administrateur_id`) VALUES
(5, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Merci pour votre réponse rapide.', 2, 59, NULL),
(6, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Merci pour votre réponse rapide.', 2, 60, NULL),
(7, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Pouvez-vous me donner plus de détails ?', 3, 61, NULL),
(9, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Le problème persiste malgré vos recommandations.', 4, 63, NULL),
(10, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Le problème persiste malgré vos recommandations.', 4, 64, NULL),
(11, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Je n\'ai toujours pas reçu de solution à mon problème.', 5, 65, NULL),
(14, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Je n\'ai toujours pas reçu de solution à mon problème.', 6, 68, NULL),
(17, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Merci pour votre réponse rapide.', 9, 71, NULL),
(20, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Pouvez-vous me donner plus de détails ?', 10, 74, NULL),
(22, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Pouvez-vous me donner plus de détails ?', 11, 76, NULL),
(23, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Pouvez-vous me donner plus de détails ?', 11, 77, NULL),
(24, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Le problème persiste malgré vos recommandations.', 12, 78, NULL),
(25, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Le problème persiste malgré vos recommandations.', 12, 79, NULL),
(30, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'C\'est exactement ce que je cherchais, merci !', 14, 84, NULL),
(32, '2025-06-28 15:44:12', '2025-06-28 15:44:12', 'Je n\'ai toujours pas reçu de solution à mon problème.', 15, 86, NULL),
(33, '2025-06-29 17:16:59', '2025-06-29 17:16:59', 'XCXC', 4, 2, NULL),
(34, '2025-06-29 17:45:06', '2025-06-29 17:45:06', 'ssss', 17, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1Axxz9vjCmf0ypAE4qxQpPAUvKG5u8GthAoyTw0n', NULL, '64.62.197.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEJuc3E0dmhoc3BZaXE5QnNJWm9Ec295aVR5aUdsNDN5dUdidDRXSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQ6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753344539),
('5yvGC0JDWXSSzl8Z8l2KnlvHM1GtAhtGq1sNJcK4', NULL, '3.132.23.201', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDB3VjFLOVlqRm81SUpVc29XRm9ZSmI1MjBCbkw2ZzNxcXJDUmxoUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQ6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753347452),
('8b4xnsJdwZ7NvYfPqfHxFMKtA9DgQeed3fCaRlN7', NULL, '104.152.52.102', 'curl/7.61.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHFrZXdzOUZVYUJ0Z2JpVmF5QmpKak95MWRHSUpUek9tTUl1WHNXWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753384060),
('dngxoR2h70SXQbgLKu8ipdaJStNpaN9YYXfOWzsR', NULL, '167.71.113.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0lGZURHUXZzWHpVV2hnVTVraE9sRVk1dE9PcUZjSjlzVkFiWkF1UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQ6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753364636),
('EliNZJHx67uppQDj7h2gdiaApF7ccsrPpFdcnL23', NULL, '196.251.86.124', 'Mozilla/5.0 (Windows NT 10.0; rv:109.0) Gecko/20100101 Firefox/116.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVVHcjBlSzV1TDBsUUxRd3FHNEJZQ1MzaDJQZVpCVFRsSVRqTHl2VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQ6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753381283),
('gvNYbQNFGPEJspiF7kMCdCiRFSvZDBLPQOqCS8PH', NULL, '35.205.208.255', 'python-requests/2.32.4', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0FYaE84cEZmSllDVVIzdnBaeldBdnlXRkRGd3RndUk2dlp5NWpkMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQ6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753335228),
('hhqWFqSr4TLLGfJKLpJEjK5EnKPtUixJEPaDOve1', NULL, '34.79.101.56', 'python-requests/2.32.4', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFp4S1JNU29hU0pVRFZTU1dudndtNFcydTIzcTFSeTgzNDYwRW01ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQ6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753350360),
('kyVWZFUg7uLV9XgitZqS3k8tkkGY3FNCYOnVF4Pd', NULL, '3.132.23.201', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnlVUUZOMEdqVEJzN0JnUXhVczU4ajI4QWtKZGZVTjBEMU15RGNGNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQ6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753347372),
('LE7lTWw3hdckm0vbjM9cJqwvRt7uAVPg4y7wd6Xz', NULL, '185.247.137.13', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGlsS3ZrUjVtN0c2b2hNNGJRMkcxYXExNk5RUnBzUjB0MGFTazVmUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQ6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753357014),
('o94OjTsYBPwRk666VbXx8s7v7nWdxIDvB5y74oZf', NULL, '147.185.132.222', 'curl/7.68.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWE4c1VWM1czWWdORmsxRWw2QVZGOEo0T09HbzJUd2FYS2s2SElVViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQ6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753364524),
('oIj6vqGdK1PKX24tNl1ZONC1LAkdOrrVFo3BnNOv', NULL, '64.62.197.40', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36 SE 2.X MetaSr 1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnBMTXJ6emFLVTMzb05tcG52UDgwTjlwN2pFWEZjU3NJZjBZcloydyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9hcGkuaXBpZnkub3JnLz9mb3JtYXQ9anNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753344563),
('Oym53XFbbOUEEowzosIDbM97xH7Rdjye13Oz3nq2', NULL, '198.235.24.196', 'curl/7.68.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialFBbVlqWFdGN0x2UnZHOXdUVXdXTU1vcVZIT2lCdlAxM21EOXNDbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQ6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753324577),
('ptJbvprlIYwjUWdr0ewbsIo3eadEV2glyx8obJgD', NULL, '91.196.152.119', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlR4cVFhYm95V0lSUmZwaU1zSFVCNUVEVTh0SDN6aWY0WElpTkw1VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQ6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753349212),
('qiSGkLMRVJ5Z0Khj0yhvhYpguACcsKxepnuDZkyM', NULL, '205.210.31.199', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDhiMk5IUGNOeU5UbHZXVWVTZlM1cTd1dkRDdm9ZZGNZUkl0aVR5TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQ6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753326967),
('QVxgikOio1BArPsQsUzTwRztRobD85W1eYsK6f2F', NULL, '107.172.102.15', 'Mozilla/5.0 (Fedora; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWNUcTB5Uk5TR1M5YUsydmpaRjl5bFJCQzR6Vml6eVpzNllhYXRiaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQ6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753367165),
('udt3XTHAmoNUZocwo7FCTTAWAjXOBjQnJbamLaRT', NULL, '198.199.83.53', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM29kYkZFMWIzaUt4eXpXUnNYWVFrS0YxblNacFI3N2dEbnBaazZZWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xODUuMjU1LjExMi4yMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753341702);

-- --------------------------------------------------------

--
-- Structure de la table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `client_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tickets`
--

INSERT INTO `tickets` (`id`, `created_at`, `updated_at`, `titre`, `description`, `categorie`, `status`, `client_id`) VALUES
(1, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Problème de paiement', 'Je souhaite être remboursé suite à un problème avec ma commande.', 'Problème technique', 1, 1),
(2, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Prestataire non joignable', 'Ma livraison était prévue hier mais elle n\'a pas eu lieu. Pouvez-vous me renseigner ?', 'Problème de livraison', 3, 2),
(3, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Retard de livraison', 'Je rencontre des difficultés pour me connecter à mon compte depuis ce matin.', 'Problème de livraison', 3, 3),
(4, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Demande de remboursement', 'Le service reçu ne correspond pas à ce qui était annoncé.', 'Demande d\'information', 1, 4),
(5, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Demande de remboursement', 'Le service reçu ne correspond pas à ce qui était annoncé.', 'Demande d\'information', 3, 5),
(6, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Problème de paiement', 'Le paiement n\'a pas été correctement traité.', 'Problème de connexion', 0, 6),
(7, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Livraison non effectuée', 'Il y a une erreur dans les détails de ma commande.', 'Suggestion d\'amélioration', 0, 7),
(8, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Prestataire non joignable', 'Je rencontre des difficultés pour me connecter à mon compte depuis ce matin.', 'Problème de livraison', 2, 8),
(9, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Demande de remboursement', 'La qualité du service n\'était pas à la hauteur de mes attentes.', 'Question facturation', 0, 9),
(10, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Problème de connexion à l\'application', 'Ma livraison était prévue hier mais elle n\'a pas eu lieu. Pouvez-vous me renseigner ?', 'Question facturation', 1, 11),
(11, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Qualité du service décevante', 'Le service reçu ne correspond pas à ce qui était annoncé.', 'Demande d\'information', 3, 12),
(12, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Retard de livraison', 'Ma livraison a plus de 2 heures de retard.', 'Réclamation', 2, 13),
(13, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Retard de livraison', 'Ma livraison a plus de 2 heures de retard.', 'Réclamation', 1, 14),
(14, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Problème de paiement', 'Le paiement n\'a pas été correctement traité.', 'Autre', 1, 15),
(15, '2025-06-28 15:44:11', '2025-06-28 15:44:11', 'Prestataire non joignable', 'Ma livraison a plus de 2 heures de retard.', 'Problème technique', 0, 16),
(16, '2025-06-29 17:44:30', '2025-06-29 17:44:30', 'ssss', 'sss', 'Demande générale', 0, 1),
(17, '2025-06-29 17:44:58', '2025-06-29 17:44:58', 'dddd', 'dddd', 'Demande générale', 0, 1),
(18, '2025-07-16 19:44:24', '2025-07-16 19:44:24', 'tetst', 'est', 'Demande générale', 0, 1),
(19, '2025-07-16 23:26:13', '2025-07-16 23:26:13', 'Bienvenue chez EcoDeli !', 'test2', 'Problème de livraison', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo_profil` varchar(255) DEFAULT NULL,
  `newsletter_subscribed` tinyint(1) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `authentification_2FA` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `photo_profil`, `newsletter_subscribed`, `password`, `authentification_2FA`, `created_at`, `updated_at`) VALUES
(1, 'staff.waveparadise@gmail.com', NULL, 1, '$2y$12$DY8JniANyWbyH4YoN0zlBeJH45UUqqtWUSYH4CGXf6kRjh8mR.e7O', 1, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(2, 'aikayax7889@outlook.fr', NULL, 0, '$2y$12$qESfO3KWYFzDf45cHlESUeKBeHypmyfG/GE2M1rJ./M3PnZmRxoPi', 1, '2025-06-28 15:44:09', '2025-07-16 23:24:50'),
(3, 'jdamas.2624@gmail.com', NULL, 1, '$2y$12$TPQ8ls5uT6rYtoX4/3uYg.mcZk4K6BG8HvZSA1KjRwdqOBlKK3PKS', 1, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(4, 'admin@ecodeli.com', NULL, 1, '$2y$12$xif701KG7zpChnR55np8leWCJfExqtqR7KQm8IqEbgTg1wX.1K.lO', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(5, 'rowe.lillie@example.net', 'https://via.placeholder.com/150x150.png/0077dd?text=people+dolore', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(6, 'danyka.krajcik@example.com', 'https://via.placeholder.com/150x150.png/00bbcc?text=people+beatae', 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(7, 'jedediah72@example.com', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(8, 'aileen79@example.net', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(9, 'clint73@example.com', 'https://via.placeholder.com/150x150.png/00ffff?text=people+sint', 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(10, 'jessika.lemke@example.org', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(11, 'brayan95@example.org', 'https://via.placeholder.com/150x150.png/001177?text=people+voluptatem', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(12, 'giles.paucek@example.net', 'https://via.placeholder.com/150x150.png/00ee44?text=people+illum', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 1, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(13, 'pstreich@example.net', 'https://via.placeholder.com/150x150.png/00ffee?text=people+aut', 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(14, 'abner.dooley@example.org', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(15, 'dana.padberg@example.net', 'https://via.placeholder.com/150x150.png/00aa22?text=people+voluptatem', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(16, 'narciso.kemmer@example.com', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(17, 'william.ratke@example.com', 'https://via.placeholder.com/150x150.png/0000ee?text=people+ea', 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(18, 'skyla18@example.net', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(19, 'kuvalis.kelly@example.com', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(20, 'gdickens@example.net', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(21, 'jessica28@example.com', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 1, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(22, 'everett.reichert@example.com', 'https://via.placeholder.com/150x150.png/008844?text=people+dicta', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(23, 'hilario.hayes@example.org', 'https://via.placeholder.com/150x150.png/004466?text=people+suscipit', 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 1, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(24, 'lesch.brisa@example.org', 'https://via.placeholder.com/150x150.png/002266?text=people+mollitia', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(25, 'wwest@example.net', 'https://via.placeholder.com/150x150.png/00ee11?text=people+soluta', 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(26, 'jokeefe@example.org', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(27, 'wratke@example.net', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(28, 'heathcote.alvera@example.org', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(29, 'chauncey08@example.com', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(30, 'mable41@example.org', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(31, 'boyd07@example.org', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(32, 'khintz@example.org', 'https://via.placeholder.com/150x150.png/0088bb?text=people+provident', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(33, 'kuphal.ella@example.net', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(34, 'yvonne06@example.com', 'https://via.placeholder.com/150x150.png/000033?text=people+porro', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(35, 'constantin.schinner@example.com', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(36, 'gordon.stiedemann@example.net', 'https://via.placeholder.com/150x150.png/002222?text=people+iste', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 1, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(37, 'antonia.schinner@example.net', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 1, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(38, 'nikita.purdy@example.com', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(39, 'myra.bode@example.org', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(40, 'droberts@example.net', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(41, 'weldon.purdy@example.org', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(42, 'klein.erwin@example.com', 'https://via.placeholder.com/150x150.png/00bb55?text=people+reiciendis', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(43, 'walker.antwan@example.net', 'https://via.placeholder.com/150x150.png/0011dd?text=people+libero', 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 1, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(44, 'vida04@example.org', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(45, 'mrutherford@example.com', 'https://via.placeholder.com/150x150.png/0033cc?text=people+labore', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(46, 'destany71@example.org', 'https://via.placeholder.com/150x150.png/00bbcc?text=people+ducimus', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(47, 'deondre40@example.org', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(48, 'ijenkins@example.com', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(49, 'greg34@example.com', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(50, 'psporer@example.net', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(51, 'rosario82@example.net', 'https://via.placeholder.com/150x150.png/00bb22?text=people+reprehenderit', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(52, 'mac40@example.org', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(53, 'mwalter@example.net', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 1, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(54, 'fern20@example.org', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:09', '2025-06-28 15:44:09'),
(55, 'walter.hegmann@example.org', 'https://via.placeholder.com/150x150.png/008811?text=people+ipsa', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(56, 'fae08@example.net', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(57, 'waelchi.taya@example.org', 'https://via.placeholder.com/150x150.png/00eedd?text=people+blanditiis', 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(58, 'pyundt@example.com', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(59, 'bechtelar.archibald@example.net', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(60, 'tamia62@example.net', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(61, 'laury.johns@example.org', 'https://via.placeholder.com/150x150.png/0011cc?text=people+ut', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(62, 'reilly.dulce@example.org', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(63, 'kristoffer.will@example.net', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(64, 'consuelo.macejkovic@example.com', 'https://via.placeholder.com/150x150.png/00bbee?text=people+quia', 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(65, 'kuhlman.erna@example.com', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(66, 'jacobs.lilian@example.org', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(67, 'vschmeler@example.net', 'https://via.placeholder.com/150x150.png/002277?text=people+repellat', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(68, 'flowe@example.net', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 1, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(69, 'hermiston.rene@example.net', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(70, 'meggie53@example.net', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 1, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(71, 'nitzsche.jada@example.org', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 1, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(72, 'yfadel@example.com', 'https://via.placeholder.com/150x150.png/0000aa?text=people+molestias', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 1, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(73, 'kathryne.dare@example.com', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(74, 'bednar.forrest@example.net', 'https://via.placeholder.com/150x150.png/00bbdd?text=people+est', 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(75, 'terry82@example.net', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(76, 'rbergstrom@example.com', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(77, 'edd33@example.net', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(78, 'gryan@example.com', 'https://via.placeholder.com/150x150.png/00bb22?text=people+molestiae', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(79, 'rpouros@example.org', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(80, 'crystal26@example.com', 'https://via.placeholder.com/150x150.png/0055ff?text=people+ea', 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(81, 'cledner@example.com', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(82, 'hyatt.warren@example.org', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(83, 'carter.maxwell@example.net', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(84, 'runolfsdottir.stefan@example.net', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(85, 'opal14@example.net', NULL, 1, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(86, 'aurelie.jones@example.com', NULL, 0, '$2y$12$BDMNbm4OHBJY2OPjMtvXZ.n9vyaQzXxFRNIT4KDSswJqhhNF9SsZy', 0, '2025-06-28 15:44:11', '2025-06-28 15:44:11'),
(87, 'admin@test.com', NULL, 1, '$2y$12$rZfdJp5fYny40bjIU8kgbOtihWq6e4vnJ9FTWCFQjwEj8u90oq6mS', 0, '2025-06-28 15:44:40', '2025-06-28 15:44:40'),
(88, 'mmayer@example.net', NULL, 0, '$2y$12$ua5b.tzO0tXfer53zs0bluzI0055IIdorsLc233xmu.bFJNRIUUGa', 0, '2025-06-28 15:44:41', '2025-06-28 15:44:41'),
(89, 'precious80@example.org', 'https://via.placeholder.com/150x150.png/0088bb?text=people+dolores', 1, '$2y$12$ua5b.tzO0tXfer53zs0bluzI0055IIdorsLc233xmu.bFJNRIUUGa', 0, '2025-06-28 15:44:41', '2025-06-28 15:44:41'),
(90, 'alexanne64@example.net', NULL, 1, '$2y$12$ua5b.tzO0tXfer53zs0bluzI0055IIdorsLc233xmu.bFJNRIUUGa', 0, '2025-06-28 15:44:41', '2025-06-28 15:44:41'),
(91, 'obrakus@example.org', NULL, 0, '$2y$12$ua5b.tzO0tXfer53zs0bluzI0055IIdorsLc233xmu.bFJNRIUUGa', 0, '2025-06-28 15:44:41', '2025-06-28 15:44:41'),
(92, 'ookuneva@example.net', 'https://via.placeholder.com/150x150.png/00ff22?text=people+hic', 1, '$2y$12$ua5b.tzO0tXfer53zs0bluzI0055IIdorsLc233xmu.bFJNRIUUGa', 0, '2025-06-28 15:44:41', '2025-06-28 15:44:41'),
(93, 'berry37@example.com', NULL, 1, '$2y$12$ua5b.tzO0tXfer53zs0bluzI0055IIdorsLc233xmu.bFJNRIUUGa', 0, '2025-06-28 15:44:41', '2025-06-28 15:44:41'),
(94, 'sanford77@example.com', NULL, 0, '$2y$12$ua5b.tzO0tXfer53zs0bluzI0055IIdorsLc233xmu.bFJNRIUUGa', 0, '2025-06-28 15:44:41', '2025-06-28 15:44:41'),
(95, 'emmalee.abshire@example.com', NULL, 1, '$2y$12$ua5b.tzO0tXfer53zs0bluzI0055IIdorsLc233xmu.bFJNRIUUGa', 0, '2025-06-28 15:44:41', '2025-06-28 15:44:41'),
(96, 'talon83@example.net', NULL, 0, '$2y$12$ua5b.tzO0tXfer53zs0bluzI0055IIdorsLc233xmu.bFJNRIUUGa', 0, '2025-06-28 15:44:41', '2025-06-28 15:44:41'),
(97, 'iledner@example.org', 'https://via.placeholder.com/150x150.png/00bbff?text=people+rerum', 1, '$2y$12$ua5b.tzO0tXfer53zs0bluzI0055IIdorsLc233xmu.bFJNRIUUGa', 0, '2025-06-28 15:44:41', '2025-06-28 15:44:41'),
(103, 'jdamas.2623@gmail.com', NULL, NULL, '$2y$12$x9fItQaqo/MCzZl0R1KmDOE0NLbhOANcwqWuw/41CP9isuEHhj3Cy', 1, '2025-06-29 15:52:33', '2025-06-29 15:53:12'),
(105, 'mag0612gma@gmail.com', NULL, NULL, '$2y$12$IQ9DQlpK.yqHn5ekxONx.OuIW2ICoT8Cg33CRLPGjNAxwpWBgNGVW', 0, '2025-06-30 14:37:18', '2025-06-30 14:37:18'),
(107, 'amnesiaoffi.mc@gmail.com', NULL, NULL, '$2y$12$/iCLefT3PrlCa1DK7xWTVede9c3Axw6RnfsaQI.jM91ZjcI0LAL96', 1, '2025-06-30 14:41:11', '2025-06-30 14:41:29'),
(112, 'lucas.vallion05@gmail.com', NULL, 1, '$2y$12$7J6Z0WzePCm5XoX6umsieOFIrk6fDytFZDCxT4nt5goPXw4CFaYLu', 1, '2025-07-01 16:39:00', '2025-07-11 09:07:53'),
(113, 'marie.dubois@email.com', NULL, NULL, '$2y$12$xas318MwDj4sA4yhlCxuS.b7wS7AOnR.hAUQGV0PYzRlhpahzWQOK', 0, '2025-07-04 08:53:19', '2025-07-04 08:53:19'),
(114, 'pierre.martin@email.com', NULL, NULL, '$2y$12$uViffFFK4puAXtO31sjTNO8ClI2OBdDLssI8UELqp1OABTXM4i1b.', 0, '2025-07-04 08:53:19', '2025-07-04 08:53:19'),
(115, 'leonel32@example.net', NULL, 1, '$2y$12$c4X90.NjKV.wABiY4OcaQurbs/zvk3wfE0d0HkrKMze0Y/7UCQrIG', 0, '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(116, 'vtremblay@example.com', NULL, 0, '$2y$12$c4X90.NjKV.wABiY4OcaQurbs/zvk3wfE0d0HkrKMze0Y/7UCQrIG', 1, '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(117, 'edwin.collier@example.net', NULL, 1, '$2y$12$c4X90.NjKV.wABiY4OcaQurbs/zvk3wfE0d0HkrKMze0Y/7UCQrIG', 0, '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(118, 'qbernier@example.com', NULL, 1, '$2y$12$c4X90.NjKV.wABiY4OcaQurbs/zvk3wfE0d0HkrKMze0Y/7UCQrIG', 0, '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(119, 'clay08@example.org', NULL, 1, '$2y$12$c4X90.NjKV.wABiY4OcaQurbs/zvk3wfE0d0HkrKMze0Y/7UCQrIG', 0, '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(120, 'yasmeen.kilback@example.org', NULL, 0, '$2y$12$c4X90.NjKV.wABiY4OcaQurbs/zvk3wfE0d0HkrKMze0Y/7UCQrIG', 1, '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(121, 'linda06@example.net', NULL, 1, '$2y$12$c4X90.NjKV.wABiY4OcaQurbs/zvk3wfE0d0HkrKMze0Y/7UCQrIG', 0, '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(122, 'austyn.dietrich@example.com', NULL, 1, '$2y$12$c4X90.NjKV.wABiY4OcaQurbs/zvk3wfE0d0HkrKMze0Y/7UCQrIG', 0, '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(123, 'kozey.katheryn@example.org', NULL, 1, '$2y$12$c4X90.NjKV.wABiY4OcaQurbs/zvk3wfE0d0HkrKMze0Y/7UCQrIG', 0, '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(124, 'kskiles@example.com', NULL, 1, '$2y$12$c4X90.NjKV.wABiY4OcaQurbs/zvk3wfE0d0HkrKMze0Y/7UCQrIG', 0, '2025-07-06 12:31:45', '2025-07-06 12:31:45'),
(125, 'runolfsdottir.adrian@example.org', NULL, 1, '$2y$12$oA2UQaFkKf1r4TOlijROI.95KCOTHB/dykWm/bVZ/9n/bY50OCR96', 0, '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(126, 'jaylin.wehner@example.net', NULL, 1, '$2y$12$oA2UQaFkKf1r4TOlijROI.95KCOTHB/dykWm/bVZ/9n/bY50OCR96', 0, '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(127, 'branson.kuhlman@example.org', NULL, 0, '$2y$12$oA2UQaFkKf1r4TOlijROI.95KCOTHB/dykWm/bVZ/9n/bY50OCR96', 0, '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(128, 'kathleen00@example.net', 'https://via.placeholder.com/150x150.png/00bb77?text=people+non', 0, '$2y$12$oA2UQaFkKf1r4TOlijROI.95KCOTHB/dykWm/bVZ/9n/bY50OCR96', 0, '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(129, 'douglas.aron@example.org', 'https://via.placeholder.com/150x150.png/009944?text=people+id', 0, '$2y$12$oA2UQaFkKf1r4TOlijROI.95KCOTHB/dykWm/bVZ/9n/bY50OCR96', 0, '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(130, 'humberto48@example.com', 'https://via.placeholder.com/150x150.png/00ffcc?text=people+eveniet', 1, '$2y$12$oA2UQaFkKf1r4TOlijROI.95KCOTHB/dykWm/bVZ/9n/bY50OCR96', 0, '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(131, 'viola.windler@example.net', NULL, 0, '$2y$12$oA2UQaFkKf1r4TOlijROI.95KCOTHB/dykWm/bVZ/9n/bY50OCR96', 1, '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(132, 'felipa93@example.org', NULL, 0, '$2y$12$oA2UQaFkKf1r4TOlijROI.95KCOTHB/dykWm/bVZ/9n/bY50OCR96', 0, '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(133, 'cody03@example.org', NULL, 1, '$2y$12$oA2UQaFkKf1r4TOlijROI.95KCOTHB/dykWm/bVZ/9n/bY50OCR96', 0, '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(134, 'jedidiah86@example.com', NULL, 1, '$2y$12$oA2UQaFkKf1r4TOlijROI.95KCOTHB/dykWm/bVZ/9n/bY50OCR96', 1, '2025-07-06 12:33:20', '2025-07-06 12:33:20'),
(135, 'test@gmail.com', NULL, NULL, '$2y$12$dScMtyk0sK.gg6IHqViwk.49kxZRYHsZOvtfmWBqwiSo3I95/uADa', 0, '2025-07-07 09:02:18', '2025-07-07 09:02:18'),
(138, 'mag0612ma@gmail.com', NULL, NULL, '$2y$12$/PFYwUZeM5MJUEHgE54RDOpKS978wnuXJqyEyoSSzYk2Z5MMcq0O2', 0, '2025-07-09 14:36:14', '2025-07-09 14:36:14'),
(139, 'lucas.vallion.job@gmail.com', NULL, NULL, '$2y$12$M.KrKEvcULxHwfkOpeLPVe0Y.574p6/7cVR29fhoFvCX/Ya2pO.uW', 0, '2025-07-11 08:57:29', '2025-07-11 08:57:29'),
(140, 'botose6352@forexru.com', 'photos/1753044647_Capture d\'écran 2024-04-20 171843.png', 1, '$2y$12$F6h/cReqSk6PIlOWakcIqOQZoxXL2oc.f4WkiWmJnrao99tZhBOq.', 1, '2025-07-20 20:42:41', '2025-07-20 20:50:47');

-- --------------------------------------------------------

--
-- Structure de la table `user_achievements`
--

CREATE TABLE `user_achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `achievement_id` bigint(20) UNSIGNED NOT NULL,
  `unlocked_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_badges`
--

CREATE TABLE `user_badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `badge_id` bigint(20) UNSIGNED NOT NULL,
  `earned_at` timestamp NOT NULL,
  `earned_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`earned_data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `validation_codes`
--

CREATE TABLE `validation_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_prestation` bigint(20) UNSIGNED NOT NULL,
  `id_prestataire` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(10) NOT NULL,
  `valide_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `administrateurs`
--
ALTER TABLE `administrateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `administrateurs_id_utilisateur_unique` (`id_utilisateur`);

--
-- Index pour la table `annonces_prestataires`
--
ALTER TABLE `annonces_prestataires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annonces_prestataires_id_client_foreign` (`id_client`),
  ADD KEY `annonces_prestataires_id_prestation_foreign` (`id_prestation`),
  ADD KEY `annonces_prestataires_status_index` (`status`),
  ADD KEY `annonces_prestataires_id_prestataire_status_index` (`id_prestataire`,`status`),
  ADD KEY `annonces_prestataires_validated_by_foreign` (`validated_by`);

--
-- Index pour la table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `badges_slug_unique` (`slug`);

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_id_utilisateur_foreign` (`id_utilisateur`);

--
-- Index pour la table `commercants`
--
ALTER TABLE `commercants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `commercants_numero_siret_unique` (`numero_siret`),
  ADD UNIQUE KEY `commercants_email_responsable_unique` (`email_responsable`),
  ADD KEY `commercants_id_utilisateur_foreign` (`id_utilisateur`);

--
-- Index pour la table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `conversations_user1_id_user2_id_unique` (`user1_id`,`user2_id`),
  ADD KEY `conversations_user2_id_foreign` (`user2_id`),
  ADD KEY `conversations_prestation_id_index` (`prestation_id`);

--
-- Index pour la table `conversation_participants`
--
ALTER TABLE `conversation_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `conversation_participants_conversation_id_user_id_unique` (`conversation_id`,`user_id`),
  ADD KEY `conversation_participants_user_id_index` (`user_id`);

--
-- Index pour la table `conversation_participants_table_new`
--
ALTER TABLE `conversation_participants_table_new`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `document_justificatifs`
--
ALTER TABLE `document_justificatifs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_justificatifs_user_id_foreign` (`user_id`);

--
-- Index pour la table `entrepots`
--
ALTER TABLE `entrepots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `entrepots_name_unique` (`name`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `insurances`
--
ALTER TABLE `insurances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurances_user_id_foreign` (`user_id`);

--
-- Index pour la table `insurance_claims`
--
ALTER TABLE `insurance_claims`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_claims_user_id_foreign` (`user_id`),
  ADD KEY `insurance_claims_insurance_id_foreign` (`insurance_id`),
  ADD KEY `insurance_claims_prestation_id_foreign` (`prestation_id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `livraisons`
--
ALTER TABLE `livraisons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livraisons_id_client_foreign` (`id_client`),
  ADD KEY `livraisons_id_livreur_foreign` (`id_livreur`),
  ADD KEY `livraisons_created_by_commercant_foreign` (`created_by_commercant`),
  ADD KEY `livraisons_entrepot_id_foreign` (`entrepot_id`);

--
-- Index pour la table `livraisons_commercant`
--
ALTER TABLE `livraisons_commercant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `livraisons_commercant_code_suivi_unique` (`code_suivi`),
  ADD KEY `livraisons_commercant_commercant_id_statut_index` (`commercant_id`,`statut`),
  ADD KEY `livraisons_commercant_livreur_id_statut_index` (`livreur_id`,`statut`),
  ADD KEY `livraisons_commercant_code_suivi_index` (`code_suivi`),
  ADD KEY `livraisons_commercant_created_at_index` (`created_at`);

--
-- Index pour la table `livreurs`
--
ALTER TABLE `livreurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livreurs_id_utilisateur_foreign` (`id_utilisateur`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_conversation_id_foreign` (`conversation_id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`);

--
-- Index pour la table `mfa_resets`
--
ALTER TABLE `mfa_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mfa_resets_token_unique` (`token`),
  ADD KEY `mfa_resets_user_id_foreign` (`user_id`);

--
-- Index pour la table `mfa_secrets`
--
ALTER TABLE `mfa_secrets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mfa_secrets_user_id_foreign` (`user_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notations_livreurs`
--
ALTER TABLE `notations_livreurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notations_livreurs_id_livraison_unique` (`id_livraison`),
  ADD KEY `notations_livreurs_id_client_foreign` (`id_client`),
  ADD KEY `notations_livreurs_id_livreur_index` (`id_livreur`),
  ADD KEY `notations_livreurs_note_index` (`note`),
  ADD KEY `notations_livreurs_created_at_index` (`created_at`);

--
-- Index pour la table `paiements`
--
ALTER TABLE `paiements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paiements_id_utilisateur_foreign` (`id_utilisateur`),
  ADD KEY `paiements_id_prestation_foreign` (`id_prestation`),
  ADD KEY `paiements_id_livraison_foreign` (`id_livraison`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD KEY `password_reset_tokens_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `prestataires`
--
ALTER TABLE `prestataires`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prestataires_email_unique` (`email`),
  ADD KEY `prestataires_id_utilisateur_foreign` (`id_utilisateur`);

--
-- Index pour la table `prestations`
--
ALTER TABLE `prestations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prestations_id_prestataire_foreign` (`id_prestataire`),
  ADD KEY `prestations_id_client_foreign` (`id_client`),
  ADD KEY `prestations_code_validation_index` (`code_validation`);

--
-- Index pour la table `reponses_tickets`
--
ALTER TABLE `reponses_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reponses_tickets_ticket_id_foreign` (`ticket_id`),
  ADD KEY `reponses_tickets_utilisateur_id_foreign` (`utilisateur_id`),
  ADD KEY `reponses_tickets_administrateur_id_foreign` (`administrateur_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_client_id_foreign` (`client_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `user_achievements`
--
ALTER TABLE `user_achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_achievements_user_id_foreign` (`user_id`),
  ADD KEY `user_achievements_achievement_id_foreign` (`achievement_id`);

--
-- Index pour la table `user_badges`
--
ALTER TABLE `user_badges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_badges_user_id_badge_id_unique` (`user_id`,`badge_id`),
  ADD KEY `user_badges_badge_id_foreign` (`badge_id`);

--
-- Index pour la table `validation_codes`
--
ALTER TABLE `validation_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `validation_codes_id_prestation_code_unique` (`id_prestation`,`code`),
  ADD KEY `validation_codes_id_prestataire_foreign` (`id_prestataire`),
  ADD KEY `validation_codes_code_id_prestataire_index` (`code`,`id_prestataire`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `administrateurs`
--
ALTER TABLE `administrateurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `annonces_prestataires`
--
ALTER TABLE `annonces_prestataires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT pour la table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `commercants`
--
ALTER TABLE `commercants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `conversation_participants`
--
ALTER TABLE `conversation_participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `conversation_participants_table_new`
--
ALTER TABLE `conversation_participants_table_new`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `document_justificatifs`
--
ALTER TABLE `document_justificatifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `entrepots`
--
ALTER TABLE `entrepots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `insurances`
--
ALTER TABLE `insurances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `insurance_claims`
--
ALTER TABLE `insurance_claims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `livraisons`
--
ALTER TABLE `livraisons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `livraisons_commercant`
--
ALTER TABLE `livraisons_commercant`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `livreurs`
--
ALTER TABLE `livreurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT pour la table `mfa_resets`
--
ALTER TABLE `mfa_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `mfa_secrets`
--
ALTER TABLE `mfa_secrets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT pour la table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `notations_livreurs`
--
ALTER TABLE `notations_livreurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `paiements`
--
ALTER TABLE `paiements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `prestataires`
--
ALTER TABLE `prestataires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `prestations`
--
ALTER TABLE `prestations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `reponses_tickets`
--
ALTER TABLE `reponses_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT pour la table `user_achievements`
--
ALTER TABLE `user_achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_badges`
--
ALTER TABLE `user_badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `validation_codes`
--
ALTER TABLE `validation_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `administrateurs`
--
ALTER TABLE `administrateurs`
  ADD CONSTRAINT `administrateurs_id_utilisateur_foreign` FOREIGN KEY (`id_utilisateur`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `annonces_prestataires`
--
ALTER TABLE `annonces_prestataires`
  ADD CONSTRAINT `annonces_prestataires_id_client_foreign` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `annonces_prestataires_id_prestataire_foreign` FOREIGN KEY (`id_prestataire`) REFERENCES `prestataires` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `annonces_prestataires_id_prestation_foreign` FOREIGN KEY (`id_prestation`) REFERENCES `prestations` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_id_utilisateur_foreign` FOREIGN KEY (`id_utilisateur`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commercants`
--
ALTER TABLE `commercants`
  ADD CONSTRAINT `commercants_id_utilisateur_foreign` FOREIGN KEY (`id_utilisateur`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_user1_id_foreign` FOREIGN KEY (`user1_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `conversations_user2_id_foreign` FOREIGN KEY (`user2_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `conversation_participants`
--
ALTER TABLE `conversation_participants`
  ADD CONSTRAINT `conversation_participants_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `document_justificatifs`
--
ALTER TABLE `document_justificatifs`
  ADD CONSTRAINT `document_justificatifs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `insurances`
--
ALTER TABLE `insurances`
  ADD CONSTRAINT `insurances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `insurance_claims`
--
ALTER TABLE `insurance_claims`
  ADD CONSTRAINT `insurance_claims_insurance_id_foreign` FOREIGN KEY (`insurance_id`) REFERENCES `insurances` (`id`),
  ADD CONSTRAINT `insurance_claims_prestation_id_foreign` FOREIGN KEY (`prestation_id`) REFERENCES `prestations` (`id`),
  ADD CONSTRAINT `insurance_claims_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `livraisons`
--
ALTER TABLE `livraisons`
  ADD CONSTRAINT `livraisons_created_by_commercant_foreign` FOREIGN KEY (`created_by_commercant`) REFERENCES `commercants` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `livraisons_entrepot_id_foreign` FOREIGN KEY (`entrepot_id`) REFERENCES `entrepots` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `livraisons_id_client_foreign` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `livraisons_id_livreur_foreign` FOREIGN KEY (`id_livreur`) REFERENCES `livreurs` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `livraisons_commercant`
--
ALTER TABLE `livraisons_commercant`
  ADD CONSTRAINT `livraisons_commercant_commercant_id_foreign` FOREIGN KEY (`commercant_id`) REFERENCES `commercants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `livraisons_commercant_livreur_id_foreign` FOREIGN KEY (`livreur_id`) REFERENCES `livreurs` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `livreurs`
--
ALTER TABLE `livreurs`
  ADD CONSTRAINT `livreurs_id_utilisateur_foreign` FOREIGN KEY (`id_utilisateur`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`),
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `mfa_resets`
--
ALTER TABLE `mfa_resets`
  ADD CONSTRAINT `mfa_resets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `mfa_secrets`
--
ALTER TABLE `mfa_secrets`
  ADD CONSTRAINT `mfa_secrets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `notations_livreurs`
--
ALTER TABLE `notations_livreurs`
  ADD CONSTRAINT `notations_livreurs_id_client_foreign` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notations_livreurs_id_livraison_foreign` FOREIGN KEY (`id_livraison`) REFERENCES `livraisons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notations_livreurs_id_livreur_foreign` FOREIGN KEY (`id_livreur`) REFERENCES `livreurs` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `paiements`
--
ALTER TABLE `paiements`
  ADD CONSTRAINT `paiements_id_livraison_foreign` FOREIGN KEY (`id_livraison`) REFERENCES `livraisons` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `paiements_id_prestation_foreign` FOREIGN KEY (`id_prestation`) REFERENCES `annonces_prestataires` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `paiements_id_utilisateur_foreign` FOREIGN KEY (`id_utilisateur`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `prestataires`
--
ALTER TABLE `prestataires`
  ADD CONSTRAINT `prestataires_id_utilisateur_foreign` FOREIGN KEY (`id_utilisateur`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `prestations`
--
ALTER TABLE `prestations`
  ADD CONSTRAINT `prestations_id_client_foreign` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `prestations_id_prestataire_foreign` FOREIGN KEY (`id_prestataire`) REFERENCES `prestataires` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reponses_tickets`
--
ALTER TABLE `reponses_tickets`
  ADD CONSTRAINT `reponses_tickets_administrateur_id_foreign` FOREIGN KEY (`administrateur_id`) REFERENCES `administrateurs` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `reponses_tickets_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reponses_tickets_utilisateur_id_foreign` FOREIGN KEY (`utilisateur_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_achievements`
--
ALTER TABLE `user_achievements`
  ADD CONSTRAINT `user_achievements_achievement_id_foreign` FOREIGN KEY (`achievement_id`) REFERENCES `achievements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_achievements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_badges`
--
ALTER TABLE `user_badges`
  ADD CONSTRAINT `user_badges_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`),
  ADD CONSTRAINT `user_badges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `validation_codes`
--
ALTER TABLE `validation_codes`
  ADD CONSTRAINT `validation_codes_id_prestataire_foreign` FOREIGN KEY (`id_prestataire`) REFERENCES `prestataires` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `validation_codes_id_prestation_foreign` FOREIGN KEY (`id_prestation`) REFERENCES `prestations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
