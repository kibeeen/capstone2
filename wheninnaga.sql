-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2017 at 10:03 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(103, 37, 68, 81);

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
(22, 'San Miguel Confirms It\'s in Talks to Acquire Stake in BMW Distributor in PH', 'Conglomerate mulls possible investment despite looming higher taxes on luxury cars', '/uploads/admin/BMW-3.jpg', '<p>Diversified conglomerate San Miguel Corp. (SMC) has confirmed it is in discussions with Jose Alvarez, chairman and principal owner of Asian Carmakers Corp. (ACC), for a possible investment in the exclusive distributor for BMW cars in the Philippines. Based in Germany, BMW is considered the world&rsquo;s leading premium car maker.</p>\r\n<p>In a disclosure to the Philippine Stock Exchange (PSE) on July 6, San Miguel&rsquo;s corporate information officer Ferdinand K. Constantino said: &ldquo;We confirm that San Miguel Corp. is in talks with Palawan Governor and Asian Carmakers Corp. for an investment by the Company in the importation, distribution and servicing of BMW vehicles in the country, as advised by Mr. Ramon S. Ang, president and chief operating officer.&rdquo;</p>\r\n<p>The disclosure was in reaction to news reports that Ang was invited by Alvarez to acquire a majority equity stake in ACC. The reports also mentioned that while a definitive agreement may be finalized within the month, Ang, a well-known car collector, has already assumed the presidency of Asian Carmakers.</p>\r\n<p>&nbsp;</p>\r\n<p>&ldquo;An appropriate disclosure shall be made to the Exchange in the event a definitive agreement is concluded for the said contemplated investment,&rdquo; SMC said.&nbsp;</p>\r\n<p>ACC has been the official importer and service provider of BMW cars in the country since 1993. In 2015, the company reported net sales of Php2.3 billion and earned a net income of Php84.8 million, more than double Php36.9 million the previous year.&nbsp;It is just one of the many businesses in the Philippines and abroad of Alvarez who was considered the richest elected official in 2014, according to a TV report in GMA Network.</p>\r\n<p>Ang and Alvarez&rsquo;s deal come in the midst of the government&rsquo;s plans to increase higher excise taxes as part of the Duterte administration&rsquo;s Tax Reform for Acceleration and Inclusion (TRAIN). A version of the tax packaged passed by the House of Representatives, House Bill (HB) Number 5636, in May, imposes steep tax hikes on expensive luxury vehicles.</p>\r\n<p>Currently, cars with a net manufacturer or importer&rsquo;s selling price of over Php2.1 million are subject to tax of Php512,000 plus 60 percent in excess of Php2.1 million. HB 5636 increases these rates to Php824,000 plus 100 percent of the excess over Php2.1 million for cars with net price of between more than Php2.1 million and Php3.1 million. For cars with net price of over Php3.1, the rates will rise to PhpP1.8 million plus 120 percent of the excess over Php3.1 million.</p>\r\n<p>Applying the proposed tax rates on the car maker&rsquo;s least expensive model in the Philippines (BMW 2 Series Active Tourer which retails for Php2.3 million) and most expensive model (BMW X6 which sells for Php13.54 million),&nbsp;<em>Entrepreneur Philippines</em>&nbsp;estimates that the excise taxes on those models will rise by between 60 percent and almost a hundred percent.</p>\r\n<p>The sharp rise in excise taxes especially on luxury cars has prompted their importers to lobby hard for more modest tax increases, worried that the proposed tax rates may hurt demand for luxury vehicles and trigger a slump in sales.</p>\r\n<p>But Department of Finance (DOF) officials say that other countries&rsquo; experiences belie fears that higher excise taxes automatically lead to lower car sales. &ldquo;In Malaysia, luxury car sales grew by 3.9 percent in 2016, while in Indonesia, the luxury car manufacturer BMW recently expanded its model list and local car assembly, both for the domestic Indonesian and export markets, because of high demand despite the high tax rates,&rdquo; said the DOF in a statement last month.&nbsp;<em>With additional research by Pauline Macaraeg</em></p>', 3, 'July 09, 2017', '07:44 PM', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 2, 'July 09, 2017', '07:55 PM', 14, 1, 0, NULL),
(23, 'Injap Sia\'s DoubleDragon Is Selling New 7-Year Bonds That Pay 6.09% p.a.', 'The bond offer lasts until July 13 and requires a minimum investment of Php50k', '/uploads/admin/Double-Dragon-3.jpg', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/capstone2/uploads/blog_images/Double-Dragon-3.jpg\" /></p>\r\n<p>Real estate developer DoubleDragon Properties Corp. is offering up to Php9.7 billion worth of 7-year fixed-rate retail bonds that pay an annual coupon rate of 6.0952 percent.</p>\r\n<p>Proceeds from the offer will be used to finance DoubleDragon&rsquo;s core real estate projects for 2017 and 2018. Among these projects include the construction of 10-13 CityMalls, its chain of community shopping centers, as well as the acquisition of 15-20 sites for future CityMall developments. The company will also use the funds for the construction of DD Meridian Park near the SM Mall of Asia and Jollibee Tower at the Ortigas central business district.</p>\r\n<p>The retail bonds&rsquo; coupon rate is higher than that of the latest-issued 7-year Treasury bond, which stood at 4.5 percent according to data from the Bangko Sentral ng Pilipinas. It is also much higher than interest rates of time deposits lasting over two years, which average at 2.9 percent.</p>\r\n<p>However, investments in corporate retail bonds are riskier compared to bank deposits, which are insured by the government. Interested investors are encouraged to seek professional financial advice before purchasing retail bonds.</p>\r\n<p>DoubleDragon is headed by Edgar &ldquo;Injap&rdquo; Sia II, the founder of fast-food chain Mang Inasal and the youngest Filipino dollar billionaire according to US-based publication&nbsp;<em>Forbes</em>. As of end-May, the company has opened 15 CityMalls and has acquired 41 more sites for future mall developments. It is aiming to have a network of 30 operational CityMalls by the end of the year and to expand its leasable portfolio to one million square meters by 2020.</p>\r\n<p>The company&rsquo;s revenues hit Php1.3 billion as of end-2016, a 66.9-percent increase from the year before. DoubleDragon was also recognized last February for its stock price rising by 2,500 percent from its listing in April 2014. According to US-based media firm&nbsp;<em>Bloomberg</em>, its rapid ascent bested 460 other Asian property companies valued at least $500 million.</p>\r\n<p>However, the stock fell 21.5 percent as of end-June 2017 from a year ago, one of the worst performing among listed companies owned by Philippine billionaires in the&nbsp;<em>Forbes</em>&nbsp;list.</p>\r\n<p><strong>Related story:&nbsp;</strong><a href=\"http://www.entrepreneur.com.ph/news-and-events/how-are-ph-billionaires-faring-under-duterte-a00200-20170703\"><strong>How Are PH Billionaires Faring Under Duterte?</strong></a><strong>&nbsp;</strong></p>\r\n<p>Interested investors can purchase the retail bonds for a minimum of Php50,000. Additional placements can be made in increments of Php10,000. The offer period began on July 7 and will last until July 13. The retail bonds will be issued on July 21.</p>\r\n<p>This bond offering serves as the second tranche of DoubleDragon&rsquo;s Php15-billion bond shelf registration.&nbsp;<a href=\"http://www.entrepreneur.com.ph/news-and-events/lend-to-injap-sia-and-earn-6-p-a-for-the-next-10-years-a36-20161202\">The company issued the first tranche last December</a>, where the company sold Php5.3-billion worth of 10-year retail bonds. The first tranche of 10-year bonds paid a coupon rate of only 5.97 percent p.a. Just like the first tranche, this offering received a credit rating of PRS Aa from the Philippine Rating Services Corp., which means the company has a &ldquo;strong capacity to meet its financial commitments.&rdquo; Those interested are advised to read the&nbsp;<a href=\"http://www.doubledragon.com.ph/disclosures/popup/174\">offer supplement</a>&nbsp;for more details.</p>\r\n<p>BDO Capital &amp; Investment Corp., RCBC Capital Corp. and Maybank ATR Kim Eng serve as the offer&rsquo;s joint issue managers. They also serve as its joint lead underwriters and joint bookrunners together with BPI Capital Corp.</p>', 3, 'July 10, 2017', '02:39 AM', 'July 10, 2017', '02:40 AM', 'July', '2017', 1, NULL, NULL, NULL, 5, 4, 'July 10, 2017', '02:42 AM', 12, 1, 0, NULL),
(37, '78 Of The Best And Worst Superhero Movies\' Ranked!', 'It\'s an MCU versus DCEU battle royale. Where will your favorite movies land?', '/uploads/admin/superheroes.jpg', '<p>Now we&rsquo;ve done it. We&rsquo;ve ranked all superhero movies based on American comics from 78 to numero uno. It was a huge, heroic, Herculean task, but someone had to do it. I mean we all know that the&nbsp;<a href=\"http://www.fhm.com.ph/tag/marvel-cinematic-universe\" target=\"_blank\" rel=\"noopener\">MCU</a>&nbsp;is kicking the&nbsp;<a href=\"http://www.fhm.com.ph/tag/dc\" target=\"_blank\" rel=\"noopener\">DCEU</a>&rsquo;s ass, but how badly? And is&nbsp;<em><a href=\"http://www.fhm.com.ph/lifestyle/entertainment/wonder-woman-is-heroine-chic-fashionable-in-a-time-when-she-is-needed-most-a19-20170601\" target=\"_blank\" rel=\"noopener\">Wonder Woman</a>&rsquo;s</em>&nbsp;stellar score on Rotten Tomatoes enough to propel her to the top of the list? Read on, and you&rsquo;ll know.</p>\r\n<p>For starters, we all know<em>&nbsp;<a href=\"http://www.fhm.com.ph/lifestyle/entertainment/batman-v-superman-in-defense-of-zack-snyder-a249-20160403-lfrm\" target=\"_blank\" rel=\"noopener\">Batman v Superman</a>&nbsp;</em>sucks. But how about&nbsp;<em>BvS</em>&nbsp;of another sort? Like Tim Burton&rsquo;s&nbsp;<em>Batman</em>&nbsp;versus Richard Donner&rsquo;s&nbsp;<em>Superman&mdash;</em>which is better? Or if<em>&nbsp;<a href=\"http://www.fhm.com.ph/tag/civil-war\" target=\"_blank\" rel=\"noopener\">Civil War</a></em>&nbsp;is more your thing, how about&nbsp;<em>Iron Man</em>&nbsp;versus&nbsp;<em>Captain America: The First Avenge</em>r? Which is the greatest&nbsp;<a href=\"http://www.fhm.com.ph/tag/batman\" target=\"_blank\" rel=\"noopener\">Batman&nbsp;</a>movie of all time? Christopher Nolan&rsquo;s or Burton&rsquo;s? Which is the worst?&nbsp;<a href=\"http://www.fhm.com.ph/tag/zach-snyder\" target=\"_blank\" rel=\"noopener\">Zack Snyder</a>&rsquo;s or Joel Schumacher&rsquo;s? Who would win in a movie fight?&nbsp;<em>Deadpool</em>&nbsp;or&nbsp;<em>Logan</em>? Who has more movies in the Top 20&mdash;the MCU or the DCEU? How bad exactly is&nbsp;<em>Green Lantern</em>? And can someone please sort through the giant clusterf**k that is the&nbsp;<em>X-Men</em>&nbsp;franchise?</p>\r\n<p class=\"feed\"><img src=\"/capstone2/uploads/blog_images/superheroes.jpg\" /></p>\r\n<div class=\"sns-feed\">\r\n<div class=\"sns-feed-container\">\r\n<div class=\"sns-hex\">&nbsp;</div>\r\n<div class=\"sns-off\">\r\n<div class=\"sns-count-container\"><span class=\"sns-count\">&nbsp;</span></div>\r\n</div>\r\n<div class=\"sns-cancel\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"sns-backdrop\">&nbsp;</div>\r\n<p>Of course, to keen-eyed movie and comics nerds, there are more superhero movies out there than are on this list, but we refined our list based on the following rules&hellip;</p>\r\n<p>1. The list starts with&nbsp;<em>Superman</em>&nbsp;(1978). That&rsquo;s the one with Christopher Reeve, in case you&rsquo;re wondering. This is the moment in cinematic history when superhero movies began to matter. Wikipedia even describes it as the first modern superhero movie.</p>\r\n<p>2. No TV movies. Sorry Bill Bixby, those adorable&nbsp;<em>The Incredible</em>&nbsp;<em>Hulk</em>&nbsp;TV movies&mdash;still the iconic Hulk, if you ask us&mdash;aren&rsquo;t on this list.</p>\r\n<p>3. No animated movies. That means no&nbsp;<em>Big Hero 6</em>, no&nbsp;<a href=\"http://www.fhm.com.ph/tag/pixar\" target=\"_blank\" rel=\"noopener\">Pixar</a>&rsquo;s&nbsp;<em>Incredibles</em>, and no Batgirl on Batman action in&nbsp;<em>Batman: The Killing Joke</em>.</p>\r\n<p>4. Superhero movies based on comics only. We didn&rsquo;t include superhero movies that exist only in movies, like&nbsp;<em>Chronicle</em>, or<em>&nbsp;Darkman</em>, or&nbsp;<a href=\"http://www.fhm.com.ph/tag/shaq\" target=\"_blank\" rel=\"noopener\">Shaquille O&rsquo;Nei</a>l as Steel (shudder).</p>\r\n<p>5. Superheroes only. Not all movies based on comics are superhero movies. We didn&rsquo;t put&nbsp;<em>V for Vendetta</em>&nbsp;on this list, or&nbsp;<em>The 300</em>, even though they&rsquo;re based on popular graphic novels. That also means there&rsquo;s absolutely no&nbsp;<em>Howard the Duck</em>. And in case you&rsquo;re wondering, Teenage Mutant Ninja Turtles aren&rsquo;t superheroes, they&rsquo;re mutant ninjas. Duh.</p>\r\n<p>6. American superheroes only. No&nbsp;<a href=\"http://www.fhm.com.ph/tag/darna\" target=\"_blank\" rel=\"noopener\">Darna</a>&nbsp;on this list, sorry&nbsp;<a href=\"http://www.fhm.com.ph/tag/angel-locsin\" target=\"_blank\" rel=\"noopener\">Angel Locsin</a>&nbsp;fans. That&rsquo;s a list for another feature, another day...</p>\r\n<p><em>Note: Percentage score is the movie&rsquo;s Rotten Tomatoes score</em></p>\r\n<p><strong>78.&nbsp;<em>Catwoman</em>&nbsp;(2004) 9%</strong></p>\r\n<p>Sometimes a movie is so bad we want to pretend it never happened. Can we all agree never to talk about&nbsp;<em>Catwoman</em>&nbsp;again?&nbsp;<a href=\"http://www.fhm.com.ph/tag/Oscar\" target=\"_blank\" rel=\"noopener\">Oscar</a>&nbsp;Award-winner Halle Berry would be grateful.</p>\r\n<p><strong>77.&nbsp;<em>Batman &amp; Robin</em>&nbsp;(1997) 10%</strong></p>\r\n<p>It&rsquo;s not easy to ruin the Batman franchise, but George Clooney somehow managed to do it. Of course, he&rsquo;s not the only one to blame. Arnold Schwarzenegger, Uma Thurman, and Alicia Silverstone were all guilty of bad acting. Thanks, director Schumacher for this giant turd of a movie.</p>\r\n<p><strong>76.&nbsp;<em>Elektra</em>&nbsp;(2005) 10%</strong></p>\r\n<p>There was a time when Jennifer Garner as the assassin named Elektra seemed to make sense, especially hot on the heels of Ben Affleck&rsquo;s&nbsp;<em><a href=\"http://www.fhm.com.ph/tag/daredevil\" target=\"_blank\" rel=\"noopener\">Daredevil</a></em>. We don&rsquo;t know what they were smoking.</p>\r\n<p><iframe id=\"widget16\" src=\"https://www.youtube.com/embed/lJsYp0oWAgk?enablejsapi=1\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></p>\r\n<p><strong>75.&nbsp;<em>Superman IV</em>&nbsp;(1987) 12%</strong></p>\r\n<p>This is how to kill a successful movie franchise: make a sequel that is so terrible that no one wants to make or watch another movie from the series ever again.&nbsp;<em><a href=\"http://www.fhm.com.ph/lifestyle/entertainment/superman-kill-count-movies\" target=\"_blank\" rel=\"noopener\">Superman</a>&nbsp;IV</em>&nbsp;had Superman versus a supercomputer. See what we did there?</p>\r\n<p><strong>74.&nbsp;<em>The Crow: City of Angels</em>&nbsp;(1996) 12%</strong></p>\r\n<p>Everyone said you can&rsquo;t make another&nbsp;<em>The Crow</em>&nbsp;movie without Brandon Lee. They were right.</p>\r\n<p><strong>73.&nbsp;<em>Fantastic Four&nbsp;</em>(2015) 9%</strong></p>\r\n<p>A heroic attempt to update the biggest underperformer in the Marvel Cinematic Universe, and it fails miserably. At least the previous Fantastic Four movies had Jessica Alba.</p>\r\n<p><strong>72.&nbsp;<em>Supergirl</em>&nbsp;(1984) 7%</strong></p>', 3, 'July 10, 2017', '09:11 PM', 'July 10, 2017', '09:23 PM', 'July', '2017', 1, NULL, NULL, NULL, 5, 6, NULL, NULL, 10, 1, 0, NULL),
(40, 'Here\'s How to Score a Girl\'s Number With Confidence', 'Getting her digits is not as hard as you think', '/uploads/admin/nadine.jpg', '<p>In this day and age, asking for a girl&rsquo;s number has become a bit inessential. With social media paving the way for easy and instant communication with practically anyone in the world, it\'s no longer necessary to have someone&rsquo;s number to continue getting to know them.</p>\r\n<p>Then again, there\'s still something to be said about that particular rush of anticipation and accomplishment when a fella successfully asks and receives a pretty girl&rsquo;s coveted phone number&mdash;it\'s no wonder people still do it.</p>\r\n<p>Of course, just because you\'ve decided to go the old school route and ask for her digits doesn\'t mean you won\'t screw it up. If you want to learn how to do it right, check out the video below because the lovely ladies of Tanduay have decided to break it down and show us exactly how it\'s done:</p>\r\n<p><iframe id=\"widget2\" src=\"http://www.youtube.com/embed/n383-ziceUo?enablejsapi=1\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></p>', 3, 'July 11, 2017', '09:59 AM', 'July 11, 2017', '09:59 AM', 'July', '2017', 0, NULL, NULL, NULL, 17, 9, NULL, NULL, 10, 1, 0, NULL),
(41, 'Happy days and Homemade Chicken Inasal', 'One of the All-time Filipino Favorite!', '/uploads/admin/14304585404_418db9c302_b.jpg', '<p>I really have to learn how to balance my travel diaries to encompass more documentations of food. Whenever I go exploring in a new place, I seem to get so excited over the sights that I kind of forget to chronicle the food. It was no different for my Bacolod trip. You can in fact observe from both of my&nbsp;<a href=\"http://thetummytrain.com/2014/05/23/the-charm-of-things-old-and-new-in-bacolod/\" target=\"_blank\" rel=\"noopener\">previous</a>&nbsp;<a href=\"http://thetummytrain.com/2014/05/27/brief-explorations-of-two-unique-resorts-in-negros/\" target=\"_blank\" rel=\"noopener\">entries</a>&nbsp;that I don&rsquo;t have much in the way of food there.<br /><br />However I would call it a major mortal sin if one went to Bacolod without so much as a taste of its signature dish, the Bacolod Chicken Inasal. We had one inasal meal at the&nbsp;<em>Chicken House</em>&nbsp;while we were touring around Bacolod, and it was enough to spark my desire to make inasal here at home.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/capstone2/uploads/blog_images/14118532820_beddfb66b3_b.jpg\" /></p>\r\n<p>Just a little trivia: I like chicken a lot. I love fish even more but chicken is definitely number two on my list so I really enjoy trying out all sorts of chicken dishes like this one. Any new way to cook chicken is always a welcome addition to my repertoire.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/capstone2/uploads/blog_images/14246826051_be6bffc4da_b.jpg\" /><br /><br />Now this recipe is a super special one for me because for the first time in the history of&nbsp;<em>The Tummy Train</em>&nbsp;my mom actually helped me cook a dish! So actively involved was she in fact that even as I was getting ready to take photographs of the pretty piece of chicken&nbsp;<em>she chose</em>&nbsp;for me, she hurriedly ran over to give me a stalk of basil to add colour to the plate. (Good job, Mom!) This might come as a shock to some, but none of my family members actually&nbsp;<em>voluntarily</em>&nbsp;spend time with me in the kitchen, so imagine my surprise when my mother actually beat me to the grill! I guess she was as excited to test out this recipe as I was, raring to find out if this was going to be another keeper. Well whatever her reasons she made me really happy.&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/capstone2/uploads/blog_images/14304585404_418db9c302_b.jpg\" /></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/capstone2/uploads/blog_images/14250125745_fc0654a73a_b.jpg\" /></p>\r\n<p>Oh, and the cherry on top? This Chicken Inasal is pretty darn good!<br /><span id=\"more-8153\"></span><br />If there&rsquo;s one thing I&rsquo;m really grateful for with the introduction of blogging into my life, it&rsquo;s that I am constantly motivated to try new things in the kitchen. Any other circumstance, I would&rsquo;ve wondered briefly how a dish&nbsp;was made and a little later just forget about it. It&rsquo;s always easier to tell yourself to buy something instead of to make it. If I didn&rsquo;t have this space to encourage me to explore my curiosity about food, I wouldn&rsquo;t have developed the habit of trying to duplicate dishes I like right in my own kitchen. I wouldn&rsquo;t have discovered how easy it was to make Chicken Inasal at home.<br /><br />And to think I used to have this strange notion that it involved some complex procedure to make!</p>\r\n<p><br />The Chicken Inasal is a grilled dish originating from the Visayas region of the Philippines, but since the&nbsp;<em>Mang Inasal</em>&nbsp;fastfood chain opened in many parts of the country the chicken inasal has become rather mainstream. It became sort of a phenomenon really, because Filipinos would line up in throngs back when it was newly introduced. I think that says a lot about the Filipino&rsquo;s love for barbecued chicken. Although the authenticity of the fastfood version is arguable, they still are partly&nbsp;responsible for exposing&nbsp;chicken inasal to the masses.<br /><br />Now back to the recipe, if you&rsquo;re wondering about the reddish/orange hue of the chicken, it&rsquo;s because for the marinade the inasal version uses a little something called&nbsp;<em>atsuete</em>&nbsp;seeds, known to the rest of the world as annatto seeds. These babies are a popular ingredient in Filipino cooking, responsible for many yummy local dishes that are richly orange in colour.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/capstone2/uploads/blog_images/s.jpg\" /></p>\r\n<blockquote>\r\n<p>Straight from the grill and onto the plate piping hot, place a side of garlic rice plus a bit of vinegar with some salt, garlic, and chilli in it and you have yourself a truly chicken inasal experience.</p>\r\n</blockquote>', 3, 'July 14, 2017', '03:52 AM', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 1, NULL, NULL, 2, 0, NULL, NULL);

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
(29, ' calamares'),
(41, ' chicken'),
(40, ' chicken inasal'),
(33, ' dc'),
(23, ' fries'),
(38, ' girls'),
(42, ' grilled'),
(32, ' marvel'),
(34, ' movies'),
(28, ' siopao'),
(30, ' sisig'),
(24, ' tapsilog'),
(36, '20'),
(22, 'burger'),
(39, 'homemade'),
(37, 'how to'),
(35, 'nice'),
(31, 'superheroes');

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
(211, 68, 41);

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
(81, NULL, 'last comment before i sleep', 'July 14, 2017 AT 03:40 AM', NULL, 68);

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
(15, '2', '2', 3, 11, 'July 11, 2017', '09:46 AM', '', 'time_modified', 'del_date_published', '09:46 AM, July 11, 2017', NULL, 0, 0, 0, '/uploads/admin/dashboard-admin-panel-small.png', '<p>2</p>', 1, 0);

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
(34, 42, 41);

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
(68, '::1', 'joker', 'joker@yahoo.com', 'joekr', '/uploads/!guest-avatars/6.jpg', NULL);

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
  MODIFY `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `blog_images`
--
ALTER TABLE `blog_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `tags_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `blog_visitors`
--
ALTER TABLE `blog_visitors`
  MODIFY `blog_visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `deleted_posts`
--
ALTER TABLE `deleted_posts`
  MODIFY `del_blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `post_tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
