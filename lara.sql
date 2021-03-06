-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Nov 11, 2021 alle 00:31
-- Versione del server: 10.4.21-MariaDB
-- Versione PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `blog`
--

CREATE TABLE `blog` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_user_id` int(11) NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `post_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `blog`
--

INSERT INTO `blog` (`post_id`, `post_title`, `post_content`, `post_user_id`, `post_date`, `post_url`) VALUES
(16, 'The new site', 'The new site is online!', 1, '2021-10-12', 'The-new-site'),
(17, 'Oktoberfest', 'Oktoberfest is coming, stay updated on our site!', 1, '2021-10-12', 'Oktoberfest');

-- --------------------------------------------------------

--
-- Struttura della tabella `carousel`
--

CREATE TABLE `carousel` (
  `id` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `carousel`
--

INSERT INTO `carousel` (`id`, `position`, `link`) VALUES
(1, 1, ''),
(2, 1, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `carousel_info`
--

CREATE TABLE `carousel_info` (
  `id` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `carousel_info`
--

INSERT INTO `carousel_info` (`id`, `position`, `link`) VALUES
(1, 1, ''),
(2, 1, ''),
(3, 1, ''),
(4, 1, ''),
(5, 2, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `carousel_translations`
--

CREATE TABLE `carousel_translations` (
  `id` int(11) NOT NULL,
  `for_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `locale` varchar(5) NOT NULL,
  `title1` varchar(150) NOT NULL,
  `title2` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `carousel_translations`
--

INSERT INTO `carousel_translations` (`id`, `for_id`, `image`, `locale`, `title1`, `title2`) VALUES
(1, 1, 'carousel/yLlBTxNv1uEl7x9agHCnD7lqiTTJC2v06e22KCfm.jpeg', 'en', 'Over one hundred flavours of', 'Specially Crafted Beer'),
(2, 2, 'carousel/elWB5NEJNrxFSm0nmNT78J1NHj9minhGo98peCGX.jpeg', 'en', 'We use only the finest ingredients to create the', 'The Perfect Craft Beer');

-- --------------------------------------------------------

--
-- Struttura della tabella `carousel_translations_info`
--

CREATE TABLE `carousel_translations_info` (
  `id` int(11) NOT NULL,
  `for_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `locale` varchar(5) NOT NULL,
  `title1` varchar(150) NOT NULL,
  `title2` varchar(150) NOT NULL,
  `text` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `carousel_translations_info`
--

INSERT INTO `carousel_translations_info` (`id`, `for_id`, `image`, `locale`, `title1`, `title2`, `text`) VALUES
(3, 4, 'carousel_info/8AbY9ht6UJk7LLT2368ITCkZm5sFeRI2Kap0uShS.jpeg', 'en', 'About our', 'Brewery', 'The 12-ounce bottle pours a pitch-black, topped with a creamy tan-colored head that leaves a healthy ringed lace as it settles, with a bit of stick on the glass.'),
(4, 5, 'carousel_info/WCtgEivGcCmZ6NjMS4l7CGpB5tOAMvlcPAo9g6wR.jpeg', 'en', 'Made to share with', 'Friends', 'A blend of lambic beers brewed at 3 Fonteinen, with an addition of 30% whole fresh raspberries from the fabled Payottenland and 5% sour cherries. This unfiltered beer will enjoy a spontaneous refermentation in the bottle. No artificial colors or flavor enhancers are added. Lambic is brewed only from 60% barley malt, 40% unmalted wheat, hops and water.');

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `categories`
--

INSERT INTO `categories` (`id`, `parent`, `position`, `url`) VALUES
(2, 0, 0, 'Brown-Ale'),
(3, 0, 0, 'Pale-ale'),
(4, 0, 0, 'Stout'),
(5, 0, 0, 'Wheat-beer'),
(6, 0, 0, 'Pils'),
(7, 0, 0, 'Lager');

-- --------------------------------------------------------

--
-- Struttura della tabella `categories_translations`
--

CREATE TABLE `categories_translations` (
  `id` int(11) NOT NULL,
  `for_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `locale` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `categories_translations`
--

INSERT INTO `categories_translations` (`id`, `for_id`, `name`, `locale`) VALUES
(3, 2, 'Brown Ale', 'en'),
(4, 3, 'Pale ale', 'en'),
(5, 4, 'Stout', 'en'),
(6, 5, 'Wheat beer', 'en'),
(7, 6, 'Pils', 'en'),
(8, 7, 'Lager', 'en');

-- --------------------------------------------------------

--
-- Struttura della tabella `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `position`, `telephone`, `email`) VALUES
(1, 'Via x, 13', 'https://maps.googleapis.com/maps/api/js?key=AIzaSyCzbEe1YItOGVa3h_gT66MTFP056M0xQyo', '333 3333333', 'beerify@test.com');

-- --------------------------------------------------------

--
-- Struttura della tabella `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `percentage_value` int(11) NOT NULL,
  `coupon_string` varchar(10) NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `coupon`
--

INSERT INTO `coupon` (`id`, `percentage_value`, `coupon_string`, `expire_date`) VALUES
(1, 67, 'A3FZ6Q1YYX', '2021-11-20 12:45:59'),
(2, 78, 'PVY7O3ROV0', '2021-11-01 16:22:02'),
(3, 45, 'DKRHDFLIEI', '2021-11-01 13:48:11');

-- --------------------------------------------------------

--
-- Struttura della tabella `expeditions`
--

CREATE TABLE `expeditions` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `fast_orders`
--

CREATE TABLE `fast_orders` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `names` varchar(100) NOT NULL,
  `time_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `favorites`
--

INSERT INTO `favorites` (`id`, `id_product`, `id_user`) VALUES
(1, 43, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `img_product`
--

CREATE TABLE `img_product` (
  `id_img_prodotto` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `directory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `img_user`
--

CREATE TABLE `img_user` (
  `id_img_user` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `directory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `img_user`
--

INSERT INTO `img_user` (`id_img_user`, `id_user`, `directory`) VALUES
(1, 1, 'img_user/XqlJuB5WXp8UEfW8686rWFlRhuVrlt33BN00YYDa.png'),
(2, 1, 'profile.png'),
(3, 2, 'profile.png'),
(4, 3, 'profile.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `text` varchar(3600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `time_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` varchar(30) NOT NULL,
  `products` varchar(255) NOT NULL COMMENT 'serialized array',
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `time_created`, `type`, `products`, `status`) VALUES
(2, 1, '2021-10-25 15:39:05', 'cash_on_delivery', 'a:1:{i:0;a:2:{s:2:\"id\";s:2:\"44\";s:8:\"quantity\";s:1:\"4\";}}', 0),
(3, 2, '2021-11-03 14:41:02', 'cash_on_delivery', 'a:2:{i:0;a:2:{s:2:\"id\";s:2:\"44\";s:8:\"quantity\";s:1:\"4\";}i:1;a:2:{s:2:\"id\";s:2:\"45\";s:8:\"quantity\";s:1:\"4\";}}', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `orders_clients`
--

CREATE TABLE `orders_clients` (
  `id` int(11) NOT NULL,
  `for_order` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `notes` text NOT NULL,
  `total_price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `orders_clients`
--

INSERT INTO `orders_clients` (`id`, `for_order`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `post_code`, `notes`, `total_price`) VALUES
(2, 2, 'andrea', 'andrea', 'andrea@andrea.andrea', '22', 'andrea', '', '', '', 16),
(3, 3, 'a', 's', 'admin@admin.admin', '22', 'a', '', '', '', 33);

-- --------------------------------------------------------

--
-- Struttura della tabella `our_beer_carousel`
--

CREATE TABLE `our_beer_carousel` (
  `id` int(11) NOT NULL,
  `text_container_1` varchar(100) DEFAULT NULL,
  `text_container_2` varchar(100) DEFAULT NULL,
  `text_container_3` varchar(100) DEFAULT NULL,
  `text_container_4` varchar(100) DEFAULT NULL,
  `slider_1` varchar(600) DEFAULT NULL,
  `counter_1` int(100) DEFAULT NULL,
  `counter_2` int(100) DEFAULT NULL,
  `counter_3` int(100) DEFAULT NULL,
  `counter_4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `our_beer_carousel`
--

INSERT INTO `our_beer_carousel` (`id`, `text_container_1`, `text_container_2`, `text_container_3`, `text_container_4`, `slider_1`, `counter_1`, `counter_2`, `counter_3`, `counter_4`) VALUES
(1, 'We only use natural ingredients to make the best beer ever!', 'Every ingredient comes from our country', 'The variety of our beer is almost infinite! You can find everything you need!', 'Everything is done locally, even the stocking!', 'Malt character and sweetness is pretty bland, with a weak toasty note as the highlight. Finish is drying, with a lingering hop character and sourness that just doesn\'t seem right.', 12, 3, 7, 30);

-- --------------------------------------------------------

--
-- Struttura della tabella `producers`
--

CREATE TABLE `producers` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `brewery` varchar(600) NOT NULL,
  `link` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `folder` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `link_to` varchar(255) DEFAULT NULL,
  `order_position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `procurements` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tags` varchar(255) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `our_beer` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`id`, `image`, `folder`, `created_at`, `updated_at`, `quantity`, `category_id`, `url`, `link_to`, `order_position`, `procurements`, `tags`, `hidden`, `our_beer`) VALUES
(43, 'images/qAgrxY78r9YaqPQ8B6myvlAu42ldnnytuM91BtZH.jpeg', 1632583997, '2021-10-25 15:33:17', NULL, 45, 6, 'Peroni-43', NULL, 0, 0, '', 0, 0),
(44, 'images/y6V6lTUDurozSSuvtiG1xnaKRkLPWS6LCjjJDvA5.jpeg', 1632584059, '2021-10-25 15:34:19', NULL, 23, 2, 'Zombie-44', NULL, 0, 0, '', 0, 1),
(45, 'images/vQGBRbA0OBC9cNpJy5K64i6qbBE26VppbJlc9ewH.jpeg', 1632584125, '2021-10-25 15:35:25', NULL, 25, 2, 'Brave-Heart-45', NULL, 0, 0, '', 0, 0),
(46, 'images/UOfTm3hmPchJhG5ETsaT3h6gjxJyjtZcr2UVMbSh.jpeg', 1632584190, '2021-10-25 15:36:30', NULL, 11, 4, 'Craft-beer-46', NULL, 0, 0, '', 0, 0),
(53, '', 1635952826, '2021-11-03 15:20:26', NULL, 3, 2, 'birra-prova-47', NULL, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `products_translations`
--

CREATE TABLE `products_translations` (
  `id` int(11) NOT NULL,
  `for_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `ml` varchar(20) NOT NULL,
  `alchool` varchar(20) NOT NULL,
  `quickdescription` text NOT NULL,
  `locale` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `products_translations`
--

INSERT INTO `products_translations` (`id`, `for_id`, `name`, `description`, `price`, `ml`, `alchool`, `quickdescription`, `locale`) VALUES
(34, 43, 'Peroni', 'dovrebbe andare bene', '0.99', '33', '4.7', 'Moderatamente amaro,\r\nequilibrato di luppolo\r\ne malto', 'en'),
(35, 44, 'Zombie', 'Vicious and viscous, this menacing brew pours opaque black with a creamy maduro-colored head. Its aroma offers seductive whiskey, chewy red wine, dark fruit and lavish tobacco. Berserker Imperial Stout invades your taste buds with in-your-face flavor. Weighing in at almost 13% alcohol by volume, Berserker is completely out-of-control.', '4.01', '33', '7', 'Vicious and viscous, this menacing brew pours opaque black with a creamy maduro-colored head. Its aroma offers seductive whiskey, chewy red wine, dark fruit and lavish tobacco. Berserker Imperial Stout invades your taste buds with in-your-face flavor. Weighing in at almost 13% alcohol by volume, Berserker is completely out-of-control.', 'en'),
(36, 45, 'Brave Heart', 'Poured into a goblet, the beer offers some amazing head retention and rings of white lace sticking to the glass after each sip. Good clarity, with a dull golden color. The nose contains apricots and pear, faint ground white pepper, chalky yeast and an aroma of shortbread biscuits. It???s very crisp and lively with a smooth back and moderate body. Spicy phenols wrap around its dry maltiness, which is similar to crusty bread, highlighted by some pithy notes of green banana. Spicy hops, with a flare from the alcohol, provide a nice bite along with a moderate grassy bitterness. Earthy on the palate with a flash of honey-like sweetness. Yeasty and fruity undertones layer middle to end. Finishes dry.', '4.25', '33', '5', 'Vicious and viscous, this menacing brew pours opaque black with a creamy maduro-colored head. Its aroma offers seductive whiskey, chewy red wine, dark fruit and lavish tobacco. Berserker Imperial Stout invades your taste buds with in-your-face flavor. Weighing in at almost 13% alcohol by volume, Berserker is completely out-of-control.', 'en'),
(37, 46, 'Craft beer', 'Poured into a goblet, the beer offers some amazing head retention and rings of white lace sticking to the glass after each sip. Good clarity, with a dull golden color. The nose contains apricots and pear, faint ground white pepper, chalky yeast and an aroma of shortbread biscuits. It???s very crisp and lively with a smooth back and moderate body. Spicy phenols wrap around its dry maltiness, which is similar to crusty bread, highlighted by some pithy notes of green banana. Spicy hops, with a flare from the alcohol, provide a nice bite along with a moderate grassy bitterness. Earthy on the palate with a flash of honey-like sweetness. Yeasty and fruity undertones layer middle to end. Finishes dry.', '4.75', '33', '12', 'Vicious and viscous, this menacing brew pours opaque black with a creamy maduro-colored head. Its aroma offers seductive whiskey, chewy red wine, dark fruit and lavish tobacco. Berserker Imperial Stout invades your taste buds with in-your-face flavor. Weighing in at almost 13% alcohol by volume, Berserker is completely out-of-control.', 'en'),
(44, 53, 'birra prova', 'prova\r\nciao!\r\nciao c\r\nciao\r\ncia\r\nciao', '4', '33', '5', 'ciao', 'en');

-- --------------------------------------------------------

--
-- Struttura della tabella `refunds`
--

CREATE TABLE `refunds` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `approved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `text` varchar(1200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `social_contacts`
--

CREATE TABLE `social_contacts` (
  `id` int(11) NOT NULL,
  `instagram_desc` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `facebook_desc` varchar(255) NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `twitter_desc` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `google_plus_desc` varchar(255) NOT NULL,
  `google_plus_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `social_contacts`
--

INSERT INTO `social_contacts` (`id`, `instagram_desc`, `instagram_link`, `facebook_desc`, `facebook_link`, `twitter_desc`, `twitter_link`, `google_plus_desc`, `google_plus_link`) VALUES
(1, 'Use the hashtag #beerify to see all of our content on Instagram!', 'https://instagram.com', 'Like our Facebook Page for special offers', 'https://facebook.com', 'Use the hashtag #beerify to see all of our content on Twitter!', 'https://twitter.com', ':(', 'google.com');

-- --------------------------------------------------------

--
-- Struttura della tabella `story`
--

CREATE TABLE `story` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` varchar(500) NOT NULL,
  `locale` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `story`
--

INSERT INTO `story` (`id`, `date`, `title`, `text`, `locale`) VALUES
(2, '2014-02-11', 'The Project Start', 'The idea begins', 'en'),
(3, '2016-09-14', 'The expansion', 'The project has grown', 'en'),
(4, '2019-01-17', 'The beginning of site design', 'Project development', 'en'),
(5, '2019-09-12', 'Perhaps the end', 'Perhaps the end of the site', 'en');

-- --------------------------------------------------------

--
-- Struttura della tabella `story_carousel`
--

CREATE TABLE `story_carousel` (
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `story_carousel`
--

INSERT INTO `story_carousel` (`id`, `link`, `position`) VALUES
(2, '', 1),
(3, '', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `story_carousel_translations`
--

CREATE TABLE `story_carousel_translations` (
  `id` int(11) NOT NULL,
  `for_id` int(11) NOT NULL,
  `locale` varchar(5) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title1` varchar(30) NOT NULL,
  `title2` varchar(30) NOT NULL,
  `text` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `story_carousel_translations`
--

INSERT INTO `story_carousel_translations` (`id`, `for_id`, `locale`, `image`, `title1`, `title2`, `text`) VALUES
(2, 2, 'en', 'carousel_story/ObViV3LGqOQF7U5bXajjEm3qt9T3bncSEBlCfMwb.jpeg', 'Our very', 'First beer', 'The 12-ounce bottle pours a pitch-black, topped with a creamy tan-colored head that leaves a healthy ringed lace as it settles, with a bit of stick on the glass.'),
(3, 3, 'en', 'carousel_story/F3qodutXoVOvsMv0QgQThq8sYWQ25ctYh1ZYcTez.jpeg', 'Made to share with', 'Friends', 'The 12-ounce bottle pours a pitch-black, topped with a creamy tan-colored head that leaves a healthy ringed lace as it settles, with a bit of stick on the glass.');

-- --------------------------------------------------------

--
-- Struttura della tabella `story_info`
--

CREATE TABLE `story_info` (
  `id` int(11) NOT NULL,
  `flavours` int(11) NOT NULL,
  `outlets` int(11) NOT NULL,
  `years` int(11) NOT NULL,
  `day` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `story_info`
--

INSERT INTO `story_info` (`id`, `flavours`, `outlets`, `years`, `day`) VALUES
(1, 12, 3, 7, 30);

-- --------------------------------------------------------

--
-- Struttura della tabella `support_message`
--

CREATE TABLE `support_message` (
  `id` int(11) NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `text` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `support_message`
--

INSERT INTO `support_message` (`id`, `id_ticket`, `id_user`, `text`, `time`) VALUES
(7, 2, 2, 'cavolo', '2021-11-05 20:27:54'),
(8, 2, 1, '', '2021-11-10 20:21:11');

-- --------------------------------------------------------

--
-- Struttura della tabella `support_request`
--

CREATE TABLE `support_request` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `obj` varchar(150) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `support_request`
--

INSERT INTO `support_request` (`id`, `id_user`, `obj`, `time`, `status`) VALUES
(2, 2, 'non funziona l\'header', '2021-11-05 20:27:54', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `remember_token` varchar(255) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `updated_at`, `created_at`, `remember_token`, `isAdmin`) VALUES
(1, 'Admin', 'admin@admin.admin', '$2y$10$lKcdQgqvk40/iQ3wIkH9ou/p30fhueK/WQmKuEAXYbU0yzRAONoX6', '2021-10-24 17:30:35', '2021-10-24 17:30:35', 'B7HprTCYPxz9D2rhJ35aYQoEOeA8IO0kMGAhpys6vG5EzOHppdPK1xYSsQ51', 1),
(2, 'Andrea', 'andrea@andrea.andrea', '$2y$10$d0Yinay5y.eHcICaKzqDjeBOdZp6I9TTNu/aHn4tEkK0BzaT1YhRC', '2021-09-25 10:34:46', '2021-09-25 10:34:46', 'NwTlzeTfmeYz634jfGgMrdXiVkEaqkbDot2P6O6MzGdQEU3KqDvLQPgqqjll', 0),
(3, 'tizio', 'tizio@tizio.tizio', '$2y$10$jo7VK4PpKGMUhbcbre2S/uozS.KH9hM70FazSIHXwykNmWYia9oM2', '2021-09-25 14:14:54', '2021-09-25 14:14:54', NULL, 0);

--
-- Trigger `users`
--
DELIMITER $$
CREATE TRIGGER `id` AFTER INSERT ON `users` FOR EACH ROW BEGIN

INSERT INTO img_user SET img_user.id_user = NEW.id, img_user.directory = "profile.png";

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struttura della tabella `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(35) NOT NULL,
  `post_cod` varchar(10) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `user_address`
--

INSERT INTO `user_address` (`id`, `user_id`, `address`, `city`, `post_cod`, `country`) VALUES
(6, 1, 'tests', 'City', '0555', 'Country');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_user_id` (`post_user_id`);

--
-- Indici per le tabelle `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `carousel_info`
--
ALTER TABLE `carousel_info`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `carousel_translations`
--
ALTER TABLE `carousel_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `for_id` (`for_id`);

--
-- Indici per le tabelle `carousel_translations_info`
--
ALTER TABLE `carousel_translations_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `for_id` (`for_id`);

--
-- Indici per le tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indici per le tabelle `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `for_id` (`for_id`);

--
-- Indici per le tabelle `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `expeditions`
--
ALTER TABLE `expeditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`);

--
-- Indici per le tabelle `fast_orders`
--
ALTER TABLE `fast_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Indici per le tabelle `img_product`
--
ALTER TABLE `img_product`
  ADD PRIMARY KEY (`id_img_prodotto`),
  ADD KEY `id_product` (`id_product`);

--
-- Indici per le tabelle `img_user`
--
ALTER TABLE `img_user`
  ADD PRIMARY KEY (`id_img_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indici per le tabelle `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indici per le tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `orders_clients`
--
ALTER TABLE `orders_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `for_order` (`for_order`);

--
-- Indici per le tabelle `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indici per le tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indici per le tabelle `products_translations`
--
ALTER TABLE `products_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `for_id` (`for_id`);

--
-- Indici per le tabelle `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indici per le tabelle `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Indici per le tabelle `social_contacts`
--
ALTER TABLE `social_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `story_carousel`
--
ALTER TABLE `story_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `story_carousel_translations`
--
ALTER TABLE `story_carousel_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_carousel_translations_ibfk_1` (`for_id`);

--
-- Indici per le tabelle `story_info`
--
ALTER TABLE `story_info`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `support_message`
--
ALTER TABLE `support_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_ticket` (`id_ticket`);

--
-- Indici per le tabelle `support_request`
--
ALTER TABLE `support_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indici per le tabelle `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `blog`
--
ALTER TABLE `blog`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT per la tabella `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `carousel_info`
--
ALTER TABLE `carousel_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `carousel_translations`
--
ALTER TABLE `carousel_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `carousel_translations_info`
--
ALTER TABLE `carousel_translations_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `categories_translations`
--
ALTER TABLE `categories_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `expeditions`
--
ALTER TABLE `expeditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `fast_orders`
--
ALTER TABLE `fast_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `img_product`
--
ALTER TABLE `img_product`
  MODIFY `id_img_prodotto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `img_user`
--
ALTER TABLE `img_user`
  MODIFY `id_img_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `orders_clients`
--
ALTER TABLE `orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `producers`
--
ALTER TABLE `producers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT per la tabella `products_translations`
--
ALTER TABLE `products_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT per la tabella `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `social_contacts`
--
ALTER TABLE `social_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `story`
--
ALTER TABLE `story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `story_carousel`
--
ALTER TABLE `story_carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `story_carousel_translations`
--
ALTER TABLE `story_carousel_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `story_info`
--
ALTER TABLE `story_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `support_message`
--
ALTER TABLE `support_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `support_request`
--
ALTER TABLE `support_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`post_user_id`) REFERENCES `users` (`id`);

--
-- Limiti per la tabella `carousel_translations`
--
ALTER TABLE `carousel_translations`
  ADD CONSTRAINT `carousel_translations_ibfk_1` FOREIGN KEY (`for_id`) REFERENCES `carousel` (`id`);

--
-- Limiti per la tabella `carousel_translations_info`
--
ALTER TABLE `carousel_translations_info`
  ADD CONSTRAINT `carousel_translations_info_ibfk_1` FOREIGN KEY (`for_id`) REFERENCES `carousel_info` (`id`);

--
-- Limiti per la tabella `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD CONSTRAINT `categories_translations_ibfk_1` FOREIGN KEY (`for_id`) REFERENCES `categories` (`id`);

--
-- Limiti per la tabella `expeditions`
--
ALTER TABLE `expeditions`
  ADD CONSTRAINT `expeditions_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`);

--
-- Limiti per la tabella `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Limiti per la tabella `img_product`
--
ALTER TABLE `img_product`
  ADD CONSTRAINT `img_product_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Limiti per la tabella `img_user`
--
ALTER TABLE `img_user`
  ADD CONSTRAINT `img_user_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Limiti per la tabella `newsletters`
--
ALTER TABLE `newsletters`
  ADD CONSTRAINT `newsletters_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Limiti per la tabella `orders_clients`
--
ALTER TABLE `orders_clients`
  ADD CONSTRAINT `orders_clients_ibfk_1` FOREIGN KEY (`for_order`) REFERENCES `orders` (`id`);

--
-- Limiti per la tabella `producers`
--
ALTER TABLE `producers`
  ADD CONSTRAINT `producers_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Limiti per la tabella `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Limiti per la tabella `products_translations`
--
ALTER TABLE `products_translations`
  ADD CONSTRAINT `products_translations_ibfk_1` FOREIGN KEY (`for_id`) REFERENCES `products` (`id`);

--
-- Limiti per la tabella `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Limiti per la tabella `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Limiti per la tabella `story_carousel_translations`
--
ALTER TABLE `story_carousel_translations`
  ADD CONSTRAINT `story_carousel_translations_ibfk_1` FOREIGN KEY (`for_id`) REFERENCES `story_carousel` (`id`);

--
-- Limiti per la tabella `support_message`
--
ALTER TABLE `support_message`
  ADD CONSTRAINT `support_message_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Limiti per la tabella `support_request`
--
ALTER TABLE `support_request`
  ADD CONSTRAINT `support_request_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Limiti per la tabella `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Limiti per la tabella `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
