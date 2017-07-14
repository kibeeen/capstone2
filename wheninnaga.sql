-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2017 at 10:45 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wheninnaga`
--

-- --------------------------------------------------------

--
-- Table structure for table `avatars`
--

CREATE TABLE `avatars` (
  `avatar_id` int(11) NOT NULL,
  `avatar_thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `avatars`
--

INSERT INTO `avatars` (`avatar_id`, `avatar_thumb`) VALUES
(1, '/uploads/!guest-avatars/1.jpg'),
(2, '/uploads/!guest-avatars/2.jpg'),
(3, '/uploads/!guest-avatars/3.jpg'),
(4, '/uploads/!guest-avatars/4.jpg'),
(5, '/uploads/!guest-avatars/5.jpg'),
(6, '/uploads/!guest-avatars/6.jpg'),
(7, '/uploads/!guest-avatars/7.jpg'),
(8, '/uploads/!guest-avatars/8.jpg'),
(9, '/uploads/!guest-avatars/9.jpg'),
(10, '/uploads/!guest-avatars/10.jpg'),
(11, '/uploads/!guest-avatars/11.jpg'),
(12, '/uploads/!guest-avatars/12.jpg'),
(13, '/uploads/!guest-avatars/13.jpg'),
(14, '/uploads/!guest-avatars/14.jpg'),
(15, '/uploads/!guest-avatars/15.jpg'),
(16, '/uploads/!guest-avatars/16.jpg'),
(17, '/uploads/!guest-avatars/17.jpg'),
(18, '/uploads/!guest-avatars/18.jpg'),
(19, '/uploads/!guest-avatars/19.jpg'),
(20, '/uploads/!guest-avatars/20.jpg'),
(21, '/uploads/!guest-avatars/21.jpg'),
(22, '/uploads/!guest-avatars/22.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blog_author`
--

CREATE TABLE `blog_author` (
  `author_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `category_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`category_id`, `name`, `category_desc`) VALUES
(1, 'ENTERTAINMENT', NULL),
(2, 'EAT & DRINK', NULL),
(3, 'TECHNOLOGY', NULL),
(4, 'SPORTS', NULL),
(5, 'TRAVEL & ADVENTURE', NULL),
(6, 'FASHION & BEAUTY', NULL),
(7, 'SHOPPING', NULL),
(8, 'HEALTH & FITNESS', NULL),
(9, 'LIFESTYLE', NULL),
(10, 'TRENDING & FEATURES', NULL),
(11, 'CONTEST & PROMOTIONS', NULL),
(12, 'BUSINESS', NULL),
(13, 'REVIEWS', NULL),
(14, 'NEWS', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `blog_comment_id` int(11) NOT NULL,
  `blog_post_id` int(11) DEFAULT NULL,
  `visitor_id` int(11) DEFAULT NULL,
  `comment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`blog_comment_id`, `blog_post_id`, `visitor_id`, `comment_id`) VALUES
(24, 40, 23, 2),
(25, 40, 23, 3),
(26, 40, 23, 4),
(27, 40, 23, 5),
(28, 40, 23, 6),
(29, 40, 23, 7),
(30, 40, 23, 8),
(31, 40, 23, 9),
(32, 40, 23, 10),
(33, 40, 29, 11),
(34, 40, 23, 12),
(35, 40, 40, 13),
(36, 17, 40, 14),
(37, 17, 40, 15),
(38, 17, 40, 16),
(39, 17, 40, 17),
(40, 17, 40, 18),
(41, 17, 40, 19),
(42, 17, 40, 20),
(43, 40, 41, 21),
(44, 40, 42, 22),
(45, 40, 42, 23),
(46, 23, 42, 24),
(47, 23, 42, 25),
(48, 23, 42, 26),
(49, 23, 42, 27),
(50, 5, 43, 28),
(51, 5, 43, 29),
(52, 5, 43, 30),
(53, 5, 47, 31),
(54, 5, 47, 32),
(55, 5, 47, 33),
(56, 5, 47, 34),
(57, 5, 47, 35),
(58, 5, 51, 36),
(59, 5, 51, 37),
(60, 5, 51, 38),
(61, 5, 54, 39),
(62, 5, 54, 40),
(63, 5, 54, 41),
(64, 5, 54, 42),
(65, 5, 54, 43),
(66, 5, 54, 44),
(67, 5, 54, 45),
(68, 20, 59, 46),
(69, 20, 59, 47),
(70, 20, 59, 48),
(71, 20, 59, 49),
(72, 20, 59, 50),
(73, 23, 59, 51),
(74, 5, 60, 52),
(75, 20, 60, 53),
(76, 20, 60, 54),
(77, 0, 60, 55),
(78, 0, 60, 56),
(79, 17, 60, 57),
(80, 17, 60, 58),
(81, 17, 60, 59),
(82, 17, 60, 60),
(83, 17, 61, 61),
(84, 17, 61, 62),
(85, 20, 62, 63),
(86, 40, 63, 64),
(87, 40, 63, 65),
(88, 40, 63, 66),
(89, 40, 63, 67),
(90, 40, 63, 68),
(91, 40, 63, 69),
(92, 40, 63, 70),
(93, 40, 63, 71),
(94, 40, 63, 72),
(95, 40, 64, 73),
(96, 40, 64, 74),
(97, 40, 64, 75),
(98, 40, 65, 76),
(99, 37, 66, 77),
(100, 37, 66, 78),
(101, 37, 67, 79),
(102, 37, 67, 80),
(103, 37, 68, 81),
(104, 37, 68, 82),
(105, 37, 69, 83),
(106, 37, 70, 84),
(107, 37, 70, 85),
(108, 37, 41, 86),
(109, 22, 79, 87),
(110, 22, 82, 88),
(111, 22, 79, 89),
(112, 41, 79, 90),
(113, 42, 102, 91),
(114, 46, 104, 92),
(115, 44, 109, 93),
(116, 41, 109, 94);

-- --------------------------------------------------------

--
-- Table structure for table `blog_images`
--

CREATE TABLE `blog_images` (
  `image_id` int(11) NOT NULL,
  `img_source` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subheading` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `article` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `date_created` varchar(255) NOT NULL,
  `time_created` varchar(255) NOT NULL,
  `date_published` varchar(255) DEFAULT NULL,
  `time_published` varchar(255) DEFAULT NULL,
  `month_published` varchar(255) DEFAULT NULL,
  `year_published` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `sponsored` tinyint(1) DEFAULT NULL,
  `recommended` tinyint(1) DEFAULT NULL,
  `comments_count` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `date_modified` varchar(255) DEFAULT NULL,
  `time_modified` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `denied` tinyint(1) DEFAULT NULL,
  `admin_remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`blog_id`, `title`, `subheading`, `thumbnail`, `article`, `author_id`, `date_created`, `time_created`, `date_published`, `time_published`, `month_published`, `year_published`, `featured`, `enabled`, `sponsored`, `recommended`, `comments_count`, `views`, `date_modified`, `time_modified`, `category_id`, `approved`, `denied`, `admin_remarks`) VALUES
(5, 'The Rooftop Food Park is Your Next Foodie Destination', 'If you’re a foodie in 2017, you probably see food parks as a slice of heaven.', '/uploads/admin/patch.jpg', '<p>Not that we&rsquo;re blaming you, because what&rsquo;s not to love about a place with different food selections&mdash;perfect for those who either want to try everything or are just plainly indecisive! With the rise of this trend in the foodie scene, a lot of food parks had recently sprung up in the Metro, sporting different concepts to attract more people. And for the sake of millennials, most of these food parks are made to be perfectly Instagrammable! We&rsquo;ve seen food parks outdoors and in open spaces, or indoors and air-conditioned. We&rsquo;ve seen some with garage settings, with the stalls either being in food trucks or container vans. We&rsquo;ve seen some either occupying a stretch of the street or with multi-levels. But this time, we&rsquo;re bringing you to&hellip;a food park at the rooftop! Wait, what? The Rooftop Food Park in Quezon City is located at the top of a vacant building. The entire first floor is allocated for parking, which is great news for those with cars because you don&rsquo;t have to squeeze your car into some eerie alley. And when you climb up , voila! A huge food park is set to welcome you. One of the good things about food parks is that food is inexpensive. The Rooftop Food Park takes this to another level as their food are super extra affordable&mdash;yet really delicious and satisfying! Check out some of our favorites: This 150 pesos burger and fries combo from Burgers on Deck makes us hungry every time we look at it! We&rsquo;re suckers for both the nitrogen food fad and coffee, which is why we&rsquo;re in love with Nitro 7 Coffee and Tea Bar&rsquo;s Nitrogen Coffee. Definitely the best study buddy and costs only 120 pesos!</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;<img src=\"/capstone2/images/mi_gao.jpg\" /></p>', 3, 'July 03, 2017', '3:30 AM', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 19, 22, 'July 06, 2017', '04:41 PM', 12, 1, 0, NULL),
(17, '13 Ways Grab Has Made Life Easier for Filipinos', 'Iam a sub heading', '/uploads/admin/grab-taxi.jpg', '<h1><strong>1. Uber gets authorized to operate in NAIA&nbsp; -EDITED</strong></h1>\r\n<p>&nbsp;</p>\r\n<p><img src=\"/capstone2/images/save2.jpg\" width=\"564\" height=\"188\" /></p>\r\n<blockquote>\r\n<p>There was a time when&nbsp;<em>balikbayans&nbsp;</em>returning home from abroad need to grapple with the airport taxis charging sky-high rates that reached thousands.&nbsp;Grab has stepped up its game with Grab booths &mdash; booths are available in all terminals to make sure Grab vehicles are accessible to travellers even when they don&rsquo;t have smartphones or mobile data. Now,&nbsp;<em>balikbayans&nbsp;</em>and tourists&nbsp;can experience an affordable, safe, and convenient ride home.</p>\r\n</blockquote>\r\n<h3>&nbsp;</h3>\r\n<h2><strong>2. GrabExpress offers a way for people to deliver goods</strong></h2>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-7/\" rel=\"attachment wp-att-271872\"><img class=\"aligncenter size-full wp-image-271872\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-7.jpeg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s3.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-7.jpeg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-7-300x170.jpeg 300w\" alt=\"Grab Anniversary 7\" width=\"720\" height=\"407\" /></a></p>\r\n<p><code>GrabExpress</code> is a godsend for those who need to deliver something. It&rsquo;s significantly more affordable than booking a <span style=\"text-decoration: line-through;\">GrabCa</span>r and works on demand, meaning your parcel will get picked up immediately and delivered straight to your recipient. This is perfect for those with online businesses, or when you forget something at home.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>3. GrabTrike let people get tricycles on demand</strong></p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/enjoy-free-grabtricycle-rides-around-pioneer-mandaluyong-til-april-5-todanato/grab-tricycle/\" rel=\"attachment wp-att-260704\"><img class=\"aligncenter size-full wp-image-260704\" src=\"http://s3.wheninmanila.com/wp-content/uploads/2017/03/Grab-Tricycle-e1490747098781.jpeg\" alt=\"Grab Tricycle\" width=\"750\" height=\"563\" /></a></p>\r\n<p>Sometimes a tricycle is the only mode of transportation available. And if that&rsquo;s the case, everyone is scrambling to get one.&nbsp;In Pampanga, Grab offers GrabTrike, where locals and tourists can get around the country&rsquo;s food capital in a fast, reliable, and affordable way. For a limited time, residents and employees working in Mandaluyong got free GrabTrikes with the push of a button!</p>\r\n<p>&nbsp;</p>\r\n<h4><strong>4. Need to see the skies? GrabHeli is for you</strong></h4>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grabheli-2/\" rel=\"attachment wp-att-271875\"><img class=\"aligncenter size-full wp-image-271875\" src=\"http://s2.wheninmanila.com/wp-content/uploads/2017/07/GrabHeli-2.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/GrabHeli-2.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/GrabHeli-2-300x200.jpg 300w, //www.wheninmanila.com/wp-content/uploads/2017/07/GrabHeli-2-284x190.jpg 284w\" alt=\"GrabHeli 2\" width=\"720\" height=\"480\" /></a></p>\r\n<p>If GrabCar is not enough, you can choose to travel in style with GrabHeli, a pre-booking helicopter service. For P3,888, a person can board a chopper and take an aerial tour of Makati, Bonifacio Global City, and Pasay. It&rsquo;s too bad the service was discontinued because we&rsquo;d love to see the Manila sunset up in the sky.</p>\r\n<p>&nbsp;</p>\r\n<h5><strong>5. GrabRewards gives exciting perks</strong></h5>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-5/\" rel=\"attachment wp-att-271870\"><img class=\"aligncenter size-full wp-image-271870\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-5.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-5.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-5-300x108.jpg 300w\" alt=\"Grab Anniversary 5\" width=\"720\" height=\"258\" /></a></p>\r\n<p>Apart from getting to our destination safely and comfortably, we also get rewards with GrabRewards, which we can use to redeem rewards like discounts on our next ride, and discounts and freebies in restaurants, services, and more! Your rewards points also classify you as either Member, Silver, Gold, and Platinum, which has its own perks like priority access to new features or prioritized bookings!</p>\r\n<p>&nbsp;</p>\r\n<h6><strong>6. GrabShare lets users save on fares</strong></h6>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-4/\" rel=\"attachment wp-att-271869\"><img class=\"aligncenter size-full wp-image-271869\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-4.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s3.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-4.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-4-300x165.jpg 300w\" alt=\"Grab Anniversary 4\" width=\"720\" height=\"396\" /></a></p>\r\n<p>Those who want to have the Grab experience for less can try GrabShare, which lets users carpool with another passenger for up to 30% less than what they would pay for in a GrabCar. It&rsquo;s also good for traffic and carbon footprint, because it further decreases the number of people and cars on the road!</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>7. GrabCar offered rides with animal ears</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/score-a-free-ride-with-grabtaxis-grabarkada-character-car-trio-as-part-of-grabtaxi-philippines-first-anniversary/grab-taxi-mr-fox/\" rel=\"attachment wp-att-135642\"><img class=\"aligncenter size-full wp-image-135642\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2014/08/Grab-Taxi-Mr-Fox.jpg\" alt=\"Grab-Taxi-Mr-Fox\" width=\"600\" height=\"400\" /></a></p>\r\n<p>If you&rsquo;re into cute stuff, you probably know Grab&rsquo;s cars with cute animal ears. There&rsquo;s the cat, the rabbit, and the bear cars. It&rsquo;s a great experience riding it on the road, especially when drivers and pedestrians are looking and taking pictures. They&rsquo;re quite the rare Pokemon, but worth it when you catch them.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>8. GrabPay Credits for cashless payment without debit or credit cards</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-3/\" rel=\"attachment wp-att-271868\"><img class=\"aligncenter size-full wp-image-271868\" src=\"http://s2.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-3.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s3.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-3.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-3-300x108.jpg 300w\" alt=\"Grab Anniversary 3\" width=\"720\" height=\"258\" /></a></p>\r\n<p>Grab is the first ride-hailing mobile app to offer cash payments, and now they&rsquo;re making it easier for users to book rides. Grabpay Credits lets users experience cashless payments even without a debit or credit card. It&rsquo;s a prepaid mobile plan, and can be availed of in partner banks (online and over-the-counter) and establishments.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>9. OpenTraffic can improve traffic for 620 million commuters across Southeast Asia</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-2/\" rel=\"attachment wp-att-271867\"><img class=\"aligncenter size-full wp-image-271867\" src=\"http://s3.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-2.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-2.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-2-300x181.jpg 300w\" alt=\"Grab Anniversary 2\" width=\"720\" height=\"435\" /></a></p>\r\n<p>Grab partnered with the World Bank and Southeast Asian governments for OpenTraffic, an easy-to-use traffic data platform that aggregates anonymized driver GPS data from all the cities Grab operates in. Traffic statistics are shown in real-time, which means governments can look and see how to address transport problems affecting over 620 million residents in Southeast Asia.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>10. Grab Driver Academy trains drivers to give the best service</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/print-57/\" rel=\"attachment wp-att-271866\"><img class=\"aligncenter size-full wp-image-271866\" src=\"http://s2.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary--300x100.jpg 300w\" alt=\"Print\" width=\"720\" height=\"239\" /></a></p>\r\n<p>To ensure the safety of passengers, Grab enrolls their drivers in the Grab Driver Academy, which has first aid training from Red Cross, a safety driving seminar from Honda Safety Driving Center, and customer service and hospitality training from John Robert Powers. If ever you&rsquo;re wondering why your Grab drivers are polite and great at what they do, it&rsquo;s because of the Grab Driver Academy!</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-9/\" rel=\"attachment wp-att-271874\"><img class=\"aligncenter size-full wp-image-271874\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-9.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s2.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-9.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-9-300x189.jpg 300w\" alt=\"Grab Anniversary 9\" width=\"720\" height=\"453\" /></a></p>\r\n<p>To celebrate its fifth anniversary, Grab held the first-ever Grab Green Light Awards, which recognized 25 exceptional drivers, employees, peers, and passengers.</p>\r\n<p>To experience the comfort and convenience of Grab, download the app on the Google Play Store or the App Store.</p>', 3, 'July 05, 2017', '10:14 AM', 'July 09, 2017', '11:35 PM', 'July', '2017', 0, NULL, NULL, NULL, NULL, 4, NULL, NULL, 11, 1, 0, NULL),
(20, 'Sweet CEO Or Social Media \'Hokage\'? Netizen Accuses Xian Gaza Of', 'Well, that escalated quickly', '/uploads/admin/fraud 640.jpg', '<p>By now, you must have at least heard about Xian Gaza, an entrepreneur who&rsquo;s recently become the talk of the town, thanks to his lavish display of affection towards actress&nbsp;<a href=\"http://fhm.com.ph/tag/Erich-Gonzales\" target=\"_blank\" rel=\"noopener\">Erich Gonzales</a>,&nbsp;whom he asked out via&nbsp;a billboard proposal.</p>\r\n<p><iframe id=\"instagram-embed-1\" class=\"instagram-media instagram-media-rendered\" style=\"background: #ffffff; border: 1px solid #dbdbdb; margin: 1px 1px 12px; max-width: 658px; width: calc(100% - 2px); border-radius: 4px; box-shadow: none; display: block; padding: 0px;\" src=\"https://www.instagram.com/p/BV__yjdjMmH/embed/?cr=1&amp;v=7&amp;wp=658#%7B%22ci%22%3A1%2C%22os%22%3A472747.99%7D\" height=\"886\" frameborder=\"0\" scrolling=\"no\" data-instgrm-payload-id=\"instagram-media-payload-1\"></iframe></p>\r\n<p>\r\n<script async=\"\" src=\"//platform.instagram.com/en_US/embeds.js\"></script>\r\n</p>\r\n<p>\r\n<script async=\"\" src=\"//platform.instagram.com/en_US/embeds.js\"></script>\r\n</p>\r\n<p>His controversial proposal went viral and netizens have mixed reactions. Some praised Gaza for the standout effort, while others thought the stunt was a creepy move that put&nbsp;unfair pressure on Erich since it was done publicly. The latter even deemed it was a boastful representation of male entitlement.</p>\r\n<p>Concurrently, a netizen, Dewanie Catapang, has accused Gaza as nothing more than a scammer.</p>\r\n<p>According to Catapang\'s Twitter posts, people should be more discerning of the entrepreneur whom she referred to as a &ldquo;<em>Hokage,</em>&rdquo; a term that became popular because of the anime series&nbsp;<em>Naruto</em>&nbsp;and is now used&nbsp;to describe someone who&nbsp;employs&nbsp;&ldquo;ninja moves&rdquo; to hook up with ladies.</p>\r\n<p>&nbsp;</p>', 3, 'July 09, 2017', '06:36 PM', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 8, 7, 'July 09, 2017', '07:27 PM', 14, 1, 0, NULL),
(22, 'San Miguel Confirms It\'s in Talks to Acquire Stake in BMW Distributor in PH', 'Conglomerate mulls possible investment despite looming higher taxes on luxury cars', '/uploads/admin/BMW-3.jpg', '<p>Diversified conglomerate San Miguel Corp. (SMC) has confirmed it is in discussions with Jose Alvarez, chairman and principal owner of Asian Carmakers Corp. (ACC), for a possible investment in the exclusive distributor for BMW cars in the Philippines. Based in Germany, BMW is considered the world&rsquo;s leading premium car maker.</p>\r\n<p>In a disclosure to the Philippine Stock Exchange (PSE) on July 6, San Miguel&rsquo;s corporate information officer Ferdinand K. Constantino said: &ldquo;We confirm that San Miguel Corp. is in talks with Palawan Governor and Asian Carmakers Corp. for an investment by the Company in the importation, distribution and servicing of BMW vehicles in the country, as advised by Mr. Ramon S. Ang, president and chief operating officer.&rdquo;</p>\r\n<p>The disclosure was in reaction to news reports that Ang was invited by Alvarez to acquire a majority equity stake in ACC. The reports also mentioned that while a definitive agreement may be finalized within the month, Ang, a well-known car collector, has already assumed the presidency of Asian Carmakers.</p>\r\n<p>&nbsp;</p>\r\n<p>&ldquo;An appropriate disclosure shall be made to the Exchange in the event a definitive agreement is concluded for the said contemplated investment,&rdquo; SMC said.&nbsp;</p>\r\n<p>ACC has been the official importer and service provider of BMW cars in the country since 1993. In 2015, the company reported net sales of Php2.3 billion and earned a net income of Php84.8 million, more than double Php36.9 million the previous year.&nbsp;It is just one of the many businesses in the Philippines and abroad of Alvarez who was considered the richest elected official in 2014, according to a TV report in GMA Network.</p>\r\n<p>Ang and Alvarez&rsquo;s deal come in the midst of the government&rsquo;s plans to increase higher excise taxes as part of the Duterte administration&rsquo;s Tax Reform for Acceleration and Inclusion (TRAIN). A version of the tax packaged passed by the House of Representatives, House Bill (HB) Number 5636, in May, imposes steep tax hikes on expensive luxury vehicles.</p>\r\n<p>Currently, cars with a net manufacturer or importer&rsquo;s selling price of over Php2.1 million are subject to tax of Php512,000 plus 60 percent in excess of Php2.1 million. HB 5636 increases these rates to Php824,000 plus 100 percent of the excess over Php2.1 million for cars with net price of between more than Php2.1 million and Php3.1 million. For cars with net price of over Php3.1, the rates will rise to PhpP1.8 million plus 120 percent of the excess over Php3.1 million.</p>\r\n<p>Applying the proposed tax rates on the car maker&rsquo;s least expensive model in the Philippines (BMW 2 Series Active Tourer which retails for Php2.3 million) and most expensive model (BMW X6 which sells for Php13.54 million),&nbsp;<em>Entrepreneur Philippines</em>&nbsp;estimates that the excise taxes on those models will rise by between 60 percent and almost a hundred percent.</p>\r\n<p>The sharp rise in excise taxes especially on luxury cars has prompted their importers to lobby hard for more modest tax increases, worried that the proposed tax rates may hurt demand for luxury vehicles and trigger a slump in sales.</p>\r\n<p>But Department of Finance (DOF) officials say that other countries&rsquo; experiences belie fears that higher excise taxes automatically lead to lower car sales. &ldquo;In Malaysia, luxury car sales grew by 3.9 percent in 2016, while in Indonesia, the luxury car manufacturer BMW recently expanded its model list and local car assembly, both for the domestic Indonesian and export markets, because of high demand despite the high tax rates,&rdquo; said the DOF in a statement last month.&nbsp;<em>With additional research by Pauline Macaraeg</em></p>', 3, 'July 09, 2017', '07:44 PM', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 3, 11, 'July 09, 2017', '07:55 PM', 14, 1, 0, NULL),
(23, 'Injap Sia\'s DoubleDragon Is Selling New 7-Year Bonds That Pay 6.09% p.a.', 'The bond offer lasts until July 13 and requires a minimum investment of Php50k', '/uploads/admin/Double-Dragon-3.jpg', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/capstone2/uploads/blog_images/Double-Dragon-3.jpg\" /></p>\r\n<p>Real estate developer DoubleDragon Properties Corp. is offering up to Php9.7 billion worth of 7-year fixed-rate retail bonds that pay an annual coupon rate of 6.0952 percent.</p>\r\n<p>Proceeds from the offer will be used to finance DoubleDragon&rsquo;s core real estate projects for 2017 and 2018. Among these projects include the construction of 10-13 CityMalls, its chain of community shopping centers, as well as the acquisition of 15-20 sites for future CityMall developments. The company will also use the funds for the construction of DD Meridian Park near the SM Mall of Asia and Jollibee Tower at the Ortigas central business district.</p>\r\n<p>The retail bonds&rsquo; coupon rate is higher than that of the latest-issued 7-year Treasury bond, which stood at 4.5 percent according to data from the Bangko Sentral ng Pilipinas. It is also much higher than interest rates of time deposits lasting over two years, which average at 2.9 percent.</p>\r\n<p>However, investments in corporate retail bonds are riskier compared to bank deposits, which are insured by the government. Interested investors are encouraged to seek professional financial advice before purchasing retail bonds.</p>\r\n<p>DoubleDragon is headed by Edgar &ldquo;Injap&rdquo; Sia II, the founder of fast-food chain Mang Inasal and the youngest Filipino dollar billionaire according to US-based publication&nbsp;<em>Forbes</em>. As of end-May, the company has opened 15 CityMalls and has acquired 41 more sites for future mall developments. It is aiming to have a network of 30 operational CityMalls by the end of the year and to expand its leasable portfolio to one million square meters by 2020.</p>\r\n<p>The company&rsquo;s revenues hit Php1.3 billion as of end-2016, a 66.9-percent increase from the year before. DoubleDragon was also recognized last February for its stock price rising by 2,500 percent from its listing in April 2014. According to US-based media firm&nbsp;<em>Bloomberg</em>, its rapid ascent bested 460 other Asian property companies valued at least $500 million.</p>\r\n<p>However, the stock fell 21.5 percent as of end-June 2017 from a year ago, one of the worst performing among listed companies owned by Philippine billionaires in the&nbsp;<em>Forbes</em>&nbsp;list.</p>\r\n<p><strong>Related story:&nbsp;</strong><a href=\"http://www.entrepreneur.com.ph/news-and-events/how-are-ph-billionaires-faring-under-duterte-a00200-20170703\"><strong>How Are PH Billionaires Faring Under Duterte?</strong></a><strong>&nbsp;</strong></p>\r\n<p>Interested investors can purchase the retail bonds for a minimum of Php50,000. Additional placements can be made in increments of Php10,000. The offer period began on July 7 and will last until July 13. The retail bonds will be issued on July 21.</p>\r\n<p>This bond offering serves as the second tranche of DoubleDragon&rsquo;s Php15-billion bond shelf registration.&nbsp;<a href=\"http://www.entrepreneur.com.ph/news-and-events/lend-to-injap-sia-and-earn-6-p-a-for-the-next-10-years-a36-20161202\">The company issued the first tranche last December</a>, where the company sold Php5.3-billion worth of 10-year retail bonds. The first tranche of 10-year bonds paid a coupon rate of only 5.97 percent p.a. Just like the first tranche, this offering received a credit rating of PRS Aa from the Philippine Rating Services Corp., which means the company has a &ldquo;strong capacity to meet its financial commitments.&rdquo; Those interested are advised to read the&nbsp;<a href=\"http://www.doubledragon.com.ph/disclosures/popup/174\">offer supplement</a>&nbsp;for more details.</p>\r\n<p>BDO Capital &amp; Investment Corp., RCBC Capital Corp. and Maybank ATR Kim Eng serve as the offer&rsquo;s joint issue managers. They also serve as its joint lead underwriters and joint bookrunners together with BPI Capital Corp.</p>', 3, 'July 10, 2017', '02:39 AM', 'July 10, 2017', '02:40 AM', 'July', '2017', 1, NULL, NULL, NULL, 5, 5, 'July 10, 2017', '02:42 AM', 12, 1, 0, NULL),
(37, '78 Of The Best And Worst Superhero Movies\' Ranked!', 'It\'s an MCU versus DCEU battle royale. Where will your favorite movies land?', '/uploads/admin/superheroes.jpg', '<p>Now we&rsquo;ve done it. We&rsquo;ve ranked all superhero movies based on American comics from 78 to numero uno. It was a huge, heroic, Herculean task, but someone had to do it. I mean we all know that the&nbsp;<a href=\"http://www.fhm.com.ph/tag/marvel-cinematic-universe\" target=\"_blank\" rel=\"noopener\">MCU</a>&nbsp;is kicking the&nbsp;<a href=\"http://www.fhm.com.ph/tag/dc\" target=\"_blank\" rel=\"noopener\">DCEU</a>&rsquo;s ass, but how badly? And is&nbsp;<em><a href=\"http://www.fhm.com.ph/lifestyle/entertainment/wonder-woman-is-heroine-chic-fashionable-in-a-time-when-she-is-needed-most-a19-20170601\" target=\"_blank\" rel=\"noopener\">Wonder Woman</a>&rsquo;s</em>&nbsp;stellar score on Rotten Tomatoes enough to propel her to the top of the list? Read on, and you&rsquo;ll know.</p>\r\n<p>For starters, we all know<em>&nbsp;<a href=\"http://www.fhm.com.ph/lifestyle/entertainment/batman-v-superman-in-defense-of-zack-snyder-a249-20160403-lfrm\" target=\"_blank\" rel=\"noopener\">Batman v Superman</a>&nbsp;</em>sucks. But how about&nbsp;<em>BvS</em>&nbsp;of another sort? Like Tim Burton&rsquo;s&nbsp;<em>Batman</em>&nbsp;versus Richard Donner&rsquo;s&nbsp;<em>Superman&mdash;</em>which is better? Or if<em>&nbsp;<a href=\"http://www.fhm.com.ph/tag/civil-war\" target=\"_blank\" rel=\"noopener\">Civil War</a></em>&nbsp;is more your thing, how about&nbsp;<em>Iron Man</em>&nbsp;versus&nbsp;<em>Captain America: The First Avenge</em>r? Which is the greatest&nbsp;<a href=\"http://www.fhm.com.ph/tag/batman\" target=\"_blank\" rel=\"noopener\">Batman&nbsp;</a>movie of all time? Christopher Nolan&rsquo;s or Burton&rsquo;s? Which is the worst?&nbsp;<a href=\"http://www.fhm.com.ph/tag/zach-snyder\" target=\"_blank\" rel=\"noopener\">Zack Snyder</a>&rsquo;s or Joel Schumacher&rsquo;s? Who would win in a movie fight?&nbsp;<em>Deadpool</em>&nbsp;or&nbsp;<em>Logan</em>? Who has more movies in the Top 20&mdash;the MCU or the DCEU? How bad exactly is&nbsp;<em>Green Lantern</em>? And can someone please sort through the giant clusterf**k that is the&nbsp;<em>X-Men</em>&nbsp;franchise?</p>\r\n<p class=\"feed\"><img src=\"/capstone2/uploads/blog_images/superheroes.jpg\" /></p>\r\n<div class=\"sns-feed\">\r\n<div class=\"sns-feed-container\">\r\n<div class=\"sns-hex\">&nbsp;</div>\r\n<div class=\"sns-off\">\r\n<div class=\"sns-count-container\"><span class=\"sns-count\">&nbsp;</span></div>\r\n</div>\r\n<div class=\"sns-cancel\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"sns-backdrop\">&nbsp;</div>\r\n<p>Of course, to keen-eyed movie and comics nerds, there are more superhero movies out there than are on this list, but we refined our list based on the following rules&hellip;</p>\r\n<p>1. The list starts with&nbsp;<em>Superman</em>&nbsp;(1978). That&rsquo;s the one with Christopher Reeve, in case you&rsquo;re wondering. This is the moment in cinematic history when superhero movies began to matter. Wikipedia even describes it as the first modern superhero movie.</p>\r\n<p>2. No TV movies. Sorry Bill Bixby, those adorable&nbsp;<em>The Incredible</em>&nbsp;<em>Hulk</em>&nbsp;TV movies&mdash;still the iconic Hulk, if you ask us&mdash;aren&rsquo;t on this list.</p>\r\n<p>3. No animated movies. That means no&nbsp;<em>Big Hero 6</em>, no&nbsp;<a href=\"http://www.fhm.com.ph/tag/pixar\" target=\"_blank\" rel=\"noopener\">Pixar</a>&rsquo;s&nbsp;<em>Incredibles</em>, and no Batgirl on Batman action in&nbsp;<em>Batman: The Killing Joke</em>.</p>\r\n<p>4. Superhero movies based on comics only. We didn&rsquo;t include superhero movies that exist only in movies, like&nbsp;<em>Chronicle</em>, or<em>&nbsp;Darkman</em>, or&nbsp;<a href=\"http://www.fhm.com.ph/tag/shaq\" target=\"_blank\" rel=\"noopener\">Shaquille O&rsquo;Nei</a>l as Steel (shudder).</p>\r\n<p>5. Superheroes only. Not all movies based on comics are superhero movies. We didn&rsquo;t put&nbsp;<em>V for Vendetta</em>&nbsp;on this list, or&nbsp;<em>The 300</em>, even though they&rsquo;re based on popular graphic novels. That also means there&rsquo;s absolutely no&nbsp;<em>Howard the Duck</em>. And in case you&rsquo;re wondering, Teenage Mutant Ninja Turtles aren&rsquo;t superheroes, they&rsquo;re mutant ninjas. Duh.</p>\r\n<p>6. American superheroes only. No&nbsp;<a href=\"http://www.fhm.com.ph/tag/darna\" target=\"_blank\" rel=\"noopener\">Darna</a>&nbsp;on this list, sorry&nbsp;<a href=\"http://www.fhm.com.ph/tag/angel-locsin\" target=\"_blank\" rel=\"noopener\">Angel Locsin</a>&nbsp;fans. That&rsquo;s a list for another feature, another day...</p>\r\n<p><em>Note: Percentage score is the movie&rsquo;s Rotten Tomatoes score</em></p>\r\n<p><strong>78.&nbsp;<em>Catwoman</em>&nbsp;(2004) 9%</strong></p>\r\n<p>Sometimes a movie is so bad we want to pretend it never happened. Can we all agree never to talk about&nbsp;<em>Catwoman</em>&nbsp;again?&nbsp;<a href=\"http://www.fhm.com.ph/tag/Oscar\" target=\"_blank\" rel=\"noopener\">Oscar</a>&nbsp;Award-winner Halle Berry would be grateful.</p>\r\n<p><strong>77.&nbsp;<em>Batman &amp; Robin</em>&nbsp;(1997) 10%</strong></p>\r\n<p>It&rsquo;s not easy to ruin the Batman franchise, but George Clooney somehow managed to do it. Of course, he&rsquo;s not the only one to blame. Arnold Schwarzenegger, Uma Thurman, and Alicia Silverstone were all guilty of bad acting. Thanks, director Schumacher for this giant turd of a movie.</p>\r\n<p><strong>76.&nbsp;<em>Elektra</em>&nbsp;(2005) 10%</strong></p>\r\n<p>There was a time when Jennifer Garner as the assassin named Elektra seemed to make sense, especially hot on the heels of Ben Affleck&rsquo;s&nbsp;<em><a href=\"http://www.fhm.com.ph/tag/daredevil\" target=\"_blank\" rel=\"noopener\">Daredevil</a></em>. We don&rsquo;t know what they were smoking.</p>\r\n<p><iframe id=\"widget16\" src=\"https://www.youtube.com/embed/lJsYp0oWAgk?enablejsapi=1\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></p>\r\n<p><strong>75.&nbsp;<em>Superman IV</em>&nbsp;(1987) 12%</strong></p>\r\n<p>This is how to kill a successful movie franchise: make a sequel that is so terrible that no one wants to make or watch another movie from the series ever again.&nbsp;<em><a href=\"http://www.fhm.com.ph/lifestyle/entertainment/superman-kill-count-movies\" target=\"_blank\" rel=\"noopener\">Superman</a>&nbsp;IV</em>&nbsp;had Superman versus a supercomputer. See what we did there?</p>\r\n<p><strong>74.&nbsp;<em>The Crow: City of Angels</em>&nbsp;(1996) 12%</strong></p>\r\n<p>Everyone said you can&rsquo;t make another&nbsp;<em>The Crow</em>&nbsp;movie without Brandon Lee. They were right.</p>\r\n<p><strong>73.&nbsp;<em>Fantastic Four&nbsp;</em>(2015) 9%</strong></p>\r\n<p>A heroic attempt to update the biggest underperformer in the Marvel Cinematic Universe, and it fails miserably. At least the previous Fantastic Four movies had Jessica Alba.</p>\r\n<p><strong>72.&nbsp;<em>Supergirl</em>&nbsp;(1984) 7%</strong></p>', 3, 'July 10, 2017', '09:11 PM', 'July 10, 2017', '09:23 PM', 'July', '2017', 1, NULL, NULL, NULL, 10, 14, NULL, NULL, 10, 1, 0, NULL),
(40, 'Here\'s How to Score a Girl\'s Number With Confidence', 'Getting her digits is not as hard as you think', '/uploads/admin/nadine.jpg', '<p>In this day and age, asking for a girl&rsquo;s number has become a bit inessential. With social media paving the way for easy and instant communication with practically anyone in the world, it\'s no longer necessary to have someone&rsquo;s number to continue getting to know them.</p>\r\n<p>Then again, there\'s still something to be said about that particular rush of anticipation and accomplishment when a fella successfully asks and receives a pretty girl&rsquo;s coveted phone number&mdash;it\'s no wonder people still do it.</p>\r\n<p>Of course, just because you\'ve decided to go the old school route and ask for her digits doesn\'t mean you won\'t screw it up. If you want to learn how to do it right, check out the video below because the lovely ladies of Tanduay have decided to break it down and show us exactly how it\'s done:</p>\r\n<p><iframe id=\"widget2\" src=\"http://www.youtube.com/embed/n383-ziceUo?enablejsapi=1\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></p>', 3, 'July 11, 2017', '09:59 AM', 'July 11, 2017', '09:59 AM', 'July', '2017', 0, NULL, NULL, NULL, 17, 11, NULL, NULL, 10, 1, 0, NULL),
(41, 'Happy days and Homemade Chicken Inasal', 'One of the All-time Filipino Favorite!', '/uploads/admin/14304585404_418db9c302_b.jpg', '<p>I really have to learn how to balance my travel diaries to encompass more documentations of food. Whenever I go exploring in a new place, I seem to get so excited over the sights that I kind of forget to chronicle the food. It was no different for my Bacolod trip. You can in fact observe from both of my&nbsp;<a href=\"http://thetummytrain.com/2014/05/23/the-charm-of-things-old-and-new-in-bacolod/\" target=\"_blank\" rel=\"noopener\">previous</a>&nbsp;<a href=\"http://thetummytrain.com/2014/05/27/brief-explorations-of-two-unique-resorts-in-negros/\" target=\"_blank\" rel=\"noopener\">entries</a>&nbsp;that I don&rsquo;t have much in the way of food there.<br /><br />However I would call it a major mortal sin if one went to Bacolod without so much as a taste of its signature dish, the Bacolod Chicken Inasal. We had one inasal meal at the&nbsp;<em>Chicken House</em>&nbsp;while we were touring around Bacolod, and it was enough to spark my desire to make inasal here at home.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/capstone2/uploads/blog_images/14118532820_beddfb66b3_b.jpg\" /></p>\r\n<p>Just a little trivia: I like chicken a lot. I love fish even more but chicken is definitely number two on my list so I really enjoy trying out all sorts of chicken dishes like this one. Any new way to cook chicken is always a welcome addition to my repertoire.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/capstone2/uploads/blog_images/14246826051_be6bffc4da_b.jpg\" /><br /><br />Now this recipe is a super special one for me because for the first time in the history of&nbsp;<em>The Tummy Train</em>&nbsp;my mom actually helped me cook a dish! So actively involved was she in fact that even as I was getting ready to take photographs of the pretty piece of chicken&nbsp;<em>she chose</em>&nbsp;for me, she hurriedly ran over to give me a stalk of basil to add colour to the plate. (Good job, Mom!) This might come as a shock to some, but none of my family members actually&nbsp;<em>voluntarily</em>&nbsp;spend time with me in the kitchen, so imagine my surprise when my mother actually beat me to the grill! I guess she was as excited to test out this recipe as I was, raring to find out if this was going to be another keeper. Well whatever her reasons she made me really happy.&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/capstone2/uploads/blog_images/14304585404_418db9c302_b.jpg\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/capstone2/uploads/blog_images/14250125745_fc0654a73a_b.jpg\" /></p>\r\n<p>Oh, and the cherry on top? This Chicken Inasal is pretty darn good!<br /><span id=\"more-8153\"></span><br />If there&rsquo;s one thing I&rsquo;m really grateful for with the introduction of blogging into my life, it&rsquo;s that I am constantly motivated to try new things in the kitchen. Any other circumstance, I would&rsquo;ve wondered briefly how a dish&nbsp;was made and a little later just forget about it. It&rsquo;s always easier to tell yourself to buy something instead of to make it. If I didn&rsquo;t have this space to encourage me to explore my curiosity about food, I wouldn&rsquo;t have developed the habit of trying to duplicate dishes I like right in my own kitchen. I wouldn&rsquo;t have discovered how easy it was to make Chicken Inasal at home.<br /><br />And to think I used to have this strange notion that it involved some complex procedure to make!</p>\r\n<p><br />The Chicken Inasal is a grilled dish originating from the Visayas region of the Philippines, but since the&nbsp;<em>Mang Inasal</em>&nbsp;fastfood chain opened in many parts of the country the chicken inasal has become rather mainstream. It became sort of a phenomenon really, because Filipinos would line up in throngs back when it was newly introduced. I think that says a lot about the Filipino&rsquo;s love for barbecued chicken. Although the authenticity of the fastfood version is arguable, they still are partly&nbsp;responsible for exposing&nbsp;chicken inasal to the masses.<br /><br />Now back to the recipe, if you&rsquo;re wondering about the reddish/orange hue of the chicken, it&rsquo;s because for the marinade the inasal version uses a little something called&nbsp;<em>atsuete</em>&nbsp;seeds, known to the rest of the world as annatto seeds. These babies are a popular ingredient in Filipino cooking, responsible for many yummy local dishes that are richly orange in colour.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/capstone2/uploads/blog_images/s.jpg\" /></p>\r\n<blockquote>\r\n<p>Straight from the grill and onto the plate piping hot, place a side of garlic rice plus a bit of vinegar with some salt, garlic, and chilli in it and you have yourself a truly chicken inasal experience.</p>\r\n</blockquote>', 3, 'July 14, 2017', '03:52 AM', 'July 14, 2017', '01:12 PM', 'July', '2017', 0, NULL, NULL, NULL, 2, 8, NULL, NULL, 2, 1, 0, NULL),
(42, 'Ragnarok Online Philippinesâ€™ Relaunch', 'FAQs about Ragnarok Online Philippines', '/uploads/admin/4fV4SKO.jpg', '<p><img src=\"https://4.bp.blogspot.com/-sKdrgjgNAzg/WVNPfYbaRDI/AAAAAAAB134/CdnOB_VgUqMlotWFObO60PL-8CSx3VqTQCLcBGAs/s640/Ragnarok%2BOnline%2BPhilippines%2BOpen%2BBeta%2BTesting%2Bis%2BHere.jpg\" /></p>\r\n<p>Ragnarok PH CBT is Coming on June 2017!&nbsp;The Closed Beta Testing (CBT) of Ragnarok Online Philippines will happen in the middle of June 2017. This was announced in last Friday\'s Q&amp;A Session with no less than&nbsp;<em>Kamphee \"Ken\" Piromward</em>, Managing Director of Electronics Extreme, and&nbsp;<em>Johnny Paek</em>&nbsp;of Elite Global Sourcing.</p>\r\n<p><img src=\"https://s-media-cache-ak0.pinimg.com/564x/04/f7/9c/04f79c8e6a9674152eee0dc0b6653a46.jpg\" /></p>\r\n<p>The duo also answered questions from members of the media, bloggers, Guild Masters, and Ragnarok enthusiasts regarding the server settings and what to expect in the upcoming relaunch.</p>\r\n<p><img src=\"http://www.thetechnoclast.com/wp-content/uploads/2015/02/Ragnarok_2_001-1200x545_c.jpg\" /></p>\r\n<p>Here are some of the information that we got from the Question and Answer session with&nbsp;<em>Kamphee \"Ken\" Piromward&nbsp;</em>and&nbsp;<em>Johnny Paek</em>:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li><strong>Multi-Client (up to 5) will be allowed.</strong>&nbsp;This could mean that you can set up your shop in one client while grinding for materials in another client.&nbsp;</li>\r\n<li><strong>There will be no Ragial marketplace or RO Player Database (ROPD) bot roaming around to collect data.</strong>&nbsp;Selling and buying items will be done in the old-fashion way</li>\r\n<li><strong>There will be an anti-bot program from Finland.</strong>&nbsp;The system is protected by&nbsp;Protected By&nbsp;<em>EasyAntiCheat</em>. As of this writing, there are no solid proof of the existence of Bots in the Thailand servers.</li>\r\n<li><strong>It will be a Free-to-Play, Free-to-Win&nbsp;(F2P-FTW) server with no IMBA item in the cash shop.</strong>&nbsp;All Key-items could be dropped in game. All you need is teamwork and assiduity.</li>\r\n<li><strong>No VIP service.</strong>&nbsp;That would mean no monthly subscriptions.</li>\r\n<li><strong>Item mall will mostly consist of costumes.</strong>&nbsp;There will be some rental items but most items will be permanent.</li>\r\n<li>Rate of server is 1x (both experience and drop).&nbsp;</li>\r\n<li><strong>All items that used to be obtained via cash shop before (with the old publisher LUG) will be available in-game.</strong>&nbsp;Even Bubble Gums&nbsp;will be obtained from activities in-game. Again,&nbsp;all you need is teamwork and assiduity.</li>\r\n<li><strong>Support for the game will be via chat.</strong>&nbsp;Improved customer service and a real-time response is expected.</li>\r\n<li><strong>No instance dungeon (MVP).</strong>&nbsp;The game promotes equality of the players.</li>\r\n<li><strong>Top-up card will be available for players&rsquo; convenience.</strong>&nbsp;As long as you have access to sellers of top up cards or you own a credit card, you can purchase from the item mall.</li>\r\n<li><strong>There will be no IP restrictions.</strong>&nbsp;Anyone from anywhere can technically play at the new server. Old players who are overseas can still play the online game they love.</li>\r\n<li><strong>The game will be launched for PC version only.</strong>&nbsp;No native Mac support (unless there is Windows inside Mac) or mobile version. However, there is an \"official\" Ragnarok game already launched for mobile, this is not the same with what will be launched for PC this year.</li>\r\n<li><strong>There will be no double standards.</strong>&nbsp;GMs will have no access to in-game items and all GM items will be reviewed by the Thai publisher. The GMs function will be limited to player support.</li>\r\n<li><strong>Closed Beta Testing will be in the middle of June 2017 and the Open Beta Testing will be announced after the CBT once it&rsquo;s perfect.&nbsp;</strong>Pre-registration pahse for CBT is now ongoing, head on to the&nbsp;<strong><a href=\"https://ragnarokonline.com.ph/\">Ragnarok ONline PH official site</a></strong>&nbsp;to create your account.</li>\r\n<li><strong>Godly items.</strong>&nbsp;Godly items will be released soon.</li>\r\n<li>Guild allies will be allowed.&nbsp;</li>\r\n<li><strong>Server settings will be Revo-Classic.</strong>&nbsp;Philippine server will be very similar to the Thai server. As they say, where the joy and balance meets.&nbsp;</li>\r\n<li><strong>Guides.&nbsp;</strong>The publisher will provide basic quest information but monster information and monsters location is highly encouraged to be learned during the CBT.</li>\r\n<li><strong>There will be no simulator for a 7 vs 7 match in the game.</strong>Players are encouraged to join the real-life events that will be held in different parts of the country. On that same note,&nbsp;bring back Ragnarok World Championships!</li>\r\n<li><strong>There will be no instant job change.</strong>&nbsp;You have to do it the old way.</li>\r\n<li><strong>There will be two CBT servers.</strong>&nbsp;These will be known as Thor and Loki.</li>\r\n<li><strong>The server will start with Episode 1 with the basic 2-1 Class.&nbsp;</strong>2-2 Class will be released within 6 months and High Class within 1-2 years.</li>\r\n<li><strong>All monsters return to original spawn points.</strong>&nbsp;Ignore level differences between Player and Monster (Renewal Feature). Easier grinding, if we may say.</li>\r\n<li><strong>Guild war will be released In the first 3 weeks.</strong>&nbsp;Time to grind and build your levels after the CBT closes.</li>\r\n<li><strong>Custom Events For Philippines.</strong>&nbsp;There will be more details about this feature as we move forward.</li>\r\n</ul>\r\n<p>The Closed Beta Phase will kick-off in the middle of June this year with the soft launch and the full launch to take place once the major bugs have been worked out. The good news is, you don&rsquo;t have to wait until June in order to reserve your slot in the CBT servers as a pre-registration phase is already ongoing through the official&nbsp;<strong><a href=\"https://ragnarokonline.com.ph/\" rel=\"nofollow\">Ragnarok Online Philippines</a></strong>&nbsp;website, better hurry up and head to the site now if you want to register for CBT as the slots are assumed to be limited considering it will only be for Closed Beta Testing.</p>', 3, 'July 14, 2017', '12:42 PM', 'July 14, 2017', '01:12 PM', 'July', '2017', 0, NULL, NULL, NULL, 1, 4, NULL, NULL, 1, 1, 0, NULL),
(44, 'Monster Hunter: ', 'World Journeys to PS4 Early 2018', '/uploads/admin/maxresdefault.jpg', '<p><iframe src=\"https://www.youtube.com/embed/SXB2IHLm4m0\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p>The legendary series comes home! Team up with up to three other Hunters via drop-in / drop-out co-op and venture forth.</p>\r\n<p>Since the very first Monster Hunter game on PlayStation 2, our development team has been creating engaging, memorable gameplay experiences that capture the thrill of the hunt. Now, with Monster Hunter: World &mdash; just announced at the PlayStation E3 Press Conference! &mdash; we have something truly special we&rsquo;re excited to share with the PlayStation community. This newest game in the Monster Hunter series will transport you to a new world built with stunning visuals and a living, breathing ecosystem of interactive flora and fauna. And for the first time in series history, Monster Hunter: World will have a simultaneous global launch window and cross-region online multiplayer so that all PlayStation 4 and PlayStation 4 Pro users around the world can enjoy hunting together.</p>\r\n<h2>A New World</h2>\r\n<p>In Monster Hunter: World you take on the role of a hunter venturing to a new continent where you track down and slay ferocious beasts in heart-pounding battles. This new land and its diverse inhabitants play a critical role in each quest as you strategically use the surrounding environment including terrain, vegetation and wildlife to your advantage in battle or become hindered by the hazards they present. As a hunter, you must use your cunning and expertise to track and maneuver your targets throughout the intense, evolving battles.</p>\r\n<p><img src=\"https://c1.staticflickr.com/5/4256/34888129790_e1ee22fa20_z.jpg\" alt=\"MHWorld_E3Screen6\" /></p>\r\n<h2>Cooperative Multiplayer</h2>\r\n<p>Hunting monsters is no small feat. To even the odds against the formidable opponents you&rsquo;ll face, you can team up with up to three other hunters and cooperate to take down colossal threats. With flexible online drop-in functionality, you can start your quests solo, and, if your target is too daunting to take on single-handedly, simply hail for assistance from the global online community.</p>\r\n<p><img src=\"https://c1.staticflickr.com/5/4231/34888130390_2ef69621ff_z.jpg\" alt=\"MHWorld_E3Screen3\" /></p>\r\n<h2>Refined Gameplay</h2>\r\n<p>Our development team at Capcom Japan has spent more than 10 years honing a very satisfying set of gameplay systems, ranging from the purposeful combat mechanics of the flexible weapon options to the strategic crafting process that fuels you to tackle hunt after hunt. Weapons and armor are created using loot collected from fallen foes, which then motivate and prepare you for even bigger challenges. In Monster Hunter: World, we&rsquo;ve built upon that legacy even further and are very excited to bring that experience to PlayStation 4 players and see all the different ways you come up with to hunt the monsters in the new game early next year.</p>', 3, 'July 14, 2017', '12:50 PM', 'July 14, 2017', '12:58 PM', 'July', '2017', 0, NULL, NULL, NULL, 1, 8, 'July 14, 2017', '12:56 PM', 1, 1, 0, NULL);
INSERT INTO `blog_post` (`blog_id`, `title`, `subheading`, `thumbnail`, `article`, `author_id`, `date_created`, `time_created`, `date_published`, `time_published`, `month_published`, `year_published`, `featured`, `enabled`, `sponsored`, `recommended`, `comments_count`, `views`, `date_modified`, `time_modified`, `category_id`, `approved`, `denied`, `admin_remarks`) VALUES
(45, 'Tuitt Coding Bootcamp: A New Home', 'A New Home', '/uploads/admin/tuitt_logo.png', '<header class=\"entry-header\">\r\n<h1 class=\"entry-title\"><a href=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/\" rel=\"bookmark\">A New Home</a></h1>\r\n</header>\r\n<div class=\"entry-content\">\r\n<p>Tuitt Coding Bootcamp finally bids goodbye to its first home. The memories and good times shared at the quaint, sunny little place at the corner of Scout Madrinan and Scout Torillo will not be forgotten. But now, it&rsquo;s time to move on to bigger and brighter things!</p>\r\n<figure id=\"attachment_5571\" class=\"wp-caption alignnone\" data-shortcode=\"caption\"><img class=\"alignnone size-full wp-image-5571\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160525_230809_hdr.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160525_230809_hdr.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160525_230809_hdr.jpg?w=2216 2216w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160525_230809_hdr.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160525_230809_hdr.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160525_230809_hdr.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160525_230809_hdr.jpg?w=1024 1024w\" alt=\"20160525_230809_HDR\" data-attachment-id=\"5571\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/20160525_230809_hdr-3/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160525_230809_hdr.jpg?w=1108\" data-orig-size=\"4160,2340\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;2.4&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;LG-D855&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1464217689&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;3.97&quot;,&quot;iso&quot;:&quot;50&quot;,&quot;shutter_speed&quot;:&quot;0.0022831050228311&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;1&quot;}\" data-image-title=\"20160525_230809_HDR\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160525_230809_hdr.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160525_230809_hdr.jpg?w=1108?w=1024\" />\r\n<figcaption class=\"wp-caption-text\">Tuitt&rsquo;s first office at Centro Plaza Building</figcaption>\r\n</figure>\r\n<figure id=\"attachment_5572\" class=\"wp-caption alignnone\" data-shortcode=\"caption\"><img class=\"alignnone size-full wp-image-5572\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160623_201454.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160623_201454.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160623_201454.jpg?w=2216 2216w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160623_201454.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160623_201454.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160623_201454.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160623_201454.jpg?w=1024 1024w\" alt=\"20160623_201454\" data-attachment-id=\"5572\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/20160623_201454-2/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160623_201454.jpg?w=1108\" data-orig-size=\"4160,2340\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;2.4&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;LG-D855&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1466712893&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;3.97&quot;,&quot;iso&quot;:&quot;450&quot;,&quot;shutter_speed&quot;:&quot;0.083333333333333&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;1&quot;}\" data-image-title=\"20160623_201454\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160623_201454.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/20160623_201454.jpg?w=1108?w=1024\" />\r\n<figcaption class=\"wp-caption-text\">Inside the training room: this meticulously-made wall art</figcaption>\r\n</figure>\r\n<figure id=\"attachment_5578\" class=\"wp-caption alignnone\" data-shortcode=\"caption\"><img class=\"alignnone size-full wp-image-5578\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/a20160804_143215.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/a20160804_143215.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/a20160804_143215.jpg?w=2216 2216w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/a20160804_143215.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/a20160804_143215.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/a20160804_143215.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/a20160804_143215.jpg?w=1024 1024w\" alt=\"a20160804_143215\" data-attachment-id=\"5578\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/a20160804_143215-2/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/a20160804_143215.jpg?w=1108\" data-orig-size=\"4160,2340\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;2.4&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;LG-D855&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1470321135&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;3.97&quot;,&quot;iso&quot;:&quot;50&quot;,&quot;shutter_speed&quot;:&quot;0.033333333333333&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;1&quot;}\" data-image-title=\"a20160804_143215\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/a20160804_143215.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/a20160804_143215.jpg?w=1108?w=1024\" />\r\n<figcaption class=\"wp-caption-text\">Hand-made wall&nbsp;decors</figcaption>\r\n</figure>\r\n<p>On May 5, 2017, the bootcamp officially moved to a new place&mdash; located in this address:</p>\r\n<p><strong>3rd Floor Caswynn Building, No. 134 Timog Avenue, Sacred Heart, Quezon City</strong></p>\r\n<p><img class=\"alignnone size-full wp-image-5534\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9263.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9263.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9263.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9263.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9263.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9263.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9263.jpg 1200w\" alt=\"TuittLowRes-9263\" data-attachment-id=\"5534\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9263/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9263.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494592313&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9263\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9263.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9263.jpg?w=1108?w=1024\" /><img class=\"alignnone size-full wp-image-5533\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9250.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9250.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9250.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9250.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9250.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9250.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9250.jpg 1200w\" alt=\"TuittLowRes-9250\" data-attachment-id=\"5533\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9250/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9250.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494591959&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9250\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9250.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9250.jpg?w=1108?w=1024\" /></p>\r\n<p>The new venue is now bigger than the old one, and can house thrice as many students &mdash; up to 30 from the previous 10.</p>\r\n<p><img class=\"alignnone size-full wp-image-5532\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9236.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9236.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9236.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9236.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9236.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9236.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9236.jpg 1200w\" alt=\"TuittLowRes-9236\" data-attachment-id=\"5532\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9236/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9236.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494591710&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9236\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9236.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9236.jpg?w=1108?w=1024\" /><img class=\"alignnone size-full wp-image-5538\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9233.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9233.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9233.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9233.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9233.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9233.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9233.jpg 1200w\" alt=\"TuittLowRes-9233\" data-attachment-id=\"5538\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9233/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9233.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494591641&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9233\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9233.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9233.jpg?w=1108?w=1024\" /></p>\r\n<p>The transfer was an event in itself; full of laughs, inspirational talk, and food!</p>\r\n<p><img class=\"alignnone size-full wp-image-5548\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9284.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9284.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9284.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9284.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9284.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9284.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9284.jpg 1200w\" alt=\"TuittLowRes-9284\" data-attachment-id=\"5548\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9284/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9284.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494593094&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9284\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9284.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9284.jpg?w=1108?w=1024\" /><img class=\"alignnone size-full wp-image-5549\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9285.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9285.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9285.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9285.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9285.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9285.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9285.jpg 1200w\" alt=\"TuittLowRes-9285\" data-attachment-id=\"5549\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9285/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9285.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494593118&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9285\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9285.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9285.jpg?w=1108?w=1024\" /><img class=\"alignnone size-full wp-image-5551\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9343.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9343.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9343.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9343.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9343.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9343.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9343.jpg 1200w\" alt=\"TuittLowRes-9343\" data-attachment-id=\"5551\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9343/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9343.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494594590&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;28&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9343\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9343.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9343.jpg?w=1108?w=1024\" /><img class=\"alignnone size-full wp-image-5552\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9353.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9353.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9353.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9353.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9353.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9353.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9353.jpg 1200w\" alt=\"TuittLowRes-9353\" data-attachment-id=\"5552\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9353/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9353.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494594759&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;42&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9353\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9353.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9353.jpg?w=1108?w=1024\" /><img class=\"alignnone size-full wp-image-5553\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9368.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9368.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9368.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9368.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9368.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9368.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9368.jpg 1200w\" alt=\"TuittLowRes-9368\" data-attachment-id=\"5553\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9368/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9368.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494596064&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9368\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9368.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9368.jpg?w=1108?w=1024\" /></p>\r\n<p>The bootcamp&rsquo;s founder, Tomohisa Kato, or &ldquo;Kato-san&rdquo;, co-founder and&nbsp;CEO, Mary Shemuel Balaibo Unida, the instructors, and staff were all present during the ceremony. Other guests, including tuitt people&rsquo;s relatives, tuitt&rsquo;s supporters, service providers and students from the bootcamp&rsquo;s previous batches, also attended to witness the ribbon-cutting.<br /><img class=\"alignnone size-full wp-image-5557\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9258.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9258.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9258.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9258.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9258.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9258.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9258.jpg 1200w\" alt=\"TuittLowRes-9258\" data-attachment-id=\"5557\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9258/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9258.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494592178&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;38&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9258\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9258.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9258.jpg?w=1108?w=1024\" /><img class=\"alignnone size-full wp-image-5558\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9342.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9342.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9342.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9342.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9342.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9342.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9342.jpg 1200w\" alt=\"TuittLowRes-9342\" data-attachment-id=\"5558\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9342/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9342.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494594553&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;28&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9342\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9342.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9342.jpg?w=1108?w=1024\" /><img class=\"alignnone size-full wp-image-5556\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9253.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9253.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9253.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9253.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9253.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9253.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9253.jpg 1200w\" alt=\"TuittLowRes-9253\" data-attachment-id=\"5556\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9253/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9253.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494592003&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9253\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9253.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9253.jpg?w=1108?w=1024\" /><img class=\"alignnone size-full wp-image-5550\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9334.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9334.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9334.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9334.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9334.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9334.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9334.jpg 1200w\" alt=\"TuittLowRes-9334\" data-attachment-id=\"5550\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9334/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9334.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494594085&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9334\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9334.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9334.jpg?w=1108?w=1024\" /></p>\r\n<p>Kato-san and Shem-san gave a speech about how they founded the bootcamp. Then they thanked all the staff, students, and other people who stood by and supported their startup and made it a successful one at that.<br /><img class=\"alignnone size-full wp-image-5543\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9297.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9297.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9297.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9297.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9297.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9297.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9297.jpg 1200w\" alt=\"TuittLowRes-9297\" data-attachment-id=\"5543\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9297/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9297.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494593676&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;40&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9297\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9297.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9297.jpg?w=1108?w=1024\" /><img class=\"alignnone size-full wp-image-5544\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9323.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9323.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9323.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9323.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9323.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9323.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9323.jpg 1200w\" alt=\"TuittLowRes-9323\" data-attachment-id=\"5544\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9323/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9323.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494593938&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9323\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9323.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9323.jpg?w=1108?w=1024\" /></p>\r\n<p>And this marked Tuitt&rsquo;s another new beginning, as Kato-san and Shem-san cut the ribbon of the new office.<br /><img class=\"alignnone size-full wp-image-5561\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9310.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9310.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9310.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9310.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9310.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9310.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9310.jpg 1200w\" alt=\"TuittLowRes-9310\" data-attachment-id=\"5561\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9310/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9310.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494593809&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9310\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9310.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9310.jpg?w=1108?w=1024\" /><img class=\"alignnone size-full wp-image-5562\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9312.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9312.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9312.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9312.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9312.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9312.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9312.jpg 1200w\" alt=\"TuittLowRes-9312\" data-attachment-id=\"5562\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9312/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9312.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494593812&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9312\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9312.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9312.jpg?w=1108?w=1024\" /><img class=\"alignnone size-full wp-image-5563\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9314.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9314.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9314.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9314.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9314.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9314.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9314.jpg 1200w\" alt=\"TuittLowRes-9314\" data-attachment-id=\"5563\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9314/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9314.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494593815&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;18&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9314\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9314.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9314.jpg?w=1108?w=1024\" /></p>\r\n<p>The event ended on a high note and a full stomach!<br /><img class=\"alignnone size-full wp-image-5567\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9392.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9392.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9392.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9392.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9392.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9392.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9392.jpg 1200w\" alt=\"TuittLowRes-9392\" data-attachment-id=\"5567\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9392/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9392.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494598568&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;30&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9392\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9392.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9392.jpg?w=1108?w=1024\" /><img class=\"alignnone size-full wp-image-5566\" src=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9375.jpg?w=1108\" sizes=\"(max-width: 1108px) 100vw, 1108px\" srcset=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9375.jpg?w=1108 1108w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9375.jpg?w=150 150w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9375.jpg?w=300 300w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9375.jpg?w=768 768w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9375.jpg?w=1024 1024w, https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9375.jpg 1200w\" alt=\"TuittLowRes-9375\" data-attachment-id=\"5566\" data-permalink=\"https://tuittcodingbootcamp.wordpress.com/2017/06/03/a-new-home/tuittlowres-9375/\" data-orig-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9375.jpg?w=1108\" data-orig-size=\"1200,797\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;5&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1494598347&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;30&quot;,&quot;iso&quot;:&quot;400&quot;,&quot;shutter_speed&quot;:&quot;0.016666666666667&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"TuittLowRes-9375\" data-image-description=\"\" data-medium-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9375.jpg?w=1108?w=300\" data-large-file=\"https://tuittcodingbootcamp.files.wordpress.com/2017/05/tuittlowres-9375.jpg?w=1108?w=1024\" /></p>\r\n<p>Thank you everyone for your support and welcome to tuitt&rsquo;s new HQ!</p>\r\n</div>', 3, 'July 14, 2017', '01:04 PM', 'July 14, 2017', '01:13 PM', 'July', '2017', 0, NULL, NULL, NULL, 0, 2, NULL, NULL, 14, 1, 0, NULL),
(46, 'PS Vita 2: Could It Destroy Nintendo\'s Attempt At Glory?', 'PS Vita 2', '/uploads/admin/hqdefault.jpg', '<p><img src=\"http://www.ps5home.com/wp-content/uploads/2017/03/ps-vita-2.jpg\" alt=\"ps vita 2\" /></p>\r\n<p>At this point it is a battle once again between PlayStation and Nintendo. Long before Microsoft entered the world of video games, these two giants were duking it out for video game supremacy.&nbsp; Then PlayStation took a little time off and let Nintendo and Microsoft have at it. Now with the Vita 2, it appears that Sony is looking to reignite the fight that they started all those years ago. I have to admit that in this new round of video game warfare, the stage has been set for these two to pick up where they left off. Not since the days of the Gameboy have I seen a portable gaming device that has so much potential to take the lead in the portable gaming world. With this handheld console the latest to do the rounds of rumour for the PlayStation brand, the&nbsp;<a href=\"http://www.ps5home.com/\">PS5</a>&nbsp;is another hot topic. Let\'s move on and see what the Vita 2 could bring.</p>\r\n<p>The Vita 2 goes where other portable options are afraid to go. Looking at it, you will not off the top expect that much from it, the real value comes from the hidden advantages that it has. So, that brings this article to a simple feature versus feature comparison. The simple fact of the matter is that while Nintendo has a good solid product out on the market, the PS Vita 2 is still a portable device that can give Nintendo a serious run for their money.</p>\r\n<p>One area that the Vita 2 has over Nintendo, is the fact that there is a large range of titles that are already to be played on the device. This is a far cry from the few titles that the Nintendo Switch has at the moment and from the beginning has Nintendo playing catch up to stay ahead of the Vita 2. This is one of the biggest areas that makes PlayStation a cut above many of the things that Nintendo will try to offer.&nbsp; The other area that the Vita has an advantage is that of remote play.</p>\r\n<p>Being able to play remotely is a very important aspect that many players will look for when they are looking to buy either a PlayStation or a Nintendo. This is where the Vita 2 has an advantage as you can play via Wi-Fi anytime anyplace. This along with the large selection of titles will be exactly what will help PlayStation get the upper hand on Nintendo and their offering with the Switch. PlayStation also has been proven over and over to be a lot more affordable than Nintendo as a result this drives a lot of people to the point that they go with PlayStation by default.</p>\r\n<p>Regardless of if you are a Sony person, a Nintendo loyalist or a Microsoft techie, you will want to give serious thought to the purchase of a PS Vita 2 for their portable gaming experience. Even if price is not a factor, you will still want to give some serious thought to this as being your next gaming system for on the go. In the upcoming years, there will be a new war waged and unless Microsoft gets their act together and offers up something that will be able to compete with the PS Vita 2.</p>', 3, 'July 14, 2017', '01:10 PM', 'July 14, 2017', '01:12 PM', 'July', '2017', 0, NULL, NULL, NULL, 1, 3, NULL, NULL, 3, 1, 0, NULL);
INSERT INTO `blog_post` (`blog_id`, `title`, `subheading`, `thumbnail`, `article`, `author_id`, `date_created`, `time_created`, `date_published`, `time_published`, `month_published`, `year_published`, `featured`, `enabled`, `sponsored`, `recommended`, `comments_count`, `views`, `date_modified`, `time_modified`, `category_id`, `approved`, `denied`, `admin_remarks`) VALUES
(47, 'San Rafael River Adventure: A lush sanctuary in Bulacan', 'SRRA', '/uploads/admin/14889854_615691155301670_7893984437481296011_o.jpg', '<h3 class=\"post-title entry-title\">San Rafael River Adventure - A Haven in the Heart of Bulacan</h3>\r\n<div id=\"post-body-8652826107752965808\" class=\"post-body entry-content\">\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\">We were caught in a heavy flow of traffic along AH26 going to Baliwag, Bulacan. It took us four long hours to arrive in the jump off city going to San Rafael River Adventure. We arrive almost midnight and our tummy were shouting for food. Good thing though the food was almost right in front of us when we arrive. No time for night stroll. We all prepared for the next big thing the in the morning.&nbsp;</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://4.bp.blogspot.com/-YJLg04M5IX4/WEQc7Wz3GFI/AAAAAAACQWE/J7NHj126H-UFhXYHHK2RUADvRCRaHTcTwCPcB/s1600/DSC_5165.JPG\"><img src=\"https://4.bp.blogspot.com/-YJLg04M5IX4/WEQc7Wz3GFI/AAAAAAACQWE/J7NHj126H-UFhXYHHK2RUADvRCRaHTcTwCPcB/s640/DSC_5165.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://2.bp.blogspot.com/-A1QW7jNPp6k/WEQdBWPvQ-I/AAAAAAACQVo/yriRI-1A6CA7uDSay4HAix129li76WzlACPcB/s1600/DSC_4918%2B-%2BCopy.JPG\"><img src=\"https://2.bp.blogspot.com/-A1QW7jNPp6k/WEQdBWPvQ-I/AAAAAAACQVo/yriRI-1A6CA7uDSay4HAix129li76WzlACPcB/s640/DSC_4918%2B-%2BCopy.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<a name=\"more\"></a><br />\r\n<div class=\"separator\"><a href=\"https://3.bp.blogspot.com/-zADiQvirKnE/WEQclADL0MI/AAAAAAACQWE/SJOvnjql7cgbwx0g3zc3EUxvc1UzgS-5gCPcB/s1600/DSC_5081.JPG\"><img src=\"https://3.bp.blogspot.com/-zADiQvirKnE/WEQclADL0MI/AAAAAAACQWE/SJOvnjql7cgbwx0g3zc3EUxvc1UzgS-5gCPcB/s640/DSC_5081.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\">When I woke up the next day, I was greeted not by the staff but by a green foliage outside our glasshouse. The melody of the words singing was so inviting that I went outside. I stepped some more and I saw the vast and calm Angat River. Being one with nature maybe too much, but that was my words though.</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://4.bp.blogspot.com/-avBRLuG-hXY/WEQcTyBy_wI/AAAAAAACQWE/U9K2WwmMnUIAhSpXb99IfkHxQwXjKbPIgCPcB/s1600/DSC_4920.JPG\"><img src=\"https://4.bp.blogspot.com/-avBRLuG-hXY/WEQcTyBy_wI/AAAAAAACQWE/U9K2WwmMnUIAhSpXb99IfkHxQwXjKbPIgCPcB/s640/DSC_4920.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">Our Glasshouse</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\">San Rafael River Adventures offers a unique accommodation experience with its all glass cottages - no&nbsp;wonder why they are called glasshouse. Don\'t be afraid that all your personal activities inside will be seen by the people outside. They used a glass that is tinted from the outside whenever the lights hit it and still you\'ll everything outside from the inside. There is a certain feeling that&nbsp;brings magic when a hotel-style accommodation and outdoor ambiance are mixed into one complete experience.&nbsp;</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://2.bp.blogspot.com/-eH6l5VDFjyo/WEQcQ4El97I/AAAAAAACQPs/InEfXl5YDIkP4JXix0B-m9Wp1dyGL5OuQCPcB/s1600/DSC_4915.JPG\"><img src=\"https://2.bp.blogspot.com/-eH6l5VDFjyo/WEQcQ4El97I/AAAAAAACQPs/InEfXl5YDIkP4JXix0B-m9Wp1dyGL5OuQCPcB/s640/DSC_4915.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">Glasshouse at night</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://4.bp.blogspot.com/-F2ANkhnJxpc/WEQcMMtbVWI/AAAAAAACQPA/6M07lcgqA20IVRu0SILFWIUgb9N23sKDACPcB/s1600/DSC_4882.JPG\"><img src=\"https://4.bp.blogspot.com/-F2ANkhnJxpc/WEQcMMtbVWI/AAAAAAACQPA/6M07lcgqA20IVRu0SILFWIUgb9N23sKDACPcB/s640/DSC_4882.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">Posh interior in each glasshouse</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\">Each Glass House can accommodate 6 guest with extra mattress I guess. It has a loft - another thing that made this cottage unique - that can accommodate two person and a bed that can also accommodate two, San Rafael River Adventure offers a hotel-style accommodation with all its amenities.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://2.bp.blogspot.com/-AFacnM5tvSE/WEQcWPz8LUI/AAAAAAACQWE/_1U6yWJkccQc-WRTJtwZAJu03mmH2yKLwCPcB/s1600/DSC_4938.JPG\"><img src=\"https://2.bp.blogspot.com/-AFacnM5tvSE/WEQcWPz8LUI/AAAAAAACQWE/_1U6yWJkccQc-WRTJtwZAJu03mmH2yKLwCPcB/s640/DSC_4938.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div>&nbsp;</div>\r\n<div><a href=\"https://3.bp.blogspot.com/-4SUNKzblTTY/WEQcRmND3QI/AAAAAAACQPw/qFdfhc8tpa87hEAT6PdnyHvD8XD4SF_AQCPcB/s1600/DSC_4916.JPG\"><img src=\"https://3.bp.blogspot.com/-4SUNKzblTTY/WEQcRmND3QI/AAAAAAACQPw/qFdfhc8tpa87hEAT6PdnyHvD8XD4SF_AQCPcB/s640/DSC_4916.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div>&nbsp;</div>\r\n<div>Under the mango tree of each Glass Houses you won&rsquo;t just be relaxed, the birds will sing lullaby for you till&rsquo; you sleep till&rsquo; dawn. When you think that there is nothing to do or you just don\'t want to do anything - you can actually do something - that is to relax and listen to the Inner voice about many things in life..<br /><br />San Rafael River Adventure is an experience itself as I have said, what more when there are water and land activities provided for you?</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://4.bp.blogspot.com/-NZeUbZZ89yQ/WEQcXMVtp-I/AAAAAAACQQY/W2XSAqXHFNY3z4lxPJIvXxrpQrvynL2QwCPcB/s1600/DSC_4943.JPG\"><img src=\"https://4.bp.blogspot.com/-NZeUbZZ89yQ/WEQcXMVtp-I/AAAAAAACQQY/W2XSAqXHFNY3z4lxPJIvXxrpQrvynL2QwCPcB/s640/DSC_4943.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\">In San Rafael River Adventure, you will be sure that you\'ll have that full river experience. With the waters coming from the Sierra Madre, slice your way down with their jet skis.</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://1.bp.blogspot.com/-LU_1AdIO8DU/WEQcvWfSV0I/AAAAAAACQTQ/a9iZD5tLZosjfgaVGtLf5gjG5FwaSnXoQCPcB/s1600/DSC_5129.JPG\"><img src=\"https://1.bp.blogspot.com/-LU_1AdIO8DU/WEQcvWfSV0I/AAAAAAACQTQ/a9iZD5tLZosjfgaVGtLf5gjG5FwaSnXoQCPcB/s640/DSC_5129.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">Claire Madarang of iamtravelinglight.com enjoying the jet ski</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\">Not that so excited, I jumped off the little buzz water vehicle the moment I saw it floating on the river. Afraid that I might fall by my adrenaline carelessness, I was assured that doing jet ski on the river is much for easier and much more fun as compared to the sea.</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\">Less the strong current of the sea, the smooth flow of the river gave me no sense of time while on it with my jet ski. It feels like flying with all the fresh air in your face. I entered into a realm where only the water, the lush greens, the view of the Sierra Madre and myself - creating a mystical story not meant for publishing. There was no other being and I felt freedom. I forgot how far I was until civilization brought me back to reality. I maneuvered and entered to the space and time of my other reality.</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\">Aside from the jet ski there are other non-motorized water activities in San Rafael River Adventure. Just like the jet ski the kayak gave me equal serenity in every stroke of the paddle to move into the realm of the river. My new friend Louie Dimaano - a tourism and social enterprise advocate of Bulacan - joined me as I commune some more with the waters of Angat River. The sound of the water touching the kayak and the stroke of the water were the melodies of the tales we shared together from both our ends. Refreshes and calmness brought by the kayak and Angat River.</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://4.bp.blogspot.com/-eOh91hHaOj8/WEQcrPiDHkI/AAAAAAACQSs/ba-a6Wv5WV8ouC1l6Av01cHUKtc4zgugACPcB/s1600/DSC_5106.JPG\"><img src=\"https://4.bp.blogspot.com/-eOh91hHaOj8/WEQcrPiDHkI/AAAAAAACQSs/ba-a6Wv5WV8ouC1l6Av01cHUKtc4zgugACPcB/s640/DSC_5106.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://4.bp.blogspot.com/-2idgZVnt4Hs/WEQcv_UtduI/AAAAAAACQTU/pD4nSkNzquMvUfmju5-8lhNz4_hKPPUJwCPcB/s1600/DSC_5130.JPG\"><img src=\"https://4.bp.blogspot.com/-2idgZVnt4Hs/WEQcv_UtduI/AAAAAAACQTU/pD4nSkNzquMvUfmju5-8lhNz4_hKPPUJwCPcB/s640/DSC_5130.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://4.bp.blogspot.com/-3ntC8JtGBvA/WEQcz85kGKI/AAAAAAACQT8/1aDHyoKVp0AyfJ47JFEbY-M5mQmRSCR2wCPcB/s1600/DSC_5141.JPG\"><img src=\"https://4.bp.blogspot.com/-3ntC8JtGBvA/WEQcz85kGKI/AAAAAAACQT8/1aDHyoKVp0AyfJ47JFEbY-M5mQmRSCR2wCPcB/s640/DSC_5141.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">Paula O of ponderingpaodaolei.net and Beng Manila Correspondent of EscapeManila.com</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\">Back at the station our friend Marx of Marxtermind.com was celebrating his own serenity while fighting for balance with his paddle board. You have to stand up where you stumble without drowning into the river of love and failure. He did enjoy it for a fact that he was able to stand with a smile of triumph in his face.</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://4.bp.blogspot.com/-PGctR0aQCdU/WEQc1j_UHSI/AAAAAAACQUM/51VoqM3U8zccOfCaUrBPxaiFu1jVfM1SwCPcB/s1600/DSC_5145.JPG\"><img src=\"https://4.bp.blogspot.com/-PGctR0aQCdU/WEQc1j_UHSI/AAAAAAACQUM/51VoqM3U8zccOfCaUrBPxaiFu1jVfM1SwCPcB/s640/DSC_5145.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">Marx</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\">If you grow tired of water adventure &ndash; I will never get tired of it by the way &ndash; San Rafael River Adventure can let your adrenaline pour once again with its ATVs. Drive till sunset along the farm beside the river while contemplating how life has been good to you. We had our usual stops because we wanted to capture the moment where the sky changes colors from blue to orange to darkness.&nbsp;</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://3.bp.blogspot.com/-Q-2gQ4G5Zu0/WEQcoW9wBUI/AAAAAAACQWE/UJ-HGTvDqUQLvg0RmEFYQcDyJWGBCP1dgCPcB/s1600/DSC_5097.JPG\"><img src=\"https://3.bp.blogspot.com/-Q-2gQ4G5Zu0/WEQcoW9wBUI/AAAAAAACQWE/UJ-HGTvDqUQLvg0RmEFYQcDyJWGBCP1dgCPcB/s640/DSC_5097.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://3.bp.blogspot.com/-eWcsn8_KETM/WEQcliOjwmI/AAAAAAACQR8/Mi1jI0Y3jcofeTNL-ILOQeTjDalKKi4vwCPcB/s1600/DSC_5083.JPG\"><img src=\"https://3.bp.blogspot.com/-eWcsn8_KETM/WEQcliOjwmI/AAAAAAACQR8/Mi1jI0Y3jcofeTNL-ILOQeTjDalKKi4vwCPcB/s640/DSC_5083.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">Me and Mai Flores of budgetbiyahera.com</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://2.bp.blogspot.com/-IHLt6XvQDzw/WEQct1POXOI/AAAAAAACQTA/RXYHCnYBdDItyMlbosCQozEx7A6Vy43fgCPcB/s1600/DSC_5115.JPG\"><img src=\"https://2.bp.blogspot.com/-IHLt6XvQDzw/WEQct1POXOI/AAAAAAACQTA/RXYHCnYBdDItyMlbosCQozEx7A6Vy43fgCPcB/s640/DSC_5115.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div>Pao and Marx</div>\r\n<div>&nbsp;</div>\r\n<div class=\"separator\">What else could be equally important is the chance to open your heart with the souls of the same spirit. Before we had our last dinner at San Rafael River Adventure, the quiet and colored swimming pool invited us for a dip. With the sound of a cricket and the night blow of the wind, the moment was peaceful and solemn. We had a random talk with open hearts and open mind. We shelled out our feeling to the world full of little sorrow and magnanimous gratitude. I would never forget that moment because I realize that love and friendship supersedes human faulty attitude.</div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://4.bp.blogspot.com/-QGvgccSAGvs/WEQcf2MSETI/AAAAAAACQRU/LP2x6SETb98YtbuAwCewDCXK9arKWPkOwCPcB/s1600/DSC_4987.JPG\"><img src=\"https://4.bp.blogspot.com/-QGvgccSAGvs/WEQcf2MSETI/AAAAAAACQRU/LP2x6SETb98YtbuAwCewDCXK9arKWPkOwCPcB/s640/DSC_4987.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://3.bp.blogspot.com/-Wow7_fXi4hE/WEQci91N-gI/AAAAAAACQRo/BpPnMBT9_0MzJIEL03oid_5OSl4Uf2qjwCPcB/s1600/DSC_5001.JPG\"><img src=\"https://3.bp.blogspot.com/-Wow7_fXi4hE/WEQci91N-gI/AAAAAAACQRo/BpPnMBT9_0MzJIEL03oid_5OSl4Uf2qjwCPcB/s640/DSC_5001.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><a href=\"https://2.bp.blogspot.com/-d5JkgJe98JI/WEQcQkbWZzI/AAAAAAACQPo/QsPDUwlU-0IgZwJ3rKXjojl2TY_rCLCIACPcB/s1600/DSC_4903.JPG\"><img src=\"https://2.bp.blogspot.com/-d5JkgJe98JI/WEQcQkbWZzI/AAAAAAACQPo/QsPDUwlU-0IgZwJ3rKXjojl2TY_rCLCIACPcB/s640/DSC_4903.JPG\" width=\"640\" height=\"424\" border=\"0\" /></a></div>\r\n<div class=\"separator\">&nbsp;</div>\r\nWhile writing this story, my dream is for you to be serenade my calmness of nature till you fall into a space where real retreat will take place. So when you go back to the life we almost hated the most, you will realize that life ain\'t not to be hated but to be appreciated. San Rafael River Adventure can offer you that serenity inside when you allow yourself to experience the true meaning of communion with nature. San Rafael River Adventure is a true haven in the heart of Bulacan.&nbsp;<br />\r\n<div class=\"separator\">&nbsp;</div>\r\n<div class=\"separator\"><strong>San Rafael River Adventure</strong></div>\r\n<div class=\"separator\">ADDRESS: Barangay Talacsan, San Rafael, Bulacan, Philippines</div>\r\n<div class=\"separator\">LANDLINE: (02) 513 1569</div>\r\n<div class=\"separator\">MOBILE: (63) 995 974 6224 (Globe) / (63) 917 924 4546 (Globe)</div>\r\n<div class=\"separator\">EMAIL: info@sanrafaelriveradventure.com; reservation@sanrafaelriveradventure.com</div>\r\n</div>', 3, 'July 14, 2017', '01:15 PM', 'July 14, 2017', '01:20 PM', 'July', '2017', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 0, NULL),
(48, 'Floyd Mayweather vs Conor McGregor press conference,', ' New York City hosts third face off of the week', '/uploads/admin/Floyd-Mayweather-vs-Conor-McGregor-Mayweather-Instagram.jpg', '<p><img src=\"http://www.independent.co.uk/s3/files/styles/article_small/public/thumbnails/image/2017/07/14/02/mayweather-mcgregor-pile-up.jpg\" alt=\"mayweather-mcgregor-pile-up.jpg\" /></p>\r\n<p><a href=\"http://www.independent.co.uk/topic/FloydMayweather\">Floyd Mayweather</a>&nbsp;and&nbsp;<a href=\"http://www.independent.co.uk/topic/conor-mcgregor\">Conor McGregor</a>&nbsp;will go face to face for the third time this week on Thursday night, as their whistle-stop media tour arrives in&nbsp;<a href=\"http://www.independent.co.uk/topic/NewYorkCity\">New York City</a>.</p>\r\n<p>The NYC presser will be held at the&nbsp;<a href=\"http://www.independent.co.uk/topic/barclays_centre\">Barclays Centre</a>&nbsp;and is due to get underway at 11.30pm BST. We&rsquo;ll be bringing you live coverage of the event from around 10pm.</p>\r\n<p>Unsurprisingly, the press tour has been thrilling, controversial and surreal in equal measure.</p>\r\n<p>Mayweather was widely judged to have got the better of McGregor at the first press conference in LA, but the Irishman more than got his own back in&nbsp;<a href=\"http://www.independent.co.uk/topic/Toronto\">Toronto</a>&nbsp;a night later, when he ridiculed the size of his adversary&rsquo;s head and the fact he cannot read, before turning his fire on Showtime.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/kWV5Qijy5Z0\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p>&nbsp;</p>', 3, 'July 14, 2017', '01:21 PM', 'July 14, 2017', '01:39 PM', 'July', '2017', 0, NULL, NULL, NULL, 0, 2, 'July 14, 2017', '01:22 PM', 4, 1, 0, NULL),
(49, 'Krispy Kreme Turns 80!', '6 Original Glazed Dougnuts for Php 80', '/uploads/admin/17493534_1900172856865229_29845805049315328_n.jpg', '<h2>6 Original Glazed Dougnuts for Php 80</h2>\r\n<p>Enjoy a&nbsp;<strong>box of 6 Original Glazed doughnuts for only Php 80</strong>&nbsp;on&nbsp;<strong>July 13&nbsp;</strong></p>\r\n<figure id=\"attachment_51442\" class=\"wp-caption alignnone\"><img class=\" wp-image-51442\" src=\"http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12112303/19905122_1621995824480238_7416621197013409350_n.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12112303/19905122_1621995824480238_7416621197013409350_n.jpg 960w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12112303/19905122_1621995824480238_7416621197013409350_n-150x150.jpg 150w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12112303/19905122_1621995824480238_7416621197013409350_n-320x320.jpg 320w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12112303/19905122_1621995824480238_7416621197013409350_n-768x768.jpg 768w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12112303/19905122_1621995824480238_7416621197013409350_n-600x600.jpg 600w\" alt=\"\" width=\"700\" height=\"700\" />\r\n<figcaption class=\"wp-caption-text\">Photo from Krispy Kreme Philippines</figcaption>\r\n<figcaption class=\"wp-caption-text\"></figcaption>\r\n</figure>\r\n<figure id=\"attachment_51468\" class=\"wp-caption alignnone\"><img class=\" wp-image-51468\" src=\"http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12121410/17493534_1900172856865229_29845805049315328_n.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12121410/17493534_1900172856865229_29845805049315328_n.jpg 640w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12121410/17493534_1900172856865229_29845805049315328_n-150x150.jpg 150w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12121410/17493534_1900172856865229_29845805049315328_n-320x320.jpg 320w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12121410/17493534_1900172856865229_29845805049315328_n-600x600.jpg 600w\" alt=\"\" width=\"700\" height=\"700\" />\r\n<figcaption class=\"wp-caption-text\">Photo from&nbsp;<a href=\"http://instagram.com/aeyrey\">@aeyrey</a></figcaption>\r\n<figcaption class=\"wp-caption-text\"></figcaption>\r\n</figure>\r\n<p>Only a&nbsp;<strong>maximum of 2 dozens for every guest</strong>&nbsp;is allowed and this is<strong>&nbsp;valid for dine-in, take-out, and drive-thru only</strong>. This cannot be in conjuction with their other promos and discounts.</p>\r\n<p><em><span class=\"text_exposed_show\">* Available in Krispy Kreme stores nationwide except kiosks, SM MOA Arena and NAIA.</span></em></p>\r\n<h2>6 Original + 6 Assorted Dougnuts for Php 299</h2>\r\n<p>Another exciting promo is that you can&nbsp;<strong>order&nbsp;a box of 6 Original Glazed Doughnuts and 6 Assorted Doughnuts for only Php 299</strong>,&nbsp;<strong>only until July 12 (TODAY)</strong>!<strong>&nbsp;Claim your orders from them on July 15-16</strong>. Again, this promo cannot be used with other exisiting promotions and discounts.</p>\r\n<figure id=\"attachment_51449\" class=\"wp-caption alignnone\"><img class=\" wp-image-51449\" src=\"http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12114113/KK-aprilbrightbax.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12114113/KK-aprilbrightbax.jpg 1080w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12114113/KK-aprilbrightbax-150x150.jpg 150w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12114113/KK-aprilbrightbax-320x320.jpg 320w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12114113/KK-aprilbrightbax-768x768.jpg 768w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12114113/KK-aprilbrightbax-600x600.jpg 600w\" alt=\"\" width=\"700\" height=\"700\" />\r\n<figcaption class=\"wp-caption-text\">Photo from&nbsp;<a href=\"http://instagram.com/aprilbrightbax\">@aprilbrightbax</a></figcaption>\r\n<figcaption class=\"wp-caption-text\"></figcaption>\r\n</figure>\r\n<figure id=\"attachment_51450\" class=\"wp-caption alignnone\"><img class=\" wp-image-51450\" src=\"http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12114117/KK-arayeistyle.jpg\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12114117/KK-arayeistyle.jpg 1080w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12114117/KK-arayeistyle-150x150.jpg 150w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12114117/KK-arayeistyle-320x320.jpg 320w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12114117/KK-arayeistyle-768x768.jpg 768w, http://cdn.phonebooky.com/blog/wp-content/uploads/2017/07/12114117/KK-arayeistyle-600x600.jpg 600w\" alt=\"\" width=\"700\" height=\"700\" />\r\n<figcaption class=\"wp-caption-text\">Photo from&nbsp;<a href=\"http://instagram.com/arayeistyle\">@arayeistyle</a></figcaption>\r\n<figcaption class=\"wp-caption-text\"></figcaption>\r\n</figure>\r\n<p><strong>Call them now at 7-9000</strong>&nbsp;to order your box today!</p>\r\n<p>Thank you Krispy Kreme for celebrating your 80th birthday with us!</p>\r\n<p>Download&nbsp;<a href=\"http://ph.phonebooky.com/\">Booky</a>&nbsp;now to get up to P500 discount plus a free dessert on our&nbsp;<a href=\"http://ph.phonebooky.com/\">800 prime partner restaurants</a>!</p>\r\n<p>&nbsp;</p>', 3, 'July 14, 2017', '01:27 PM', 'July 14, 2017', '01:39 PM', 'July', '2017', 0, NULL, NULL, NULL, 0, 1, NULL, NULL, 2, 1, 0, NULL),
(50, 'Cebu Pacific Seat Sale May 2017 for as low as P799', 'Cebu Pacific', '/uploads/admin/Cebu-Pacific-Promo.png', '<p>Good News Travelers, Heres another Cebu Pacific Seat Sale for May 2017! Listed below are the lowest price available and the covered local destinations for their May 2017 domestic promo fares:</p>\r\n<figure id=\"attachment_51232\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-51232 td-animation-stack-type0-1\" style=\"box-sizing: border-box; border: 0px; display: block; max-width: 100%; height: auto; margin-bottom: 0px; width: 600px;\" src=\"https://i2.wp.com/outoftownblog.com/wp-content/uploads/2017/05/Cebu-Pacific-Seat-Sale-May-2017.jpg?resize=600%2C600&amp;ssl=1\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://i2.wp.com/outoftownblog.com/wp-content/uploads/2017/05/Cebu-Pacific-Seat-Sale-May-2017.jpg?resize=600%2C600&amp;ssl=1 600w, https://i2.wp.com/outoftownblog.com/wp-content/uploads/2017/05/Cebu-Pacific-Seat-Sale-May-2017.jpg?resize=150%2C150&amp;ssl=1 150w, https://i2.wp.com/outoftownblog.com/wp-content/uploads/2017/05/Cebu-Pacific-Seat-Sale-May-2017.jpg?resize=420%2C420&amp;ssl=1 420w, https://i2.wp.com/outoftownblog.com/wp-content/uploads/2017/05/Cebu-Pacific-Seat-Sale-May-2017.jpg?resize=640%2C640&amp;ssl=1 640w, https://i2.wp.com/outoftownblog.com/wp-content/uploads/2017/05/Cebu-Pacific-Seat-Sale-May-2017.jpg?resize=681%2C681&amp;ssl=1 681w, https://i2.wp.com/outoftownblog.com/wp-content/uploads/2017/05/Cebu-Pacific-Seat-Sale-May-2017.jpg?w=1200&amp;ssl=1 1200w\" alt=\"Cebu Pacific Seat Sale May 2017 photo courtesy of CEB Facebook page\" width=\"600\" height=\"600\" data-attachment-id=\"51232\" data-permalink=\"https://outoftownblog.com/cebu-pacific-may-2017-seat-sale-for-as-low-as-p799/cebu-pacific-seat-sale-may-2017/\" data-orig-file=\"https://i2.wp.com/outoftownblog.com/wp-content/uploads/2017/05/Cebu-Pacific-Seat-Sale-May-2017.jpg?fit=1200%2C1200&amp;ssl=1\" data-orig-size=\"1200,1200\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"Cebu Pacific Seat Sale May 2017 photo courtesy of CEB Facebook page\" data-image-description=\"&lt;p&gt;Cebu Pacific Seat Sale May 2017 photo courtesy of CEB Facebook page&lt;/p&gt;\r\n\" data-medium-file=\"https://i2.wp.com/outoftownblog.com/wp-content/uploads/2017/05/Cebu-Pacific-Seat-Sale-May-2017.jpg?fit=600%2C600&amp;ssl=1\" data-large-file=\"https://i2.wp.com/outoftownblog.com/wp-content/uploads/2017/05/Cebu-Pacific-Seat-Sale-May-2017.jpg?fit=600%2C600&amp;ssl=1\" />\r\n<figcaption class=\"wp-caption-text\">Cebu Pacific Seat Sale May 2017 photo courtesy of CEB Facebook page</figcaption>\r\n</figure>\r\n<h2><strong>For as low as P799 All In</strong></h2>\r\n<ul>\r\n<li>Flights from Cagayan de Oro to Bacolod or Tagbilaran</li>\r\n<li>Flights from Cebu to Calbayog, Dumaguete, Ormoc or Roxas</li>\r\n</ul>\r\n<h2><strong>For as low as P1,099 All In</strong></h2>\r\n<ul>\r\n<li>Flights from Cebu to Bacolod, Boracay (Caticlan), Butuan, Camiguin**, Clark, Davao, Dipolog, General Santos**, Iloilo, Kalibo, Legazpi, Ozamiz, Pagadian, Puerto Princesa*, Siargao, Surigao, Tacloban, Tandag or Zamboanga</li>\r\n<li>Flights from Davao to Bacolod, Cagayan de Oro, Iloilo or Zamboanga</li>\r\n<li>Flights from Iloilo to Cagayan de Oro or General Santos</li>\r\n<li>Flights from Manila to Naga or Tablas</li>\r\n<li>Flights from Zamboanga to Tawi-tawi</li>\r\n</ul>\r\n<h2><strong>*Sale Period: Up to May 8, 2017</strong></h2>\r\n<h2><strong>Travel Period: Jun 1 &ndash; Sep 30, 2017</strong></h2>\r\n<h3><strong>**Travel Period: May 15 &ndash; Aug 31, 2017</strong><br /><strong>BOOK NOW!</strong></h3>\r\n<ul>\r\n<li>Quoted Cebu Pacific Promo fares are valid for one-way travel only, inclusive of 7kg hand carry baggage allowance, base fare, web admin fee and taxes collected at point-of-sale.</li>\r\n<li>Domestic Terminal fees for non-Manila/Caticlan/Cebu stations and International Terminals Fees for non-Manila stations, plus Php 1,620 International Travel Tax must be paid at the airport.</li>\r\n<li>Cebu Pacific Promo fares have limited availability and are non-refundable but rebookable subject to the following rebooking fees: Php 1,500 for domestic destinations, Php 2,300 for short-haul international destinations and Php 2,800 for long-haul international destinations plus fare difference.</li>\r\n<li>For your convenience, flight changes and purchase of add-ons, such as baggage allowance or seat selection, can be done up to 4 hours before flight.</li>\r\n</ul>\r\n<p>Cebu Pacific Seat Sale tickets can be booked online at&nbsp;<a href=\"http://cebupacificair.com/\">cebupacificair.com</a>&nbsp;or you may call Cebu Pacific Manila Hotline (02) 70-20-888 in Manila or Cebu Hotline (32) 230-8888. You can also book at your nearest trusted travel agent.</p>\r\n<p>&nbsp;</p>', 3, 'July 14, 2017', '01:33 PM', 'July 14, 2017', '01:39 PM', 'July', '2017', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 0, NULL),
(51, '6 Trending Stores To Do Online Shopping from the Philippines', 'Shop now!', '/uploads/admin/Secret-Shopping-Tricks.jpg', '<p><strong>6 Trending Stores To Do Online Shopping from the Philippines</strong></p>\r\n<p>Online shopping from the Philippines has evolved as one of the&nbsp;<a href=\"http://www.davaobase.com/2017/01/davaobase-highlights-year-2016/\">biggest breakthroughs in 2016</a>, as more Filipinos have trooped to e-commerce sites to buy their needs and wants. A lot of my friends have even used online stores to purchase their Christmas gifts last year, and it&rsquo;s bound to get bigger in 2017.</p>\r\n<p>If you&rsquo;re preparing to shopping online or considering to buy stuff in a new way this year, here are 6 trending websites where you can do your online shopping from the Philippines:</p>\r\n<h2><a href=\"http://www.lazada.com.ph/\" target=\"_blank\" rel=\"noopener\">Lazada</a></h2>\r\n<p><img class=\"aligncenter size-medium wp-image-19286 tie-appear\" src=\"http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-lazada-600x281.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-lazada-600x281.jpg 600w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-lazada-768x360.jpg 768w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-lazada-1024x479.jpg 1024w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-lazada.jpg 1348w\" alt=\"online shopping from the philippines lazada\" width=\"600\" height=\"281\" /></p>\r\n<p>One of the biggest successes in recent years is Lazada, a one-stop online shop for practically anything that online shoppers want to get their hands on &mdash; electronics, fashion items, home and living, health and beauty, toys, sports and travel, vehicle accessories, and more.</p>\r\n<p>Lazada&rsquo;s annual Online Revolution is one of the most highly anticipated sale events in online Philippine shopping. Watch out for the 2017 leg in November!</p>\r\n<p>If you&rsquo;re looking for more discounts in Lazada,&nbsp;<a href=\"http://www.saleduck.com.ph/lazada\" target=\"_blank\" rel=\"noopener\">check out this list</a>&nbsp;from Saleduck.</p>\r\n<h2><a href=\"https://www.zalora.com.ph/\" target=\"_blank\" rel=\"noopener\">Zalora</a></h2>\r\n<p><img class=\"aligncenter size-medium wp-image-19290 tie-appear\" src=\"http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-zalora-600x293.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-zalora-600x293.jpg 600w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-zalora-768x375.jpg 768w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-zalora-1024x499.jpg 1024w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-zalora.jpg 1349w\" alt=\"online shopping from the philippines zalora\" width=\"600\" height=\"293\" /></p>\r\n<p>If you&rsquo;re more into fashion, Zalora is definitely the online store for you. This trending fashion store houses big-named brands such as Mango, Plains &amp; Prints, Penshoppe, Bench, River Island, Superdry, Wallis, Ivy Park, Sunnies, and more.</p>\r\n<p>Here&rsquo;s a tip for Zalora newbies: Subscribe to Zalora&rsquo;s newsletter and enjoy P300 discount on your first order. In addition, you might get more Zalora deals from&nbsp;<a href=\"http://www.saleduck.com.ph/zalora\" target=\"_blank\" rel=\"noopener\">this page</a>.</p>\r\n<h2><a href=\"http://ph.althea.kr/\" target=\"_blank\" rel=\"noopener\">Althea</a></h2>\r\n<p><img class=\"aligncenter size-medium wp-image-19291 tie-appear\" src=\"http://www.davaobase.com/wp-content/uploads/online-stores-from-the-philippines-althea-600x249.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"http://www.davaobase.com/wp-content/uploads/online-stores-from-the-philippines-althea-600x249.jpg 600w, http://www.davaobase.com/wp-content/uploads/online-stores-from-the-philippines-althea-768x318.jpg 768w, http://www.davaobase.com/wp-content/uploads/online-stores-from-the-philippines-althea-1024x424.jpg 1024w, http://www.davaobase.com/wp-content/uploads/online-stores-from-the-philippines-althea.jpg 1349w\" alt=\"online stores from the philippines althea\" width=\"600\" height=\"249\" /></p>\r\n<p>One of the biggest up-and-coming online beauty stores in recent years has caught Southeast Asia by storm. Althea is an online store that sells Korean beauty products, as well as fashion items and other trendy bestsellers. Get the most popular products from best beauty brands such as Nature Republic, Skin Food, B&amp;Soap, Laneige, Innisfree, Guerisson, The Faceshop, and more.</p>\r\n<p>New members get a P300 voucher for the first order, and shoppers can enjoy free shipping for purchases above P999. Meanwhile, Saleduck also lists down updated&nbsp;<a href=\"http://www.saleduck.com.ph/althea\" target=\"_blank\" rel=\"noopener\">coupon codes and discounts</a>&nbsp;for Althea.</p>\r\n<h2><a href=\"http://www.ebay.ph/\" target=\"_blank\" rel=\"noopener\">eBay</a></h2>\r\n<p><img class=\"aligncenter size-medium wp-image-19287 tie-appear\" src=\"http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-ebay-ph-600x246.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-ebay-ph-600x246.jpg 600w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-ebay-ph-768x315.jpg 768w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-ebay-ph-1024x420.jpg 1024w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-ebay-ph.jpg 1349w\" alt=\"online shopping from the philippines ebay ph\" width=\"600\" height=\"246\" /></p>\r\n<p>Once known as an auction site, eBay has evolved into an online store where people can buy items in fashion, health, beauty, jewelry, computers, electronics, toys, and home. With its &ldquo;Buy It Now&rdquo; feature, you don&rsquo;t have to wait for the auction to finish, because you can already buy the items.</p>\r\n<h2><a href=\"http://mall.hallohallo.com/\" target=\"_blank\" rel=\"noopener\">Hallo Mall</a></h2>\r\n<p><img class=\"aligncenter size-medium wp-image-19288 tie-appear\" src=\"http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-hallo-mall-600x292.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-hallo-mall-600x292.jpg 600w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-hallo-mall-768x374.jpg 768w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-hallo-mall-1024x499.jpg 1024w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-hallo-mall.jpg 1349w\" alt=\"online shopping from the philippines hallo mall\" width=\"600\" height=\"292\" /></p>\r\n<p>Hallo Mall&rsquo;s entry in the e-commerce world was unique because it provided an opportunity for buyers and sellers to meet in a secure online location to transact.</p>\r\n<p>The store is best known for its Countdown Discount Sale, where items are sold at 1% off every hour. That means, an item can be sold at 100% discount if no one else buys it at the 100th hour!</p>\r\n<h2><a href=\"https://shopee.ph/\" target=\"_blank\" rel=\"noopener\">Shopee</a></h2>\r\n<p><img class=\"aligncenter size-medium wp-image-19289 tie-appear\" src=\"http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-shopee-600x278.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-shopee-600x278.jpg 600w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-shopee-768x356.jpg 768w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-shopee-1024x474.jpg 1024w, http://www.davaobase.com/wp-content/uploads/online-shopping-from-the-philippines-shopee.jpg 1348w\" alt=\"online shopping from the philippines shopee\" width=\"600\" height=\"278\" /></p>\r\n<p>Shopee&rsquo;s mobile-first marketplace approach has caught the attention of online shoppers who prefer browsing using their mobile devices. Shopee may have a smaller inventory than other big-named online stores, but it makes up for a wide array of categories: health, beauty, fashion, toys and children&rsquo;s needs, consumer electronics, home and living, and loads more.</p>\r\n<p>Shipping is free for any item purchased in Shopee.</p>', 3, 'July 14, 2017', '01:38 PM', 'July 14, 2017', '01:39 PM', 'July', '2017', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 0, NULL),
(53, 'SNAP FITNESS Philippines', 'Get fit!', '/uploads/admin/201312111249277618_Snap-Fitness-Australia.jpg', '<p><img src=\"http://snapfitnessblog.com/wp-content/uploads/2015/05/workout-weights-man-750x340.jpg\" alt=\"Gym Etiquette\" /></p>\r\n<p>In the heart of Quezon City, residents now has access to a fast, convenient and affordable way to get into shape. Snap Fitness, the leading chain of 24/7 state-of-the-art fitness clubs, opened its doors at Spark Place Cubao last March; offering residents the best value for their money.</p>\r\n<p>Snap Fitness offers its members a great workout experience and 24/7 access to more than 2,000 locations worldwide at a more affordable price and without long term contract. No matter what your goals are, Snap Fitness has all the tools and support to help you look good, feel great and get result.</p>\r\n<p>Join us today on the journey towards creating a better you!</p>\r\n<p>&nbsp;<img src=\"https://www.sandgate.com.au/cpages_images//Snap-Sandgate-Gym.jpg\" /></p>\r\n<p><img src=\"http://snapfitnessblog.com/wp-content/uploads/2015/03/snap-from-free-weight-corner-750x340.jpg\" alt=\"Personalizing Your Fitness Story\" /></p>\r\n<p>Contact us to avail your FREE TRIAL!</p>\r\n<p>&nbsp;Phone: (02) 961 9078</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 3, 'July 14, 2017', '01:45 PM', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `tags_id` int(11) NOT NULL,
  `tag_name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`tags_id`, `tag_name`) VALUES
(56, ' '),
(53, ' #Monster Hunter: World'),
(50, ' #monster hunter:world'),
(45, ' #RagnarokPhilippines'),
(46, ' #RagnarokReturns'),
(76, ' #SnapGymCubao'),
(77, ' #SnapGymTimog'),
(55, ' #TuittBootcamp'),
(69, ' 2017-2018 Flight promo'),
(29, ' calamares'),
(49, ' capcom'),
(41, ' chicken'),
(40, ' chicken inasal'),
(33, ' dc'),
(75, ' fitness'),
(64, ' Floyd vs Conor'),
(23, ' fries'),
(38, ' girls'),
(42, ' grilled'),
(74, ' Healthy'),
(66, ' Krispy Kreme @ 80!'),
(32, ' marvel'),
(62, ' MMA'),
(52, ' monster hunter'),
(34, ' movies'),
(60, ' philippines wonder'),
(68, ' PromoFlight'),
(44, ' RPG'),
(71, ' shop now'),
(28, ' siopao'),
(30, ' sisig'),
(24, ' tapsilog'),
(58, ' technology'),
(63, ' UFC'),
(67, '#CEBUPACIFIC'),
(65, '#KrispyKreme'),
(57, '#PsVita2'),
(59, '#SRRA'),
(36, '20'),
(54, 'bootcamp'),
(61, 'boxing'),
(22, 'burger'),
(51, 'capcom'),
(72, 'cars'),
(43, 'games'),
(73, 'Gym'),
(39, 'homemade'),
(37, 'how to'),
(48, 'monster hunter'),
(35, 'nice'),
(70, 'online shopping'),
(31, 'superheroes'),
(47, 'try');

-- --------------------------------------------------------

--
-- Table structure for table `blog_visitors`
--

CREATE TABLE `blog_visitors` (
  `blog_visitor_id` int(11) NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `blog_post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_visitors`
--

INSERT INTO `blog_visitors` (`blog_visitor_id`, `visitor_id`, `blog_post_id`) VALUES
(1, 7, 15),
(2, 7, 17),
(3, 7, 7),
(4, 8, 15),
(5, 8, 17),
(6, 8, 7),
(7, 9, 17),
(8, 9, 7),
(9, 9, 15),
(10, 9, 5),
(11, 8, 2),
(12, 10, 2),
(13, 1, 15),
(14, 1, 5),
(15, 1, 6),
(16, 1, 2),
(17, 1, 7),
(18, 1, 0),
(19, 2, 2),
(20, 3, 2),
(21, 4, 2),
(22, 5, 2),
(23, 6, 2),
(24, 7, 2),
(25, 9, 2),
(26, 11, 2),
(27, 12, 2),
(28, 13, 2),
(29, 14, 2),
(30, 15, 2),
(31, 16, 2),
(32, 17, 2),
(33, 18, 2),
(34, 19, 2),
(35, 20, 2),
(36, 21, 2),
(37, 22, 2),
(38, 23, 2),
(39, 24, 15),
(40, 25, 15),
(41, 26, 15),
(42, 27, 2),
(43, 28, 2),
(44, 29, 2),
(45, 30, 2),
(46, 31, 2),
(47, 32, 2),
(48, 33, 2),
(49, 34, 2),
(50, 35, 2),
(51, 36, 2),
(52, 37, 2),
(53, 38, 2),
(54, 39, 2),
(55, 40, 2),
(56, 41, 2),
(57, 42, 2),
(58, 43, 2),
(59, 44, 2),
(60, 45, 2),
(61, 46, 2),
(62, 47, 2),
(63, 48, 2),
(64, 49, 2),
(65, 50, 2),
(66, 51, 2),
(67, 52, 2),
(68, 53, 2),
(69, 54, 2),
(70, 55, 2),
(71, 56, 2),
(72, 57, 2),
(73, 58, 2),
(74, 59, 2),
(75, 60, 2),
(76, 61, 2),
(77, 62, 2),
(78, 63, 2),
(79, 64, 2),
(80, 65, 2),
(81, 66, 2),
(82, 67, 2),
(83, 68, 2),
(84, 69, 2),
(85, 70, 2),
(86, 71, 2),
(87, 72, 2),
(88, 73, 2),
(89, 74, 2),
(90, 75, 2),
(91, 76, 2),
(92, 77, 2),
(93, 78, 2),
(94, 79, 2),
(95, 80, 2),
(96, 81, 2),
(97, 82, 2),
(98, 83, 2),
(99, 84, 2),
(100, 85, 2),
(101, 2, 15),
(102, 2, 7),
(103, 2, 17),
(104, 2, 18),
(105, 2, 4),
(106, 2, 20),
(107, 2, 5),
(108, 2, 22),
(109, 2, 0),
(110, 2, 23),
(111, 3, 23),
(112, 4, 5),
(113, 5, 17),
(114, 6, 20),
(115, 7, 24),
(116, 8, 25),
(117, 10, 24),
(118, 11, 17),
(119, 12, 20),
(120, 13, 23),
(121, 14, 24),
(122, 15, 20),
(123, 16, 20),
(124, 2, 24),
(125, 17, 20),
(126, 18, 22),
(127, 19, 23),
(128, 20, 5),
(129, 21, 17),
(130, 22, 20),
(131, 2, 37),
(132, 2, 40),
(133, 23, 17),
(134, 23, 23),
(135, 24, 40),
(136, 23, 40),
(137, 23, 37),
(138, 23, 0),
(139, 25, 40),
(140, 26, 40),
(141, 27, 40),
(142, 28, 40),
(143, 30, 37),
(144, 31, 37),
(145, 23, 5),
(146, 32, 37),
(147, 33, 37),
(148, 34, 37),
(149, 35, 37),
(150, 36, 23),
(151, 37, 23),
(152, 38, 23),
(153, 39, 40),
(154, 40, 40),
(155, 40, 17),
(156, 41, 40),
(157, 42, 40),
(158, 42, 23),
(159, 42, 20),
(160, 42, 17),
(161, 42, 5),
(162, 43, 5),
(163, 44, 5),
(164, 45, 5),
(165, 46, 5),
(166, 48, 5),
(167, 47, 5),
(168, 49, 5),
(169, 50, 5),
(170, 51, 5),
(171, 52, 5),
(172, 53, 5),
(173, 55, 5),
(174, 56, 5),
(175, 57, 5),
(176, 58, 5),
(177, 54, 20),
(178, 54, 5),
(179, 59, 20),
(180, 59, 0),
(181, 59, 23),
(182, 59, 5),
(183, 60, 5),
(184, 60, 20),
(185, 60, 10),
(186, 60, 40),
(187, 60, 0),
(188, 60, 17),
(189, 61, 17),
(190, 61, 23),
(191, 61, 40),
(192, 61, 22),
(193, 61, 37),
(194, 61, 5),
(195, 61, 20),
(196, 62, 20),
(197, 62, 22),
(198, 62, 23),
(199, 62, 40),
(200, 62, 37),
(201, 62, 5),
(202, 63, 40),
(203, 63, 5),
(204, 64, 40),
(205, 65, 40),
(206, 65, 20),
(207, 65, 37),
(208, 66, 37),
(209, 67, 37),
(210, 68, 37),
(211, 68, 41),
(212, 69, 37),
(213, 70, 37),
(214, 70, 42),
(215, 70, 43),
(216, 70, 41),
(217, 70, 44),
(218, 71, 44),
(219, 70, 40),
(220, 72, 44),
(221, 73, 44),
(222, 74, 44),
(223, 75, 45),
(224, 76, 40),
(225, 77, 22),
(226, 78, 22),
(227, 80, 22),
(228, 81, 22),
(229, 83, 22),
(230, 84, 22),
(231, 85, 22),
(232, 86, 22),
(233, 87, 22),
(234, 70, 45),
(235, 88, 41),
(236, 89, 41),
(237, 90, 41),
(238, 91, 48),
(239, 92, 48),
(240, 70, 46),
(241, 93, 37),
(242, 94, 49),
(243, 95, 37),
(244, 96, 37),
(245, 97, 37),
(246, 98, 37),
(247, 99, 37),
(248, 100, 42),
(249, 101, 42),
(250, 103, 42),
(251, 104, 46),
(252, 105, 46),
(253, 106, 23),
(254, 107, 44),
(255, 108, 44),
(256, 110, 44),
(257, 111, 41),
(258, 112, 41),
(259, 113, 41);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `is_reply_to_id` int(11) DEFAULT NULL,
  `comment` text,
  `comment_date` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `visitor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `is_reply_to_id`, `comment`, `comment_date`, `enabled`, `visitor_id`) VALUES
(1, NULL, 'this is my comment', 'July 12, 2017, 05:42 AM', NULL, 23),
(2, NULL, 'OMG I REMEMBER SO MANY PEOPLE', 'July 12, 2017, 06:12 AM', NULL, 23),
(3, NULL, 'OMG I REMEMBER SO MANY PEOPLE', 'July 12, 2017, 06:14 AM', NULL, 23),
(4, NULL, 'OMG I REMEMBER SO MANY PEOPLE', 'July 12, 2017, 06:15 AM', NULL, 23),
(5, NULL, 'COMMENT', 'July 12, 2017, 06:17 AM', NULL, 23),
(6, NULL, 'COMMENT', 'July 12, 2017, 06:18 AM', NULL, 23),
(7, NULL, 'COMMENT', 'July 12, 2017, 06:19 AM', NULL, 23),
(8, NULL, 'COMMENT', 'July 12, 2017, 06:22 AM', NULL, 23),
(9, NULL, 'COMMENT', 'July 12, 2017, 06:22 AM', NULL, 23),
(10, NULL, 'COMMENT', 'July 12, 2017, 06:22 AM', NULL, 23),
(11, NULL, 'lorem ipsum', 'July 12, 2017, 06:29 AM', NULL, 29),
(12, NULL, 'COMMENT', 'July 12, 2017, 06:34 AM', NULL, 23),
(13, NULL, 'i am a comment', 'July 12, 2017, 06:53 AM', NULL, 40),
(14, NULL, 'this is my 1st comment', 'July 12, 2017, 07:05 AM', NULL, 40),
(15, NULL, 'this is my 1st comment', 'July 12, 2017, 07:09 AM', NULL, 40),
(16, NULL, 'lorem ipsum dolor', 'July 12, 2017, 07:10 AM', NULL, 40),
(17, NULL, 'comment', 'July 12, 2017, 07:13 AM', NULL, 40),
(18, NULL, 'comment', 'July 12, 2017, 07:13 AM', NULL, 40),
(19, NULL, 'comment', 'July 12, 2017, 07:16 AM', NULL, 40),
(20, NULL, 'comment', 'July 12, 2017, 07:18 AM', NULL, 40),
(21, NULL, 'GAGANA NA TO PRAMIS HIHI', 'July 12, 2017, 07:29 AM', NULL, 41),
(22, NULL, 'try ulet be', 'July 12, 2017, 07:29 AM', NULL, 42),
(23, NULL, 'try ulet be', 'July 12, 2017, 07:29 AM', NULL, 42),
(24, NULL, 'asdasd', 'July 12, 2017, 08:28 AM', NULL, 42),
(25, NULL, 'asdasd', 'July 12, 2017, 08:29 AM', NULL, 42),
(26, NULL, 'asdasd', 'July 12, 2017, 08:29 AM', NULL, 42),
(27, NULL, 'asdasd', 'July 12, 2017, 08:30 AM', NULL, 42),
(28, NULL, 'this is my comment', 'July 12, 2017, 08:31 AM', NULL, 43),
(29, NULL, 'hahaha lolz!', 'July 12, 2017, 08:33 AM', NULL, 43),
(30, NULL, 'hahaha lolz!', 'July 12, 2017, 08:35 AM', NULL, 43),
(31, NULL, 'hello hello', 'July 12, 2017, 08:35 AM', NULL, 47),
(32, NULL, 'hello hello', 'July 12, 2017, 08:35 AM', NULL, 47),
(33, NULL, 'hahaha lolz!', 'July 12, 2017, 08:35 AM', NULL, 47),
(34, NULL, 'Hi', 'July 12, 2017, 08:36 AM', NULL, 47),
(35, NULL, 'hahaha lolz!', 'July 12, 2017, 08:36 AM', NULL, 47),
(36, NULL, 'asdhfea', 'July 12, 2017, 08:36 AM', NULL, 51),
(37, NULL, 'hahaha lolz!', 'July 12, 2017, 08:37 AM', NULL, 51),
(38, NULL, 'hahaha lolz!', 'July 12, 2017, 08:37 AM', NULL, 51),
(39, NULL, 'this is a comment', 'July 12, 2017, 08:39 AM', NULL, 54),
(40, NULL, 'this is the second comment', 'July 12, 2017, 08:40 AM', NULL, 54),
(41, NULL, 'hahaha lolz!', 'July 12, 2017, 08:44 AM', NULL, 54),
(42, NULL, 'hahaha lolz!', 'July 12, 2017, 09:50 AM', NULL, 54),
(43, NULL, 'hahaha lolz!', 'July 12, 2017, 09:50 AM', NULL, 54),
(44, NULL, 'hahaha lolz!', 'July 12, 2017, 09:50 AM', NULL, 54),
(45, NULL, 'hahaha lolz!', 'July 12, 2017, 09:50 AM', NULL, 54),
(46, NULL, 'This is my comment dude', 'July 12, 2017, 09:55 AM', NULL, 59),
(47, NULL, ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'July 12, 2017, 10:12 AM', NULL, 59),
(48, NULL, 'jacare souza vs robert whittaker', 'July 12, 2017 AT 10:15 AM', NULL, 59),
(49, NULL, 'jacare souza vs robert whittaker', 'July 12, 2017 AT 10:16 AM', NULL, 59),
(50, NULL, 'jacare souza vs robert whittaker', 'July 12, 2017 AT 10:16 AM', NULL, 59),
(51, NULL, 'im back!!', 'July 12, 2017 AT 01:34 PM', NULL, 59),
(52, NULL, 'helioooo', 'July 12, 2017 AT 06:28 PM', NULL, 60),
(53, NULL, 'hahaha', 'July 12, 2017 AT 08:08 PM', NULL, 60),
(54, NULL, 'hahaha', 'July 12, 2017 AT 08:08 PM', NULL, 60),
(55, NULL, 'test', 'July 12, 2017 AT 08:10 PM', NULL, 60),
(56, NULL, 'test', 'July 12, 2017 AT 08:10 PM', NULL, 60),
(57, NULL, 'tes today', 'July 12, 2017 AT 08:11 PM', NULL, 60),
(58, NULL, 'tes today', 'July 12, 2017 AT 08:11 PM', NULL, 60),
(59, NULL, 'tes today', 'July 12, 2017 AT 08:12 PM', NULL, 60),
(60, NULL, 'tes today', 'July 12, 2017 AT 08:12 PM', NULL, 60),
(61, NULL, 'hahahaha', 'July 12, 2017 AT 08:13 PM', NULL, 61),
(62, NULL, 'hehehe', 'July 13, 2017 AT 02:16 AM', NULL, 61),
(63, NULL, 'i am the commentator', 'July 13, 2017 AT 03:21 PM', NULL, 62),
(64, NULL, 'testing', 'July 14, 2017 AT 03:13 AM', NULL, 63),
(65, NULL, 'testing', 'July 14, 2017 AT 03:14 AM', NULL, 63),
(66, NULL, 'testing', 'July 14, 2017 AT 03:16 AM', NULL, 63),
(67, NULL, 'testing', 'July 14, 2017 AT 03:16 AM', NULL, 63),
(68, NULL, 'testing', 'July 14, 2017 AT 03:17 AM', NULL, 63),
(69, NULL, 'testing', 'July 14, 2017 AT 03:18 AM', NULL, 63),
(70, NULL, 'wew', 'July 14, 2017 AT 03:20 AM', NULL, 63),
(71, NULL, 'wew', 'July 14, 2017 AT 03:20 AM', NULL, 63),
(72, NULL, 'wew', 'July 14, 2017 AT 03:21 AM', NULL, 63),
(73, NULL, 'asdasdasda', 'July 14, 2017 AT 03:22 AM', NULL, 64),
(74, NULL, 'asdasdasd', 'July 14, 2017 AT 03:25 AM', NULL, 64),
(75, NULL, 'lolzzzzzzzzzzzz', 'July 14, 2017 AT 03:25 AM', NULL, 64),
(76, NULL, 'testetst', 'July 14, 2017 AT 03:26 AM', NULL, 65),
(77, NULL, 'i am the terminator!!', 'July 14, 2017 AT 03:29 AM', NULL, 66),
(78, NULL, 'i am the terminator!!', 'July 14, 2017 AT 03:31 AM', NULL, 66),
(79, NULL, 'asdasdasda', 'July 14, 2017 AT 03:32 AM', NULL, 67),
(80, NULL, 'asdasdasda', 'July 14, 2017 AT 03:39 AM', NULL, 67),
(81, NULL, 'last comment before i sleep', 'July 14, 2017 AT 03:40 AM', NULL, 68),
(82, NULL, 'wew', 'July 14, 2017 AT 12:34 PM', NULL, 68),
(83, NULL, 'peejay comment', 'July 14, 2017 AT 12:36 PM', NULL, 69),
(84, NULL, 'this is a comment', 'July 14, 2017 AT 12:36 PM', NULL, 70),
(85, NULL, 'aaaaaaaaaaaaaa', 'July 14, 2017 AT 12:37 PM', NULL, 70),
(86, NULL, 'kevs', 'July 14, 2017 AT 12:40 PM', NULL, 41),
(87, NULL, 'nice post :D', 'July 14, 2017 AT 01:09 PM', NULL, 79),
(88, NULL, 'very informative', 'July 14, 2017 AT 01:10 PM', NULL, 82),
(89, NULL, 'cool', 'July 14, 2017 AT 01:11 PM', NULL, 79),
(90, NULL, 'open minded ka ba?', 'July 14, 2017 AT 01:18 PM', NULL, 79),
(91, NULL, 'please feature my bicycles\r\n', 'July 14, 2017 AT 01:29 PM', NULL, 102),
(92, NULL, 'Ganda..', 'July 14, 2017 AT 01:37 PM', NULL, 104),
(93, NULL, 'first!', 'July 14, 2017 AT 01:37 PM', NULL, 109),
(94, NULL, 'second!', 'July 14, 2017 AT 01:38 PM', NULL, 109);

-- --------------------------------------------------------

--
-- Table structure for table `deleted_posts`
--

CREATE TABLE `deleted_posts` (
  `del_blog_id` int(11) NOT NULL,
  `del_title` varchar(255) DEFAULT NULL,
  `del_subheading` varchar(255) DEFAULT NULL,
  `del_author_id` int(11) DEFAULT NULL,
  `del_category_id` int(11) DEFAULT NULL,
  `del_date_created` varchar(255) DEFAULT NULL,
  `del_time_created` varchar(255) DEFAULT NULL,
  `del_date_modified` varchar(255) DEFAULT NULL,
  `del_time_modified` varchar(255) DEFAULT NULL,
  `del_date_published` varchar(255) DEFAULT NULL,
  `date_deleted` varchar(255) DEFAULT NULL,
  `del_meta_desc` varchar(255) DEFAULT NULL,
  `del_tag_id` int(11) DEFAULT NULL,
  `del_comment_id` int(11) DEFAULT NULL,
  `del_views` int(11) DEFAULT NULL,
  `del_thumbnail` varchar(255) DEFAULT NULL,
  `del_article` text,
  `del_approved` tinyint(1) DEFAULT NULL,
  `del_featured` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deleted_posts`
--

INSERT INTO `deleted_posts` (`del_blog_id`, `del_title`, `del_subheading`, `del_author_id`, `del_category_id`, `del_date_created`, `del_time_created`, `del_date_modified`, `del_time_modified`, `del_date_published`, `date_deleted`, `del_meta_desc`, `del_tag_id`, `del_comment_id`, `del_views`, `del_thumbnail`, `del_article`, `del_approved`, `del_featured`) VALUES
(1, '$title', '$subheading', 0, 0, '$date_created', '$time_created', NULL, NULL, NULL, '$date_deleted', NULL, 0, 0, 0, '$thumbnail', '$article', 0, 0),
(3, '2', '2', 3, 11, 'July 08, 2017', '10:32 PM', '', 'time_modified', NULL, '10:33 PM, July 08, 2017', NULL, 0, 0, 0, 'Z:/xampp/htdocs/capstone2/uploads/admin/dashboard-admin-panel-small.png', '<p>2</p>', 1, 0),
(4, '123', '1,2,3,4', 3, 5, 'July 03, 2017', '10:51 AM', 'July 06, 2017', 'time_modified', NULL, '10:35 PM, July 08, 2017', NULL, 0, 0, 1, '../uploads/admin/13173044_1777418432488527_3344471199338939686_o.jpg', '<p>catwoman<img src=\"/capstone2/images/13173044_1777418432488527_3344471199338939686_o1.jpg\" alt=\"Source : Kevin C. Chavez\" width=\"1280\" /><img src=\"/capstone2/images/68cc27b5c30be8a82899116eb1d8326e.png\" /></p>', 1, 0),
(5, '10 Ways Grab Has Made Life Easier for Filipinos', 'grab, car, negosyo', 3, 10, 'July 03, 2017', '10:56 AM', '', 'time_modified', 'del_date_published', '08:45 PM, July 09, 2017', NULL, 0, 0, 1, 'uploads/admin/grab-taxi.jpg', '<h1><strong>1. Grab gets authorized to operate in NAIA</strong></h1>\r\n<p>&nbsp;</p>\r\n<p><img src=\"/capstone2/images/save2.jpg\" width=\"564\" height=\"188\" /></p>\r\n<blockquote>\r\n<p>There was a time when&nbsp;<em>balikbayans&nbsp;</em>returning home from abroad need to grapple with the airport taxis charging sky-high rates that reached thousands.&nbsp;Grab has stepped up its game with Grab booths &mdash; booths are available in all terminals to make sure Grab vehicles are accessible to travellers even when they don&rsquo;t have smartphones or mobile data. Now,&nbsp;<em>balikbayans&nbsp;</em>and tourists&nbsp;can experience an affordable, safe, and convenient ride home.</p>\r\n</blockquote>\r\n<h3>&nbsp;</h3>\r\n<h2><strong>2. GrabExpress offers a way for people to deliver goods</strong></h2>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-7/\" rel=\"attachment wp-att-271872\"><img class=\"aligncenter size-full wp-image-271872\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-7.jpeg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s3.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-7.jpeg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-7-300x170.jpeg 300w\" alt=\"Grab Anniversary 7\" width=\"720\" height=\"407\" /></a></p>\r\n<p><code>GrabExpress</code> is a godsend for those who need to deliver something. It&rsquo;s significantly more affordable than booking a <span style=\"text-decoration: line-through;\">GrabCa</span>r and works on demand, meaning your parcel will get picked up immediately and delivered straight to your recipient. This is perfect for those with online businesses, or when you forget something at home.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>3. GrabTrike let people get tricycles on demand</strong></p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/enjoy-free-grabtricycle-rides-around-pioneer-mandaluyong-til-april-5-todanato/grab-tricycle/\" rel=\"attachment wp-att-260704\"><img class=\"aligncenter size-full wp-image-260704\" src=\"http://s3.wheninmanila.com/wp-content/uploads/2017/03/Grab-Tricycle-e1490747098781.jpeg\" alt=\"Grab Tricycle\" width=\"750\" height=\"563\" /></a></p>\r\n<p>Sometimes a tricycle is the only mode of transportation available. And if that&rsquo;s the case, everyone is scrambling to get one.&nbsp;In Pampanga, Grab offers GrabTrike, where locals and tourists can get around the country&rsquo;s food capital in a fast, reliable, and affordable way. For a limited time, residents and employees working in Mandaluyong got free GrabTrikes with the push of a button!</p>\r\n<p>&nbsp;</p>\r\n<h4><strong>4. Need to see the skies? GrabHeli is for you</strong></h4>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grabheli-2/\" rel=\"attachment wp-att-271875\"><img class=\"aligncenter size-full wp-image-271875\" src=\"http://s2.wheninmanila.com/wp-content/uploads/2017/07/GrabHeli-2.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/GrabHeli-2.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/GrabHeli-2-300x200.jpg 300w, //www.wheninmanila.com/wp-content/uploads/2017/07/GrabHeli-2-284x190.jpg 284w\" alt=\"GrabHeli 2\" width=\"720\" height=\"480\" /></a></p>\r\n<p>If GrabCar is not enough, you can choose to travel in style with GrabHeli, a pre-booking helicopter service. For P3,888, a person can board a chopper and take an aerial tour of Makati, Bonifacio Global City, and Pasay. It&rsquo;s too bad the service was discontinued because we&rsquo;d love to see the Manila sunset up in the sky.</p>\r\n<p>&nbsp;</p>\r\n<h5><strong>5. GrabRewards gives exciting perks</strong></h5>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-5/\" rel=\"attachment wp-att-271870\"><img class=\"aligncenter size-full wp-image-271870\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-5.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-5.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-5-300x108.jpg 300w\" alt=\"Grab Anniversary 5\" width=\"720\" height=\"258\" /></a></p>\r\n<p>Apart from getting to our destination safely and comfortably, we also get rewards with GrabRewards, which we can use to redeem rewards like discounts on our next ride, and discounts and freebies in restaurants, services, and more! Your rewards points also classify you as either Member, Silver, Gold, and Platinum, which has its own perks like priority access to new features or prioritized bookings!</p>\r\n<p>&nbsp;</p>\r\n<h6><strong>6. GrabShare lets users save on fares</strong></h6>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-4/\" rel=\"attachment wp-att-271869\"><img class=\"aligncenter size-full wp-image-271869\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-4.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s3.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-4.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-4-300x165.jpg 300w\" alt=\"Grab Anniversary 4\" width=\"720\" height=\"396\" /></a></p>\r\n<p>Those who want to have the Grab experience for less can try GrabShare, which lets users carpool with another passenger for up to 30% less than what they would pay for in a GrabCar. It&rsquo;s also good for traffic and carbon footprint, because it further decreases the number of people and cars on the road!</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>7. GrabCar offered rides with animal ears</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/score-a-free-ride-with-grabtaxis-grabarkada-character-car-trio-as-part-of-grabtaxi-philippines-first-anniversary/grab-taxi-mr-fox/\" rel=\"attachment wp-att-135642\"><img class=\"aligncenter size-full wp-image-135642\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2014/08/Grab-Taxi-Mr-Fox.jpg\" alt=\"Grab-Taxi-Mr-Fox\" width=\"600\" height=\"400\" /></a></p>\r\n<p>If you&rsquo;re into cute stuff, you probably know Grab&rsquo;s cars with cute animal ears. There&rsquo;s the cat, the rabbit, and the bear cars. It&rsquo;s a great experience riding it on the road, especially when drivers and pedestrians are looking and taking pictures. They&rsquo;re quite the rare Pokemon, but worth it when you catch them.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>8. GrabPay Credits for cashless payment without debit or credit cards</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-3/\" rel=\"attachment wp-att-271868\"><img class=\"aligncenter size-full wp-image-271868\" src=\"http://s2.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-3.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s3.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-3.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-3-300x108.jpg 300w\" alt=\"Grab Anniversary 3\" width=\"720\" height=\"258\" /></a></p>\r\n<p>Grab is the first ride-hailing mobile app to offer cash payments, and now they&rsquo;re making it easier for users to book rides. Grabpay Credits lets users experience cashless payments even without a debit or credit card. It&rsquo;s a prepaid mobile plan, and can be availed of in partner banks (online and over-the-counter) and establishments.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>9. OpenTraffic can improve traffic for 620 million commuters across Southeast Asia</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-2/\" rel=\"attachment wp-att-271867\"><img class=\"aligncenter size-full wp-image-271867\" src=\"http://s3.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-2.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-2.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-2-300x181.jpg 300w\" alt=\"Grab Anniversary 2\" width=\"720\" height=\"435\" /></a></p>\r\n<p>Grab partnered with the World Bank and Southeast Asian governments for OpenTraffic, an easy-to-use traffic data platform that aggregates anonymized driver GPS data from all the cities Grab operates in. Traffic statistics are shown in real-time, which means governments can look and see how to address transport problems affecting over 620 million residents in Southeast Asia.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>10. Grab Driver Academy trains drivers to give the best service</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/print-57/\" rel=\"attachment wp-att-271866\"><img class=\"aligncenter size-full wp-image-271866\" src=\"http://s2.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary--300x100.jpg 300w\" alt=\"Print\" width=\"720\" height=\"239\" /></a></p>\r\n<p>To ensure the safety of passengers, Grab enrolls their drivers in the Grab Driver Academy, which has first aid training from Red Cross, a safety driving seminar from Honda Safety Driving Center, and customer service and hospitality training from John Robert Powers. If ever you&rsquo;re wondering why your Grab drivers are polite and great at what they do, it&rsquo;s because of the Grab Driver Academy!</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-9/\" rel=\"attachment wp-att-271874\"><img class=\"aligncenter size-full wp-image-271874\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-9.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s2.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-9.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-9-300x189.jpg 300w\" alt=\"Grab Anniversary 9\" width=\"720\" height=\"453\" /></a></p>\r\n<p>To celebrate its fifth anniversary, Grab held the first-ever Grab Green Light Awards, which recognized 25 exceptional drivers, employees, peers, and passengers.</p>\r\n<p>To experience the comfort and convenience of Grab, download the app on the Google Play Store or the App Store.</p>', 1, 0),
(6, '20 Ways Grab Has Made Life Easier for Filipinos -EDITED', '20', 3, 11, 'July 05, 2017', '04:03 AM', 'July 05, 2017', 'time_modified', 'del_date_published', '08:55 PM, July 09, 2017', NULL, 0, 0, 7, 'uploads/admin/grab-taxi.jpg', '<h1><strong>1. Grab gets authorized to operate in NAIA&nbsp; -EDITED</strong></h1>\r\n<p>&nbsp;</p>\r\n<p><img src=\"/capstone2/images/save2.jpg\" width=\"564\" height=\"188\" /></p>\r\n<blockquote>\r\n<p>There was a time when&nbsp;<em>balikbayans&nbsp;</em>returning home from abroad need to grapple with the airport taxis charging sky-high rates that reached thousands.&nbsp;Grab has stepped up its game with Grab booths &mdash; booths are available in all terminals to make sure Grab vehicles are accessible to travellers even when they don&rsquo;t have smartphones or mobile data. Now,&nbsp;<em>balikbayans&nbsp;</em>and tourists&nbsp;can experience an affordable, safe, and convenient ride home.</p>\r\n</blockquote>\r\n<h3>&nbsp;</h3>\r\n<h2><strong>2. GrabExpress offers a way for people to deliver goods</strong></h2>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-7/\" rel=\"attachment wp-att-271872\"><img class=\"aligncenter size-full wp-image-271872\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-7.jpeg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s3.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-7.jpeg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-7-300x170.jpeg 300w\" alt=\"Grab Anniversary 7\" width=\"720\" height=\"407\" /></a></p>\r\n<p><code>GrabExpress</code> is a godsend for those who need to deliver something. It&rsquo;s significantly more affordable than booking a <span style=\"text-decoration: line-through;\">GrabCa</span>r and works on demand, meaning your parcel will get picked up immediately and delivered straight to your recipient. This is perfect for those with online businesses, or when you forget something at home.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>3. GrabTrike let people get tricycles on demand</strong></p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/enjoy-free-grabtricycle-rides-around-pioneer-mandaluyong-til-april-5-todanato/grab-tricycle/\" rel=\"attachment wp-att-260704\"><img class=\"aligncenter size-full wp-image-260704\" src=\"http://s3.wheninmanila.com/wp-content/uploads/2017/03/Grab-Tricycle-e1490747098781.jpeg\" alt=\"Grab Tricycle\" width=\"750\" height=\"563\" /></a></p>\r\n<p>Sometimes a tricycle is the only mode of transportation available. And if that&rsquo;s the case, everyone is scrambling to get one.&nbsp;In Pampanga, Grab offers GrabTrike, where locals and tourists can get around the country&rsquo;s food capital in a fast, reliable, and affordable way. For a limited time, residents and employees working in Mandaluyong got free GrabTrikes with the push of a button!</p>\r\n<p>&nbsp;</p>\r\n<h4><strong>4. Need to see the skies? GrabHeli is for you</strong></h4>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grabheli-2/\" rel=\"attachment wp-att-271875\"><img class=\"aligncenter size-full wp-image-271875\" src=\"http://s2.wheninmanila.com/wp-content/uploads/2017/07/GrabHeli-2.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/GrabHeli-2.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/GrabHeli-2-300x200.jpg 300w, //www.wheninmanila.com/wp-content/uploads/2017/07/GrabHeli-2-284x190.jpg 284w\" alt=\"GrabHeli 2\" width=\"720\" height=\"480\" /></a></p>\r\n<p>If GrabCar is not enough, you can choose to travel in style with GrabHeli, a pre-booking helicopter service. For P3,888, a person can board a chopper and take an aerial tour of Makati, Bonifacio Global City, and Pasay. It&rsquo;s too bad the service was discontinued because we&rsquo;d love to see the Manila sunset up in the sky.</p>\r\n<p>&nbsp;</p>\r\n<h5><strong>5. GrabRewards gives exciting perks</strong></h5>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-5/\" rel=\"attachment wp-att-271870\"><img class=\"aligncenter size-full wp-image-271870\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-5.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-5.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-5-300x108.jpg 300w\" alt=\"Grab Anniversary 5\" width=\"720\" height=\"258\" /></a></p>\r\n<p>Apart from getting to our destination safely and comfortably, we also get rewards with GrabRewards, which we can use to redeem rewards like discounts on our next ride, and discounts and freebies in restaurants, services, and more! Your rewards points also classify you as either Member, Silver, Gold, and Platinum, which has its own perks like priority access to new features or prioritized bookings!</p>\r\n<p>&nbsp;</p>\r\n<h6><strong>6. GrabShare lets users save on fares</strong></h6>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-4/\" rel=\"attachment wp-att-271869\"><img class=\"aligncenter size-full wp-image-271869\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-4.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s3.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-4.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-4-300x165.jpg 300w\" alt=\"Grab Anniversary 4\" width=\"720\" height=\"396\" /></a></p>\r\n<p>Those who want to have the Grab experience for less can try GrabShare, which lets users carpool with another passenger for up to 30% less than what they would pay for in a GrabCar. It&rsquo;s also good for traffic and carbon footprint, because it further decreases the number of people and cars on the road!</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>7. GrabCar offered rides with animal ears</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/score-a-free-ride-with-grabtaxis-grabarkada-character-car-trio-as-part-of-grabtaxi-philippines-first-anniversary/grab-taxi-mr-fox/\" rel=\"attachment wp-att-135642\"><img class=\"aligncenter size-full wp-image-135642\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2014/08/Grab-Taxi-Mr-Fox.jpg\" alt=\"Grab-Taxi-Mr-Fox\" width=\"600\" height=\"400\" /></a></p>\r\n<p>If you&rsquo;re into cute stuff, you probably know Grab&rsquo;s cars with cute animal ears. There&rsquo;s the cat, the rabbit, and the bear cars. It&rsquo;s a great experience riding it on the road, especially when drivers and pedestrians are looking and taking pictures. They&rsquo;re quite the rare Pokemon, but worth it when you catch them.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>8. GrabPay Credits for cashless payment without debit or credit cards</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-3/\" rel=\"attachment wp-att-271868\"><img class=\"aligncenter size-full wp-image-271868\" src=\"http://s2.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-3.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s3.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-3.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-3-300x108.jpg 300w\" alt=\"Grab Anniversary 3\" width=\"720\" height=\"258\" /></a></p>\r\n<p>Grab is the first ride-hailing mobile app to offer cash payments, and now they&rsquo;re making it easier for users to book rides. Grabpay Credits lets users experience cashless payments even without a debit or credit card. It&rsquo;s a prepaid mobile plan, and can be availed of in partner banks (online and over-the-counter) and establishments.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>9. OpenTraffic can improve traffic for 620 million commuters across Southeast Asia</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-2/\" rel=\"attachment wp-att-271867\"><img class=\"aligncenter size-full wp-image-271867\" src=\"http://s3.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-2.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-2.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-2-300x181.jpg 300w\" alt=\"Grab Anniversary 2\" width=\"720\" height=\"435\" /></a></p>\r\n<p>Grab partnered with the World Bank and Southeast Asian governments for OpenTraffic, an easy-to-use traffic data platform that aggregates anonymized driver GPS data from all the cities Grab operates in. Traffic statistics are shown in real-time, which means governments can look and see how to address transport problems affecting over 620 million residents in Southeast Asia.</p>\r\n<p>&nbsp;</p>\r\n<h3><strong>10. Grab Driver Academy trains drivers to give the best service</strong></h3>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/print-57/\" rel=\"attachment wp-att-271866\"><img class=\"aligncenter size-full wp-image-271866\" src=\"http://s2.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary--300x100.jpg 300w\" alt=\"Print\" width=\"720\" height=\"239\" /></a></p>\r\n<p>To ensure the safety of passengers, Grab enrolls their drivers in the Grab Driver Academy, which has first aid training from Red Cross, a safety driving seminar from Honda Safety Driving Center, and customer service and hospitality training from John Robert Powers. If ever you&rsquo;re wondering why your Grab drivers are polite and great at what they do, it&rsquo;s because of the Grab Driver Academy!</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.wheninmanila.com/10-ways-grab-has-made-life-easier-for-filipinos/grab-anniversary-9/\" rel=\"attachment wp-att-271874\"><img class=\"aligncenter size-full wp-image-271874\" src=\"http://s1.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-9.jpg\" sizes=\"(max-width: 720px) 100vw, 720px\" srcset=\"http://s2.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-9.jpg 720w, //www.wheninmanila.com/wp-content/uploads/2017/07/Grab-Anniversary-9-300x189.jpg 300w\" alt=\"Grab Anniversary 9\" width=\"720\" height=\"453\" /></a></p>\r\n<p>To celebrate its fifth anniversary, Grab held the first-ever Grab Green Light Awards, which recognized 25 exceptional drivers, employees, peers, and passengers.</p>\r\n<p>To experience the comfort and convenience of Grab, download the app on the Google Play Store or the App Store.</p>', 1, 0),
(7, 'Pink Halo Halo', 'A film by Joselito Altarejos', 3, 1, 'July 10, 2017', '01:51 PM', '', 'time_modified', 'del_date_published', '01:54 PM, July 10, 2017', NULL, 0, 0, 0, '/uploads/admin/007.jpg', '<p><img src=\"/capstone2/uploads/blog_images/007.jpg\" /></p>\r\n<p>Hello testing lang</p>\r\n<blockquote>\r\n<p>Lorem Ipsum</p>\r\n</blockquote>', 1, 0),
(8, '1', '2', 3, 11, 'July 10, 2017', '12:50 PM', '', 'time_modified', 'del_date_published', '09:24 AM, July 11, 2017', NULL, 0, 0, 0, '/uploads/admin/gwapo.jpg', '<p>1</p>', 1, 0),
(9, '2', '2', 3, 11, 'July 10, 2017', '02:50 PM', '', 'time_modified', 'del_date_published', '09:31 AM, July 11, 2017', NULL, 0, 0, 0, '/uploads/admin/19457839_1599743963404313_1813025540_o.jpg', '<p>hehe</p>', 1, 0),
(10, 'Test', 'Test', 3, 12, 'July 10, 2017', '04:07 PM', '', 'time_modified', 'del_date_published', '09:32 AM, July 11, 2017', NULL, 0, 0, 0, '/uploads/admin/19457839_1599743963404313_1813025540_o.jpg', '<p>test</p>', 1, 0),
(11, 'NEW POST', 'NEW POST', 3, 2, 'July 10, 2017', '04:08 PM', '', 'time_modified', 'del_date_published', '09:35 AM, July 11, 2017', NULL, 0, 0, 0, '/uploads/admin/logo.png', '<p>hehe</p>', 1, 0),
(12, 'FINAL POST', 'FINAL HEADING', 3, 1, 'July 10, 2017', '04:11 PM', '', 'time_modified', 'del_date_published', '09:35 AM, July 11, 2017', NULL, 0, 0, 0, '/uploads/admin/favicon.jpg', '<p>haha</p>', 1, 0),
(13, 'kevin chavez', 'kevin chavez', 3, 6, 'July 10, 2017', '04:01 PM', '', 'time_modified', 'del_date_published', '09:39 AM, July 11, 2017', NULL, 0, 0, 0, '/uploads/admin/gwapo.jpg', '<p>test</p>', 1, 0),
(14, '1', '1', 3, 11, 'July 11, 2017', '09:44 AM', '', 'time_modified', 'del_date_published', '09:44 AM, July 11, 2017', NULL, 0, 0, 0, '/uploads/admin/nadine.jpg', '<p>hehe</p>', 1, 0),
(15, '2', '2', 3, 11, 'July 11, 2017', '09:46 AM', '', 'time_modified', 'del_date_published', '09:46 AM, July 11, 2017', NULL, 0, 0, 0, '/uploads/admin/dashboard-admin-panel-small.png', '<p>2</p>', 1, 0),
(16, 'try', 'try', 3, 1, 'July 14, 2017', '12:47 PM', '', 'time_modified', 'del_date_published', '01:13 PM, July 14, 2017', NULL, 0, 0, 1, '/uploads/admin/maxresdefault.jpg', '<p><strong></strong>&lt;iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/SXB2IHLm4m0\" frameborder=\"0\" allowfullscreen&gt;&lt;/iframe&gt;</p>', 1, 0),
(17, '1', '123', 3, 12, 'July 14, 2017', '01:44 PM', '', 'time_modified', 'del_date_published', '01:45 PM, July 14, 2017', NULL, 0, 0, 0, '/uploads/admin/nadine.jpg', '<p>1</p>', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_tag_id` int(11) NOT NULL,
  `tags_id` int(11) DEFAULT NULL,
  `blog_post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_tag_id`, `tags_id`, `blog_post_id`) VALUES
(10, 22, 34),
(11, 23, 34),
(12, 24, 34),
(13, 35, 35),
(14, 13, 35),
(15, 14, 35),
(16, 28, 35),
(17, 22, 36),
(18, 23, 36),
(19, 24, 36),
(20, 28, 36),
(21, 29, 36),
(22, 30, 36),
(23, 31, 37),
(24, 32, 37),
(25, 33, 37),
(26, 34, 37),
(27, 35, 38),
(28, 36, 39),
(29, 37, 40),
(30, 38, 40),
(31, 39, 41),
(32, 40, 41),
(33, 41, 41),
(34, 42, 41),
(35, 43, 42),
(36, 44, 42),
(37, 45, 42),
(38, 46, 42),
(39, 47, 43),
(40, 48, 44),
(41, 49, 44),
(42, 50, 44),
(43, 51, 0),
(44, 52, 0),
(45, 53, 0),
(46, 54, 45),
(47, 55, 45),
(48, 56, 45),
(49, 57, 46),
(50, 58, 46),
(51, 59, 47),
(52, 60, 47),
(53, 56, 47),
(54, 61, 48),
(55, 62, 48),
(56, 63, 48),
(57, 64, 48),
(58, 61, 0),
(59, 62, 0),
(60, 63, 0),
(61, 64, 0),
(62, 65, 49),
(63, 66, 49),
(64, 67, 50),
(65, 68, 50),
(66, 69, 50),
(67, 70, 51),
(68, 71, 51),
(69, 72, 52),
(70, 73, 53),
(71, 74, 53),
(72, 75, 53),
(73, 76, 53),
(74, 77, 53);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `display_pic` varchar(155) DEFAULT NULL,
  `role` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `first_name`, `middle_name`, `last_name`, `gender`, `display_pic`, `role`) VALUES
(1, 'twirlwhirl', 'c53255317bb11707d0f614696b3ce6f221d0e2f2', 'twirlwhirl@yahoo.com', 'kevin', 'corral', 'chavez', 'male', NULL, 'author'),
(2, 'kibeeen', 'c53255317bb11707d0f614696b3ce6f221d0e2f2', 'kevin@gmail.com', 'kevin', 'corral', 'chavez', 'male', NULL, 'author'),
(3, 'admin', 'c53255317bb11707d0f614696b3ce6f221d0e2f2', 'admin@wheninnaga.com', 'kevin', 'corral', 'chavez', 'male', NULL, 'admin'),
(4, 'shane', '6f6e68d1df92f30cb4b3ce35260ddf94a402f33d', 'shane@email.com', 'shane', '', 'lalo', '', NULL, 'author');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `visitor_id` int(11) NOT NULL,
  `ip` varchar(11) NOT NULL,
  `visitor_name` varchar(255) DEFAULT NULL,
  `visitor_email` varchar(255) DEFAULT NULL,
  `visitor_website` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `avatar_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`visitor_id`, `ip`, `visitor_name`, `visitor_email`, `visitor_website`, `avatar`, `avatar_id`) VALUES
(40, '::1', 'kevin', 'asdsad@email.com', 'sda', NULL, NULL),
(41, '::1', 'anonymous', 'anonymous@email.com', 'website', NULL, NULL),
(42, '::1', 'kevinzz', 'ibangemail@email.com', 'asdasdas', NULL, NULL),
(43, '::1', 'kevin chavez', 'kevincchavez@gmail.com', 'www.fotobomber.com', NULL, NULL),
(44, '192.168.88.', NULL, NULL, NULL, NULL, NULL),
(45, '192.168.88.', NULL, NULL, NULL, NULL, NULL),
(46, '192.168.88.', NULL, NULL, NULL, NULL, NULL),
(47, '::1', 'Shane', 'hellokittygirl@gmail.co.jp', '', NULL, NULL),
(48, '192.168.88.', NULL, NULL, NULL, NULL, NULL),
(49, '192.168.88.', NULL, NULL, NULL, NULL, NULL),
(50, '192.168.88.', NULL, NULL, NULL, NULL, NULL),
(51, '::1', 'Mari', 'mari@bicycles.com', 'twitter.com', NULL, NULL),
(52, '192.168.88.', NULL, NULL, NULL, NULL, NULL),
(53, '192.168.88.', NULL, NULL, NULL, NULL, NULL),
(54, '::1', 'Anonymous', 'Anonymous@protonmail.com', 'protonmail.com', NULL, NULL),
(55, '192.168.88.', NULL, NULL, NULL, NULL, NULL),
(56, '192.168.88.', NULL, NULL, NULL, NULL, NULL),
(57, '192.168.88.', NULL, NULL, NULL, NULL, NULL),
(58, '192.168.88.', NULL, NULL, NULL, NULL, NULL),
(59, '::1', 'kevinchavez', 'kevin@gmail.com', 'webz', NULL, NULL),
(60, '::1', 'qweqwe', 'asdasd@gmail.com', '', NULL, NULL),
(61, '::1', 'shabu', 'shabu@gmail.com', '', NULL, NULL),
(62, '::1', 'kevin chavez', 'twirlwhirl@yahoo.com', 'www.twirlwhirl.com', NULL, NULL),
(63, '::1', 'jason kidd', 'newemail@yaho.com', 'wala', NULL, 0),
(64, '::1', 'michael jordan', 'hmmm@yahoo.com', 'jordaon', '/uploads/!guest-avatars/18.jpg', NULL),
(65, '::1', 'scottie pipen', 'scottie@yahoo.com', 'joker', '/uploads/!guest-avatars/10.jpg', NULL),
(66, '::1', 'terminator', 'terminator@a.com', '', '/uploads/!guest-avatars/13.jpg', NULL),
(67, '::1', 'random name', 'toinkz@toinkz.com', 'asdsad', '/uploads/!guest-avatars/20.jpg', NULL),
(68, '::1', 'joker', 'joker@yahoo.com', 'joekr', '/uploads/!guest-avatars/6.jpg', NULL),
(69, '::1', 'peejay', 'peejay@gmail.com', 'peejay.com', '/uploads/!guest-avatars/20.jpg', NULL),
(70, '::1', 'peejayy', 'peejay@yahoo.com', 'pej.com', '/uploads/!guest-avatars/13.jpg', NULL),
(71, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(72, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(73, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(74, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(75, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(76, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(77, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(78, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(79, '192.168.1.1', 'hellish', 'hell@email.com', 'twitter.com/hellish', '/uploads/!guest-avatars/20.jpg', NULL),
(80, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(81, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(82, '192.168.1.1', 'amphibole', 'amphibole@minerals.com', 'mindat.org', '/uploads/!guest-avatars/7.jpg', NULL),
(83, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(84, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(85, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(86, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(87, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(88, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(89, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(90, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(91, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(92, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(93, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(94, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(95, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(96, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(97, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(98, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(99, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(100, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(101, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(102, '192.168.1.1', 'bicycles', 'shane@bicycles.com', '', '/uploads/!guest-avatars/22.jpg', NULL),
(103, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(104, '::1', 'alcopra', 'seigfred@yahoo.com', 'wewew', '/uploads/!guest-avatars/14.jpg', NULL),
(105, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(106, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(107, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(108, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(109, '192.168.1.1', 'first', 'first@glorydays.com', '', '/uploads/!guest-avatars/9.jpg', NULL),
(110, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(111, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(112, '192.168.1.1', NULL, NULL, NULL, NULL, NULL),
(113, '192.168.1.1', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`avatar_id`);

--
-- Indexes for table `blog_author`
--
ALTER TABLE `blog_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`blog_comment_id`);

--
-- Indexes for table `blog_images`
--
ALTER TABLE `blog_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`blog_id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`tags_id`),
  ADD UNIQUE KEY `tagName` (`tag_name`);

--
-- Indexes for table `blog_visitors`
--
ALTER TABLE `blog_visitors`
  ADD PRIMARY KEY (`blog_visitor_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `deleted_posts`
--
ALTER TABLE `deleted_posts`
  ADD PRIMARY KEY (`del_blog_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`post_tag_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`visitor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avatars`
--
ALTER TABLE `avatars`
  MODIFY `avatar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `blog_author`
--
ALTER TABLE `blog_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `blog_images`
--
ALTER TABLE `blog_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `tags_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `blog_visitors`
--
ALTER TABLE `blog_visitors`
  MODIFY `blog_visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `deleted_posts`
--
ALTER TABLE `deleted_posts`
  MODIFY `del_blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `post_tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
