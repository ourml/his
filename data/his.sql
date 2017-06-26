-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 18, 2017 at 06:40 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `his`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `a_id` int(10) unsigned NOT NULL,
  `a_pwd` varchar(255) DEFAULT NULL,
  `a_access` char(1) DEFAULT '0',
  `a_e_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_pwd`, `a_access`, `a_e_id`) VALUES
(1, '202cb962ac59075b964b07152d234b70', '0', 1),
(2, '202cb962ac59075b964b07152d234b70', '0', 2),
(3, '202cb962ac59075b964b07152d234b70', '0', 3),
(4, '202cb962ac59075b964b07152d234b70', '0', 4),
(5, '202cb962ac59075b964b07152d234b70', '0', 5),
(6, '202cb962ac59075b964b07152d234b70', '0', 6),
(7, '202cb962ac59075b964b07152d234b70', '0', 7);

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE IF NOT EXISTS `card` (
  `c_id` int(10) unsigned NOT NULL,
  `c_type` varchar(20) DEFAULT NULL,
  `c_drugDiscount` float unsigned DEFAULT NULL,
  `c_chechDiscount` float unsigned DEFAULT NULL,
  `c_note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chitemsrecord`
--

CREATE TABLE IF NOT EXISTS `chitemsrecord` (
  `ch_id` int(10) unsigned NOT NULL,
  `ch_hr_id` int(10) unsigned DEFAULT NULL,
  `ch_i_id` int(10) unsigned DEFAULT NULL,
  `ch_itemNumber` int(10) unsigned DEFAULT NULL,
  `ch_result` text,
  `ch_e_id` int(10) unsigned DEFAULT NULL,
  `ch_date` datetime DEFAULT NULL,
  `ch_payCheckId` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `d_id` int(10) unsigned NOT NULL,
  `d_name` varchar(255) DEFAULT NULL,
  `d_e_id` int(10) unsigned DEFAULT NULL,
  `d_note` text,
  `d_address` varchar(255) DEFAULT NULL,
  `d_tel` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `e_id` int(10) unsigned NOT NULL,
  `e_name` varchar(8) NOT NULL,
  `e_title` varchar(255) DEFAULT NULL,
  `e_sex` char(1) NOT NULL,
  `e_birthday` datetime DEFAULT NULL,
  `e_tel` varchar(11) DEFAULT NULL,
  `e_email` varchar(255) DEFAULT NULL,
  `e_note` text
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `e_name`, `e_title`, `e_sex`, `e_birthday`, `e_tel`, `e_email`, `e_note`) VALUES
(1, 'admin', '管理员', '1', '2014-01-22 08:00:00', '1234567', '123@456.com', '大学生'),
(2, 'root', '管理员１', '０', '2017-05-28 05:00:00', '7654321', '765@321.com', '小学生'),
(3, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(4, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝'),
(5, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(6, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝'),
(7, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(8, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝'),
(9, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(10, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝'),
(11, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(12, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝'),
(13, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(14, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝'),
(15, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(16, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝'),
(17, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(18, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝'),
(19, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(20, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝'),
(21, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(22, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝'),
(23, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(24, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝'),
(25, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(26, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝'),
(27, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(28, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝'),
(29, '张三', '医生', '0', '2017-06-01 00:00:00', '1234567', '123@321.com', '啊啊啊啊啊啊啊啊啊啊啊'),
(30, '李四', '教授', '1', '2017-06-13 00:00:00', '7654321', '123@321.com', '风景； 啊；激发大家啊李凝蓝');

-- --------------------------------------------------------

--
-- Table structure for table `feelist`
--

CREATE TABLE IF NOT EXISTS `feelist` (
  `fl_id` int(10) unsigned NOT NULL,
  `fl_e_id` int(10) unsigned DEFAULT NULL,
  `fl_patient_id` int(10) unsigned DEFAULT NULL,
  `fl_pd_fee` float unsigned DEFAULT NULL,
  `fl_pc_fee` float unsigned DEFAULT NULL,
  `fl_repfee` float unsigned DEFAULT NULL,
  `fl_totalfee` float unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hostrecord`
--

CREATE TABLE IF NOT EXISTS `hostrecord` (
  `hr_id` int(10) unsigned NOT NULL,
  `hr_patient_id` int(10) unsigned DEFAULT NULL,
  `hr_e_id` int(10) unsigned DEFAULT NULL,
  `hr_d_id` int(10) unsigned DEFAULT NULL,
  `hr_type` varchar(255) DEFAULT NULL,
  `hr_regDate` datetime DEFAULT NULL,
  `hr_orderDate` datetime DEFAULT NULL,
  `hr_rt_id` int(10) unsigned DEFAULT NULL,
  `hr_rtDone` char(1) DEFAULT NULL,
  `hr_digDate` datetime DEFAULT NULL,
  `hr_dignose` text,
  `hr_diaFee` float unsigned DEFAULT NULL,
  `hr_payment` float unsigned DEFAULT NULL,
  `hr_sympton` text,
  `hr_note` text,
  `hr_diagnoseIs` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `i_id` int(10) unsigned NOT NULL,
  `i_name` varchar(255) DEFAULT NULL,
  `i_d_id` int(10) unsigned DEFAULT NULL,
  `i_price` float unsigned DEFAULT NULL,
  `i_descripe` text,
  `i_unit` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
  `m_id` int(10) unsigned NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `m_unit` int(10) unsigned DEFAULT NULL,
  `m_price` float unsigned DEFAULT NULL,
  `m_style` varchar(255) DEFAULT NULL,
  `m_class` varchar(255) DEFAULT NULL,
  `m_factory` varchar(255) DEFAULT NULL,
  `m_inventory` int(10) unsigned DEFAULT NULL,
  `m_note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `patient_id` int(10) unsigned NOT NULL,
  `patient_name` varchar(8) NOT NULL,
  `patient_sex` char(1) NOT NULL,
  `patient_birthday` datetime DEFAULT NULL,
  `patient_sidType` varchar(10) DEFAULT NULL,
  `patient_sid` char(18) NOT NULL,
  `patient_address` varchar(255) NOT NULL,
  `patient_tel` varchar(11) DEFAULT NULL,
  `patient_email` varchar(255) DEFAULT NULL,
  `patient_reDate` datetime NOT NULL,
  `patient_medicalHistory` text,
  `patient_operationHistory` text,
  `patient_c_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `paycheck`
--

CREATE TABLE IF NOT EXISTS `paycheck` (
  `pc_id` int(10) unsigned NOT NULL,
  `pc_e_id` int(10) unsigned DEFAULT NULL,
  `pc_patient_id` int(10) unsigned DEFAULT NULL,
  `pc_hr_id` int(10) unsigned DEFAULT NULL,
  `pc_price` float unsigned DEFAULT NULL,
  `pc_amount` int(10) unsigned DEFAULT NULL,
  `pc_isPay` char(1) DEFAULT NULL,
  `pc_fee` float unsigned DEFAULT NULL,
  `pc_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `paydrug`
--

CREATE TABLE IF NOT EXISTS `paydrug` (
  `pd_id` int(10) unsigned NOT NULL,
  `pd_m_id` int(10) unsigned DEFAULT NULL,
  `pd_e_id` int(10) unsigned DEFAULT NULL,
  `pd_patient_id` int(10) unsigned DEFAULT NULL,
  `pd_pr_id` int(10) unsigned DEFAULT NULL,
  `pd_quantity` int(10) unsigned DEFAULT NULL,
  `pd_price` float unsigned DEFAULT NULL,
  `pd_isPay` char(1) DEFAULT NULL,
  `pd_fee` float unsigned DEFAULT NULL,
  `pd_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `perecord`
--

CREATE TABLE IF NOT EXISTS `perecord` (
  `pr_id` int(10) unsigned NOT NULL,
  `pr_name` varchar(255) DEFAULT NULL,
  `pr_hr_id` int(10) unsigned DEFAULT NULL,
  `pr_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `perscription`
--

CREATE TABLE IF NOT EXISTS `perscription` (
  `p_pr_id` int(10) unsigned NOT NULL,
  `p_m_id` int(10) unsigned NOT NULL,
  `p_quantity` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redrrecord`
--

CREATE TABLE IF NOT EXISTS `redrrecord` (
  `rdr_id` int(10) unsigned NOT NULL,
  `rdr_m_id` int(10) unsigned DEFAULT NULL,
  `rdr_patient_id` int(10) unsigned DEFAULT NULL,
  `rdr_pd_id` int(10) unsigned DEFAULT NULL,
  `rdr_quantity` int(10) unsigned DEFAULT NULL,
  `rdr_date` datetime DEFAULT NULL,
  `rdr_e_id` int(10) unsigned DEFAULT NULL,
  `rdr_isDeliever` char(1) DEFAULT NULL,
  `rdr_note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `repdrfee`
--

CREATE TABLE IF NOT EXISTS `repdrfee` (
  `repdf_id` int(10) unsigned NOT NULL,
  `repdf_m_id` int(10) unsigned DEFAULT NULL,
  `repdf_e_id` int(10) unsigned DEFAULT NULL,
  `repdf_patient_id` int(10) unsigned DEFAULT NULL,
  `repdf_quantity` int(10) unsigned DEFAULT NULL,
  `repdf_price` float unsigned DEFAULT NULL,
  `repdf_isrefund` char(1) DEFAULT NULL,
  `repdf_date` datetime DEFAULT NULL,
  `repdf_fee` float unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `repdrrecord`
--

CREATE TABLE IF NOT EXISTS `repdrrecord` (
  `rep_id` int(10) unsigned NOT NULL,
  `rep_m_id` int(10) unsigned DEFAULT NULL,
  `rep_patient_id` int(10) unsigned DEFAULT NULL,
  `rep_quantity` int(10) unsigned DEFAULT NULL,
  `rep_isDeliever` char(1) DEFAULT NULL,
  `rep_e_id` int(10) unsigned DEFAULT NULL,
  `rep_date` datetime DEFAULT NULL,
  `rep_reason` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `retype`
--

CREATE TABLE IF NOT EXISTS `retype` (
  `rt_id` int(10) unsigned NOT NULL,
  `rt_name` varchar(255) DEFAULT NULL,
  `rt_price` float unsigned DEFAULT NULL,
  `rt_d_id` int(10) unsigned DEFAULT NULL,
  `rt_note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `a_e_id_2` (`a_e_id`),
  ADD KEY `a_e_id` (`a_e_id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `chitemsrecord`
--
ALTER TABLE `chitemsrecord`
  ADD PRIMARY KEY (`ch_id`),
  ADD KEY `ch_hr_id` (`ch_hr_id`),
  ADD KEY `ch_i_id` (`ch_i_id`),
  ADD KEY `ch_e_id` (`ch_e_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `d_e_id` (`d_e_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `feelist`
--
ALTER TABLE `feelist`
  ADD PRIMARY KEY (`fl_id`),
  ADD KEY `fl_e_id` (`fl_e_id`),
  ADD KEY `fl_patient_id` (`fl_patient_id`),
  ADD KEY `fl_pd_fee` (`fl_pd_fee`),
  ADD KEY `fl_pc_fee` (`fl_pc_fee`);

--
-- Indexes for table `hostrecord`
--
ALTER TABLE `hostrecord`
  ADD PRIMARY KEY (`hr_id`),
  ADD KEY `hr_patient_id` (`hr_patient_id`),
  ADD KEY `hr_e_id` (`hr_e_id`),
  ADD KEY `hr_d_id` (`hr_d_id`),
  ADD KEY `hr_rt_id` (`hr_rt_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`i_id`),
  ADD KEY `i_d_id` (`i_d_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD KEY `patient_c_id` (`patient_c_id`);

--
-- Indexes for table `paycheck`
--
ALTER TABLE `paycheck`
  ADD PRIMARY KEY (`pc_id`),
  ADD KEY `pc_e_id` (`pc_e_id`),
  ADD KEY `pc_patient_id` (`pc_patient_id`),
  ADD KEY `pc_fee` (`pc_fee`),
  ADD KEY `pc_hr_id` (`pc_hr_id`);

--
-- Indexes for table `paydrug`
--
ALTER TABLE `paydrug`
  ADD PRIMARY KEY (`pd_id`),
  ADD KEY `pd_m_id` (`pd_m_id`),
  ADD KEY `pd_e_id` (`pd_e_id`),
  ADD KEY `pd_patient_id` (`pd_patient_id`),
  ADD KEY `pd_fee` (`pd_fee`),
  ADD KEY `pd_pr_id` (`pd_pr_id`);

--
-- Indexes for table `perecord`
--
ALTER TABLE `perecord`
  ADD PRIMARY KEY (`pr_id`),
  ADD KEY `pr_hr_id` (`pr_hr_id`);

--
-- Indexes for table `perscription`
--
ALTER TABLE `perscription`
  ADD PRIMARY KEY (`p_pr_id`,`p_m_id`);

--
-- Indexes for table `redrrecord`
--
ALTER TABLE `redrrecord`
  ADD PRIMARY KEY (`rdr_id`),
  ADD KEY `rdr_m_id` (`rdr_m_id`),
  ADD KEY `rdr_patient_id` (`rdr_patient_id`),
  ADD KEY `rdr_pd_id` (`rdr_pd_id`),
  ADD KEY `rdr_e_id` (`rdr_e_id`);

--
-- Indexes for table `repdrfee`
--
ALTER TABLE `repdrfee`
  ADD PRIMARY KEY (`repdf_id`),
  ADD KEY `repdf_m_id` (`repdf_m_id`),
  ADD KEY `repdf_e_id` (`repdf_e_id`),
  ADD KEY `repdf_patient_id` (`repdf_patient_id`);

--
-- Indexes for table `repdrrecord`
--
ALTER TABLE `repdrrecord`
  ADD PRIMARY KEY (`rep_id`),
  ADD KEY `rep_m_id` (`rep_m_id`),
  ADD KEY `rep_patient_id` (`rep_patient_id`),
  ADD KEY `rep_e_id` (`rep_e_id`);

--
-- Indexes for table `retype`
--
ALTER TABLE `retype`
  ADD PRIMARY KEY (`rt_id`),
  ADD KEY `rt_d_id` (`rt_d_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `c_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chitemsrecord`
--
ALTER TABLE `chitemsrecord`
  MODIFY `ch_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `d_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `e_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `feelist`
--
ALTER TABLE `feelist`
  MODIFY `fl_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hostrecord`
--
ALTER TABLE `hostrecord`
  MODIFY `hr_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `i_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `m_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paycheck`
--
ALTER TABLE `paycheck`
  MODIFY `pc_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paydrug`
--
ALTER TABLE `paydrug`
  MODIFY `pd_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `perecord`
--
ALTER TABLE `perecord`
  MODIFY `pr_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `redrrecord`
--
ALTER TABLE `redrrecord`
  MODIFY `rdr_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `repdrfee`
--
ALTER TABLE `repdrfee`
  MODIFY `repdf_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `repdrrecord`
--
ALTER TABLE `repdrrecord`
  MODIFY `rep_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `retype`
--
ALTER TABLE `retype`
  MODIFY `rt_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`a_e_id`) REFERENCES `employee` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chitemsrecord`
--
ALTER TABLE `chitemsrecord`
  ADD CONSTRAINT `chitemsrecord_ibfk_1` FOREIGN KEY (`ch_hr_id`) REFERENCES `hostrecord` (`hr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitemsrecord_ibfk_2` FOREIGN KEY (`ch_i_id`) REFERENCES `items` (`i_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitemsrecord_ibfk_3` FOREIGN KEY (`ch_e_id`) REFERENCES `employee` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`d_e_id`) REFERENCES `employee` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feelist`
--
ALTER TABLE `feelist`
  ADD CONSTRAINT `feelist_ibfk_1` FOREIGN KEY (`fl_patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feelist_ibfk_2` FOREIGN KEY (`fl_e_id`) REFERENCES `employee` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feelist_ibfk_3` FOREIGN KEY (`fl_pd_fee`) REFERENCES `paydrug` (`pd_fee`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feelist_ibfk_4` FOREIGN KEY (`fl_pc_fee`) REFERENCES `paycheck` (`pc_fee`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hostrecord`
--
ALTER TABLE `hostrecord`
  ADD CONSTRAINT `hostrecord_ibfk_1` FOREIGN KEY (`hr_patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hostrecord_ibfk_2` FOREIGN KEY (`hr_e_id`) REFERENCES `employee` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hostrecord_ibfk_3` FOREIGN KEY (`hr_d_id`) REFERENCES `department` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hostrecord_ibfk_4` FOREIGN KEY (`hr_rt_id`) REFERENCES `retype` (`rt_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`i_d_id`) REFERENCES `department` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`patient_c_id`) REFERENCES `card` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paycheck`
--
ALTER TABLE `paycheck`
  ADD CONSTRAINT `paycheck_ibfk_1` FOREIGN KEY (`pc_patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paycheck_ibfk_2` FOREIGN KEY (`pc_e_id`) REFERENCES `employee` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paycheck_ibfk_3` FOREIGN KEY (`pc_hr_id`) REFERENCES `hostrecord` (`hr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paydrug`
--
ALTER TABLE `paydrug`
  ADD CONSTRAINT `paydrug_ibfk_1` FOREIGN KEY (`pd_m_id`) REFERENCES `medicine` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paydrug_ibfk_2` FOREIGN KEY (`pd_patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paydrug_ibfk_3` FOREIGN KEY (`pd_e_id`) REFERENCES `employee` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paydrug_ibfk_4` FOREIGN KEY (`pd_pr_id`) REFERENCES `perecord` (`pr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `perecord`
--
ALTER TABLE `perecord`
  ADD CONSTRAINT `perecord_ibfk_1` FOREIGN KEY (`pr_hr_id`) REFERENCES `hostrecord` (`hr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `redrrecord`
--
ALTER TABLE `redrrecord`
  ADD CONSTRAINT `redrrecord_ibfk_1` FOREIGN KEY (`rdr_m_id`) REFERENCES `medicine` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redrrecord_ibfk_2` FOREIGN KEY (`rdr_patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redrrecord_ibfk_3` FOREIGN KEY (`rdr_pd_id`) REFERENCES `paydrug` (`pd_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redrrecord_ibfk_4` FOREIGN KEY (`rdr_e_id`) REFERENCES `employee` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `repdrfee`
--
ALTER TABLE `repdrfee`
  ADD CONSTRAINT `repdrfee_ibfk_1` FOREIGN KEY (`repdf_m_id`) REFERENCES `medicine` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `repdrfee_ibfk_2` FOREIGN KEY (`repdf_patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `repdrfee_ibfk_3` FOREIGN KEY (`repdf_e_id`) REFERENCES `employee` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `repdrrecord`
--
ALTER TABLE `repdrrecord`
  ADD CONSTRAINT `repdrrecord_ibfk_1` FOREIGN KEY (`rep_m_id`) REFERENCES `medicine` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `repdrrecord_ibfk_2` FOREIGN KEY (`rep_patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `repdrrecord_ibfk_3` FOREIGN KEY (`rep_e_id`) REFERENCES `employee` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `retype`
--
ALTER TABLE `retype`
  ADD CONSTRAINT `retype_ibfk_1` FOREIGN KEY (`rt_d_id`) REFERENCES `department` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
