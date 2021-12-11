-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2021 at 02:39 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `routine`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '12345', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(10) UNSIGNED NOT NULL,
  `class_date` date DEFAULT NULL,
  `class_time` time DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_date`, `class_time`, `course_id`, `classroom_id`, `created_at`, `updated_at`, `class_day`, `class_duration`) VALUES
(8, NULL, '12:00:00', 1, 2, NULL, NULL, 'Tuesday', 2),
(10, NULL, '09:00:00', 4, 2, NULL, NULL, 'Sunday', 2),
(11, NULL, '13:00:00', 3, 3, NULL, NULL, 'Sunday', 1),
(12, NULL, '16:00:00', 6, 5, NULL, NULL, 'Sunday', 1),
(14, NULL, '11:00:00', 3, 4, NULL, NULL, 'Thursday', 2),
(16, NULL, '14:00:00', 7, 4, NULL, NULL, 'Monday', 3),
(17, NULL, '10:00:00', 3, 2, NULL, NULL, 'Wednesday', 2),
(18, NULL, '13:00:00', 7, 4, NULL, NULL, 'Wednesday', 1),
(19, NULL, '11:00:00', 7, 5, NULL, NULL, 'Tuesday', 3);

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `classroom_id` int(10) UNSIGNED NOT NULL,
  `classroom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classroom_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`classroom_id`, `classroom_name`, `classroom_type`, `capacity`, `created_at`, `updated_at`) VALUES
(1, 'IICT gallery-2', 'Theory', 100, NULL, NULL),
(2, 'IICT 331', 'Theory', 60, NULL, NULL),
(3, 'IICT 329', 'Theory', 60, NULL, NULL),
(4, 'IICT 303', 'Lab', 30, NULL, NULL),
(5, 'IICT 304', 'Lab', 30, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `course_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sem_id` int(11) NOT NULL,
  `course_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_title`, `course_code`, `sem_id`, `course_type`, `credit`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, '', 'CSE475', 3, 'Theory', 3, 1, NULL, NULL),
(2, '', 'CSE453', 3, 'Theory', 3, 0, NULL, NULL),
(3, '', 'CSE450', 4, 'Lab', 4, 1, NULL, NULL),
(4, 'sdadasf', 'CSE133', 1, 'Theory', 3, 3, NULL, NULL),
(5, 'Java', 'CSE233', 5, 'Theory', 3, 1, NULL, NULL),
(6, 'Java Lab', 'CSE234', 5, 'Lab', 3, 3, NULL, NULL),
(7, 'DSP', 'CSE434', 4, 'Theory', 3, 3, NULL, NULL);

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
(1, '2021_02_18_200916_create_student_table', 1),
(2, '2021_02_18_201314_create_semester_table', 1),
(3, '2021_02_18_223347_create_courses_table', 2),
(4, '2021_02_21_072001_create_teacher_table', 3),
(5, '2021_02_23_041852_create_student_has_course_table', 4),
(6, '2021_02_23_065953_create_student_has_course_table', 5),
(7, '2021_02_23_071139_create_student_has_course_table', 6),
(8, '2021_02_23_162309_create_student_has_course_table', 7),
(9, '2021_02_23_163017_create_student_has_course_table', 8),
(10, '2021_02_23_163221_create_course_table', 8),
(11, '2021_02_23_172506_create_student_has_course_table', 9),
(12, '2021_02_23_173352_create_student_table', 10),
(13, '2021_02_24_075131_create_classroom_table', 11),
(14, '2021_02_24_075518_create_class_table', 11),
(15, '2021_04_22_044228_create_requests_table', 12),
(16, '2021_04_23_130535_create__teacher_table', 13),
(17, '2021_05_21_033708_create_admin_table', 14),
(18, '2021_06_07_154921_add_class_day_to_class_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `request_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `req_classroom_id` int(11) NOT NULL,
  `req_class_time` time NOT NULL,
  `active_id` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `sem_id` int(10) UNSIGNED NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `routine_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`sem_id`, `semester`, `routine_id`, `created_at`, `updated_at`) VALUES
(1, '1/1', NULL, NULL, NULL),
(2, '1/2', NULL, NULL, NULL),
(3, '4/1', NULL, NULL, NULL),
(4, '4/2', NULL, NULL, NULL),
(5, '2/1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `student_reg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sem_id` int(11) DEFAULT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_id` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_reg`, `password`, `sem_id`, `student_name`, `active_id`, `created_at`, `updated_at`) VALUES
(1, '2016331033', '12345', 4, 'Akash', 1, NULL, NULL),
(4, '2016331003', '12345', 4, 'Ikram', 0, NULL, NULL),
(5, '2016331024', '12345', 3, 'Soumik', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_has_course`
--

CREATE TABLE `student_has_course` (
  `student_has_course_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_has_course`
--

INSERT INTO `student_has_course` (`student_has_course_id`, `student_id`, `course_id`, `created_at`, `updated_at`) VALUES
(2, 2, 2, NULL, NULL),
(13, 4, 3, NULL, NULL),
(14, 1, 3, NULL, NULL),
(17, 1, 1, NULL, NULL),
(18, 4, 1, NULL, NULL),
(20, 4, 7, NULL, NULL),
(21, 1, 7, NULL, NULL),
(23, 4, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `teacher_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_email`, `teacher_password`, `teacher_name`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'abc@gmail.com', '12345', 'abc', NULL, NULL, 0),
(2, 'admin@gmail.com', '12345', 'admin', NULL, NULL, 1),
(3, 'bcd@gmail.com', '12345', 'bcd', NULL, NULL, 0),
(4, 'cde@gmail.com', '12345', 'cde', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`classroom_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_has_course`
--
ALTER TABLE `student_has_course`
  ADD PRIMARY KEY (`student_has_course_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `classroom`
--
ALTER TABLE `classroom`
  MODIFY `classroom_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `sem_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_has_course`
--
ALTER TABLE `student_has_course`
  MODIFY `student_has_course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
