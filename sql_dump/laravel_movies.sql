-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2017 at 10:55 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Australia', '2017-11-17 18:30:00', NULL),
(2, 'Canada', '2017-11-17 18:30:00', NULL),
(3, 'France', '2017-11-17 18:30:00', NULL),
(4, 'India', '2017-11-17 18:30:00', NULL),
(5, 'Philippines', '2017-11-17 18:30:00', NULL),
(6, 'Singapore', '2017-11-17 18:30:00', NULL),
(7, 'Ukraine', '2017-11-17 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE IF NOT EXISTS `films` (
  `id` int(10) unsigned NOT NULL,
  `country_id` tinyint(3) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `release_date` date NOT NULL,
  `rating` double(2,1) NOT NULL DEFAULT '0.0',
  `ticket_price` double(4,1) NOT NULL DEFAULT '0.0',
  `cover` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `country_id`, `name`, `slug`, `description`, `release_date`, `rating`, `ticket_price`, `cover`, `created_at`, `updated_at`) VALUES
(78, 5, 'Quibusdam Voluptate Pariatur', 'quibusdam-voluptate-pariatur', 'Voluptatem eos asperiores voluptates quis necessitatibus dicta quis aut. Voluptates provident nemo enim. Modi officiis qui corporis officia. Eum vitae et molestiae molestias libero incidunt est incidunt. Mollitia in eos porro officia. Cumque placeat quae illo deleniti sit et et. Enim ut magnam nam nihil placeat. Voluptates earum et ab omnis sunt ipsam aut. Rerum atque beatae quo vel sint eaque voluptatem. Voluptates fuga porro velit dolores at omnis. Et et fuga sed tempore minima magni sint pariatur. Deserunt est maiores qui illo dolor officia ratione. Aspernatur ratione ratione aut ut libero ex explicabo suscipit. Ea asperiores delectus at quia est suscipit reiciendis assumenda. Omnis saepe aut et ea deserunt dignissimos ut. Porro recusandae qui laudantium error. Sit eos est ex exercitationem velit. Repellendus repellendus officia sed officiis nam iste. Quisquam ea ipsum voluptatem et voluptatibus consequuntur vero officiis. Ducimus numquam sit nam sed. At ab est nisi ut.', '1996-05-02', 4.0, 962.0, '7294366a1358d45937930d586150f1a2.jpg', '2017-11-19 16:18:39', '2017-11-19 16:18:39'),
(79, 1, 'Sequi Eveniet Necessitatibus', 'sequi-eveniet-necessitatibus', 'Et aperiam enim aut vel molestiae laborum iure. Veniam sit voluptas reprehenderit quos minima officia. Nihil animi commodi ut eum optio assumenda. Rerum beatae excepturi qui unde. Non ad laborum fuga aut recusandae hic optio. Voluptate pariatur sint consequatur saepe dolor. Perferendis et molestiae delectus sit harum. Aliquid ut eum rerum corrupti et blanditiis. Voluptate est sapiente dolorum est dolor. Qui voluptatibus nesciunt excepturi. Delectus et vero ex aut. Id at eum aut expedita ratione itaque consequatur. Ullam alias dicta totam dolorem debitis fuga voluptate. Facilis laudantium quis reprehenderit officia expedita dolores et. Rerum incidunt labore quo odio. Ea dolores nostrum qui enim voluptatem iure deleniti. Excepturi minus aperiam amet sit minus doloremque. Et placeat et delectus. Expedita temporibus voluptates saepe quia consequuntur. Sit ut ducimus error accusantium officiis. Blanditiis sint porro molestias totam sit et.', '1996-09-09', 5.0, 980.0, '87402c136d05a6f4196b96ca6a1b5c9c.jpg', '2017-11-19 16:18:39', '2017-11-19 16:18:39'),
(80, 2, 'Quia Qui Iste', 'quia-qui-iste', 'Aut at necessitatibus quis voluptas consequatur quo aut. Provident quidem corrupti harum at. Eos provident quidem a iste qui id. Exercitationem quia atque saepe error et quam autem. Suscipit et ad veniam unde. Quas aut ducimus dolorem omnis. Qui ab ipsa quis autem provident inventore. Ut distinctio itaque doloribus quidem quod dolorem ad. Qui ea consequuntur explicabo aut et. Tempora rem harum beatae corrupti voluptatem nisi magni. Magni dolorem veniam eaque velit maxime dolorem rerum. Aliquam quia rem repellat. Molestiae voluptates natus excepturi facilis. Fuga dolor molestiae incidunt exercitationem facilis sunt minima. Non ducimus natus quibusdam et. Provident adipisci vero necessitatibus et. Voluptatem sunt ad iusto ducimus facilis. Rem accusantium ut et. Rem qui cumque accusantium qui et. Distinctio mollitia reprehenderit omnis sint nulla suscipit. Dolore error sit consequatur minus ut eos aliquid. Explicabo reiciendis unde maxime. Omnis temporibus dolorum ut.', '1990-04-09', 1.0, 682.0, 'ccb001fa3a7b98f43c54b50ed1d5effb.jpg', '2017-11-19 16:18:39', '2017-11-19 16:18:39'),
(81, 3, 'Sit A Nihil', 'sit-a-nihil', 'Reiciendis dignissimos est optio repellendus quibusdam iusto. Voluptatem consectetur voluptatem deleniti soluta laborum deleniti optio. Voluptatem qui tenetur ab placeat voluptatibus sit accusamus deleniti. Ipsum beatae dolorem et est. Excepturi quia ipsam dolore ut. Sit est libero consequatur voluptatum expedita blanditiis voluptas. Iusto esse voluptatibus fuga explicabo nihil dolores explicabo. Doloribus provident expedita dicta sit rerum. Hic sunt est aut ut non. Harum ad explicabo voluptas enim sint. Vel est cumque ea necessitatibus voluptatem. Quae labore illum atque reiciendis nemo reiciendis dignissimos. Laborum eius officia adipisci voluptatem autem sed. Praesentium harum omnis tempore blanditiis illum. Enim rerum non et et recusandae. Nemo minima inventore sapiente aliquam sit voluptas unde. Quia nulla aspernatur cupiditate enim. Facilis numquam est consequatur. Ut magnam facere illo sint impedit impedit non. Praesentium porro eos neque sed.', '2003-08-29', 1.0, 693.0, '8f5bde7f83d3936917ea43dfdc897f1f.jpg', '2017-11-19 16:19:46', '2017-11-19 16:19:46'),
(82, 7, 'Qui Qui Sit', 'qui-qui-sit', 'Sint aperiam recusandae dolores sunt. Est corporis vero adipisci perferendis ut et autem. Dolorem autem labore atque. Non minus rerum sunt nisi odit molestiae. Nihil magni pariatur et facere similique. Sapiente aut quod alias dolorum. Autem nihil nihil est explicabo odio. Repellat dolore aut soluta. Dolor nulla facere laudantium eos labore. Reprehenderit quo nulla ea ut aut voluptatibus. Dolorem nostrum eum non cum velit tenetur quibusdam. Eveniet eius rerum esse doloribus non voluptatem rerum. Accusamus dolores in aut perferendis et a dolorem qui. Neque et assumenda doloremque doloremque nam hic. Ad cum rerum distinctio et eum qui. Aspernatur ullam qui sit ratione recusandae sed. Et facere sapiente ab sit. Sit libero et vel dignissimos non reiciendis fugit. Non quis assumenda rem assumenda est repudiandae. Voluptatem culpa alias quibusdam. Minima consequatur sunt placeat vel debitis velit. Blanditiis qui eveniet sint. Vitae assumenda dolor sunt cumque vel voluptatibus ducimus.', '1984-02-09', 5.0, 566.0, 'e3afd45fdd57f2b0ff194de8b673ad4a.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(83, 3, 'Quisquam Velit Qui', 'quisquam-velit-qui', 'Placeat repudiandae nihil et in nihil. Facere itaque maiores error nobis tempora deleniti. Dolor voluptatem harum alias aut nostrum. Id totam asperiores delectus aperiam quod ad. Officiis consectetur itaque architecto et in optio magni. Asperiores esse earum nulla eum velit est. Qui laboriosam sit dicta quo. Id hic enim consectetur aut eos excepturi amet. Laborum beatae veritatis sint eligendi quo et minima. Totam quis nihil ratione et delectus non eum. Eius ipsam sed quia maiores excepturi. Ipsa veritatis minima debitis deleniti voluptas adipisci quae. Tempore omnis perferendis id qui distinctio. Dolorem sunt sed nostrum quos laboriosam ut enim quae. Voluptatum dolorem omnis omnis repellendus quasi dolorum architecto. Et quia ut nisi excepturi veritatis accusamus quia.', '2015-10-11', 3.0, 272.0, 'dc115a36ea4237a5e4d9bfbf6506cdae.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(84, 2, 'Amet Repellendus Vel', 'amet-repellendus-vel', 'Quis debitis omnis atque et et quis. Dicta labore mollitia quos mollitia. Et mollitia aut porro porro dolore. Et quia incidunt dicta facilis harum autem libero quis. Repellendus voluptatem quia in iusto. Voluptates dolor assumenda illo aliquid ex voluptatem et aut. Aut aut aliquid magni ipsam laborum ut. Expedita culpa quasi quia sit voluptas cum tempore libero. Et eum a molestiae ad sapiente consectetur sint. Veritatis officia est repudiandae facere quisquam. Voluptatem non quia assumenda voluptatum velit nesciunt id. Non inventore sed vero modi ipsam sed. Officia in eum qui vel consectetur voluptas qui. Aut minus molestiae dignissimos enim. Molestiae qui molestiae earum. Eum molestiae magni vero in. Id sed est saepe maiores voluptatem soluta dolor. Consequatur eos omnis deserunt molestiae in.', '2010-09-28', 1.0, 207.0, 'd3bef158b97d86b05dcf568d221b03aa.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(85, 3, 'Iste Dolorem Et', 'iste-dolorem-et', 'Commodi aliquid sit magni dolor. Ipsum molestiae at exercitationem in totam amet consectetur consequatur. Eaque voluptatem quia quo cupiditate facere est. Tempora optio ut tenetur harum quis laborum. Ut omnis cupiditate numquam expedita consequuntur aspernatur nesciunt pariatur. Suscipit nam vel molestias cupiditate. Excepturi repudiandae est qui ad voluptatum. Veniam quaerat corrupti nihil fugiat voluptas ipsam. Ut autem nulla sed est atque sit labore sed. Id eum reprehenderit nihil doloremque deserunt ipsa. Commodi ratione illum deserunt odit debitis illum aliquid. Consequatur consequuntur consectetur laboriosam. Nulla sint ut quam repellendus praesentium sunt. Eveniet repudiandae ullam quod aut dolores dolor officiis. Iusto porro qui harum. Sit nesciunt facilis temporibus tempora. Ipsam et totam amet alias adipisci doloribus libero aut. Velit a corporis animi molestias.', '1986-03-13', 2.0, 265.0, '01179b8c3e5e21c1ef5e5f537a11075b.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(86, 1, 'Hic Totam Illo', 'hic-totam-illo', 'Cupiditate dolorum similique possimus ipsa mollitia nisi. Recusandae et beatae sed suscipit neque quia. Ut accusamus aut quia. Reiciendis est distinctio eum officiis commodi eos modi. Non eum quos soluta qui sunt. Est aliquam incidunt rerum enim. Id excepturi omnis nemo occaecati eos. Sed laboriosam debitis reiciendis. Sit illum earum ut odio est quasi velit. Possimus maiores aspernatur quas ad. Laudantium officia nihil dolor maiores ea. Quia qui in dolores. Voluptatem eos repellat excepturi amet eum totam. Ullam ullam autem atque dolor porro et nam. Accusantium laboriosam culpa dolorum rem quasi aut omnis consequatur. Dicta non inventore voluptatibus aut. Nobis consectetur non aut quaerat enim quidem ducimus. Error accusantium molestias suscipit vitae id. Velit quisquam repudiandae sunt. Quasi dicta quis temporibus eos. Vero velit voluptates voluptatibus sint suscipit ratione. Accusantium laudantium et architecto labore voluptatem. Totam voluptates similique fugiat delectus.', '2008-03-14', 4.0, 544.0, '8f6387451731a98d62172688c4a4a709.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(87, 4, 'Consectetur Voluptatem Quia', 'consectetur-voluptatem-quia', 'Dolores eaque accusamus ipsam esse. In et eveniet labore. Exercitationem eligendi pariatur consectetur est. Numquam quidem eius quod nostrum ipsum iste. Sunt consequuntur sunt cum eum cum qui sed. Ullam vel quas illum alias et. Et molestiae omnis repudiandae est explicabo dolor illum soluta. Omnis quidem laboriosam itaque sapiente ipsa quo est. Eum ea numquam corrupti nulla. Libero quos molestiae voluptatem eos. Omnis nobis ipsa omnis molestias sit. Magnam eos recusandae magnam velit a nemo repellat. Libero eos dolorum ratione aut recusandae nostrum nam qui. Officiis eos quia magni consequatur sint omnis et. Et enim placeat est est sed quo. Reiciendis sunt at accusantium facere asperiores quas placeat. Eaque inventore ex aut est. Id iure asperiores harum est accusantium modi aut. Enim ut odio cum est modi quo. Cupiditate similique dolorum doloribus optio fuga.', '1984-10-09', 5.0, 166.0, '5e2e31af9709645cd8a8a07199812284.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(88, 6, 'Et Quasi Sed', 'et-quasi-sed', 'Deleniti dolorem et incidunt numquam similique ut expedita. Eligendi similique delectus earum. Omnis quisquam nihil ipsum optio debitis consequatur non. Non quas molestiae quas quas iure similique. Iste omnis earum possimus non sed tempore. Est magnam architecto sequi temporibus quasi. Incidunt consequatur nihil nam necessitatibus tenetur ducimus. Perferendis eligendi aut quo laborum rerum dicta in illo. Qui quasi alias impedit laudantium dolor suscipit eos. Dolores doloribus vitae laudantium nobis. Voluptas quo neque accusantium perferendis at quo. At sapiente numquam vero. Rerum temporibus nostrum repudiandae. Saepe error error dolorem omnis adipisci numquam totam. Laudantium similique officiis qui deserunt voluptates est. In nihil nobis reiciendis. Iure maxime dolorem maxime doloribus maiores. Aut velit id ut et. Sed consequatur eius provident sint. Totam rerum quis cumque non eaque et.', '1988-10-08', 1.0, 834.0, 'aece463273df5d63cfe7592870c1b902.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(89, 7, 'Et Quisquam Quia', 'et-quisquam-quia', 'Harum adipisci dolorum soluta sed. Quia blanditiis dolorem excepturi id rem fuga. Distinctio laboriosam voluptatem eos. Voluptas libero quo et eos doloremque. Sed sunt dolor autem neque pariatur eaque et. Odit reiciendis sequi est dolores ab est qui. Deleniti delectus atque doloribus sit cupiditate fugit cupiditate. In non ab et illo sed. Similique omnis officiis suscipit quae corrupti. Quia eum dolor possimus maxime non praesentium ea eveniet. Omnis quis sed eligendi odio. Et aperiam et quo rerum a. Veniam est est sequi vel. Consequatur et tenetur ratione magni. Vitae ratione neque aliquam modi qui dolorum labore. Nesciunt impedit velit enim illo enim possimus et. Porro nihil debitis eum velit aut. Nisi aut amet ut magnam. Eaque eius ex debitis provident ipsum aperiam vitae. Alias quasi vitae quia distinctio molestiae tempore modi eos. Ut consequatur porro nemo quia quo aut ad. Consequatur quod vel sed at cum eveniet.', '1995-06-26', 2.0, 897.0, '88d36b8bcb48d3e056a1ae54ad974d12.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(90, 1, 'Minus Consequatur Ut', 'minus-consequatur-ut', 'Quia maiores architecto deleniti perferendis aut. Omnis ex praesentium rem consequatur. Mollitia impedit cum et consectetur quia doloremque. Molestias id incidunt voluptas reprehenderit. Vero id harum qui eum omnis eos quisquam. Ipsa sit quas autem esse est unde. Voluptas dolores quia quia aut culpa nobis eveniet. Recusandae vel ut amet aspernatur in. Provident quis sunt optio ea sapiente perferendis doloremque. Quia nemo voluptatum ipsam similique molestiae id. Quaerat corrupti reprehenderit labore blanditiis nisi quis. Et et officiis accusantium quidem inventore ut. Aut reiciendis ducimus eum voluptatibus. Voluptas pariatur repellat est ducimus perferendis sit accusantium. Omnis voluptatem cupiditate officia. Et et quod perspiciatis at ea ut praesentium. Perspiciatis porro cupiditate eligendi rerum eius. Debitis eveniet culpa distinctio quos ab eos.', '1995-05-28', 3.0, 811.0, '0e1c7bbb533b0794e65266fade0c43d0.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(91, 2, 'Earum Sint Maiores', 'earum-sint-maiores', 'Rerum minima expedita vel corrupti. Placeat libero neque et vero doloremque ea harum. Velit in impedit iure quis. Amet est dolor cumque omnis magnam animi quos. Quia eos alias est eius. Et aut est quibusdam. Cupiditate quo ratione provident rem. Laborum sint minima at et aperiam consequatur natus. Molestiae placeat sint nobis laborum. Occaecati asperiores unde autem quod deserunt autem aut. Ipsa sint fugit enim. Omnis dolor eveniet sed unde. Sed ut amet dolorem. Dicta dolorem ea nihil et harum. Tenetur a aut laudantium dolor et voluptatem minima. Voluptatibus placeat voluptatem incidunt a impedit non. Aut facilis omnis est laboriosam nihil consequatur autem. Ut fugit ex qui distinctio numquam aliquam odio ut. Mollitia expedita ut magnam. Aperiam dolore eum hic consequatur consequatur natus et. Enim dignissimos excepturi et dolor. Eum corporis velit qui est reiciendis et. Quisquam non fugiat et sit.', '1997-09-18', 4.0, 53.0, 'd2974e42367bde1eececa3935423219d.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(92, 6, 'Veritatis Voluptatem Non', 'veritatis-voluptatem-non', 'Unde aut quod doloremque ea. Perferendis quo perferendis reprehenderit atque nam et aliquid accusamus. Dolorem iste nulla amet dicta voluptates enim ut. Eaque ex et deserunt molestias incidunt similique. In quas eius omnis itaque doloribus asperiores et. Optio et distinctio dolore quasi aliquam laudantium nesciunt veritatis. Tempora eius repellendus eligendi quia consequatur facere. Occaecati iste sed est odio facilis iure. Ratione ut nostrum dolores modi modi nesciunt est. Quas et sint consequatur occaecati et. Natus rerum quis cupiditate praesentium voluptatibus tempore a. Nobis id blanditiis saepe ex. Totam in voluptatem minus est voluptatem ad. Tempore itaque repellat quisquam reiciendis veniam. Fugiat nihil consequatur molestiae molestiae. Ducimus quis dolores porro soluta. In voluptatibus ipsum ut debitis. Temporibus qui nesciunt magnam aspernatur alias. Cupiditate debitis qui non libero hic voluptates quo. Quo et et voluptatem corrupti reiciendis beatae magni consequatur.', '2014-09-16', 1.0, 682.0, '6e367069b2ece224f96ec743fdc7ae0b.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(93, 2, 'Odit Labore Sit', 'odit-labore-sit', 'Dolores vero mollitia excepturi et blanditiis molestiae. Facere maxime et ut molestiae cumque. Accusamus consequatur molestiae modi occaecati incidunt. Quaerat neque quia eos. Perspiciatis est exercitationem nihil ut est molestiae corrupti tenetur. Qui nihil sed omnis eaque ut. Illum soluta qui quas officia est. Temporibus et saepe aut sunt. Dignissimos aut non error voluptatem necessitatibus debitis assumenda praesentium. Omnis quo numquam placeat quisquam quo. Provident qui et dolorem quibusdam dicta. Aspernatur enim aut odio et esse repellat sequi nisi. Non aut repudiandae temporibus magnam quae amet. Fugit aut beatae error assumenda nihil non quibusdam. Est deleniti et at qui. Vero nesciunt totam error adipisci sit architecto fuga. Aut reprehenderit nostrum nesciunt perspiciatis. Aut quo consequatur animi et quia pariatur est quia. Accusamus illo quis qui cupiditate soluta architecto hic. Sed magni sit vel iure deleniti nostrum.', '2003-03-09', 1.0, 453.0, 'b1b229a652746174df4671a424e85b68.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(94, 1, 'Vel Sint Quia', 'vel-sint-quia', 'Aut consequatur commodi tempore iste. Similique est ipsa sunt voluptatum et nam porro. Ea praesentium a quasi accusantium. Itaque ipsa sapiente autem ratione. Dignissimos deleniti sunt ea voluptatibus quia autem. Nulla excepturi veritatis doloribus et. Quibusdam quo sint illo. Sit ipsum fuga laudantium eveniet minima. Sit eius ipsa placeat nihil. Est cumque aspernatur aliquid expedita. Aut ullam quisquam qui error aperiam porro debitis. Aliquid atque accusantium sunt nobis. Autem sit qui quis ea temporibus. In quo architecto expedita itaque neque. Cumque est sed sed occaecati. Repellat nisi sequi repudiandae iste nemo architecto. Ex ut placeat corporis aut sequi. Ut ipsa repellendus voluptates sit sapiente maxime. Consequatur velit voluptas nostrum officia nihil. Ut qui id deserunt aut dicta mollitia recusandae. A enim doloribus recusandae. Adipisci minima nulla et consequatur unde dolor et. Earum repellat id sapiente eaque excepturi.', '1992-06-17', 4.0, 180.0, 'ccfcf71af17de0e147e8e922e97e78f0.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(95, 2, 'Eligendi Consequuntur Aut', 'eligendi-consequuntur-aut', 'Dolore qui vero quo eius vitae corporis. Et eius ex veritatis neque quasi vel dignissimos. Vitae eos unde optio ipsum et. Possimus et accusantium fuga natus et blanditiis dolores. Est autem vel excepturi ea facere est. Deserunt voluptatibus ut perferendis doloremque fugit omnis quaerat. Consequatur et est reprehenderit et fuga. Doloribus illo dolorem consequatur totam. Dolor veritatis sequi id tenetur occaecati exercitationem vel. Voluptas sed distinctio quia eos voluptas voluptate. Esse modi qui doloremque vero qui. Totam sint quasi sunt voluptatibus pariatur odit. Aut debitis inventore est ut. Earum pariatur aut facere totam repellat. Velit fuga labore excepturi. Aut sint nesciunt omnis tempora. Quos est omnis quibusdam mollitia iusto est sit. Omnis perferendis aut quae provident aliquam vel. Voluptas sequi praesentium ut omnis suscipit aperiam. Laudantium quia facere asperiores ab veniam repellat.', '1988-09-06', 3.0, 644.0, '7e4c03960135bdc23b81060b1fed82ed.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(96, 4, 'Inventore Earum Quis', 'inventore-earum-quis', 'Ut ut dolor veritatis suscipit aut similique nisi. Modi in fugit ex eius qui ut illum. Mollitia commodi impedit vel provident. Voluptatem omnis dolorem quia suscipit sunt et voluptas consequuntur. Minus laboriosam vel voluptatum aut maxime nemo. Et quia perferendis fuga nisi voluptatum fugiat ab impedit. Molestiae pariatur voluptatum ut quod. Quasi ea assumenda ut itaque eos facere. Temporibus distinctio quo sapiente voluptatibus quis. Quia totam reiciendis doloremque voluptatum ea. Alias facilis id necessitatibus ducimus vel accusantium et. Explicabo aut quia totam doloremque quaerat quo voluptas. Accusamus architecto corrupti unde quos cupiditate vel sed. Ea nam sapiente et illo. Commodi quia nulla in iure eveniet. Sint non exercitationem fugiat numquam. Quae non voluptatem aut quae. Aut dolor voluptas magnam est ea quam non aut. Alias optio sint perferendis. Aliquid mollitia ut porro quia odit facilis.', '1989-03-08', 1.0, 463.0, 'fe491ad77d594df99cbe6ed2d68365b4.jpg', '2017-11-19 16:19:47', '2017-11-19 16:19:47'),
(97, 5, 'Soluta In Sed', 'soluta-in-sed', 'Fugiat iste recusandae molestiae temporibus. Incidunt eos ipsum possimus officiis error iure voluptatem excepturi. Sit sit cum qui. Impedit rem eveniet quia et labore ut at. Unde nihil aut voluptatem perspiciatis praesentium quasi excepturi ad. Reiciendis ducimus labore numquam voluptatem. Facilis et quis quo fugit necessitatibus accusantium suscipit. Consequatur cum nemo excepturi omnis pariatur quia. Similique ab doloribus voluptas omnis. Soluta est ea enim atque debitis minus. In eligendi excepturi molestiae esse quia. Earum voluptatibus libero consectetur exercitationem deleniti libero vitae. Maxime repellendus beatae enim pariatur. Quis doloribus reiciendis dolor ut saepe omnis. Blanditiis quia et aut voluptatem doloremque. Beatae et aut perspiciatis sequi et iure dolorem. Sed recusandae sed dicta enim. Culpa sed consequatur exercitationem nesciunt rerum.', '1988-03-11', 5.0, 596.0, '35341583af1fcf3bed896e2aa02ea1c1.jpg', '2017-11-19 16:19:48', '2017-11-19 16:19:48'),
(98, 3, 'Doloribus Autem Dolores', 'doloribus-autem-dolores', 'Accusantium atque quaerat molestiae et iure doloremque. Nobis recusandae animi dolor soluta tenetur maiores. Inventore quis voluptate deleniti eaque quaerat. Ex cum veniam autem. Velit aspernatur enim sed quas. Aspernatur animi error est vel qui. Vero enim consequatur vel aut dolorum rem. Doloribus ratione perspiciatis expedita nulla. Dolor velit fugit aliquam sed eius maiores. Nostrum quia velit adipisci rerum quas et qui. Iure aut qui dolorem qui. Aperiam adipisci ex soluta dolor voluptate optio eos. Voluptatem aut modi exercitationem non repudiandae quis eos ea. Ea voluptatibus repellendus molestias molestiae aliquid qui commodi. Dolorem ad adipisci consequatur. Dolore ipsum saepe similique. Quo amet est est esse et quod repellat eos. Quia sunt labore unde minima. Molestiae est minus assumenda quod aut eius. Error sed porro voluptatem vitae et nam autem voluptas.', '1994-08-14', 1.0, 313.0, 'ad72d17392f324a6cab7e81859039d6e.jpg', '2017-11-19 16:19:48', '2017-11-19 16:19:48'),
(99, 1, 'Maiores Nulla Perspiciatis', 'maiores-nulla-perspiciatis', 'Dolorem minus quam illo iusto tenetur voluptatum veniam. Quia et nesciunt consequuntur. Deleniti natus rerum voluptates architecto sed voluptates. Dignissimos ut at voluptatem. Aut quo aperiam ea accusamus maiores maiores ducimus. Est enim placeat quo dolore dolore. Harum ipsum in pariatur aut dolores iste at eum. Officia expedita quod culpa praesentium. Voluptas et eligendi explicabo sint sint dolor blanditiis. Beatae explicabo in ducimus libero perspiciatis. Ex delectus tempora voluptas similique nihil qui laudantium. Dicta ea voluptatem perferendis aut repellendus beatae ex. Voluptatibus laborum sed quae. Maiores reprehenderit id velit voluptatem recusandae. Eum sint ab quod beatae non. Quia aliquam soluta quis soluta dolorem expedita. Adipisci a omnis in vel occaecati dolorem aut.', '1995-07-13', 5.0, 754.0, '3cd0f909aa490fc934fd059cc9372551.jpg', '2017-11-19 16:19:48', '2017-11-19 16:19:48'),
(100, 4, 'Qui Blanditiis Inventore', 'qui-blanditiis-inventore', 'Iure nihil ea voluptatem voluptatem ipsam eveniet similique. Quaerat unde error repudiandae et reiciendis eius vero. Aut et voluptatem aut minima et harum. Sed assumenda officiis repellendus iusto. Autem adipisci dolor earum. Vitae delectus voluptatem in voluptates. Nemo ea saepe iusto quae dolores et quibusdam in. Dolorum nobis perferendis quo id aperiam consequuntur. Reprehenderit laboriosam est quia nostrum iusto incidunt numquam voluptatum. Consequatur temporibus ut recusandae sequi. Consequuntur totam mollitia et quod velit voluptate ea. Et sit autem et totam est a magni et. Aperiam optio esse pariatur aliquid. Omnis enim est placeat ad ducimus aut. Debitis sed sed rerum ducimus. Perferendis quis accusantium autem et repudiandae cupiditate labore. Aliquid autem delectus dolores similique impedit eos laudantium. Est laudantium ipsam ullam in quis commodi consequatur. Eos temporibus perferendis natus veniam. Explicabo officiis ducimus quo. Sunt nostrum molestiae omnis eligendi.', '1973-01-04', 5.0, 889.0, '737df0faab6c26c97838297b3ad3e170.jpg', '2017-11-19 16:19:48', '2017-11-19 16:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `film_comments`
--

CREATE TABLE IF NOT EXISTS `film_comments` (
  `id` int(10) unsigned NOT NULL,
  `film_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_comments`
--

INSERT INTO `film_comments` (`id`, `film_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(54, 78, 4, 'Praesentium est nam illum animi rerum dolor sapiente. Fuga sequi voluptas rerum voluptate. Repudiandae et nisi corporis et. Et maiores molestias sit perspiciatis fugiat et. Quod voluptatem reprehenderit mollitia laudantium aliquid minima ducimus harum. Omnis corporis incidunt non rerum temporibus asperiores. Harum mollitia asperiores quis nihil cum tenetur. Qui temporibus molestias ipsa at sint ea quod.', '2017-11-19 16:18:39', '2017-11-19 16:18:39'),
(55, 79, 21, 'Non quo quisquam occaecati maiores corporis. Eaque qui vel et itaque molestias. Blanditiis consectetur necessitatibus amet est itaque. Doloribus autem at veniam vel dolores. Voluptas quia incidunt possimus quisquam. Nihil et sint qui natus quam aut. Et facere placeat nihil itaque. Molestias vel corporis magni. Qui optio aut minima laboriosam quae at est. Sed earum ratione consequuntur hic. Provident est possimus ut distinctio eligendi minima.', '2017-11-19 16:18:39', '2017-11-19 16:18:39'),
(56, 80, 1, 'Et enim dolor odio cum est aspernatur voluptatem. Sapiente distinctio et enim a veniam accusamus. Odit tenetur omnis quod. Esse facilis architecto et illo non. Ab doloremque aut minus quis et vitae. Explicabo fugit est asperiores aliquam. Cum ut aperiam nihil corporis rerum. Qui accusantium cupiditate laudantium aut alias fugiat. Sit earum amet facere corrupti. Et hic dolorem quis molestiae perferendis voluptatem autem a.', '2017-11-19 16:18:40', '2017-11-19 16:18:40'),
(57, 81, 21, 'Tenetur dolor distinctio facere laboriosam accusamus quis. Qui aut est in. Ea commodi excepturi tempore voluptatem rerum. Ad ipsa magnam molestiae aliquam nihil. Aperiam consectetur assumenda dolor quae ratione ut ab. Sunt dolores aut tempore ut ea esse. Velit quod nostrum sit sequi molestias aut aut. Nihil architecto architecto veritatis temporibus officiis expedita. Repellat aut natus dolores quia minus possimus consectetur.', '2017-11-19 16:19:48', '2017-11-19 16:19:48'),
(58, 82, 17, 'Ipsam sit sed aut. Est corrupti voluptas sit ut. Aut et fugit quis. Ducimus quod impedit aspernatur perferendis ea illo. Id iste soluta ipsum blanditiis eos quam. Sunt aspernatur voluptatibus quia occaecati reprehenderit est. Labore sunt possimus unde explicabo et et debitis. Totam sed voluptatem eaque consequatur eaque. Animi quia impedit provident corporis et explicabo odit. Est velit voluptatibus ut beatae debitis. Possimus natus nostrum ut et doloremque est dolorum non. Facilis nihil ea ut.', '2017-11-19 16:19:48', '2017-11-19 16:19:48'),
(59, 83, 21, 'Nam quas odit voluptate dolor. Rerum explicabo voluptatem est laboriosam. Harum ab voluptatem libero minima quis incidunt quos. Soluta ut nobis quas eius aut eveniet. Repellat eveniet veniam non deserunt. Culpa omnis consequatur quisquam qui ab. Eligendi non sed fugit qui maxime fugiat voluptatem ut. In quae iure repellat expedita quos non labore repudiandae. Sit tempore corporis recusandae voluptates odit possimus eveniet. Nobis explicabo dolore pariatur nulla aspernatur vel est.', '2017-11-19 16:19:48', '2017-11-19 16:19:48'),
(60, 84, 18, 'Vel laboriosam voluptatibus consectetur tempora consequatur dignissimos ut. Error aspernatur voluptas suscipit rerum accusantium commodi. Ad eius rerum porro enim quo mollitia iste est. In vitae porro odio sit ullam voluptatibus. Neque quasi at suscipit quidem aut placeat provident. Quam voluptas neque est. Nemo ipsam blanditiis illo omnis tempora corrupti quia quos.', '2017-11-19 16:19:48', '2017-11-19 16:19:48'),
(61, 85, 1, 'Quos minima nemo ipsa. Laborum eos in incidunt corrupti sint molestiae dolorum illum. Vel sed molestiae maxime rerum molestiae quo voluptatem. Et quaerat eum magnam esse et et. Placeat commodi a illo natus quaerat labore. Quia dolor repudiandae quo eos accusantium possimus vitae. Distinctio consequatur aspernatur eum ipsa veritatis est laboriosam. Repellat consequatur molestiae qui repudiandae. Qui assumenda sit numquam id vel.', '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(62, 86, 17, 'Deserunt numquam dolores sit ducimus qui ut. Eum qui impedit perferendis et animi vitae molestiae culpa. Perferendis voluptas ad quaerat distinctio dolores occaecati. Aut iure ducimus ut rerum accusamus repellat nam. Aspernatur aspernatur enim et nihil esse. Reprehenderit facilis maiores est fuga nemo. Ipsam sit quo explicabo nostrum. Autem nobis minima aperiam assumenda vel. Aut ut dicta sed.', '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(63, 87, 19, 'Voluptatem repellendus laudantium ratione sed aliquid aspernatur. Assumenda optio dignissimos nobis. Ab dicta rerum natus dignissimos deserunt quia nemo quisquam. Modi impedit ea nemo modi quae. Error enim assumenda consectetur quo enim molestias. Fuga est tempore consequuntur. Odio ad ducimus dolore voluptatem.', '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(64, 88, 11, 'Culpa distinctio earum earum et. Illum expedita aut recusandae quos harum est. Debitis sunt accusantium sint optio illo quaerat eius. Et fuga nisi sunt accusamus odio laboriosam provident similique. Et alias corrupti neque repellendus reprehenderit. Harum qui cum autem iusto. Rerum esse laudantium accusantium sit aliquam. Sed autem voluptatum est quas odio consequatur nostrum dolores. In enim eum ut aliquid sint sint dolorum. Voluptatum sunt et nesciunt ratione. Ullam maiores harum est beatae.', '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(65, 89, 7, 'Nesciunt numquam numquam modi incidunt provident nostrum voluptas placeat. Deserunt quod minima magnam eius repellendus magni. Eum incidunt ducimus iste qui possimus laudantium illum. Nemo cupiditate aut sapiente incidunt mollitia aut rerum. Culpa velit et accusantium eaque aperiam beatae. Ex in et ex perspiciatis maxime aut. Voluptatum quaerat eos et. Vel dolor tempora ut at minus.', '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(66, 90, 13, 'Nihil praesentium voluptas aut nisi sed. Ut dolores quo est dolor incidunt voluptatum omnis nihil. Non repudiandae id dolorem delectus optio. Eos cupiditate officiis et maxime est cumque. Non voluptatem labore quibusdam esse aspernatur. Quia necessitatibus vel enim tempora occaecati. Deserunt sint deleniti rerum vero debitis qui qui. Assumenda occaecati vel nobis neque excepturi animi aut. Ut aliquid repudiandae qui id commodi aut error.', '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(67, 91, 1, 'Eum laborum sit magni vero voluptas. Possimus unde distinctio velit dolor est quia. Ipsa quia quasi ex sed voluptas saepe est. Dolores eveniet voluptatum eum omnis qui id dolores. Incidunt ea recusandae atque harum sit. Aspernatur illo voluptatem alias ut autem consectetur. Ducimus veritatis ut optio eveniet ab. Dolor error in veritatis sint fuga placeat dignissimos. Eius nesciunt eveniet eos. Iste eos architecto quos sed.', '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(68, 92, 18, 'Adipisci praesentium deserunt odit ut quis ducimus. Excepturi qui minima rerum dolores quae. Veniam aut magnam non temporibus delectus. Ut quia ratione perferendis officiis sequi. Ipsum et quia dolorum quas nihil occaecati perferendis qui. Quis voluptatibus quis quod ut qui itaque nostrum. A provident distinctio possimus ut ut. Explicabo nulla soluta voluptatibus ea. Dolorum repellendus quos ea non. Qui earum unde qui voluptas eum nesciunt.', '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(69, 93, 17, 'Et necessitatibus qui natus pariatur corrupti qui. Explicabo dolore beatae natus enim numquam et. Asperiores et atque voluptates saepe. Qui rem consequuntur consequuntur tempore molestias veritatis. Qui omnis quo debitis adipisci. Eveniet et saepe repudiandae. Dolorum nobis ipsam sapiente fugiat. Harum et omnis rerum accusantium eum eos unde asperiores. Praesentium id inventore ab sunt. Sunt iusto maiores suscipit corporis et soluta sed.', '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(70, 94, 2, 'Iusto iusto dolores veniam nihil. In possimus eos similique deleniti est aut. Est totam iusto possimus veritatis doloribus magni delectus. Autem facilis et quis. Quis et vel et ut eius dolore in libero. Voluptatum ab saepe ut labore illo molestias. Nulla quis laboriosam consectetur perferendis est reiciendis.', '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(71, 95, 8, 'Cum et non earum rerum et illo et. Autem quae asperiores alias explicabo totam voluptas hic. Ut qui impedit voluptatem nisi autem possimus impedit qui. Praesentium illo earum consequuntur quia perspiciatis. Veniam molestiae error quaerat temporibus cum iste. Ullam eligendi dignissimos reprehenderit sequi voluptatem quisquam ut. Enim eum tempora nostrum qui sit.', '2017-11-19 16:19:50', '2017-11-19 16:19:50'),
(72, 96, 20, 'Rem quaerat in eveniet quis ea consequuntur soluta. Soluta ut inventore nobis. Qui accusantium nulla commodi vero omnis sint. Aspernatur nihil rerum sit temporibus aut esse. Sint a amet enim voluptatem ut similique amet. Cupiditate modi sunt eum qui aut vitae. Sunt debitis odit nemo maiores libero ullam et. Aliquam quibusdam autem ea. Animi aliquam molestias et necessitatibus omnis quidem. Cum corporis debitis magni.', '2017-11-19 16:19:50', '2017-11-19 16:19:50'),
(73, 97, 11, 'Incidunt architecto laborum enim quo cumque sequi culpa. Blanditiis aliquam atque quibusdam. Consequuntur harum eum velit quo error similique. Et qui est asperiores nulla. Et unde soluta facilis numquam. Delectus laudantium doloremque saepe. Adipisci accusamus totam dolore. Et aut dolor tempore id. Beatae impedit perferendis doloribus.', '2017-11-19 16:19:50', '2017-11-19 16:19:50'),
(74, 98, 6, 'Aut ipsam fuga magnam quod ratione. Ducimus rerum id quia consequatur ratione reprehenderit sed. Pariatur hic ex et. Est ipsam excepturi voluptatibus ex eum. Et aliquam corporis quo. Libero tenetur voluptatibus occaecati tempora. Exercitationem odit id esse quam. Officiis magni ut eaque sunt quis vitae explicabo natus. Ut nemo repellat qui facilis. Sint enim vel et reprehenderit. Similique itaque ea minus quae excepturi. Veniam perspiciatis fugiat ducimus reprehenderit.', '2017-11-19 16:19:50', '2017-11-19 16:19:50'),
(75, 99, 20, 'Commodi sunt nobis cum ut omnis magnam. Harum et officia sed velit est nesciunt neque rerum. Sed voluptatum aspernatur molestiae libero facere et et. Ut id sed ut atque dolorem. Id non dolores quidem omnis. Consequuntur et facere et vel et. Quas aut ut eos sed non dolor aut. Dolor et dolor et harum aut saepe. Suscipit voluptatem amet rerum voluptas. Dignissimos commodi ut dolorem illo molestiae et. Aut sunt quidem sequi et corporis.', '2017-11-19 16:19:50', '2017-11-19 16:19:50'),
(76, 100, 16, 'Optio laudantium nostrum cupiditate alias aut. Numquam soluta at qui recusandae necessitatibus. Velit fuga impedit esse numquam rerum et velit. Adipisci officia facere non totam ipsam sit. Nesciunt quos quia saepe consequatur vero. Reiciendis itaque ut soluta quo nesciunt. Sit facere perferendis ab et autem qui. Velit aut doloremque consectetur nemo. Illo fuga velit et sapiente voluptatum.', '2017-11-19 16:19:50', '2017-11-19 16:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `film_genres`
--

CREATE TABLE IF NOT EXISTS `film_genres` (
  `id` int(10) unsigned NOT NULL,
  `film_id` int(10) unsigned NOT NULL,
  `genre_id` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_genres`
--

INSERT INTO `film_genres` (`id`, `film_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(48, 78, 2, '2017-11-19 16:18:39', '2017-11-19 16:18:39'),
(49, 79, 4, '2017-11-19 16:18:39', '2017-11-19 16:18:39'),
(50, 80, 1, '2017-11-19 16:18:40', '2017-11-19 16:18:40'),
(51, 81, 1, '2017-11-19 16:19:48', '2017-11-19 16:19:48'),
(52, 82, 1, '2017-11-19 16:19:48', '2017-11-19 16:19:48'),
(53, 83, 5, '2017-11-19 16:19:48', '2017-11-19 16:19:48'),
(54, 84, 3, '2017-11-19 16:19:48', '2017-11-19 16:19:48'),
(55, 85, 2, '2017-11-19 16:19:48', '2017-11-19 16:19:48'),
(56, 86, 4, '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(57, 87, 3, '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(58, 88, 1, '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(59, 89, 6, '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(60, 90, 6, '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(61, 91, 3, '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(62, 92, 5, '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(63, 93, 6, '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(64, 94, 2, '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(65, 95, 6, '2017-11-19 16:19:49', '2017-11-19 16:19:49'),
(66, 96, 3, '2017-11-19 16:19:50', '2017-11-19 16:19:50'),
(67, 97, 3, '2017-11-19 16:19:50', '2017-11-19 16:19:50'),
(68, 98, 5, '2017-11-19 16:19:50', '2017-11-19 16:19:50'),
(69, 99, 1, '2017-11-19 16:19:50', '2017-11-19 16:19:50'),
(70, 100, 6, '2017-11-19 16:19:50', '2017-11-19 16:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Action', '2017-11-17 18:30:00', NULL),
(2, 'Adventure', '2017-11-17 18:30:00', NULL),
(3, 'Romance', '2017-11-17 18:30:00', NULL),
(4, 'Mystery', '2017-11-17 18:30:00', NULL),
(5, 'Horror', '2017-11-17 18:30:00', NULL),
(6, 'Science fiction', '2017-11-17 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_18_153730_create_films_table', 2),
(4, '2017_11_18_154352_create_countries_table', 2),
(5, '2017_11_18_154445_create_genres_table', 2),
(6, '2017_11_18_174839_create_film_comments_table', 3),
(7, '2017_11_18_202409_create_film_genres_table', 4),
(8, '2016_06_01_000001_create_oauth_auth_codes_table', 5),
(9, '2016_06_01_000002_create_oauth_access_tokens_table', 5),
(10, '2016_06_01_000003_create_oauth_refresh_tokens_table', 5),
(11, '2016_06_01_000004_create_oauth_clients_table', 5),
(12, '2016_06_01_000005_create_oauth_personal_access_clients_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0164adf2e3be3b25e318b75b1dd395b7a349fa7aed36a3d0d031afc2eeb586a3aa7bfb5eb531febb', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:59:11', '2017-11-19 15:59:11', '2018-11-19 21:29:11'),
('02046d6601b381f745d129e65b45f1ed0b5520cd4c676c3f6384149cd75c615a11953c55a1b333d8', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:01:30', '2017-11-19 16:01:30', '2018-11-19 21:31:30'),
('030b27693e1d78b933230de46902dee506bf64567797df6e1752dd2ea532e2bb7aed1db703d9c7d1', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:25:12', '2017-11-19 15:25:12', '2018-11-19 20:55:12'),
('071fdb34a2cd7e1ab08002503914ac0f43a050f311cd6b0f1366c1cec0dba5605d908a498a756195', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:02:14', '2017-11-19 14:02:14', '2018-11-19 19:32:14'),
('0be706b2eb90c28df030a5af8907a440269f2633bfb045850f8d51c764e45ca4a642658858ad67a6', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:56:41', '2017-11-19 15:56:41', '2018-11-19 21:26:41'),
('0c625e9a5c6d4f2af49625377f4008a79fde996f8c238fe6837e10fc74e997c36cfcff839aa842d9', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:57:32', '2017-11-19 15:57:32', '2018-11-19 21:27:32'),
('0d2f7f0717e2ae947a4d26e49c4005fa8b4914dc289943084091c3e20e47e66326f0cf4744fc14c2', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:19:13', '2017-11-19 16:19:13', '2018-11-19 21:49:13'),
('0dae9a92071bcbbc51d9ae243ff59e2fce6b3f48ccb4f340eb306f4bc77a30b65c1a2d6e53b5b085', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:30:57', '2017-11-19 15:30:57', '2018-11-19 21:00:57'),
('0df3dec7bed8ae529954e413d566342b9975e26d979bc9d521dbfb6c8adffe8af9acc9d3d9a533e6', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:21:26', '2017-11-19 16:21:26', '2018-11-19 21:51:26'),
('0ec00fc7aa04b0a4e9d81949cdd6c67dd56ed90f72551187506e069bee322bc5e230fbb7239d9fb9', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:47:27', '2017-11-19 14:47:27', '2018-11-19 20:17:27'),
('13f45eb0e5ab9da16687081d284f08924b3f211a74ea19da893403aebf62eccc10b2fcb6a176b49f', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:57:08', '2017-11-19 14:57:08', '2018-11-19 20:27:08'),
('14e13d1a0dc191632f548f72b68cff464961bf2bdc7acae4460eb60ac8aa26e547d274c07284ae6b', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:47:42', '2017-11-19 14:47:42', '2018-11-19 20:17:42'),
('15565ae44a2a6598988e317937eb54a9d872efce54f0093c7f5e3f8e6fb36e9950541a5c1fc9d181', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:42:36', '2017-11-19 14:42:36', '2018-11-19 20:12:36'),
('162a31013732fa64bd00fb55e8bff169a409b9a02920d735e3e8cde34dc71f468eb7e25afb8d9012', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:01:09', '2017-11-19 16:01:09', '2018-11-19 21:31:09'),
('1bd10929f683e90f22db5068ebdce2c9e63da3f264c0d5d2220918cb08f2726294000c6a7cd5d9fc', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:31:37', '2017-11-19 15:31:37', '2018-11-19 21:01:37'),
('1c0e9ac54be9e99db29ea050020e56a53ea7978b0012959ed39f7c34f8f8aeab1f8d3b1b329154bb', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:38:34', '2017-11-19 15:38:34', '2018-11-19 21:08:34'),
('1e55303eba3565349cdc62d87e019eedd20c86ab4b8bc8a109d42ae4cccbe3846d39e3df4aa65057', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:37:04', '2017-11-19 15:37:04', '2018-11-19 21:07:04'),
('1ec4fc32e61eb4ed803a20a7ddf1702d45bd2880ebcc15cdbdc273b419f78f80b3ab50b24b562d94', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:47:45', '2017-11-19 14:47:45', '2018-11-19 20:17:45'),
('2286ec7483ba7d7bbafb21341e5bbac82e454ad04f3c11f47a9938860fac4f414bdc57a5e8b34502', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:03:07', '2017-11-19 16:03:07', '2018-11-19 21:33:07'),
('22ba74e3a574775c6eb68490eb7dcd36e580e4bc12fb341c9e54aa2f2e526782420ea8c6cbed1b16', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:13:13', '2017-11-19 16:13:13', '2018-11-19 21:43:13'),
('247775c5e2a09a12b4df3c12b64543516778f34ca9620fd613e6ea142e40abeacbec9287d2a94661', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:57:10', '2017-11-19 14:57:10', '2018-11-19 20:27:10'),
('25c99698d2069f4c477f85f9e8c2ca6dc8b559881d738185b2b758a2bcba87ef5f7b773129924372', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:59:13', '2017-11-19 15:59:13', '2018-11-19 21:29:13'),
('2948727ac65dc793086c5b757189e0ef50d0e6699b420e2221ce9aa52bd8adb49c4e86fed0601c30', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:57:06', '2017-11-19 14:57:06', '2018-11-19 20:27:06'),
('2a72a8ed5b2f1bc16c0f22896f6063e1bdb7ed0220b6ef6c82751f26efb654754bbf654c499b019f', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:47:35', '2017-11-19 14:47:35', '2018-11-19 20:17:35'),
('2ae747eb9b4cb3d95d6ba1e341c42e4d5c0210172844ade7ab0f9146e7fb958d064a2a32216ac9ed', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:37:58', '2017-11-19 14:37:58', '2018-11-19 20:07:58'),
('2e7ea4dfb9d472aff7b4f35ad2af9f81efe0491404edd380e7c5c863545e506ba7694080aafe0306', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:37:10', '2017-11-19 15:37:10', '2018-11-19 21:07:10'),
('2ed206bdb4f42d662f45bde5a1cfccbb6b428f6a07253cc73e08d30b333738fe5004660259ff1e85', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:47:32', '2017-11-19 14:47:32', '2018-11-19 20:17:32'),
('30279fe5de99128e169ecd279e721d5ce532c082e17d508ac4c6474f84df44c9fcaef89b1f2935e5', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:59:16', '2017-11-19 15:59:16', '2018-11-19 21:29:16'),
('31e501c7e198bcf7ba2a7858289a1f50f21fc35d354f5a8790ff07ffcfb2e78a40afaf51e1e9c5a1', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:40:29', '2017-11-19 14:40:29', '2018-11-19 20:10:29'),
('31e613ca9b8e47e5d217c548b1d9b9ea297480ab561651540d6782f946a3787e315eba21b4d30e05', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:28:58', '2017-11-19 15:28:58', '2018-11-19 20:58:58'),
('33086e1e2faee90ef7afdece41731e9b650b3879757a72fb80e4b9244d7acc83af88bdbf2c242839', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:35:32', '2017-11-19 14:35:32', '2018-11-19 20:05:32'),
('39e0413403f7da9c2c5c25bf9851936c4bdfc1f61f255dddd32ba670426344ef559142dde016ffdc', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:21:23', '2017-11-19 16:21:23', '2018-11-19 21:51:23'),
('3a320e4fab8ae1081c26c48b3fa700f04ef0b2f340db3f2e0c89369e169f957f1d622aaf6236dd15', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:04:17', '2017-11-19 14:04:17', '2018-11-19 19:34:17'),
('3b7f3a0f2cdec3118be4144900d1d2dc798c3eac8d8db7e75fec1d3c4d1a142ff5c44aee35f3307d', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:23:26', '2017-11-19 16:23:26', '2018-11-19 21:53:26'),
('3d8a913a04108692e357df8fa837ce84eff0ee165fd3ab4fc3dc7e1d2b7387466eb94882b56bf2e5', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:20:06', '2017-11-19 16:20:06', '2018-11-19 21:50:06'),
('3e35410379821efd47195fbb599514aadbe0a747b474c34ac2e1085285239156c5feaf35e67d36a7', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:27:50', '2017-11-19 15:27:50', '2018-11-19 20:57:50'),
('469780242faabef891d94f7bcf49633229acd1ada02ac3b95703e7948bda227c082385c195c35218', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:57:13', '2017-11-19 14:57:13', '2018-11-19 20:27:13'),
('4724d3335ef4cb39b43a03a05f0d9211fb88b7e6df674381924fc4a84f2c0303390f3e83cd04c054', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:45:25', '2017-11-19 14:45:25', '2018-11-19 20:15:25'),
('479fa903f6240f956146ba59c78f2fd0d3c632b2b8274e459ce9e48531bee89be724e106dd4d468a', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:47:40', '2017-11-19 14:47:40', '2018-11-19 20:17:40'),
('4a93573a445ec3f883ef5ff1577ae6b76c6594a59a5d121c255a6787d912b0d886c3dcc369674d04', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:23:10', '2017-11-19 15:23:10', '2018-11-19 20:53:10'),
('4de75475da9bc3f7863eb49f2c4db295f890172ee15d9e770aa804910fca8afb4bcf19f360e37ccd', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:44:13', '2017-11-19 15:44:13', '2018-11-19 21:14:13'),
('4f1bcc4cd2ac65e10303b5d8c646f4ed8b62a0ac513432b59748e7650e033b0a8b77da64d6dac05e', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:02:54', '2017-11-19 14:02:54', '2018-11-19 19:32:54'),
('513c9f5d424fbb42d2026b0943e9e43c4c7e79916fb9e796eccd256ab131f0d7def40bd064490637', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:23:56', '2017-11-19 16:23:56', '2018-11-19 21:53:56'),
('5525e316f5ed2a515cecf707cdf9299b66795a448743e3859940fd2142bc36ba77c86828fb43ed38', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:40:46', '2017-11-19 14:40:46', '2018-11-19 20:10:46'),
('59380fe09557071fa8e6c1b17a9743fa72097cee96f9f242ac718df43d7b590d71c847a12a1f9a77', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:20:08', '2017-11-19 16:20:08', '2018-11-19 21:50:08'),
('5991989ab891dcb49e2d520c87e40ee10fae9b87320b40dcd1dc6fe3c96f761ca21013f1d71d0d91', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:19:24', '2017-11-19 16:19:24', '2018-11-19 21:49:24'),
('5d0e2cd383bafbe62a00f3186599f4791d39bdad996a0f6c0fd4d50b968d0e869fb34fc24856d345', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:21:05', '2017-11-19 14:21:05', '2018-11-19 19:51:05'),
('5d96b9b7993a16dbe32780e01052b931673590a2afadddda4fa59d7a6e6c960a652d4e45abba897b', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:42:05', '2017-11-19 15:42:05', '2018-11-19 21:12:05'),
('6286de23cd1bfc4b23c588550cdc190704fe32915b06819c54ba3883eb832eed77091d8ac455e3bb', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:14:16', '2017-11-19 16:14:16', '2018-11-19 21:44:16'),
('62b9491d93a48d931ac4b026cd564adb2c59ed18075e02337272840c18a61a15e39f957db2e78f03', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:57:15', '2017-11-19 14:57:15', '2018-11-19 20:27:15'),
('636e355b183cee91ae15c9197a2e50c864337990e088e73592a5924590e0651a59adc39c2aa68319', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:22:50', '2017-11-19 14:22:50', '2018-11-19 19:52:50'),
('67a34ce652347c367d67da81c2a1a2a0e9e0f967ed50ce845c4c4fe4ddc65d57bb7c30f993dadca2', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:46:55', '2017-11-19 14:46:55', '2018-11-19 20:16:55'),
('67d1846d13915e33d1dba8c6c7961247c774ac190eb0c000d5c78c9e012a858db6d3ea7463fe050b', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:23:01', '2017-11-19 14:23:01', '2018-11-19 19:53:01'),
('6b841cf48a6be488c4d977ba48aa9a0f517c651cb045defdc7940e0ed799f40f7db26f0b024adf48', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:20:03', '2017-11-19 16:20:03', '2018-11-19 21:50:03'),
('6cef69430e80515d2b6260c173a115c09bc7ca0ca912a8889c2742866e1f4921b298c33622f486be', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:14:17', '2017-11-19 16:14:17', '2018-11-19 21:44:17'),
('6e8ebb7aae08072417365bbbbe6845ab0c48b0d7be95a9fb5eb409b4dea82df6280ed688d78dc439', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:40:53', '2017-11-19 15:40:53', '2018-11-19 21:10:53'),
('73987bb86e0b47418200243b3089a39f6c9b11cabfc768623a719e3df875fb4e84b6c669fa841c97', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:22:36', '2017-11-19 14:22:36', '2018-11-19 19:52:36'),
('7898df1fff12989c731554b381d8b1d57d833a11224e23b074c6e89ac2d13682e4d93451dbe6f763', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:19:19', '2017-11-19 16:19:19', '2018-11-19 21:49:19'),
('79adf8caa077577313d5848298bd58bf9eaceea28afeba360a46be0aea2b77601a4571f04eee6d0c', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:58:00', '2017-11-19 15:58:00', '2018-11-19 21:28:00'),
('7c291cc0242cbced88550c7c614234ba38900996b1418e814dc35870c53977890b07c0fb2f5503cb', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:08:47', '2017-11-19 14:08:47', '2018-11-19 19:38:47'),
('7db296f530bc789c45460b1873e88153a0b35bd1bcef66746f0a8da3c540024587d9b435b14b35d8', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:59:21', '2017-11-19 15:59:21', '2018-11-19 21:29:21'),
('7dfd193d19bb33441929daff520b1354348f1a53b2a7463c14cb056d13fb397cfe0eb665a925f0e8', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:44:13', '2017-11-19 15:44:13', '2018-11-19 21:14:13'),
('7f966ced55ad6ba41c5b2c6e5b3b64595155359bbc7ab19ca3dc68ccd2258df2c3328b3a50817872', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:14:37', '2017-11-19 16:14:37', '2018-11-19 21:44:37'),
('8001816842d2373ed4294113742f6b2b987c38859cd16d780dfd19ce4cbea35e14960c30b947aab4', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:48:19', '2017-11-19 14:48:19', '2018-11-19 20:18:19'),
('80936537696127323f9a8bcb2a0dc4b9c233a7bb38e201bfb4ed08ebd5975471aea733ecdb717fe9', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:49:05', '2017-11-19 14:49:05', '2018-11-19 20:19:05'),
('82b600709dd67479758f193213675eb4ecee0eb535de24de7e166721c78e384f1849c52ee39c281e', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:01:04', '2017-11-19 16:01:04', '2018-11-19 21:31:04'),
('85a9aeb552afeb31f4030c09b1a0c5e31c35920ca067ce77d8a8872a5846dbcf1efac249fd83e100', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:21:11', '2017-11-19 16:21:11', '2018-11-19 21:51:11'),
('85b92601b25c0b2fc2541f049bd46dea7b821a73cbb19c5368aff3b9c224c75d7baaed689b8fabc3', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:19:59', '2017-11-19 16:19:59', '2018-11-19 21:49:59'),
('8b7934590a4a0587326e7ec9787259f57333d9cfba5fa1ceeab4ea50d04decb3d9f9469dbb910f00', 1, 1, 'Auth', '[]', 0, '2017-11-19 14:01:52', '2017-11-19 14:01:52', '2018-11-19 19:31:52'),
('8c541d7374a3d5d7603bcc4bb0250b688b491b2c1223ca7ff37b9cbabed5bb94b3143867edd078a2', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:48:02', '2017-11-19 14:48:02', '2018-11-19 20:18:02'),
('8f478d2165d0a32595487edeeeb97309b256dea2d43fa5f391f1e57139e69a37d21b31585e9ad050', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:43:06', '2017-11-19 15:43:06', '2018-11-19 21:13:06'),
('97c7e9599170152f0067e2c201c4e24e493faccf42cde6a5505ac445ee7a20bd8616b4d34b2d5d6e', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:51:43', '2017-11-19 15:51:43', '2018-11-19 21:21:43'),
('987681b455be835eb402e75432d143c5e8555ab863b9574ecd4a4927f5e5e4ae9525337a8dcb8c1f', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:38:29', '2017-11-19 14:38:29', '2018-11-19 20:08:29'),
('9fb926409123ebabc8cebae2adbfd64138d25664ccbbb528b29b2e086db24955af9f83d76f4264ff', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:48:02', '2017-11-19 14:48:02', '2018-11-19 20:18:02'),
('a265f259e9910e5cd56f04bfbe226855878c364d3fd2b035c3f5826a684b134d42aa09f9e90a2ee4', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:19:57', '2017-11-19 16:19:57', '2018-11-19 21:49:57'),
('a2f82556b7dde4f0ec54ec9df6504779fdf748115cc472448916e4ff35b5f701e5e1ff3d4a47532e', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:38:02', '2017-11-19 14:38:02', '2018-11-19 20:08:02'),
('a3f11f790ccd20fae34d834305f61baeb979ae7b4fafc1d3fc3f960002460885c46221a52f4d0ecb', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:19:25', '2017-11-19 15:19:25', '2018-11-19 20:49:25'),
('a7b0e60427fce00e86e3aa95c15b30423a0d27c350e38868180a941df0cd4fae7fb7c18bb43ad029', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:56:02', '2017-11-19 15:56:02', '2018-11-19 21:26:02'),
('aca545d2c39a8094eee38bac39ca13dc9dbf7a04e54fe0aa325d3d9a91e27a379d9b735f26336d4e', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:28:08', '2017-11-19 15:28:08', '2018-11-19 20:58:08'),
('ad0a65a128e37aa4203cf7a3b51a7937d2263176c06080b8132a9208a7eceab8782f78398ba2af71', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:36:19', '2017-11-19 15:36:19', '2018-11-19 21:06:19'),
('af0edb3dd58ce2543dad75dc5eea8591f37df9a7e2a393bc615409b1cd8ffe355dac7befe0a8a457', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:51:44', '2017-11-19 15:51:44', '2018-11-19 21:21:44'),
('b1dde23e28380838c34184948bb6f7468aa006e9797020e8e9780a247f83cf2f461f5bb752f5e348', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:57:17', '2017-11-19 14:57:17', '2018-11-19 20:27:17'),
('b4002638a593a8855f03bb867d1664f7b76a05368f9f2430f7aeacf98e3fd7fa4151a7f80797e11e', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:22:42', '2017-11-19 14:22:42', '2018-11-19 19:52:42'),
('b477c493516a338c98b76355b6c4d94474dea82672323a2a6bd04eba6f70597713bb0aeee67efd5c', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:43:52', '2017-11-19 15:43:52', '2018-11-19 21:13:52'),
('b746d15afffe2ace3006fe757b84c4238c963f6053ac56faa311c59b427e7370aab1235bbf17e992', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:44:03', '2017-11-19 14:44:03', '2018-11-19 20:14:03'),
('b8bd978fc05455c18148aa6bfae97065f66b5003295c32d48597e7eb433c3ade4f1e171894b52921', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:59:30', '2017-11-19 15:59:30', '2018-11-19 21:29:30'),
('be67480de50837ca3e9a1ad588e883250f713f857f7d59badbe6a30e97756bfa6e01f180b7662ee2', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:37:37', '2017-11-19 15:37:37', '2018-11-19 21:07:37'),
('c3f64ab317e6f0d63412d2d42d2ea928847957642a81d85cbb3dfef1a8eee53c821bf7d29bb5d625', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:57:59', '2017-11-19 15:57:59', '2018-11-19 21:27:59'),
('c6ea7855602433f75a9ddb23c7b15dd6c199e05ed21c5711e1635157aeb072e326f0ab179b130be0', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:37:59', '2017-11-19 15:37:59', '2018-11-19 21:07:59'),
('c80e5d51816ead38ba8d1a2875440002b10df5e4b85d225b9d9cf1dfe54cf05607af9a9ea8e408e2', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:40:35', '2017-11-19 14:40:35', '2018-11-19 20:10:35'),
('c837f5212e97e60c0cc6369649bd7433c3d580a91f3e85480fb18d8b419774047229383ca6841ab4', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:45:00', '2017-11-19 14:45:00', '2018-11-19 20:15:00'),
('c8f4d9e68e3dea4461ace3623f9047523dc83cd9b68d184529a1ecc1f07ca4c7818a24710be9d081', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:45:19', '2017-11-19 14:45:19', '2018-11-19 20:15:19'),
('d218b7c72057a88bfb253c2a9deaa67d85a06304412eafb97e07d3b96f4056bfceb56eaf2e8a1fd4', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:42:39', '2017-11-19 14:42:39', '2018-11-19 20:12:39'),
('d57cc9a3e4df0727115f74a90bd171bd13e36379d016fddec7c56c4903f5888e25395d08f95c81b9', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:18:49', '2017-11-19 14:18:49', '2018-11-19 19:48:49'),
('d6016aae5e27c5debd197543ec34a73de8deae6312c3abea8992709a082ed37faf4c9b99758fdc00', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:38:18', '2017-11-19 14:38:18', '2018-11-19 20:08:18'),
('d8d5e2a93fd4d879e85426b05f89f873976738b398062f48b4d182cd6eacb084000122ca74afa514', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:38:17', '2017-11-19 14:38:17', '2018-11-19 20:08:17'),
('e0e1f4c07296d86b4dc8178329cb73c968eecf5ad028561bac64616e059fe76ad61b8c7e684b0205', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:38:13', '2017-11-19 15:38:13', '2018-11-19 21:08:13'),
('e74d5e9f9b85491f05781fbd5cdcfdbdca3a0c523f2191b12e0585b34052b287400485f65702090e', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:21:50', '2017-11-19 16:21:50', '2018-11-19 21:51:50'),
('eacaf7896063eef27b9f6281f4c6a42dbb45bfd8d02ed100a29df8cb77c4be52970ecc7fe9afe269', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:40:35', '2017-11-19 14:40:35', '2018-11-19 20:10:35'),
('eb0630cd33b94841079d67623ccb15946f145ce8af81894bf2ea33c196335960434f5d08852daa28', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:59:04', '2017-11-19 15:59:04', '2018-11-19 21:29:04'),
('ebb5cd4e2c1b1427e02aae5c4111da91667682104abe1f65ea0a6c28c55f8d9ff49414b26dd3a501', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:59:18', '2017-11-19 15:59:18', '2018-11-19 21:29:18'),
('ec2283a766ca3c7b7fc5555066ffdfdbeb681484081871baf67c80b4df384429bacdf937ccd343b0', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:02:41', '2017-11-19 14:02:41', '2018-11-19 19:32:41'),
('ed2afecce156233b239f961d29404f7e7ce818eddae3ffa4d962c67111e77315c2bba52a09dbc969', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:59:15', '2017-11-19 15:59:15', '2018-11-19 21:29:15'),
('ef32faad0548f3fb0751c7094508845a2a8f2c36d2b60d816153ff8d6e299573cbec715f4305148e', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:18:40', '2017-11-19 14:18:40', '2018-11-19 19:48:40'),
('ef59dbde4e514255f352c06c6ecd390c774099b4ff74fc59c5d6468b1a322be387c72afd0b2232cf', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:59:08', '2017-11-19 15:59:08', '2018-11-19 21:29:08'),
('f40c6ef53b4734238ecb7bdce75dd9fcba1ee22d11484b65c886cbbca59acbd5c9039ea67b6c9f70', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:24:00', '2017-11-19 16:24:00', '2018-11-19 21:54:00'),
('fb2ce11c71f6e66c5c3f933262948bc1fec700787904d0549cd40dc0aeef768711bccadc29f83e3f', 11, 1, 'Auth', '[]', 0, '2017-11-19 14:20:53', '2017-11-19 14:20:53', '2018-11-19 19:50:53'),
('fb6719f8f22e5774b11dc5a61abae7874c43315562c2045d5f6e7e6c0ef5e5ba54d19bf4918b1312', 11, 1, 'Auth', '[]', 0, '2017-11-19 16:23:15', '2017-11-19 16:23:15', '2018-11-19 21:53:15'),
('ffc08cf613863d0ee473c61170c9a7acfd68bbcf027fbfbc5202112ba9dcd9037ac3bb955a39663b', 11, 1, 'Auth', '[]', 0, '2017-11-19 15:35:43', '2017-11-19 15:35:43', '2018-11-19 21:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Ticket Booking Personal Access Client', 'Rt1CZD3mPscwxe7aimL6YiiL4CWCNipQBwBnaxoQ', 'http://localhost', 1, 0, 0, '2017-11-19 13:47:30', '2017-11-19 13:47:30'),
(2, NULL, 'Ticket Booking Password Grant Client', 'FX5b8jaagjUJG3qjpswuBFTBDPioYCPYcuT2nmzM', 'http://localhost', 0, 1, 0, '2017-11-19 13:47:30', '2017-11-19 13:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-11-19 13:47:30', '2017-11-19 13:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Isadore Upton DVM', 'dave.jakubowski@example.org', '$2y$10$41sRYn3CuAfni5gz1RXBc.RPE3d5pWSUYyemcTcl96wc6X0zGTPTC', NULL, 'FPnAsMjogw', '2017-11-18 14:25:17', '2017-11-18 14:25:17'),
(2, 'Bettye Gutmann II', 'ftillman@example.net', '$2y$10$41sRYn3CuAfni5gz1RXBc.RPE3d5pWSUYyemcTcl96wc6X0zGTPTC', NULL, 'DcIhcNJw8e', '2017-11-18 14:25:17', '2017-11-18 14:25:17'),
(3, 'Dr. Therese Greenfelder', 'hudson.kohler@example.com', '$2y$10$41sRYn3CuAfni5gz1RXBc.RPE3d5pWSUYyemcTcl96wc6X0zGTPTC', NULL, 'Um2bftPYSB', '2017-11-18 14:25:17', '2017-11-18 14:25:17'),
(4, 'Prof. Elmira Rohan III', 'pkrajcik@example.com', '$2y$10$41sRYn3CuAfni5gz1RXBc.RPE3d5pWSUYyemcTcl96wc6X0zGTPTC', NULL, 'z18B43blXw', '2017-11-18 14:25:17', '2017-11-18 14:25:17'),
(5, 'Heather Heller', 'bauch.liza@example.net', '$2y$10$41sRYn3CuAfni5gz1RXBc.RPE3d5pWSUYyemcTcl96wc6X0zGTPTC', NULL, 'ff02GBWkzm', '2017-11-18 14:25:17', '2017-11-18 14:25:17'),
(6, 'Kathryne Walter', 'ally.grimes@example.net', '$2y$10$41sRYn3CuAfni5gz1RXBc.RPE3d5pWSUYyemcTcl96wc6X0zGTPTC', NULL, 'CTeckx5fse', '2017-11-18 14:25:17', '2017-11-18 14:25:17'),
(7, 'Miss Crystel Hane', 'ernestina.von@example.com', '$2y$10$41sRYn3CuAfni5gz1RXBc.RPE3d5pWSUYyemcTcl96wc6X0zGTPTC', NULL, '4NYcihgnBu', '2017-11-18 14:25:17', '2017-11-18 14:25:17'),
(8, 'Ms. Ashtyn Graham Sr.', 'cindy92@example.net', '$2y$10$41sRYn3CuAfni5gz1RXBc.RPE3d5pWSUYyemcTcl96wc6X0zGTPTC', NULL, 'XAZpGjhSTw', '2017-11-18 14:25:18', '2017-11-18 14:25:18'),
(9, 'Shannon Nienow', 'mustafa43@example.org', '$2y$10$41sRYn3CuAfni5gz1RXBc.RPE3d5pWSUYyemcTcl96wc6X0zGTPTC', NULL, 'mwU2B2VEPl', '2017-11-18 14:25:18', '2017-11-18 14:25:18'),
(10, 'Coy Kovacek', 'qgrant@example.com', '$2y$10$41sRYn3CuAfni5gz1RXBc.RPE3d5pWSUYyemcTcl96wc6X0zGTPTC', NULL, 'Z6f1G9gD59', '2017-11-18 14:25:18', '2017-11-18 14:25:18'),
(11, 'Hari', 'hari604@gmail.com', '$2y$10$Kjh5fLc6DQCfUY0meCdvDutOKeG2JtV0/2rY9qNPRlIaXoeGGT/TW', NULL, 'Y9rRz2k6uH3wm3IQbtlwPva7EXFw8EGH9ca4ouMmuwmgwA4tkTQTaiSHIZQi', '2017-11-19 10:07:48', '2017-11-19 10:07:48'),
(12, 'Ms. Delphine Bednar', 'bertrand63@example.net', '$2y$10$ELVjC8dnV5RPRs0JdHfUR.RMqgintNS0Y76C5gg5NRydPcf0.JtBe', NULL, '22xY905xrg', '2017-11-19 14:09:41', '2017-11-19 14:09:41'),
(13, 'Maynard Mueller', 'ikoss@example.net', '$2y$10$ELVjC8dnV5RPRs0JdHfUR.RMqgintNS0Y76C5gg5NRydPcf0.JtBe', NULL, '2yu7Sntd6m', '2017-11-19 14:09:41', '2017-11-19 14:09:41'),
(14, 'Reilly Gutkowski', 'harrison91@example.com', '$2y$10$ELVjC8dnV5RPRs0JdHfUR.RMqgintNS0Y76C5gg5NRydPcf0.JtBe', NULL, '8XiyWPofw5', '2017-11-19 14:09:41', '2017-11-19 14:09:41'),
(15, 'Alberta Schamberger II', 'orville89@example.org', '$2y$10$ELVjC8dnV5RPRs0JdHfUR.RMqgintNS0Y76C5gg5NRydPcf0.JtBe', NULL, 'QLYSnum9xe', '2017-11-19 14:09:41', '2017-11-19 14:09:41'),
(16, 'Mellie Lehner', 'idell88@example.net', '$2y$10$ELVjC8dnV5RPRs0JdHfUR.RMqgintNS0Y76C5gg5NRydPcf0.JtBe', NULL, 'K3I8rEY3mf', '2017-11-19 14:09:41', '2017-11-19 14:09:41'),
(17, 'Carmel Crona', 'carter.will@example.org', '$2y$10$ELVjC8dnV5RPRs0JdHfUR.RMqgintNS0Y76C5gg5NRydPcf0.JtBe', NULL, 'JG42JPtX7d', '2017-11-19 14:09:41', '2017-11-19 14:09:41'),
(18, 'Dr. Salvador Friesen III', 'danyka97@example.org', '$2y$10$ELVjC8dnV5RPRs0JdHfUR.RMqgintNS0Y76C5gg5NRydPcf0.JtBe', NULL, 'kbexhxJrdx', '2017-11-19 14:09:42', '2017-11-19 14:09:42'),
(19, 'Mr. Julian Lubowitz DVM', 'steuber.jaydon@example.net', '$2y$10$ELVjC8dnV5RPRs0JdHfUR.RMqgintNS0Y76C5gg5NRydPcf0.JtBe', NULL, 'C9EhOcVBFB', '2017-11-19 14:09:42', '2017-11-19 14:09:42'),
(20, 'Kavon McGlynn', 'timmothy.wintheiser@example.net', '$2y$10$ELVjC8dnV5RPRs0JdHfUR.RMqgintNS0Y76C5gg5NRydPcf0.JtBe', NULL, 'gFhkqdgYxI', '2017-11-19 14:09:42', '2017-11-19 14:09:42'),
(21, 'Tavares Kuhn I', 'tito.sawayn@example.net', '$2y$10$ELVjC8dnV5RPRs0JdHfUR.RMqgintNS0Y76C5gg5NRydPcf0.JtBe', NULL, 'cnlgczKwKT', '2017-11-19 14:09:42', '2017-11-19 14:09:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film_comments`
--
ALTER TABLE `film_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_comments_film_id_foreign` (`film_id`),
  ADD KEY `film_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `film_genres`
--
ALTER TABLE `film_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_genres_film_id_foreign` (`film_id`),
  ADD KEY `film_genres_genre_id_foreign` (`genre_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `film_comments`
--
ALTER TABLE `film_comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `film_genres`
--
ALTER TABLE `film_genres`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `film_comments`
--
ALTER TABLE `film_comments`
  ADD CONSTRAINT `film_comments_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `film_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `film_genres`
--
ALTER TABLE `film_genres`
  ADD CONSTRAINT `film_genres_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `film_genres_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
