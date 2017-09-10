-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2017 at 01:38 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_csun_club`
--

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `building_id` smallint(6) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `club_id` smallint(6) NOT NULL,
  `name` text NOT NULL,
  `url` text NOT NULL,
  `dept_id` smallint(6) NOT NULL,
  `description` text NOT NULL,
  `video_url` text,
  `logo_url` text,
  `gps_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `name`, `url`, `dept_id`, `description`, `video_url`, `logo_url`, `gps_id`) VALUES
(1, 'Society of Automotive Engineers', 'www.emsa.com/index.html', 1, 'Our primary purpose is to engineer a Formula SAE compliant race car, aimed to maximize points earned in every point scoring category of competition, while remaining within the resources available at CSUN.', 'uploads\\555820485.mp4', 'uploads\\1c4c1442c79511e2bf3222000a1fd299_7.jpg', 1),
(2, 'The Institute of Electrical and Electronics Engineers', '', 1, 'The Institute of Electrical and Electronics Engineers (IEEE) is a worldwide technical Professional society devoted to advancing the application and theory of electrical, computer and electronics engineering. IEEE is the world''s largest technical professional association, connecting more than 360,000 electrical engineers, scientists and professional members in approximately 175 countries with about 45,000 student members.', NULL, 'uploads/2013-nissan-gt-r.jpg', 2),
(3, 'Society of Automotive Engineers', '', 1, 'Society of Automotive Engineers (SAE) is a professional organization for mobility engineering professionals in the aerospace, automotive, and commercial vehicle industries. The Society is a standards development organization for the engineering of powered vehicles of all kinds, including cars, trucks, boats, aircraft, and others.', NULL, 'uploads/2009-nissan-gt-r.jpg', 1),
(4, 'The American Society of Civil Engineers', '', 1, 'The American Society of Civil Engineers (ASCE) is a professional body founded in 1852 to represent members of the civil engineering profession worldwide. It is the oldest national engineering society in the United States. ASCE''s vision is to have engineers positioned as global leaders who strive toward building a better quality of life. Its world headquarters is in Reston, Virginia.', NULL, 'uploads/1c4c1442c79511e2bf3222000a1fd299_7.jpg', 1),
(5, 'The Society of Hispanic Engineering and Science', '', 1, 'The Society of Hispanic Engineering and Science Students is part of the College of Engineering, Computer Science and Technology at California State University, Los Angeles. There are currently over 190 members in our organization with a range of fields such as Electrical, Mechanical and Civil Engineers, Computer Science and Chemistry as well as other math and science fields.', NULL, 'uploads/2013-07-20_18-55-48_413.jpg', 3),
(6, 'The Society of Women Engineers ', '', 1, 'The student chapter of the Society of Women Engineers at California State University, Los Angeles has existed for nearly 15 years. CSULA SWE shares all the views and objectives of its parent organization SWE. The Society of Women Engineers is a non-profit, educational service organization.', NULL, 'uploads/IMGP1403_jpg.jpg', 4),
(7, 'American Marketing Association', '', 2, 'The AMA connects students with peers and professionals in all areas of marketing, as well as the business world and provides students with relevant marketing, management, financial, advertising and promotion experience.', NULL, NULL, 3),
(8, 'Beta Gamma Sigma', '', 2, 'Beta Gamma Sigma is the honorary scholastic society for business students sponsored by the Association to Advance Collegiate Schools of Business (AACSB—the accreditation body of the College of Business). Membership is by invitation only and limited to the top 10 percent of seniors, the top 7 percent of juniors, or the top 20 percent of those in master’s programs. ', NULL, NULL, 1),
(9, 'The Business Student Council', '', 2, 'The Business Student Council advises the Dean on issues relating to the student experience, provides for recognition of outstanding College of Business students and serves the interests of the college in terms of creating and promoting new opportunities for students to interact with the business world.', NULL, NULL, 2),
(10, 'Delta Sigma Pi', '', 2, 'Delta Sigma Pi is a professional business fraternity dedicated to the professional development of its members. Through professional events, community service, and networking opportunities, students gain valuable business knowledge that is not offered in the classroom.', NULL, NULL, 3),
(11, 'Economics Club', '', 2, 'Economics Club is a place where students interested in the economy and the world around them congregate. Speakers present on a wide variety of topics, from financial planning and going to law school, to economic modeling. Students are encouraged to ask questions and share their opinions.', NULL, NULL, 4),
(12, 'CSUN Biology Club ', 'https://www.facebook.com/groups/225066170984834', 4, 'The CSUN Chemistry and Biochemistry club serves as a student-operated organization that drives the student interests of chemistry beyond the classroom experience. The social environment supported by the CSUN Chemistry and Biochemistry Club allows the members to explore carrier possibilities and educational opportunities that involve the scientific fields of Chemistry and Biochemistry while also having fun with some classmates!', NULL, NULL, 4),
(13, 'Coalition of Physician Assistants Club', 'http://csunprepaclub.wixsite.com/prepa', 4, 'The purpose of the Pre-Physician Assistant Club at CSUN is to educate students with the Physician Assistant profession and the admission process through informational sessions, guest speakers, and community service opportunities; all of which that will successfully prepare students to enter the various Physician Assistant schools.', NULL, NULL, 4),
(14, 'Microbiology Students Association', '', 4, 'CSUN''s Microbiology Student Association is a student-run group aimed at bringing you events that will ignite your passion in microbiology. Whether you''re in the major or just interested in it at a hobby, you are welcome to join us as we explore the different areas of this field from environmental management, clinical application, or food preparation.', NULL, NULL, 4),
(15, 'Graduate Association of School Psychology', '', 5, 'The Graduate Association of School Psychology (GASP) is a an opportunity offered to students currently enrolled in CSUN''s School Psychology Master''s program. Our group aims to provide CSUN''s School Psychology students with networking opportunities, fun fundraising events, and awesome merchandise like custom made t-shirts!', NULL, NULL, 5),
(16, 'Social Work Society', 'https://www.csunsws.com/', 5, 'CSUN''s Social Work Society''s mission is to create a united force of Social Work students and alumni dedicated to professional development, advocacy, and social justice in our school, community, and society. We are facilitators for CSUN social workers'' futures.', NULL, NULL, 5),
(17, 'Alpha Epsilon Pi', '', 7, 'Alpha Epsilon Pi is THE Premiere Jewish Fraternity on the California State University Northridge campus. We offer THE best college experience for all CSUN students and create memorable friendships for a lifetime', NULL, NULL, 6),
(18, 'Alpha Omicron Pi', 'http://csun.alphaomicronpi.org/', 7, 'At AOII, our mission is to promote lifelong friendship, inspire academic excellence, to lead by example, and to serve our campus and surrounding communities. The values on which AOII was founded help lead us in the decisions we make and the behaviors we exhibit in our daily lives. The object of our Fraternity, written by our Founders in 1897, inspires us to stand at all times for character, dignity, scholarship, and college loyalty.', NULL, NULL, 4),
(19, 'Catholic Newman Club', 'https://www.facebook.com/csuncatholicnewman', 9, 'The CSUN Catholic Newman Club is a faith-based organization striving to build a sense of community and family. We serve the CSUN community as a welcoming and supportive environment for students to come together and grow in their Catholic faith through fellowship, prayer and service.', NULL, NULL, 2),
(20, 'Christian Students at CSUN', '', 9, 'We gather every Wednesday to enjoy God’s Word together in the middle of the week. Get refreshed with snacks, singing, and a sweet portion from the Bible to keep you going in the middle of the week.', NULL, NULL, 2),
(21, 'Ballroom Dance Club', 'https://www.facebook.com/groups/csunballroomdance/', 10, 'We are a social and competitive club that loves to dance! We learn up to eleven different styles of dance per semester.You do not need to have prior experience because we’ll teach you everything beginning with the basic steps! If you do have previous dancing experience, we will cater to you as well by offering both beginner and advanced classes.', NULL, NULL, 7),
(22, 'Salsa Libre', '', 10, 'WE ARE… A CSUN Sport club, founded in 2010. What started as a small group of 7 students has now grown into a pool of over 300 members; current and alumni. We have won 1st place 4 times at the Annual College Salsa Congress and have consistently placed in the top 3. ', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` smallint(6) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `name`) VALUES
(1, 'Computer Science & Engineering'),
(2, 'Business & Economics'),
(3, 'Arts, Media & Communication'),
(4, 'Science & Mathematics'),
(5, 'Social & Behavioral Sciences'),
(6, 'Health & Human Development'),
(7, 'Fraternity & Sorority'),
(8, 'Special Interest'),
(9, 'Religious'),
(10, 'Sport Clubs');

-- --------------------------------------------------------

--
-- Table structure for table `gps`
--

CREATE TABLE `gps` (
  `gps_id` smallint(6) NOT NULL,
  `building_name` text NOT NULL,
  `lattitude` decimal(12,6) NOT NULL,
  `longitude` decimal(12,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gps`
--

INSERT INTO `gps` (`gps_id`, `building_name`, `lattitude`, `longitude`) VALUES
(1, 'Oviatt Library', '34.240198', '-118.529697'),
(2, 'University Hall', '34.239937', '-118.532031'),
(3, 'Sequoia Hall', '34.240487', '-118.528308'),
(4, 'Jacaranda Hall', '34.241325', '-118.528332'),
(5, 'RedWood Hall', '34.241401', '-118.526534'),
(6, 'Csun Art College', '34.243468', '-118.530002'),
(7, 'Citrus Hall', '34.239032', '-118.527867'),
(8, 'Live Oak Hall', '34.238264', '-118.528152'),
(9, 'Manzanita Hall', '34.237719', '-118.530029'),
(10, 'Valley Performing Arts Center', '34.236264', '-118.528286');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_detail`
--

CREATE TABLE `meeting_detail` (
  `meeting_id` smallint(6) NOT NULL,
  `club_id` smallint(6) NOT NULL,
  `title` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `room_no` varchar(12) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meeting_detail`
--

INSERT INTO `meeting_detail` (`meeting_id`, `club_id`, `title`, `date`, `description`, `room_no`, `time`) VALUES
(6, 4, 'Falgo', '2017-04-15', 'HOHOO', 'D000', '02:03:00'),
(7, 4, 'sssssss', '2017-04-21', 'rnrntnr', 'ssss', '02:02:00'),
(14, 1, 'AeroTech Congress & Exhibition', '2017-09-12', 'An essential global forum focused on moving the industry forward, AeroTech Congress & Exhibition presents an exclusive opportunity for the entire international aerospace community to connect.', 'JD1200', '14:00:00'),
(16, 1, 'Brake Colloquium & Exhibition - 35th Annual', '2017-09-15', 'Obtain the most critical and up-to-date information on braking and brake systems for OE/aftermarket customers and end users. By joining your peers for the 35th annual SAE Brake Colloquium & Exhibition, you will have the opportunity to participate in lively panel discussions.', 'JD200', '15:00:00'),
(17, 1, 'COMVEC17', '2017-09-28', 'Discover the latest and critical need-to-know information impacting global commercial vehicles through the expanded event program. Participate in interactive panel discussions, experience the dynamic technical displays, and connect with industry leaders. Make plans now to attend!\r\n\r\nPlease note that a call for papers will not be issued. For authors looking to publish their work with commercial vehicle content, a written-only option is only available. To do this, please visit volunteers.sae.org/authors.htm for more details.', 'JD100', '09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `member_club`
--

CREATE TABLE `member_club` (
  `id` smallint(6) NOT NULL,
  `user_id` smallint(6) NOT NULL,
  `club_id` smallint(6) NOT NULL,
  `dept_id` smallint(6) NOT NULL,
  `date_joined` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_no` varchar(100) NOT NULL,
  `building_id` smallint(6) NOT NULL,
  `capacity` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_meet`
--

CREATE TABLE `student_meet` (
  `id` smallint(6) NOT NULL,
  `meeting_id` smallint(6) NOT NULL,
  `user_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` smallint(6) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `hashedPassword` binary(60) NOT NULL,
  `club_id` smallint(6) DEFAULT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fname`, `lname`, `hashedPassword`, `club_id`, `email`) VALUES
(4, 'suparno', 'samanta', 0x24326124313224506a6d46515367796b376d367875635a78627033544f526c4448484643443441577969576d50746c6d32443578346a566c39784a69, 1, 'suparno92@gmail.com'),
(9, 'suparno', 'samanta', 0x2432612431322466453169516b784a543664486d6c644945475061622e4b4c764e49345a2f6738385361347558555742752f372e7064525767684569, 2, 'ieee'),
(10, 'suparno', 'samanta', 0x24326124313224696c4d58587267795746366d6270476c36475132454f34697363774161666a73305531316d72787872717a443766594e7a6e795375, 3, 'sae'),
(11, 'suparno', 'samanta', 0x243261243132242e52674d324377544b526c356669353162615161672e3971514a33654c524a4250734743614333626a7461475a7059506662664a4f, 4, 'asce'),
(12, 'suparno', 'samanta', 0x243261243132246776424562367078565333786862376c775658474775445638473671695251736b4a6a31426e3577684b2e6f5441464152736b7769, 5, 'shes'),
(13, 'suparno', 'samanta', 0x243261243132246d7a5272697855412f4b68645a5546785a526c4774656f2e58354c4173433766437966424b41304356327546306d534f5634544d69, 6, 'swe'),
(14, 'suparno', 'samanta', 0x243261243132244c726d4c55504a69454e57745276334d7544626a572e68504273497147665a56446e646e396c596a5767536d49304851666568496d, 7, 'ama'),
(15, 'suparno', 'samanta', 0x243261243132245078516e31636b334a6e6e574235553653556c4b6f2e5a4c76712e4566587567414b6454336d62755a4c3730544a64684b47374669, 8, 'bgs'),
(16, 'suparno', 'samanta', 0x24326124313224546f56572e4b65613739746c54576f7377664d4e70752e7a59766b35524c77393546333553722f75747571346347615a716d7a4332, 9, 'bsc'),
(17, 'suparno', 'samanta', 0x2432612431322472346a5a4447612f44506d6f554235384c4d45632e6553396271366c5155795367384648322e6851634333324c384e2e4153667965, 10, 'dsp'),
(18, 'suparno', 'samanta', 0x243261243132245538445439456a35484852456535774d562f5864316542766f4e5139582f737a36512e4b6b2e303772452e68686731746651415265, 11, 'ec'),
(19, 'suparno', 'samanta', 0x24326124313224723253484d6b534f6669574d2f486b4c637a38364c6558786248505936353762454e616f575132423056474e4e6c362f4e6e6d5965, 12, 'cbc'),
(20, 'suparno', 'samanta', 0x2432612431322449372e613555776a4c2e425a5351326a672e422f6a75504342656d784b5265624475397478317238375054444d456a334c48466a4f, 13, 'cpac'),
(21, 'suparno', 'samanta', 0x243261243132243558494f39454566744171722f4c484a2e7a56524d4f6f76642e2e67773370316e4b456e4c764b7a546f6f33336e52393067745847, 14, 'msa'),
(22, 'suparno', 'samanta', 0x24326124313224504c5667334d71587a30797739765930556133716e75694768757036675a673367446f456f6b4e644669455544443762573938582e, 15, 'gasp'),
(23, 'suparno', 'samanta', 0x243261243132246b77723556474b4531506770616d4b332f724d354e2e4f2f4738422e4d726433584f4f4e7664704377692e4c67425a686a54715979, 17, 'aep'),
(24, 'suparno', 'samanta', 0x243261243132242e35392f566371794b67415044716177632f54466d2e594b5a7643317275576444446a6c2f314f5a4365555a6e324a4b6961664d43, 18, 'aop'),
(25, 'suparno', 'samanta', 0x2432612431322438745a304968547a71697332314f4b4839536c79526548517258664432614962686d53734d564b4b50376b432f4b564e33376f5069, 19, 'cnc'),
(26, 'suparno', 'samanta', 0x243261243132244f48706e7362497064656974754d517254395430772e6e527839502f464d686a7666387136684937453951494b55694638394d6457, 20, 'csc'),
(27, 'suparno', 'samanta', 0x2432612431322459576b4141344631635152726d656c6e64796345597557706d537966714d71504c2e315332564d7a42507958356c2f5849322f4e4b, 21, 'bdc'),
(28, 'suparno', 'samanta', 0x24326124313224396c792f44516f2e2e6556736e72303352726437596567636d55652e33576d614f4e725a766d4d656335377873656e7859736e4a75, 22, 'sl'),
(29, 'suparno', 'samanta', 0x243261243132244c36302f7475557530683064587570636d594b4b442e39517179737464526e484c55594e534c2e697674677978684c34676231444b, 16, 'sws');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`building_id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `gps`
--
ALTER TABLE `gps`
  ADD PRIMARY KEY (`gps_id`);

--
-- Indexes for table `meeting_detail`
--
ALTER TABLE `meeting_detail`
  ADD PRIMARY KEY (`meeting_id`);

--
-- Indexes for table `member_club`
--
ALTER TABLE `member_club`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_no`);

--
-- Indexes for table `student_meet`
--
ALTER TABLE `student_meet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `building_id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `club_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gps`
--
ALTER TABLE `gps`
  MODIFY `gps_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `meeting_detail`
--
ALTER TABLE `meeting_detail`
  MODIFY `meeting_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `member_club`
--
ALTER TABLE `member_club`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_meet`
--
ALTER TABLE `student_meet`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
