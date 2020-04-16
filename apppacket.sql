-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2020 at 07:25 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apppacket`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_account`
--

CREATE TABLE `access_account` (
                                  `aa_id` int(25) NOT NULL,
                                  `aa_email` varchar(255) NOT NULL,
                                  `aa_username` varchar(255) NOT NULL,
                                  `aa_password` varchar(255) NOT NULL,
                                  `aa_created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_account`
--

INSERT INTO `access_account` (`aa_id`, `aa_email`, `aa_username`, `aa_password`, `aa_created_at`) VALUES
(7, 'eddiefrancisco123@gmail.com', 'eddz', 'eddz', '2020-02-15 01:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `file_information`
--

CREATE TABLE `file_information` (
                                    `file_id` int(25) NOT NULL,
                                    `file_no` varchar(255) NOT NULL,
                                    `file_name` varchar(255) NOT NULL,
                                    `file_path` varchar(255) NOT NULL,
                                    `file_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hha_information`
--

CREATE TABLE `hha_information` (
                                   `hha_id` int(25) NOT NULL,
                                   `hha_no` varchar(255) NOT NULL,
                                   `hha_name` varchar(255) NOT NULL,
                                   `hha_address` varchar(255) NOT NULL,
                                   `hha_phonenumber` varchar(255) NOT NULL,
                                   `hha_emailaddress` varchar(255) NOT NULL,
                                   `hha_positionapplied` varchar(255) NOT NULL,
                                   `hha_otherinfo` varchar(255) NOT NULL,
                                   `hha_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hha_information`
--

INSERT INTO `hha_information` (`hha_id`, `hha_no`, `hha_name`, `hha_address`, `hha_phonenumber`, `hha_emailaddress`, `hha_positionapplied`, `hha_otherinfo`, `hha_timestamp`) VALUES
(1, 'uogcCYgHRR', '', '', '', 'asdasdasdasdadasdasdas', '', '{\"pgname\":\"\",\"pg1date\":\"\",\"pgprofessionallicensecard\":\"\",\"pg1cprcard\":\"\",\"pg1liabilityinsurance\":\"\",\"pg1driverslicense\":\"\",\"pg1carinsurrance\":\"\",\"pg1socialsecuritycard\":\"\",\"pg1resume\":\"\",\"pg1medcert\":\"\",\"pg1signature\":\"\",\"pg2name\":\"\",\"pg2socialsecuritynum', '2020-04-14 01:44:48'),
(2, 'WAlDhXq6Fs', 'kamay', '', '', 'qwerty', '', '{\"pgname\":\"\",\"pg1date\":\"\",\"pgprofessionallicensecard\":\"\",\"pg1cprcard\":\"\",\"pg1liabilityinsurance\":\"\",\"pg1driverslicense\":\"\",\"pg1carinsurrance\":\"\",\"pg1socialsecuritycard\":\"\",\"pg1resume\":\"\",\"pg1medcert\":\"\",\"pg1signature\":\"\",\"pg2name\":\"kamay\",\"pg2socialsecuri', '2020-04-14 01:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `lvn_information`
--

CREATE TABLE `lvn_information` (
                                   `lvn_id` int(25) NOT NULL,
                                   `lvn_no` varchar(255) NOT NULL,
                                   `lvn_name` varchar(255) NOT NULL,
                                   `lvn_address` varchar(255) NOT NULL,
                                   `lvn_phonenumber` varchar(255) NOT NULL,
                                   `lvn_emailaddress` varchar(255) NOT NULL,
                                   `lvn_positionapplied` varchar(255) NOT NULL,
                                   `lvn_otherinfo` varchar(255) NOT NULL,
                                   `lvn_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `msw_information`
--

CREATE TABLE `msw_information` (
                                   `msw_id` int(25) NOT NULL,
                                   `msw_no` varchar(255) NOT NULL,
                                   `msw_name` varchar(255) NOT NULL,
                                   `msw_address` varchar(255) NOT NULL,
                                   `msw_phonenumber` varchar(255) NOT NULL,
                                   `msw_emailaddress` varchar(255) NOT NULL,
                                   `msw_positionapplied` varchar(255) NOT NULL,
                                   `app_isview` text NOT NULL,
                                   `msw_otherinfo` varchar(255) NOT NULL,
                                   `msw_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rn_information`
--

CREATE TABLE `rn_information` (
                                  `rn_id` int(25) NOT NULL,
                                  `rn_no` varchar(255) NOT NULL,
                                  `rn_name` varchar(255) NOT NULL,
                                  `rn_address` varchar(255) NOT NULL,
                                  `rn_phonenumber` varchar(255) NOT NULL,
                                  `rn_emailaddress` varchar(255) NOT NULL,
                                  `rn_positionapplied` varchar(255) NOT NULL,
                                  `app_isview` varchar(255) NOT NULL,
                                  `rn_otherinfo` text NOT NULL,
                                  `rn_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rn_information`
--

INSERT INTO `rn_information` (`rn_id`, `rn_no`, `rn_name`, `rn_address`, `rn_phonenumber`, `rn_emailaddress`, `rn_positionapplied`, `app_isview`, `rn_otherinfo`, `rn_timestamp`) VALUES
(7, 'F7FigoEN/4', 'kamote q', 'kamote q', 'kamote q', 'kamote q', 'kamote q', '', '{\"pgname\":\"kamote q\",\"pg1date\":\"2222-02-22\",\"pgprofessionallicensecard\":\"kamote q\",\"pg1cprcard\":\"kamote q\",\"pg1liabilityinsurance\":\"kamote q\",\"pg1driverslicense\":\"kamote q\",\"pg1carinsurrance\":\"kamote q\",\"pg1socialsecuritycard\":\"12121212\",\"pg1signature\":\"asdasdadadadasd\",\"pg2name\":\"kamote q\",\"pg2socialsecuritynumber\":\"12121212\",\"pg2otheremployment\":\"kamote q\",\"pg2address\":\"kamote q\",\"pg2phonenumber\":\"kamote q\",\"pg2emailaddress\":\"kamote q\",\"pg2position\":\"kamote q\",\"pg2licensedcertificate\":\"12121212\",\"pg2expirationdate1\":\"1212-12-12\",\"pg2driverslicensed\":\"12121212\",\"pg2expirationdate2\":\"1212-12-12\",\"employmentcitizen1\":\"on\",\"employmentresign1\":\"on\",\"pg2nameofschool1\":\"kamote q\",\"pg2schooladdress2\":\"kamote q\",\"pg2dateattended1\":\"1212-12-12\",\"pg2dateattended2\":\"1212-12-12\",\"pg2majorcourse1\":\"kamote q\",\"pg2degreeofcertificate2\":\"kamote q\",\"pg2nameofschool3\":\"kamote q\",\"pg2schooladdress4\":\"kamote q\",\"pg2dateattended3\":\"1212-12-12\",\"pg2dateattended4\":\"1212-12-12\",\"pg2majorcourse3\":\"kamote q\",\"pg2degreeofcertificate4\":\"kamote q\",\"pg2nameofschool5\":\"kamote q\",\"pg2schooladdress6\":\"kamote q\",\"pg2dateattended5\":\"1212-12-12\",\"pg2dateattended6\":\"1212-12-12\",\"pg2majorcourse5\":\"kamote q\",\"pg2degreeofcertificate6\":\"kamote q\",\"pg2nameofschool7\":\"kamote q\",\"pg2schooladdress8\":\"kamote q\",\"pg2dateattended7\":\"1212-12-12\",\"pg2dateattended8\":\"1212-12-12\",\"pg2majorcourse7\":\"kamote q\",\"pg2degreeofcertificate8\":\"kamote q\",\"pg2nameofschool9\":\"kamote q\",\"pg2schooladdress10\":\"kamote q\",\"pg2dateattended9\":\"1212-12-12\",\"pg2dateattended10\":\"1212-12-12\",\"pg2majorcourse9\":\"kamote q\",\"pg2degreeofcertificate10\":\"kamote q\"}', '2020-04-16 17:12:53');

-- --------------------------------------------------------

--
-- Table structure for table `sc_information`
--

CREATE TABLE `sc_information` (
                                  `sc_id` int(25) NOT NULL,
                                  `sc_no` varchar(255) NOT NULL,
                                  `sc_name` varchar(255) NOT NULL,
                                  `sc_address` varchar(255) NOT NULL,
                                  `sc_phonenumber` varchar(255) NOT NULL,
                                  `sc_emailaddress` varchar(255) NOT NULL,
                                  `sc_positionapplied` varchar(255) NOT NULL,
                                  `sc_otherinfo` varchar(255) NOT NULL,
                                  `sc_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_account`
--
ALTER TABLE `access_account`
    ADD PRIMARY KEY (`aa_id`);

--
-- Indexes for table `file_information`
--
ALTER TABLE `file_information`
    ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `hha_information`
--
ALTER TABLE `hha_information`
    ADD PRIMARY KEY (`hha_id`);

--
-- Indexes for table `lvn_information`
--
ALTER TABLE `lvn_information`
    ADD PRIMARY KEY (`lvn_id`);

--
-- Indexes for table `msw_information`
--
ALTER TABLE `msw_information`
    ADD PRIMARY KEY (`msw_id`);

--
-- Indexes for table `rn_information`
--
ALTER TABLE `rn_information`
    ADD PRIMARY KEY (`rn_id`);

--
-- Indexes for table `sc_information`
--
ALTER TABLE `sc_information`
    ADD PRIMARY KEY (`sc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_account`
--
ALTER TABLE `access_account`
    MODIFY `aa_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `file_information`
--
ALTER TABLE `file_information`
    MODIFY `file_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hha_information`
--
ALTER TABLE `hha_information`
    MODIFY `hha_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lvn_information`
--
ALTER TABLE `lvn_information`
    MODIFY `lvn_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `msw_information`
--
ALTER TABLE `msw_information`
    MODIFY `msw_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rn_information`
--
ALTER TABLE `rn_information`
    MODIFY `rn_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sc_information`
--
ALTER TABLE `sc_information`
    MODIFY `sc_id` int(25) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
