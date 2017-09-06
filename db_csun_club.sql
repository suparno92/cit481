-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2017 at 09:25 PM
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
(11, 'Economics Club', '', 2, 'Economics Club is a place where students interested in the economy and the world around them congregate. Speakers present on a wide variety of topics, from financial planning and going to law school, to economic modeling. Students are encouraged to ask questions and share their opinions.', NULL, NULL, 4);

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
(3, 'Arts, Media & Communication');

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
(1, 1, 'Meeting with firms', '2017-02-15', '\r\n~~TO BECOME AN OFFICIAL SWE MEMBER~~ \r\nGoto http://societyofwomenengineers.swe.org/ and click on the membership tab. If you have any issues, email us at SWE@my.csun.edu and we will send you a step-by-step guide.', 'JD8000', '06:05:00'),
(2, 1, 'TechFest', '2017-04-15', 'NEW ADING OUEOUEOEOE', 'IS88', '04:00:00'),
(4, 1, 'ssssss', '2017-04-26', 'asasasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'ssssss', '03:34:00'),
(5, 1, 'tttttttt', '2017-04-15', 'tttttttttttttttttttttttttttttttttttttt', 'tttt', '05:05:00'),
(6, 4, 'Falgo', '2017-04-15', 'HOHOO', 'D000', '02:03:00'),
(7, 4, 'sssssss', '2017-04-21', 'rnrntnr', 'ssss', '02:02:00'),
(9, 1, '   titles', '2017-04-08', '   Info ', '   room', '02:03:00'),
(12, 1, 'newww', '2017-05-10', 'ht56', '5u', '03:04:00'),
(13, 1, 'sss', '2017-05-13', 'ss', 'ss', '14:44:00');

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
(5, 'suparno', 'samanta', 0x2432612431322444685055576c6f616c417332506e2e70534b4d563075506d5a334232594c69412e76384751767a686e6343677a6e5875456872434f, 3, 'adi'),
(6, 'suparno', 'samanta', 0x24326124313224364a69513675484a6650767a39526a696669486b7975724969364e70576265476179376c5071595a345a6256717763576d2f306557, 5, 'as'),
(7, 'suparno', 'samanta', 0x243261243132246a44777a6c6c63567a495954414362614b7a7645437561456242785a716e412f6555533351665342665a624862656a53734e49454f, 4, 'fake'),
(8, 'suparno', 'samanta', 0x24326124313224314b6b672e495565334c324c4c32424c6e654c6e41756d31492f5a476f775146622f6261706943497755586f6d6c42556e554d426d, 2, 'yoyo');

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
  MODIFY `club_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gps`
--
ALTER TABLE `gps`
  MODIFY `gps_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `meeting_detail`
--
ALTER TABLE `meeting_detail`
  MODIFY `meeting_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
  MODIFY `user_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
