-- MySQL dump 10.13  Distrib 5.7.10, for osx10.9 (x86_64)
--
-- Host: localhost    Database: hurtwood
-- ------------------------------------------------------
-- Server version	5.7.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AcademicBasePage`
--

DROP TABLE IF EXISTS `AcademicBasePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicBasePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Subtitle` varchar(255) DEFAULT NULL,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicBasePage`
--

LOCK TABLES `AcademicBasePage` WRITE;
/*!40000 ALTER TABLE `AcademicBasePage` DISABLE KEYS */;
INSERT INTO `AcademicBasePage` VALUES (19,NULL,17),(20,'DRIVEN TO CREATE',22),(21,'A RICHER UNDERSTANDING  OF HUMANITY',24),(22,'CHALLENGE AND ENRICH YOUR THINKING AND UNDERSTANDING',25);
/*!40000 ALTER TABLE `AcademicBasePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicBasePage_Live`
--

DROP TABLE IF EXISTS `AcademicBasePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicBasePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Subtitle` varchar(255) DEFAULT NULL,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicBasePage_Live`
--

LOCK TABLES `AcademicBasePage_Live` WRITE;
/*!40000 ALTER TABLE `AcademicBasePage_Live` DISABLE KEYS */;
INSERT INTO `AcademicBasePage_Live` VALUES (19,NULL,17),(20,'DRIVEN TO CREATE',22),(21,'A RICHER UNDERSTANDING  OF HUMANITY',24),(22,'CHALLENGE AND ENRICH YOUR THINKING AND UNDERSTANDING',25);
/*!40000 ALTER TABLE `AcademicBasePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicBasePage_versions`
--

DROP TABLE IF EXISTS `AcademicBasePage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicBasePage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Subtitle` varchar(255) DEFAULT NULL,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicBasePage_versions`
--

LOCK TABLES `AcademicBasePage_versions` WRITE;
/*!40000 ALTER TABLE `AcademicBasePage_versions` DISABLE KEYS */;
INSERT INTO `AcademicBasePage_versions` VALUES (1,20,3,'DRIVEN TO CREATE',22),(2,21,1,NULL,24),(3,21,2,NULL,24),(4,21,3,'A RICHER UNDERSTANDING  OF HUMANITY',24),(5,22,1,NULL,25),(6,22,2,NULL,25),(7,22,3,'CHALLENGE AND ENRICH YOUR THINKING AND UNDERSTANDING',25);
/*!40000 ALTER TABLE `AcademicBasePage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicBusinessPage_TestimonialsTags`
--

DROP TABLE IF EXISTS `AcademicBusinessPage_TestimonialsTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicBusinessPage_TestimonialsTags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AcademicBusinessPageID` int(11) NOT NULL DEFAULT '0',
  `TagsID` int(11) NOT NULL DEFAULT '0',
  `TagID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `AcademicBusinessPageID` (`AcademicBusinessPageID`),
  KEY `TagsID` (`TagsID`),
  KEY `TagID` (`TagID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicBusinessPage_TestimonialsTags`
--

LOCK TABLES `AcademicBusinessPage_TestimonialsTags` WRITE;
/*!40000 ALTER TABLE `AcademicBusinessPage_TestimonialsTags` DISABLE KEYS */;
INSERT INTO `AcademicBusinessPage_TestimonialsTags` VALUES (1,19,0,5);
/*!40000 ALTER TABLE `AcademicBusinessPage_TestimonialsTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicExamPage`
--

DROP TABLE IF EXISTS `AcademicExamPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicExamPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicExamPage`
--

LOCK TABLES `AcademicExamPage` WRITE;
/*!40000 ALTER TABLE `AcademicExamPage` DISABLE KEYS */;
INSERT INTO `AcademicExamPage` VALUES (17,12);
/*!40000 ALTER TABLE `AcademicExamPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicExamPage_Live`
--

DROP TABLE IF EXISTS `AcademicExamPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicExamPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicExamPage_Live`
--

LOCK TABLES `AcademicExamPage_Live` WRITE;
/*!40000 ALTER TABLE `AcademicExamPage_Live` DISABLE KEYS */;
INSERT INTO `AcademicExamPage_Live` VALUES (17,12);
/*!40000 ALTER TABLE `AcademicExamPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicExamPage_versions`
--

DROP TABLE IF EXISTS `AcademicExamPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicExamPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicExamPage_versions`
--

LOCK TABLES `AcademicExamPage_versions` WRITE;
/*!40000 ALTER TABLE `AcademicExamPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `AcademicExamPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicGscePage`
--

DROP TABLE IF EXISTS `AcademicGscePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicGscePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `SectionTitle` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Paragraph5` mediumtext,
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicGscePage`
--

LOCK TABLES `AcademicGscePage` WRITE;
/*!40000 ALTER TABLE `AcademicGscePage` DISABLE KEYS */;
INSERT INTO `AcademicGscePage` VALUES (18,13,'GCSE PROGRAMMES AVAILABLE AT HURTWOOD HOUSE','<p>Although the main thrust of the school is very much its A-Level programme, it nevertheless does offer a limited number of GCSE subjects which may serve as a one-year foundation course for overseas students or as a one-year ‘rescue’ programme for students who perhaps have been forced to miss a year because of illness or accident. The school also offers re-takes in core subjects such as English and Maths which can be taken in conjunction with a student’s A Level programme.</p>','<h4>The one-year ‘foundation’ GCSE course for overseas students</h4><p>The one-year ‘foundation’ GCSE course is designed for overseas students who have not obtained the required academic qualifications in their own country or the required standard of English to enable them to begin A-Level courses. (See also courses offered at Hurtwood under English for Speakers of Other Languages – ESOL). Depending on the level of intensity of their English language course, overseas students can have up to five GCSE subjects added to their English programme on an individual ‘tailor-made’ basis. Typically students would choose five subjects – English Language, Mathematics, Science, Additional Science, and Business Studies.  A modern foreign language may be available on request.</p>','<p>Class sizes are usually very small with only about five or six students in a group, but in core re-take subjects such as Mathematics or English the numbers can grow to around 12 per class.  A minimum of four-and-a-half hours teaching is provided in each subject each week.</p>','<h4>The one-year GCSE ‘rescue’ course</h4><p>The national GCSE programme is designed to be taken by students over a two-year period in years 10 and 11. Hurtwood offers a compressed one-year course limited to just five or six subjects for students whose education has been interrupted through illness or accident, or who are changing educational systems. Typically, students would choose five or six subjects from Mathematics, English Language, Science, Business Studies, Art, French or Spanish.</p><p>Class sizes are usually very small with only about five or six students in a group, but in core re-take subjects such as Mathematics or English the numbers can grow to around 12 per class.  A minimum of four-and-a- half hours teaching is provided in each subject each week.</p>',96,97,'<h4>Re-takes in English and Mathematics</h4><p>The only ‘re-take’ courses we offer are in the vital core subjects of GCSE English and Mathematics. Students who are doing a re-take would usually be restricted to three rather than four AS subjects. Re-takes can be scheduled for either November or June.</p><p>Class sizes vary according to demand each year but are usually around 10 or 12 students per class. Lessons are fitted in around the A-Level programme and there are usually three double sessions per week per subject.</p>');
/*!40000 ALTER TABLE `AcademicGscePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicGscePage_Live`
--

DROP TABLE IF EXISTS `AcademicGscePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicGscePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `SectionTitle` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Paragraph5` mediumtext,
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicGscePage_Live`
--

LOCK TABLES `AcademicGscePage_Live` WRITE;
/*!40000 ALTER TABLE `AcademicGscePage_Live` DISABLE KEYS */;
INSERT INTO `AcademicGscePage_Live` VALUES (18,13,'GCSE PROGRAMMES AVAILABLE AT HURTWOOD HOUSE','<p>Although the main thrust of the school is very much its A-Level programme, it nevertheless does offer a limited number of GCSE subjects which may serve as a one-year foundation course for overseas students or as a one-year ‘rescue’ programme for students who perhaps have been forced to miss a year because of illness or accident. The school also offers re-takes in core subjects such as English and Maths which can be taken in conjunction with a student’s A Level programme.</p>','<h4>The one-year ‘foundation’ GCSE course for overseas students</h4><p>The one-year ‘foundation’ GCSE course is designed for overseas students who have not obtained the required academic qualifications in their own country or the required standard of English to enable them to begin A-Level courses. (See also courses offered at Hurtwood under English for Speakers of Other Languages – ESOL). Depending on the level of intensity of their English language course, overseas students can have up to five GCSE subjects added to their English programme on an individual ‘tailor-made’ basis. Typically students would choose five subjects – English Language, Mathematics, Science, Additional Science, and Business Studies.  A modern foreign language may be available on request.</p>','<p>Class sizes are usually very small with only about five or six students in a group, but in core re-take subjects such as Mathematics or English the numbers can grow to around 12 per class.  A minimum of four-and-a-half hours teaching is provided in each subject each week.</p>','<h4>The one-year GCSE ‘rescue’ course</h4><p>The national GCSE programme is designed to be taken by students over a two-year period in years 10 and 11. Hurtwood offers a compressed one-year course limited to just five or six subjects for students whose education has been interrupted through illness or accident, or who are changing educational systems. Typically, students would choose five or six subjects from Mathematics, English Language, Science, Business Studies, Art, French or Spanish.</p><p>Class sizes are usually very small with only about five or six students in a group, but in core re-take subjects such as Mathematics or English the numbers can grow to around 12 per class.  A minimum of four-and-a- half hours teaching is provided in each subject each week.</p>',96,97,'<h4>Re-takes in English and Mathematics</h4><p>The only ‘re-take’ courses we offer are in the vital core subjects of GCSE English and Mathematics. Students who are doing a re-take would usually be restricted to three rather than four AS subjects. Re-takes can be scheduled for either November or June.</p><p>Class sizes vary according to demand each year but are usually around 10 or 12 students per class. Lessons are fitted in around the A-Level programme and there are usually three double sessions per week per subject.</p>');
/*!40000 ALTER TABLE `AcademicGscePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicGscePage_versions`
--

DROP TABLE IF EXISTS `AcademicGscePage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicGscePage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `SectionTitle` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Paragraph5` mediumtext,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicGscePage_versions`
--

LOCK TABLES `AcademicGscePage_versions` WRITE;
/*!40000 ALTER TABLE `AcademicGscePage_versions` DISABLE KEYS */;
INSERT INTO `AcademicGscePage_versions` VALUES (1,18,3,13,'GCSE PROGRAMMES AVAILABLE AT HURTWOOD HOUSE','<p>Although the main thrust of the school is very much its A-Level programme, it nevertheless does offer a limited number of GCSE subjects which may serve as a one-year foundation course for overseas students or as a one-year ‘rescue’ programme for students who perhaps have been forced to miss a year because of illness or accident. The school also offers re-takes in core subjects such as English and Maths which can be taken in conjunction with a student’s A Level programme.</p>','<h4>The one-year ‘foundation’ GCSE course for overseas students</h4><p>The one-year ‘foundation’ GCSE course is designed for overseas students who have not obtained the required academic qualifications in their own country or the required standard of English to enable them to begin A-Level courses. (See also courses offered at Hurtwood under English for Speakers of Other Languages – ESOL). Depending on the level of intensity of their English language course, overseas students can have up to five GCSE subjects added to their English programme on an individual ‘tailor-made’ basis. Typically students would choose five subjects – English Language, Mathematics, Science, Additional Science, and Business Studies.  A modern foreign language may be available on request.</p>','<p>Class sizes are usually very small with only about five or six students in a group, but in core re-take subjects such as Mathematics or English the numbers can grow to around 12 per class.  A minimum of four-and-a-half hours teaching is provided in each subject each week.</p>','<h4>The one-year GCSE ‘rescue’ course</h4><p>The national GCSE programme is designed to be taken by students over a two-year period in years 10 and 11. Hurtwood offers a compressed one-year course limited to just five or six subjects for students whose education has been interrupted through illness or accident, or who are changing educational systems. Typically, students would choose five or six subjects from Mathematics, English Language, Science, Business Studies, Art, French or Spanish.</p><p>Class sizes are usually very small with only about five or six students in a group, but in core re-take subjects such as Mathematics or English the numbers can grow to around 12 per class.  A minimum of four-and-a- half hours teaching is provided in each subject each week.</p>',0,0,NULL),(2,18,4,13,'GCSE PROGRAMMES AVAILABLE AT HURTWOOD HOUSE','<p>Although the main thrust of the school is very much its A-Level programme, it nevertheless does offer a limited number of GCSE subjects which may serve as a one-year foundation course for overseas students or as a one-year ‘rescue’ programme for students who perhaps have been forced to miss a year because of illness or accident. The school also offers re-takes in core subjects such as English and Maths which can be taken in conjunction with a student’s A Level programme.</p>','<h4>The one-year ‘foundation’ GCSE course for overseas students</h4><p>The one-year ‘foundation’ GCSE course is designed for overseas students who have not obtained the required academic qualifications in their own country or the required standard of English to enable them to begin A-Level courses. (See also courses offered at Hurtwood under English for Speakers of Other Languages – ESOL). Depending on the level of intensity of their English language course, overseas students can have up to five GCSE subjects added to their English programme on an individual ‘tailor-made’ basis. Typically students would choose five subjects – English Language, Mathematics, Science, Additional Science, and Business Studies.  A modern foreign language may be available on request.</p>','<p>Class sizes are usually very small with only about five or six students in a group, but in core re-take subjects such as Mathematics or English the numbers can grow to around 12 per class.  A minimum of four-and-a-half hours teaching is provided in each subject each week.</p>','<h4>The one-year GCSE ‘rescue’ course</h4><p>The national GCSE programme is designed to be taken by students over a two-year period in years 10 and 11. Hurtwood offers a compressed one-year course limited to just five or six subjects for students whose education has been interrupted through illness or accident, or who are changing educational systems. Typically, students would choose five or six subjects from Mathematics, English Language, Science, Business Studies, Art, French or Spanish.</p><p>Class sizes are usually very small with only about five or six students in a group, but in core re-take subjects such as Mathematics or English the numbers can grow to around 12 per class.  A minimum of four-and-a- half hours teaching is provided in each subject each week.</p>',0,0,'<h4>Re-takes in English and Mathematics</h4><p>The only ‘re-take’ courses we offer are in the vital core subjects of GCSE English and Mathematics. Students who are doing a re-take would usually be restricted to three rather than four AS subjects. Re-takes can be scheduled for either November or June.</p><p>Class sizes vary according to demand each year but are usually around 10 or 12 students per class. Lessons are fitted in around the A-Level programme and there are usually three double sessions per week per subject.</p>'),(3,18,5,13,'GCSE PROGRAMMES AVAILABLE AT HURTWOOD HOUSE','<p>Although the main thrust of the school is very much its A-Level programme, it nevertheless does offer a limited number of GCSE subjects which may serve as a one-year foundation course for overseas students or as a one-year ‘rescue’ programme for students who perhaps have been forced to miss a year because of illness or accident. The school also offers re-takes in core subjects such as English and Maths which can be taken in conjunction with a student’s A Level programme.</p>','<h4>The one-year ‘foundation’ GCSE course for overseas students</h4><p>The one-year ‘foundation’ GCSE course is designed for overseas students who have not obtained the required academic qualifications in their own country or the required standard of English to enable them to begin A-Level courses. (See also courses offered at Hurtwood under English for Speakers of Other Languages – ESOL). Depending on the level of intensity of their English language course, overseas students can have up to five GCSE subjects added to their English programme on an individual ‘tailor-made’ basis. Typically students would choose five subjects – English Language, Mathematics, Science, Additional Science, and Business Studies.  A modern foreign language may be available on request.</p>','<p>Class sizes are usually very small with only about five or six students in a group, but in core re-take subjects such as Mathematics or English the numbers can grow to around 12 per class.  A minimum of four-and-a-half hours teaching is provided in each subject each week.</p>','<h4>The one-year GCSE ‘rescue’ course</h4><p>The national GCSE programme is designed to be taken by students over a two-year period in years 10 and 11. Hurtwood offers a compressed one-year course limited to just five or six subjects for students whose education has been interrupted through illness or accident, or who are changing educational systems. Typically, students would choose five or six subjects from Mathematics, English Language, Science, Business Studies, Art, French or Spanish.</p><p>Class sizes are usually very small with only about five or six students in a group, but in core re-take subjects such as Mathematics or English the numbers can grow to around 12 per class.  A minimum of four-and-a- half hours teaching is provided in each subject each week.</p>',96,97,'<h4>Re-takes in English and Mathematics</h4><p>The only ‘re-take’ courses we offer are in the vital core subjects of GCSE English and Mathematics. Students who are doing a re-take would usually be restricted to three rather than four AS subjects. Re-takes can be scheduled for either November or June.</p><p>Class sizes vary according to demand each year but are usually around 10 or 12 students per class. Lessons are fitted in around the A-Level programme and there are usually three double sessions per week per subject.</p>');
/*!40000 ALTER TABLE `AcademicGscePage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicPage`
--

DROP TABLE IF EXISTS `AcademicPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SectionTitle` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicPage`
--

LOCK TABLES `AcademicPage` WRITE;
/*!40000 ALTER TABLE `AcademicPage` DISABLE KEYS */;
INSERT INTO `AcademicPage` VALUES (7,'HURTWOOD’S A-LEVEL RECORD HAS BEEN TRULY OUTSTANDING','<p>On average, it has been the top co-educational boarding school for the last six years, ahead of all its illustrious rivals.</p><p class=\"small\">These brilliant results speak for themselves and it should be understood that they are achieved as much in the core academic subjects such as Mathematics, Science, Economics, Modern Languages, History and English, as they are in the more creative ones.</p>','<h4>A wider range of subjects and a greater flexibility of choice</h4><p>The potential artist, linguist, scientist, philosopher, lawyer, actor or captain of industry – each is well catered for and each is equally valued. Hurtwood prepares students in 22 A-level subjects which can be studied in any combination. The curriculum includes traditional academic studies as well as more contemporary subjects.</p>','<h4>A gateway to the very best Universities</h4><p>More than 150 students are currently studying Mathematics or Science as one of their A-level subjects, and the places which Hurtwood Students have been awarded at the top universities reflect a real diversity of career aspirations, from Chemical Engineering and Medicine to Applied Psychology and Law.</p>','<p><span>PERSONAL DEVELOPMENT</span></p><p>is the important gift a school can bestow on its students</p>','<h4>The school’s reputation is built  on the triple pillars of academic rigour, creative flair and originality</h4><p>For all its academic success, Hurtwood is far from being an ‘exam factory’. It is important to appreciate that the school’s reputation has been built on the triple pillars of academic rigour, creative flair and originality, and the profoundly-held belief that personal development is the most important gift a school can bestow on its students.</p>',4,38,40,42,41,43);
/*!40000 ALTER TABLE `AcademicPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicPage_Live`
--

DROP TABLE IF EXISTS `AcademicPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SectionTitle` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicPage_Live`
--

LOCK TABLES `AcademicPage_Live` WRITE;
/*!40000 ALTER TABLE `AcademicPage_Live` DISABLE KEYS */;
INSERT INTO `AcademicPage_Live` VALUES (7,'HURTWOOD’S A-LEVEL RECORD HAS BEEN TRULY OUTSTANDING','<p>On average, it has been the top co-educational boarding school for the last six years, ahead of all its illustrious rivals.</p><p class=\"small\">These brilliant results speak for themselves and it should be understood that they are achieved as much in the core academic subjects such as Mathematics, Science, Economics, Modern Languages, History and English, as they are in the more creative ones.</p>','<h4>A wider range of subjects and a greater flexibility of choice</h4><p>The potential artist, linguist, scientist, philosopher, lawyer, actor or captain of industry – each is well catered for and each is equally valued. Hurtwood prepares students in 22 A-level subjects which can be studied in any combination. The curriculum includes traditional academic studies as well as more contemporary subjects.</p>','<h4>A gateway to the very best Universities</h4><p>More than 150 students are currently studying Mathematics or Science as one of their A-level subjects, and the places which Hurtwood Students have been awarded at the top universities reflect a real diversity of career aspirations, from Chemical Engineering and Medicine to Applied Psychology and Law.</p>','<p><span>PERSONAL DEVELOPMENT</span></p><p>is the important gift a school can bestow on its students</p>','<h4>The school’s reputation is built  on the triple pillars of academic rigour, creative flair and originality</h4><p>For all its academic success, Hurtwood is far from being an ‘exam factory’. It is important to appreciate that the school’s reputation has been built on the triple pillars of academic rigour, creative flair and originality, and the profoundly-held belief that personal development is the most important gift a school can bestow on its students.</p>',4,38,40,42,41,43);
/*!40000 ALTER TABLE `AcademicPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicPage_versions`
--

DROP TABLE IF EXISTS `AcademicPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `SectionTitle` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicPage_versions`
--

LOCK TABLES `AcademicPage_versions` WRITE;
/*!40000 ALTER TABLE `AcademicPage_versions` DISABLE KEYS */;
INSERT INTO `AcademicPage_versions` VALUES (1,7,1,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0),(2,7,2,NULL,NULL,NULL,NULL,NULL,NULL,4,0,0,0,0,0),(3,7,3,'HURTWOOD’S A-LEVEL RECORD HAS BEEN TRULY OUTSTANDING','<p>On average, it has been the top co-educational boarding school for the last six years, ahead of all its illustrious rivals.</p><p class=\"small\">These brilliant results speak for themselves and it should be understood that they are achieved as much in the core academic subjects such as Mathematics, Science, Economics, Modern Languages, History and English, as they are in the more creative ones.</p>','<h4>A wider range of subjects and a greater flexibility of choice</h4><p>The potential artist, linguist, scientist, philosopher, lawyer, actor or captain of industry – each is well catered for and each is equally valued. Hurtwood prepares students in 22 A-level subjects which can be studied in any combination. The curriculum includes traditional academic studies as well as more contemporary subjects.</p>','<h4>A gateway to the very best Universities</h4><p>More than 150 students are currently studying Mathematics or Science as one of their A-level subjects, and the places which Hurtwood Students have been awarded at the top universities reflect a real diversity of career aspirations, from Chemical Engineering and Medicine to Applied Psychology and Law.</p>','<p><span>PERSONAL DEVELOPMENT</span></p><p>is the important gift a school can bestow on its students</p>','<h4>The school’s reputation is built  on the triple pillars of academic rigour, creative flair and originality</h4><p>For all its academic success, Hurtwood is far from being an ‘exam factory’. It is important to appreciate that the school’s reputation has been built on the triple pillars of academic rigour, creative flair and originality, and the profoundly-held belief that personal development is the most important gift a school can bestow on its students.</p>',4,0,0,0,0,0),(4,7,4,'HURTWOOD’S A-LEVEL RECORD HAS BEEN TRULY OUTSTANDING','<p>On average, it has been the top co-educational boarding school for the last six years, ahead of all its illustrious rivals.</p><p class=\"small\">These brilliant results speak for themselves and it should be understood that they are achieved as much in the core academic subjects such as Mathematics, Science, Economics, Modern Languages, History and English, as they are in the more creative ones.</p>','<h4>A wider range of subjects and a greater flexibility of choice</h4><p>The potential artist, linguist, scientist, philosopher, lawyer, actor or captain of industry – each is well catered for and each is equally valued. Hurtwood prepares students in 22 A-level subjects which can be studied in any combination. The curriculum includes traditional academic studies as well as more contemporary subjects.</p>','<h4>A gateway to the very best Universities</h4><p>More than 150 students are currently studying Mathematics or Science as one of their A-level subjects, and the places which Hurtwood Students have been awarded at the top universities reflect a real diversity of career aspirations, from Chemical Engineering and Medicine to Applied Psychology and Law.</p>','<p><span>PERSONAL DEVELOPMENT</span></p><p>is the important gift a school can bestow on its students</p>','<h4>The school’s reputation is built  on the triple pillars of academic rigour, creative flair and originality</h4><p>For all its academic success, Hurtwood is far from being an ‘exam factory’. It is important to appreciate that the school’s reputation has been built on the triple pillars of academic rigour, creative flair and originality, and the profoundly-held belief that personal development is the most important gift a school can bestow on its students.</p>',4,0,0,0,0,0),(5,7,5,'HURTWOOD’S A-LEVEL RECORD HAS BEEN TRULY OUTSTANDING','<p>On average, it has been the top co-educational boarding school for the last six years, ahead of all its illustrious rivals.</p><p class=\"small\">These brilliant results speak for themselves and it should be understood that they are achieved as much in the core academic subjects such as Mathematics, Science, Economics, Modern Languages, History and English, as they are in the more creative ones.</p>','<h4>A wider range of subjects and a greater flexibility of choice</h4><p>The potential artist, linguist, scientist, philosopher, lawyer, actor or captain of industry – each is well catered for and each is equally valued. Hurtwood prepares students in 22 A-level subjects which can be studied in any combination. The curriculum includes traditional academic studies as well as more contemporary subjects.</p>','<h4>A gateway to the very best Universities</h4><p>More than 150 students are currently studying Mathematics or Science as one of their A-level subjects, and the places which Hurtwood Students have been awarded at the top universities reflect a real diversity of career aspirations, from Chemical Engineering and Medicine to Applied Psychology and Law.</p>','<p><span>PERSONAL DEVELOPMENT</span></p><p>is the important gift a school can bestow on its students</p>','<h4>The school’s reputation is built  on the triple pillars of academic rigour, creative flair and originality</h4><p>For all its academic success, Hurtwood is far from being an ‘exam factory’. It is important to appreciate that the school’s reputation has been built on the triple pillars of academic rigour, creative flair and originality, and the profoundly-held belief that personal development is the most important gift a school can bestow on its students.</p>',4,38,0,0,0,0),(6,7,6,'HURTWOOD’S A-LEVEL RECORD HAS BEEN TRULY OUTSTANDING','<p>On average, it has been the top co-educational boarding school for the last six years, ahead of all its illustrious rivals.</p><p class=\"small\">These brilliant results speak for themselves and it should be understood that they are achieved as much in the core academic subjects such as Mathematics, Science, Economics, Modern Languages, History and English, as they are in the more creative ones.</p>','<h4>A wider range of subjects and a greater flexibility of choice</h4><p>The potential artist, linguist, scientist, philosopher, lawyer, actor or captain of industry – each is well catered for and each is equally valued. Hurtwood prepares students in 22 A-level subjects which can be studied in any combination. The curriculum includes traditional academic studies as well as more contemporary subjects.</p>','<h4>A gateway to the very best Universities</h4><p>More than 150 students are currently studying Mathematics or Science as one of their A-level subjects, and the places which Hurtwood Students have been awarded at the top universities reflect a real diversity of career aspirations, from Chemical Engineering and Medicine to Applied Psychology and Law.</p>','<p><span>PERSONAL DEVELOPMENT</span></p><p>is the important gift a school can bestow on its students</p>','<h4>The school’s reputation is built  on the triple pillars of academic rigour, creative flair and originality</h4><p>For all its academic success, Hurtwood is far from being an ‘exam factory’. It is important to appreciate that the school’s reputation has been built on the triple pillars of academic rigour, creative flair and originality, and the profoundly-held belief that personal development is the most important gift a school can bestow on its students.</p>',4,38,40,42,41,43);
/*!40000 ALTER TABLE `AcademicPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicSubjectPage`
--

DROP TABLE IF EXISTS `AcademicSubjectPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicSubjectPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Subtitle` varchar(255) DEFAULT NULL,
  `Section1` mediumtext,
  `Section2` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `IconID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `IconID` (`IconID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicSubjectPage`
--

LOCK TABLES `AcademicSubjectPage` WRITE;
/*!40000 ALTER TABLE `AcademicSubjectPage` DISABLE KEYS */;
INSERT INTO `AcademicSubjectPage` VALUES (23,'Accountancy is a popular and highly successful A-Level subject','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis enim sed sem mattis imperdiet. Fusce pharetra bibendum volutpat. Aenean accumsan fermentum urna, at eleifend tellus porta at. Cras et egestas dolor. Ut pulvinar porta ipsum, sit amet sagittis velit tristique iaculis. Donec rutrum tempor augue. Praesent tincidunt mauris et lorem pharetra suscipit. Nulla vitae nibh id tellus fringilla dignissim eu ut velit. Nunc eget felis sit amet magna laoreet fermentum. Pellentesque imperdiet erat ut turpis bibendum, fringilla vestibulum ex tincidunt. Ut tempor blandit mollis. Aliquam scelerisque volutpat lectus, eget pretium est vehicula a. Fusce hendrerit finibus purus, placerat tincidunt eros rutrum ut. Aliquam eu erat vitae elit egestas blandit. Duis id convallis mi.</p><p>Donec ut pulvinar elit. Morbi consequat vel dolor in sodales. Phasellus vel risus et eros auctor egestas quis sit amet dolor. Mauris justo lectus, malesuada ac malesuada id, egestas eget lectus. Suspendisse id nibh sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris eget nisl ut quam fringilla consectetur eget id nulla. Aliquam viverra tortor rhoncus, scelerisque lectus posuere, laoreet felis. Morbi gravida placerat purus, eget sollicitudin massa dignissim vel. Vivamus bibendum sapien turpis, nec sodales orci fringilla at. Vivamus viverra dolor eget ante eleifend posuere. Proin tristique tincidunt leo quis egestas. Aliquam quis augue porttitor, pharetra eros a, fringilla justo.</p><p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In sollicitudin nisi a diam auctor, at imperdiet dui commodo. Nunc in libero auctor, condimentum justo in, congue tellus. Praesent imperdiet scelerisque nisl vitae interdum. Nunc a mi quis lectus pellentesque dignissim et vel quam. Aliquam turpis ipsum, tempor et quam et, tempus sollicitudin eros. Praesent cursus non tellus quis fringilla. Cras ac sem aliquet, cursus ante id, viverra diam. Vivamus maximus, orci sit amet accumsan egestas, turpis turpis interdum dui, non rutrum dui sapien id velit. Cras sollicitudin semper enim. Nunc convallis turpis eu metus finibus consectetur. Duis dui quam, laoreet vel consectetur vitae, rhoncus id nisi. Duis aliquam, odio id pulvinar posuere, lectus ligula porta urna, sed maximus leo leo et neque. Vestibulum bibendum enim sed rutrum condimentum.</p>','<p>Ut arcu augue, finibus et eros et, sagittis pharetra ligula. Aenean id sollicitudin velit. Phasellus lacinia mi ut urna interdum consectetur. Quisque ut facilisis leo, in elementum ipsum. Maecenas felis turpis, porttitor et risus non, molestie hendrerit nibh. Proin quis justo lobortis, tempus purus vel, aliquam sem. Duis semper arcu a sapien venenatis, eget accumsan sapien aliquet. Integer vitae tellus tristique, interdum velit eu, elementum massa. Vivamus rutrum nibh ac aliquet venenatis. Ut eu odio sit amet turpis interdum molestie. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p>Vivamus imperdiet nisl ac tellus luctus, eu aliquam augue porta. Phasellus id cursus odio. Proin lobortis efficitur fringilla. Sed laoreet, turpis eu sagittis blandit, augue dui ultrices felis, sed facilisis tortor purus eget dolor. Nam bibendum fringilla neque vitae aliquam. Mauris et quam eu dui placerat feugiat ut quis ipsum. Nullam facilisis fringilla tempus. Pellentesque pretium mauris eget elementum posuere. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur sed lorem eu metus elementum vestibulum. Curabitur dignissim, ligula sit amet rhoncus fringilla, ante dui iaculis ipsum, eget hendrerit ante velit et nunc. Nullam lobortis massa eu posuere tincidunt. Fusce id lobortis urna, ac malesuada diam. Vivamus odio elit, ullamcorper in posuere ut, rhoncus vitae lectus. In sit amet lectus at mi aliquet condimentum. Mauris tincidunt magna quis mattis pretium.</p>',26,132),(24,NULL,NULL,NULL,0,133),(33,NULL,NULL,NULL,34,159);
/*!40000 ALTER TABLE `AcademicSubjectPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicSubjectPage_Live`
--

DROP TABLE IF EXISTS `AcademicSubjectPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicSubjectPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Subtitle` varchar(255) DEFAULT NULL,
  `Section1` mediumtext,
  `Section2` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `IconID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `IconID` (`IconID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicSubjectPage_Live`
--

LOCK TABLES `AcademicSubjectPage_Live` WRITE;
/*!40000 ALTER TABLE `AcademicSubjectPage_Live` DISABLE KEYS */;
INSERT INTO `AcademicSubjectPage_Live` VALUES (23,'Accountancy is a popular and highly successful A-Level subject','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis enim sed sem mattis imperdiet. Fusce pharetra bibendum volutpat. Aenean accumsan fermentum urna, at eleifend tellus porta at. Cras et egestas dolor. Ut pulvinar porta ipsum, sit amet sagittis velit tristique iaculis. Donec rutrum tempor augue. Praesent tincidunt mauris et lorem pharetra suscipit. Nulla vitae nibh id tellus fringilla dignissim eu ut velit. Nunc eget felis sit amet magna laoreet fermentum. Pellentesque imperdiet erat ut turpis bibendum, fringilla vestibulum ex tincidunt. Ut tempor blandit mollis. Aliquam scelerisque volutpat lectus, eget pretium est vehicula a. Fusce hendrerit finibus purus, placerat tincidunt eros rutrum ut. Aliquam eu erat vitae elit egestas blandit. Duis id convallis mi.</p><p>Donec ut pulvinar elit. Morbi consequat vel dolor in sodales. Phasellus vel risus et eros auctor egestas quis sit amet dolor. Mauris justo lectus, malesuada ac malesuada id, egestas eget lectus. Suspendisse id nibh sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris eget nisl ut quam fringilla consectetur eget id nulla. Aliquam viverra tortor rhoncus, scelerisque lectus posuere, laoreet felis. Morbi gravida placerat purus, eget sollicitudin massa dignissim vel. Vivamus bibendum sapien turpis, nec sodales orci fringilla at. Vivamus viverra dolor eget ante eleifend posuere. Proin tristique tincidunt leo quis egestas. Aliquam quis augue porttitor, pharetra eros a, fringilla justo.</p><p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In sollicitudin nisi a diam auctor, at imperdiet dui commodo. Nunc in libero auctor, condimentum justo in, congue tellus. Praesent imperdiet scelerisque nisl vitae interdum. Nunc a mi quis lectus pellentesque dignissim et vel quam. Aliquam turpis ipsum, tempor et quam et, tempus sollicitudin eros. Praesent cursus non tellus quis fringilla. Cras ac sem aliquet, cursus ante id, viverra diam. Vivamus maximus, orci sit amet accumsan egestas, turpis turpis interdum dui, non rutrum dui sapien id velit. Cras sollicitudin semper enim. Nunc convallis turpis eu metus finibus consectetur. Duis dui quam, laoreet vel consectetur vitae, rhoncus id nisi. Duis aliquam, odio id pulvinar posuere, lectus ligula porta urna, sed maximus leo leo et neque. Vestibulum bibendum enim sed rutrum condimentum.</p>','<p>Ut arcu augue, finibus et eros et, sagittis pharetra ligula. Aenean id sollicitudin velit. Phasellus lacinia mi ut urna interdum consectetur. Quisque ut facilisis leo, in elementum ipsum. Maecenas felis turpis, porttitor et risus non, molestie hendrerit nibh. Proin quis justo lobortis, tempus purus vel, aliquam sem. Duis semper arcu a sapien venenatis, eget accumsan sapien aliquet. Integer vitae tellus tristique, interdum velit eu, elementum massa. Vivamus rutrum nibh ac aliquet venenatis. Ut eu odio sit amet turpis interdum molestie. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p>Vivamus imperdiet nisl ac tellus luctus, eu aliquam augue porta. Phasellus id cursus odio. Proin lobortis efficitur fringilla. Sed laoreet, turpis eu sagittis blandit, augue dui ultrices felis, sed facilisis tortor purus eget dolor. Nam bibendum fringilla neque vitae aliquam. Mauris et quam eu dui placerat feugiat ut quis ipsum. Nullam facilisis fringilla tempus. Pellentesque pretium mauris eget elementum posuere. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur sed lorem eu metus elementum vestibulum. Curabitur dignissim, ligula sit amet rhoncus fringilla, ante dui iaculis ipsum, eget hendrerit ante velit et nunc. Nullam lobortis massa eu posuere tincidunt. Fusce id lobortis urna, ac malesuada diam. Vivamus odio elit, ullamcorper in posuere ut, rhoncus vitae lectus. In sit amet lectus at mi aliquet condimentum. Mauris tincidunt magna quis mattis pretium.</p>',26,132),(24,NULL,NULL,NULL,0,133),(33,NULL,NULL,NULL,34,159);
/*!40000 ALTER TABLE `AcademicSubjectPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcademicSubjectPage_versions`
--

DROP TABLE IF EXISTS `AcademicSubjectPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcademicSubjectPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Subtitle` varchar(255) DEFAULT NULL,
  `Section1` mediumtext,
  `Section2` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `IconID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `IconID` (`IconID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicSubjectPage_versions`
--

LOCK TABLES `AcademicSubjectPage_versions` WRITE;
/*!40000 ALTER TABLE `AcademicSubjectPage_versions` DISABLE KEYS */;
INSERT INTO `AcademicSubjectPage_versions` VALUES (1,23,1,NULL,NULL,NULL,0,0),(2,23,2,'Accountancy is a popular and highly successful A-Level subject','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis enim sed sem mattis imperdiet. Fusce pharetra bibendum volutpat. Aenean accumsan fermentum urna, at eleifend tellus porta at. Cras et egestas dolor. Ut pulvinar porta ipsum, sit amet sagittis velit tristique iaculis. Donec rutrum tempor augue. Praesent tincidunt mauris et lorem pharetra suscipit. Nulla vitae nibh id tellus fringilla dignissim eu ut velit. Nunc eget felis sit amet magna laoreet fermentum. Pellentesque imperdiet erat ut turpis bibendum, fringilla vestibulum ex tincidunt. Ut tempor blandit mollis. Aliquam scelerisque volutpat lectus, eget pretium est vehicula a. Fusce hendrerit finibus purus, placerat tincidunt eros rutrum ut. Aliquam eu erat vitae elit egestas blandit. Duis id convallis mi.</p><p>Donec ut pulvinar elit. Morbi consequat vel dolor in sodales. Phasellus vel risus et eros auctor egestas quis sit amet dolor. Mauris justo lectus, malesuada ac malesuada id, egestas eget lectus. Suspendisse id nibh sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris eget nisl ut quam fringilla consectetur eget id nulla. Aliquam viverra tortor rhoncus, scelerisque lectus posuere, laoreet felis. Morbi gravida placerat purus, eget sollicitudin massa dignissim vel. Vivamus bibendum sapien turpis, nec sodales orci fringilla at. Vivamus viverra dolor eget ante eleifend posuere. Proin tristique tincidunt leo quis egestas. Aliquam quis augue porttitor, pharetra eros a, fringilla justo.</p><p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In sollicitudin nisi a diam auctor, at imperdiet dui commodo. Nunc in libero auctor, condimentum justo in, congue tellus. Praesent imperdiet scelerisque nisl vitae interdum. Nunc a mi quis lectus pellentesque dignissim et vel quam. Aliquam turpis ipsum, tempor et quam et, tempus sollicitudin eros. Praesent cursus non tellus quis fringilla. Cras ac sem aliquet, cursus ante id, viverra diam. Vivamus maximus, orci sit amet accumsan egestas, turpis turpis interdum dui, non rutrum dui sapien id velit. Cras sollicitudin semper enim. Nunc convallis turpis eu metus finibus consectetur. Duis dui quam, laoreet vel consectetur vitae, rhoncus id nisi. Duis aliquam, odio id pulvinar posuere, lectus ligula porta urna, sed maximus leo leo et neque. Vestibulum bibendum enim sed rutrum condimentum.</p>','<p>Ut arcu augue, finibus et eros et, sagittis pharetra ligula. Aenean id sollicitudin velit. Phasellus lacinia mi ut urna interdum consectetur. Quisque ut facilisis leo, in elementum ipsum. Maecenas felis turpis, porttitor et risus non, molestie hendrerit nibh. Proin quis justo lobortis, tempus purus vel, aliquam sem. Duis semper arcu a sapien venenatis, eget accumsan sapien aliquet. Integer vitae tellus tristique, interdum velit eu, elementum massa. Vivamus rutrum nibh ac aliquet venenatis. Ut eu odio sit amet turpis interdum molestie. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p>Vivamus imperdiet nisl ac tellus luctus, eu aliquam augue porta. Phasellus id cursus odio. Proin lobortis efficitur fringilla. Sed laoreet, turpis eu sagittis blandit, augue dui ultrices felis, sed facilisis tortor purus eget dolor. Nam bibendum fringilla neque vitae aliquam. Mauris et quam eu dui placerat feugiat ut quis ipsum. Nullam facilisis fringilla tempus. Pellentesque pretium mauris eget elementum posuere. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur sed lorem eu metus elementum vestibulum. Curabitur dignissim, ligula sit amet rhoncus fringilla, ante dui iaculis ipsum, eget hendrerit ante velit et nunc. Nullam lobortis massa eu posuere tincidunt. Fusce id lobortis urna, ac malesuada diam. Vivamus odio elit, ullamcorper in posuere ut, rhoncus vitae lectus. In sit amet lectus at mi aliquet condimentum. Mauris tincidunt magna quis mattis pretium.</p>',26,132),(3,24,1,NULL,NULL,NULL,0,0),(4,24,2,NULL,NULL,NULL,0,133),(5,33,1,NULL,NULL,NULL,0,0),(6,33,2,NULL,NULL,NULL,0,159),(7,33,3,NULL,NULL,NULL,34,159);
/*!40000 ALTER TABLE `AcademicSubjectPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdmissionsContentPage`
--

DROP TABLE IF EXISTS `AdmissionsContentPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdmissionsContentPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Section1` mediumtext,
  `Section2` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdmissionsContentPage`
--

LOCK TABLES `AdmissionsContentPage` WRITE;
/*!40000 ALTER TABLE `AdmissionsContentPage` DISABLE KEYS */;
INSERT INTO `AdmissionsContentPage` VALUES (31,'<h3 class=\"h3 mt80 mb60\">FROM SEPTEMBER 2015</h3><div class=\"fees__info\">\n<div>FULL FEES<br><strong>£13,185</strong> per term</div>\n<div>DAY FEES<br><strong>£8,790</strong> per term</div>\n</div><div class=\"text\">\n<p>There is a 15% surcharge for students who come to us from outside the GCSE system and who therefore require specialized English teaching in order to obtain GCSE English or other necessary qualifications in English language.</p>\n<p>A deposit of £400 per term is requested to cover extra expenses such as stationery, books, medicines, outings etc.</p>\n<p>Fees are likely to increase each year to keep pace with rising costs in education.</p>\n</div>','<h3 class=\"h3\">SCHOOL FEE INSURANCE</h3><div class=\"text text-center mt40 mb40\">\n<p>Vero amet, iriuredolor nisl blandit commodo at tation accumsan odio lobortis autem tation. Dolore suscipit dignissim, consequatvel et aliquip veniam ex accumsan, sed quis augue, erat dolore aliquam aliquip vulputate volutpat dolor. Delenit ad molestie at odio eu.</p>\n<a class=\"btn btn-wide blue mt30\">DOWNLOAD OUR INFORMATION PACK</a></div>',32),(32,'<h3 class=\"h3 mt80 mb60\">SCHOLARSHIPS FOR PERFORMING ARTS AND MATHS/SCIENCE</h3><div class=\"text auto\">\n<p>Hurtwood House is offering a limited number of two-year A-level Performing Arts scholarships this year, one at 50% off the fees, two at 25% off the fees and three at 10% off the fees.  The major scholarships are awarded to students auditioning in all three of the disciplines – acting, singing and dance.  </p>\n<p>Clearly, we are not expecting students of this age to have received a great deal of formal vocational training, but we are looking for evidence of outstanding talent and natural skills.  We are looking for young people with enthusiasm and commitment who would make a positive contribution to the Hurtwood Theatre during their time here. </p>\n<p>Scholarships are awarded for the full two-year period of the student\'s A-levels, but will be subject to review at the end of the first year.  Successful candidates will be expected to take A-level Theatre Studies as part of their A-level programme, and to contribute to all major school productions. </p>\n<p>Before auditioning for one of these scholarships, it is necessary for students to come for an interview, so if you decide you would like to apply for a scholarship and have not already visited the school you should contact the school secretary to arrange an appointment.  Once you have had your interview, you may complete the scholarship application form and return it to us so that we can enter your name onto the list of candidates for the next audition.  Please note that a reference from your present school will also be required, and this will be written for on receipt of your completed application form. </p>\n</div><h3 class=\"h3 mt50 mb30\">SCHOLARSHIP AUDITIONS</h3><div class=\"text\">\n<p>Scholarship Auditions will be held SUNDAY 28TH FEBRUARY.  Closer to the audition you will be sent a schedule letting you know what time you should arrive at the school. </p>\n<a class=\"btn btn-wide blue mt20\">DOWNLOAD OUR APPLICATION FORM</a></div>',NULL,33);
/*!40000 ALTER TABLE `AdmissionsContentPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdmissionsContentPage_Live`
--

DROP TABLE IF EXISTS `AdmissionsContentPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdmissionsContentPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Section1` mediumtext,
  `Section2` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdmissionsContentPage_Live`
--

LOCK TABLES `AdmissionsContentPage_Live` WRITE;
/*!40000 ALTER TABLE `AdmissionsContentPage_Live` DISABLE KEYS */;
INSERT INTO `AdmissionsContentPage_Live` VALUES (31,'<h3 class=\"h3 mt80 mb60\">FROM SEPTEMBER 2015</h3><div class=\"fees__info\">\n<div>FULL FEES<br><strong>£13,185</strong> per term</div>\n<div>DAY FEES<br><strong>£8,790</strong> per term</div>\n</div><div class=\"text\">\n<p>There is a 15% surcharge for students who come to us from outside the GCSE system and who therefore require specialized English teaching in order to obtain GCSE English or other necessary qualifications in English language.</p>\n<p>A deposit of £400 per term is requested to cover extra expenses such as stationery, books, medicines, outings etc.</p>\n<p>Fees are likely to increase each year to keep pace with rising costs in education.</p>\n</div>','<h3 class=\"h3\">SCHOOL FEE INSURANCE</h3><div class=\"text text-center mt40 mb40\">\n<p>Vero amet, iriuredolor nisl blandit commodo at tation accumsan odio lobortis autem tation. Dolore suscipit dignissim, consequatvel et aliquip veniam ex accumsan, sed quis augue, erat dolore aliquam aliquip vulputate volutpat dolor. Delenit ad molestie at odio eu.</p>\n<a class=\"btn btn-wide blue mt30\">DOWNLOAD OUR INFORMATION PACK</a></div>',32),(32,'<h3 class=\"h3 mt80 mb60\">SCHOLARSHIPS FOR PERFORMING ARTS AND MATHS/SCIENCE</h3><div class=\"text auto\">\n<p>Hurtwood House is offering a limited number of two-year A-level Performing Arts scholarships this year, one at 50% off the fees, two at 25% off the fees and three at 10% off the fees.  The major scholarships are awarded to students auditioning in all three of the disciplines – acting, singing and dance.  </p>\n<p>Clearly, we are not expecting students of this age to have received a great deal of formal vocational training, but we are looking for evidence of outstanding talent and natural skills.  We are looking for young people with enthusiasm and commitment who would make a positive contribution to the Hurtwood Theatre during their time here. </p>\n<p>Scholarships are awarded for the full two-year period of the student\'s A-levels, but will be subject to review at the end of the first year.  Successful candidates will be expected to take A-level Theatre Studies as part of their A-level programme, and to contribute to all major school productions. </p>\n<p>Before auditioning for one of these scholarships, it is necessary for students to come for an interview, so if you decide you would like to apply for a scholarship and have not already visited the school you should contact the school secretary to arrange an appointment.  Once you have had your interview, you may complete the scholarship application form and return it to us so that we can enter your name onto the list of candidates for the next audition.  Please note that a reference from your present school will also be required, and this will be written for on receipt of your completed application form. </p>\n</div><h3 class=\"h3 mt50 mb30\">SCHOLARSHIP AUDITIONS</h3><div class=\"text\">\n<p>Scholarship Auditions will be held SUNDAY 28TH FEBRUARY.  Closer to the audition you will be sent a schedule letting you know what time you should arrive at the school. </p>\n<a class=\"btn btn-wide blue mt20\">DOWNLOAD OUR APPLICATION FORM</a></div>',NULL,33);
/*!40000 ALTER TABLE `AdmissionsContentPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdmissionsContentPage_TestimonialsTags`
--

DROP TABLE IF EXISTS `AdmissionsContentPage_TestimonialsTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdmissionsContentPage_TestimonialsTags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdmissionsContentPageID` int(11) NOT NULL DEFAULT '0',
  `TagsID` int(11) NOT NULL DEFAULT '0',
  `TagID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `AdmissionsContentPageID` (`AdmissionsContentPageID`),
  KEY `TagsID` (`TagsID`),
  KEY `TagID` (`TagID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdmissionsContentPage_TestimonialsTags`
--

LOCK TABLES `AdmissionsContentPage_TestimonialsTags` WRITE;
/*!40000 ALTER TABLE `AdmissionsContentPage_TestimonialsTags` DISABLE KEYS */;
INSERT INTO `AdmissionsContentPage_TestimonialsTags` VALUES (1,31,0,9),(2,31,0,10),(3,32,0,9);
/*!40000 ALTER TABLE `AdmissionsContentPage_TestimonialsTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdmissionsContentPage_versions`
--

DROP TABLE IF EXISTS `AdmissionsContentPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdmissionsContentPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Section1` mediumtext,
  `Section2` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdmissionsContentPage_versions`
--

LOCK TABLES `AdmissionsContentPage_versions` WRITE;
/*!40000 ALTER TABLE `AdmissionsContentPage_versions` DISABLE KEYS */;
INSERT INTO `AdmissionsContentPage_versions` VALUES (1,31,1,NULL,NULL,0),(2,31,2,NULL,NULL,0),(3,31,3,NULL,NULL,0),(4,32,1,NULL,NULL,0),(5,32,2,NULL,NULL,0),(6,31,4,'<h3 class=\"h3\">SCHOOL FEE INSURANCE</h3><div class=\"text text-center mt40 mb40\">\n<p>Vero amet, iriuredolor nisl blandit commodo at tation accumsan odio lobortis autem tation. Dolore suscipit dignissim, consequatvel et aliquip veniam ex accumsan, sed quis augue, erat dolore aliquam aliquip vulputate volutpat dolor. Delenit ad molestie at odio eu.</p>\n<a class=\"btn btn-wide blue mt30\">DOWNLOAD OUR INFORMATION PACK</a></div>',NULL,0),(7,31,5,'<h3 class=\"h3 mt80 mb60\">FROM SEPTEMBER 2015</h3><div class=\"fees__info\">\n<div>FULL FEES<br><strong>£13,185</strong> per term</div>\n<div>DAY FEES<br><strong>£8,790</strong> per term</div>\n</div><div class=\"text\">\n<p>There is a 15% surcharge for students who come to us from outside the GCSE system and who therefore require specialized English teaching in order to obtain GCSE English or other necessary qualifications in English language.</p>\n<p>A deposit of £400 per term is requested to cover extra expenses such as stationery, books, medicines, outings etc.</p>\n<p>Fees are likely to increase each year to keep pace with rising costs in education.</p>\n</div>','<h3 class=\"h3\">SCHOOL FEE INSURANCE</h3><div class=\"text text-center mt40 mb40\">\n<p>Vero amet, iriuredolor nisl blandit commodo at tation accumsan odio lobortis autem tation. Dolore suscipit dignissim, consequatvel et aliquip veniam ex accumsan, sed quis augue, erat dolore aliquam aliquip vulputate volutpat dolor. Delenit ad molestie at odio eu.</p>\n<a class=\"btn btn-wide blue mt30\">DOWNLOAD OUR INFORMATION PACK</a></div>',0),(8,32,3,'<h3 class=\"h3 mt80 mb60\">SCHOLARSHIPS FOR PERFORMING ARTS AND MATHS/SCIENCE</h3><div class=\"text auto\">\n<p>Hurtwood House is offering a limited number of two-year A-level Performing Arts scholarships this year, one at 50% off the fees, two at 25% off the fees and three at 10% off the fees.  The major scholarships are awarded to students auditioning in all three of the disciplines – acting, singing and dance.  </p>\n<p>Clearly, we are not expecting students of this age to have received a great deal of formal vocational training, but we are looking for evidence of outstanding talent and natural skills.  We are looking for young people with enthusiasm and commitment who would make a positive contribution to the Hurtwood Theatre during their time here. </p>\n<p>Scholarships are awarded for the full two-year period of the student\'s A-levels, but will be subject to review at the end of the first year.  Successful candidates will be expected to take A-level Theatre Studies as part of their A-level programme, and to contribute to all major school productions. </p>\n<p>Before auditioning for one of these scholarships, it is necessary for students to come for an interview, so if you decide you would like to apply for a scholarship and have not already visited the school you should contact the school secretary to arrange an appointment.  Once you have had your interview, you may complete the scholarship application form and return it to us so that we can enter your name onto the list of candidates for the next audition.  Please note that a reference from your present school will also be required, and this will be written for on receipt of your completed application form. </p>\n</div><h3 class=\"h3 mt50 mb30\">SCHOLARSHIP AUDITIONS</h3><div class=\"text\">\n<p>Scholarship Auditions will be held SUNDAY 28TH FEBRUARY.  Closer to the audition you will be sent a schedule letting you know what time you should arrive at the school. </p>\n<a class=\"btn btn-wide blue mt20\">DOWNLOAD OUR APPLICATION FORM</a></div>',NULL,33);
/*!40000 ALTER TABLE `AdmissionsContentPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdmissionsPage`
--

DROP TABLE IF EXISTS `AdmissionsPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdmissionsPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdmissionsPage`
--

LOCK TABLES `AdmissionsPage` WRITE;
/*!40000 ALTER TABLE `AdmissionsPage` DISABLE KEYS */;
INSERT INTO `AdmissionsPage` VALUES (29,30);
/*!40000 ALTER TABLE `AdmissionsPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdmissionsPage_Live`
--

DROP TABLE IF EXISTS `AdmissionsPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdmissionsPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdmissionsPage_Live`
--

LOCK TABLES `AdmissionsPage_Live` WRITE;
/*!40000 ALTER TABLE `AdmissionsPage_Live` DISABLE KEYS */;
INSERT INTO `AdmissionsPage_Live` VALUES (29,30);
/*!40000 ALTER TABLE `AdmissionsPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdmissionsPage_TestimonialsTags`
--

DROP TABLE IF EXISTS `AdmissionsPage_TestimonialsTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdmissionsPage_TestimonialsTags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdmissionsPageID` int(11) NOT NULL DEFAULT '0',
  `TagsID` int(11) NOT NULL DEFAULT '0',
  `TagID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `AdmissionsPageID` (`AdmissionsPageID`),
  KEY `TagsID` (`TagsID`),
  KEY `TagID` (`TagID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdmissionsPage_TestimonialsTags`
--

LOCK TABLES `AdmissionsPage_TestimonialsTags` WRITE;
/*!40000 ALTER TABLE `AdmissionsPage_TestimonialsTags` DISABLE KEYS */;
INSERT INTO `AdmissionsPage_TestimonialsTags` VALUES (2,29,0,9);
/*!40000 ALTER TABLE `AdmissionsPage_TestimonialsTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdmissionsPage_versions`
--

DROP TABLE IF EXISTS `AdmissionsPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdmissionsPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdmissionsPage_versions`
--

LOCK TABLES `AdmissionsPage_versions` WRITE;
/*!40000 ALTER TABLE `AdmissionsPage_versions` DISABLE KEYS */;
INSERT INTO `AdmissionsPage_versions` VALUES (1,28,1,0),(2,29,1,0),(3,29,2,0),(4,29,3,30);
/*!40000 ALTER TABLE `AdmissionsPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdmissionsProcessPage`
--

DROP TABLE IF EXISTS `AdmissionsProcessPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdmissionsProcessPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdmissionsProcessPage`
--

LOCK TABLES `AdmissionsProcessPage` WRITE;
/*!40000 ALTER TABLE `AdmissionsProcessPage` DISABLE KEYS */;
INSERT INTO `AdmissionsProcessPage` VALUES (30,31);
/*!40000 ALTER TABLE `AdmissionsProcessPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdmissionsProcessPage_Live`
--

DROP TABLE IF EXISTS `AdmissionsProcessPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdmissionsProcessPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdmissionsProcessPage_Live`
--

LOCK TABLES `AdmissionsProcessPage_Live` WRITE;
/*!40000 ALTER TABLE `AdmissionsProcessPage_Live` DISABLE KEYS */;
INSERT INTO `AdmissionsProcessPage_Live` VALUES (30,31);
/*!40000 ALTER TABLE `AdmissionsProcessPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdmissionsProcessPage_TestimonialsTags`
--

DROP TABLE IF EXISTS `AdmissionsProcessPage_TestimonialsTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdmissionsProcessPage_TestimonialsTags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdmissionsProcessPageID` int(11) NOT NULL DEFAULT '0',
  `TagID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `AdmissionsProcessPageID` (`AdmissionsProcessPageID`),
  KEY `TagID` (`TagID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdmissionsProcessPage_TestimonialsTags`
--

LOCK TABLES `AdmissionsProcessPage_TestimonialsTags` WRITE;
/*!40000 ALTER TABLE `AdmissionsProcessPage_TestimonialsTags` DISABLE KEYS */;
INSERT INTO `AdmissionsProcessPage_TestimonialsTags` VALUES (1,30,9),(2,30,10);
/*!40000 ALTER TABLE `AdmissionsProcessPage_TestimonialsTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdmissionsProcessPage_versions`
--

DROP TABLE IF EXISTS `AdmissionsProcessPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdmissionsProcessPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdmissionsProcessPage_versions`
--

LOCK TABLES `AdmissionsProcessPage_versions` WRITE;
/*!40000 ALTER TABLE `AdmissionsProcessPage_versions` DISABLE KEYS */;
INSERT INTO `AdmissionsProcessPage_versions` VALUES (1,30,1,0),(2,30,2,31),(3,30,3,31),(4,30,4,31);
/*!40000 ALTER TABLE `AdmissionsProcessPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlumniHallOfFamePage`
--

DROP TABLE IF EXISTS `AlumniHallOfFamePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlumniHallOfFamePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlumniHallOfFamePage`
--

LOCK TABLES `AlumniHallOfFamePage` WRITE;
/*!40000 ALTER TABLE `AlumniHallOfFamePage` DISABLE KEYS */;
INSERT INTO `AlumniHallOfFamePage` VALUES (26,28);
/*!40000 ALTER TABLE `AlumniHallOfFamePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlumniHallOfFamePage_Live`
--

DROP TABLE IF EXISTS `AlumniHallOfFamePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlumniHallOfFamePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlumniHallOfFamePage_Live`
--

LOCK TABLES `AlumniHallOfFamePage_Live` WRITE;
/*!40000 ALTER TABLE `AlumniHallOfFamePage_Live` DISABLE KEYS */;
INSERT INTO `AlumniHallOfFamePage_Live` VALUES (26,28);
/*!40000 ALTER TABLE `AlumniHallOfFamePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlumniHallOfFamePage_versions`
--

DROP TABLE IF EXISTS `AlumniHallOfFamePage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlumniHallOfFamePage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlumniHallOfFamePage_versions`
--

LOCK TABLES `AlumniHallOfFamePage_versions` WRITE;
/*!40000 ALTER TABLE `AlumniHallOfFamePage_versions` DISABLE KEYS */;
INSERT INTO `AlumniHallOfFamePage_versions` VALUES (1,26,1,0),(2,26,2,28);
/*!40000 ALTER TABLE `AlumniHallOfFamePage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlumniPage`
--

DROP TABLE IF EXISTS `AlumniPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlumniPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SectionTitle` varchar(50) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlumniPage`
--

LOCK TABLES `AlumniPage` WRITE;
/*!40000 ALTER TABLE `AlumniPage` DISABLE KEYS */;
INSERT INTO `AlumniPage` VALUES (25,NULL,NULL,27);
/*!40000 ALTER TABLE `AlumniPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlumniPage_Live`
--

DROP TABLE IF EXISTS `AlumniPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlumniPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SectionTitle` varchar(50) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlumniPage_Live`
--

LOCK TABLES `AlumniPage_Live` WRITE;
/*!40000 ALTER TABLE `AlumniPage_Live` DISABLE KEYS */;
INSERT INTO `AlumniPage_Live` VALUES (25,NULL,NULL,27);
/*!40000 ALTER TABLE `AlumniPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlumniPage_NewsCategories`
--

DROP TABLE IF EXISTS `AlumniPage_NewsCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlumniPage_NewsCategories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AlumniPageID` int(11) NOT NULL DEFAULT '0',
  `NewsCategoryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `AlumniPageID` (`AlumniPageID`),
  KEY `NewsCategoryID` (`NewsCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlumniPage_NewsCategories`
--

LOCK TABLES `AlumniPage_NewsCategories` WRITE;
/*!40000 ALTER TABLE `AlumniPage_NewsCategories` DISABLE KEYS */;
INSERT INTO `AlumniPage_NewsCategories` VALUES (1,25,1),(2,25,3);
/*!40000 ALTER TABLE `AlumniPage_NewsCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlumniPage_NewsTags`
--

DROP TABLE IF EXISTS `AlumniPage_NewsTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlumniPage_NewsTags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AlumniPageID` int(11) NOT NULL DEFAULT '0',
  `NewsTagID` int(11) NOT NULL DEFAULT '0',
  `TagID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `AlumniPageID` (`AlumniPageID`),
  KEY `NewsTagID` (`NewsTagID`),
  KEY `TagID` (`TagID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlumniPage_NewsTags`
--

LOCK TABLES `AlumniPage_NewsTags` WRITE;
/*!40000 ALTER TABLE `AlumniPage_NewsTags` DISABLE KEYS */;
INSERT INTO `AlumniPage_NewsTags` VALUES (1,25,5,0),(2,25,6,0),(3,25,0,1),(4,25,0,3);
/*!40000 ALTER TABLE `AlumniPage_NewsTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlumniPage_versions`
--

DROP TABLE IF EXISTS `AlumniPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlumniPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `SectionTitle` varchar(50) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlumniPage_versions`
--

LOCK TABLES `AlumniPage_versions` WRITE;
/*!40000 ALTER TABLE `AlumniPage_versions` DISABLE KEYS */;
INSERT INTO `AlumniPage_versions` VALUES (1,25,1,NULL,NULL,0),(2,25,2,NULL,NULL,0),(3,25,3,NULL,NULL,0),(4,25,4,NULL,NULL,0),(5,25,5,NULL,NULL,27);
/*!40000 ALTER TABLE `AlumniPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlumniSupportPage`
--

DROP TABLE IF EXISTS `AlumniSupportPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlumniSupportPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `CTA` varchar(255) DEFAULT NULL,
  `CTALink` varchar(255) DEFAULT NULL,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  `CTAUrl` varchar(255) DEFAULT NULL,
  `CTAText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlumniSupportPage`
--

LOCK TABLES `AlumniSupportPage` WRITE;
/*!40000 ALTER TABLE `AlumniSupportPage` DISABLE KEYS */;
INSERT INTO `AlumniSupportPage` VALUES (27,'<h4>CAPITAL PROJECTS</h4><p>To maintain its position as one of England’s leading educational establishments and to further its reputation at the cutting edge of the Performing and Creative Arts the School has embarked on a comprehensive programme to develop and upgrade its facilities.  Already over the last four years the School has invested more than £6 million on this programme and it is anticipated that a similar amount will be spent over the next five years in order to achieve our aims and objectives.  Future plans include a “courtyard” classroom and leisure area to the rear of the School, a sports pavilion and a new Health Centre.</p>','<h4>HOW WILL YOUR CONTRIBUTION BE RECOGNISED? </h4><p>The Foundation is grateful for every donation it receives, no matter how large or how modest, because it is the accumulation of gifts of all sizes that will ultimately enable The Foundation to meet its targets.  However, it is clear that in order to achieve the necessary funding, the Foundation will be dependent on the generosity of leading benefactors.  Recognition of such donors is clearly important and patrons may be interested in the “naming” opportunities which are available and which would provide a lasting link with the School.  On the other hand, those who wish to remain anonymous may do so.</p>','<h4>SCHOLARSHIPS AND BURSARIES</h4><p>Through the generosity of donors the School has established a permanent endowment fund and it is The Foundation’s aim that the income from this invested capital will provide a number of scholarships and bursaries for particularly able and deserving students for the two years of the A-level course.</p>','<h4>THE HURTWOOD FOUNDATION AND CHARITABLE STATUS</h4><p>In compliance with the legal requirements relating to Foundations, the Hurtwood Foundation has been incorporated as a ‘not for profit’ Private Company Limited by Guarantee. Because Hurtwood House School is run as an LLP (Limited Liability Partnership) and not as a charity, the Hurtwood Foundation does not qualify for charitable status, which means that neither the donors nor the Foundation itself can receive the tax benefits that charitable status would confer.  Despite this, we have been very encouraged by the support already shown for this most worthwhile of enterprises – a testament to the loyalty and affection that past and present students and parents feel for Hurtwood, and the high regard in which this project is held.</p>','<h4>HOW YOU CAN CONTRIBUTE</h4><p>If you would like to make a donation you can do so by cheque, by credit transfer or by credit card.  Full details can be found on our donation form, which you can complete and return:</p>','DOWNLOAD OUR DONATION FORM',NULL,29,145,146,147,148,149,NULL,'DOWNLOAD OUR DONATION FORM');
/*!40000 ALTER TABLE `AlumniSupportPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlumniSupportPage_Live`
--

DROP TABLE IF EXISTS `AlumniSupportPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlumniSupportPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `CTA` varchar(255) DEFAULT NULL,
  `CTALink` varchar(255) DEFAULT NULL,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  `CTAUrl` varchar(255) DEFAULT NULL,
  `CTAText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlumniSupportPage_Live`
--

LOCK TABLES `AlumniSupportPage_Live` WRITE;
/*!40000 ALTER TABLE `AlumniSupportPage_Live` DISABLE KEYS */;
INSERT INTO `AlumniSupportPage_Live` VALUES (27,'<h4>CAPITAL PROJECTS</h4><p>To maintain its position as one of England’s leading educational establishments and to further its reputation at the cutting edge of the Performing and Creative Arts the School has embarked on a comprehensive programme to develop and upgrade its facilities.  Already over the last four years the School has invested more than £6 million on this programme and it is anticipated that a similar amount will be spent over the next five years in order to achieve our aims and objectives.  Future plans include a “courtyard” classroom and leisure area to the rear of the School, a sports pavilion and a new Health Centre.</p>','<h4>HOW WILL YOUR CONTRIBUTION BE RECOGNISED? </h4><p>The Foundation is grateful for every donation it receives, no matter how large or how modest, because it is the accumulation of gifts of all sizes that will ultimately enable The Foundation to meet its targets.  However, it is clear that in order to achieve the necessary funding, the Foundation will be dependent on the generosity of leading benefactors.  Recognition of such donors is clearly important and patrons may be interested in the “naming” opportunities which are available and which would provide a lasting link with the School.  On the other hand, those who wish to remain anonymous may do so.</p>','<h4>SCHOLARSHIPS AND BURSARIES</h4><p>Through the generosity of donors the School has established a permanent endowment fund and it is The Foundation’s aim that the income from this invested capital will provide a number of scholarships and bursaries for particularly able and deserving students for the two years of the A-level course.</p>','<h4>THE HURTWOOD FOUNDATION AND CHARITABLE STATUS</h4><p>In compliance with the legal requirements relating to Foundations, the Hurtwood Foundation has been incorporated as a ‘not for profit’ Private Company Limited by Guarantee. Because Hurtwood House School is run as an LLP (Limited Liability Partnership) and not as a charity, the Hurtwood Foundation does not qualify for charitable status, which means that neither the donors nor the Foundation itself can receive the tax benefits that charitable status would confer.  Despite this, we have been very encouraged by the support already shown for this most worthwhile of enterprises – a testament to the loyalty and affection that past and present students and parents feel for Hurtwood, and the high regard in which this project is held.</p>','<h4>HOW YOU CAN CONTRIBUTE</h4><p>If you would like to make a donation you can do so by cheque, by credit transfer or by credit card.  Full details can be found on our donation form, which you can complete and return:</p>','DOWNLOAD OUR DONATION FORM',NULL,29,145,146,147,148,149,NULL,'DOWNLOAD OUR DONATION FORM');
/*!40000 ALTER TABLE `AlumniSupportPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlumniSupportPage_versions`
--

DROP TABLE IF EXISTS `AlumniSupportPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlumniSupportPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `CTA` varchar(255) DEFAULT NULL,
  `CTALink` varchar(255) DEFAULT NULL,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  `CTAUrl` varchar(255) DEFAULT NULL,
  `CTAText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlumniSupportPage_versions`
--

LOCK TABLES `AlumniSupportPage_versions` WRITE;
/*!40000 ALTER TABLE `AlumniSupportPage_versions` DISABLE KEYS */;
INSERT INTO `AlumniSupportPage_versions` VALUES (1,27,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL),(2,27,2,NULL,NULL,NULL,NULL,NULL,'DOWNLOAD OUR DONATION FORM',NULL,29,0,0,0,0,0,NULL,NULL),(3,27,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,29,0,0,0,0,0,NULL,'DOWNLOAD OUR DONATION FORM'),(4,27,4,'<h4>CAPITAL PROJECTS</h4><p>To maintain its position as one of England’s leading educational establishments and to further its reputation at the cutting edge of the Performing and Creative Arts the School has embarked on a comprehensive programme to develop and upgrade its facilities.  Already over the last four years the School has invested more than £6 million on this programme and it is anticipated that a similar amount will be spent over the next five years in order to achieve our aims and objectives.  Future plans include a “courtyard” classroom and leisure area to the rear of the School, a sports pavilion and a new Health Centre.</p>','<h4>HOW WILL YOUR CONTRIBUTION BE RECOGNISED? </h4><p>The Foundation is grateful for every donation it receives, no matter how large or how modest, because it is the accumulation of gifts of all sizes that will ultimately enable The Foundation to meet its targets.  However, it is clear that in order to achieve the necessary funding, the Foundation will be dependent on the generosity of leading benefactors.  Recognition of such donors is clearly important and patrons may be interested in the “naming” opportunities which are available and which would provide a lasting link with the School.  On the other hand, those who wish to remain anonymous may do so.</p>','<h4>SCHOLARSHIPS AND BURSARIES</h4><p>Through the generosity of donors the School has established a permanent endowment fund and it is The Foundation’s aim that the income from this invested capital will provide a number of scholarships and bursaries for particularly able and deserving students for the two years of the A-level course.</p>','<h4>THE HURTWOOD FOUNDATION AND CHARITABLE STATUS</h4><p>In compliance with the legal requirements relating to Foundations, the Hurtwood Foundation has been incorporated as a ‘not for profit’ Private Company Limited by Guarantee. Because Hurtwood House School is run as an LLP (Limited Liability Partnership) and not as a charity, the Hurtwood Foundation does not qualify for charitable status, which means that neither the donors nor the Foundation itself can receive the tax benefits that charitable status would confer.  Despite this, we have been very encouraged by the support already shown for this most worthwhile of enterprises – a testament to the loyalty and affection that past and present students and parents feel for Hurtwood, and the high regard in which this project is held.</p>','<h4>HOW YOU CAN CONTRIBUTE</h4><p>If you would like to make a donation you can do so by cheque, by credit transfer or by credit card.  Full details can be found on our donation form, which you can complete and return:</p>',NULL,NULL,29,0,0,0,0,0,NULL,'DOWNLOAD OUR DONATION FORM'),(5,27,5,'<h4>CAPITAL PROJECTS</h4><p>To maintain its position as one of England’s leading educational establishments and to further its reputation at the cutting edge of the Performing and Creative Arts the School has embarked on a comprehensive programme to develop and upgrade its facilities.  Already over the last four years the School has invested more than £6 million on this programme and it is anticipated that a similar amount will be spent over the next five years in order to achieve our aims and objectives.  Future plans include a “courtyard” classroom and leisure area to the rear of the School, a sports pavilion and a new Health Centre.</p>','<h4>HOW WILL YOUR CONTRIBUTION BE RECOGNISED? </h4><p>The Foundation is grateful for every donation it receives, no matter how large or how modest, because it is the accumulation of gifts of all sizes that will ultimately enable The Foundation to meet its targets.  However, it is clear that in order to achieve the necessary funding, the Foundation will be dependent on the generosity of leading benefactors.  Recognition of such donors is clearly important and patrons may be interested in the “naming” opportunities which are available and which would provide a lasting link with the School.  On the other hand, those who wish to remain anonymous may do so.</p>','<h4>SCHOLARSHIPS AND BURSARIES</h4><p>Through the generosity of donors the School has established a permanent endowment fund and it is The Foundation’s aim that the income from this invested capital will provide a number of scholarships and bursaries for particularly able and deserving students for the two years of the A-level course.</p>','<h4>THE HURTWOOD FOUNDATION AND CHARITABLE STATUS</h4><p>In compliance with the legal requirements relating to Foundations, the Hurtwood Foundation has been incorporated as a ‘not for profit’ Private Company Limited by Guarantee. Because Hurtwood House School is run as an LLP (Limited Liability Partnership) and not as a charity, the Hurtwood Foundation does not qualify for charitable status, which means that neither the donors nor the Foundation itself can receive the tax benefits that charitable status would confer.  Despite this, we have been very encouraged by the support already shown for this most worthwhile of enterprises – a testament to the loyalty and affection that past and present students and parents feel for Hurtwood, and the high regard in which this project is held.</p>','<h4>HOW YOU CAN CONTRIBUTE</h4><p>If you would like to make a donation you can do so by cheque, by credit transfer or by credit card.  Full details can be found on our donation form, which you can complete and return:</p>',NULL,NULL,29,145,146,147,148,149,NULL,'DOWNLOAD OUR DONATION FORM');
/*!40000 ALTER TABLE `AlumniSupportPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ArticleCategory`
--

DROP TABLE IF EXISTS `ArticleCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ArticleCategory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('ArticleCategory') DEFAULT 'ArticleCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `ArticleHolderID` int(11) NOT NULL DEFAULT '0',
  `NewsHolderID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ArticleHolderID` (`ArticleHolderID`),
  KEY `ClassName` (`ClassName`),
  KEY `NewsHolderID` (`NewsHolderID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ArticleCategory`
--

LOCK TABLES `ArticleCategory` WRITE;
/*!40000 ALTER TABLE `ArticleCategory` DISABLE KEYS */;
INSERT INTO `ArticleCategory` VALUES (1,'ArticleCategory','2016-03-28 13:54:16','2016-03-28 13:54:16','ACADEMIC',0,13,NULL),(2,'ArticleCategory','2016-03-28 13:54:30','2016-03-28 13:54:30','RESULT',0,13,NULL),(3,'ArticleCategory','2016-03-28 13:54:39','2016-03-28 13:54:39','A-LEVELS',0,13,NULL);
/*!40000 ALTER TABLE `ArticleCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BoardingHouse`
--

DROP TABLE IF EXISTS `BoardingHouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BoardingHouse` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('BoardingHouse') DEFAULT 'BoardingHouse',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `LifeBoardingPageID` int(11) NOT NULL DEFAULT '0',
  `Description` mediumtext,
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`),
  KEY `LifeBoardingPageID` (`LifeBoardingPageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BoardingHouse`
--

LOCK TABLES `BoardingHouse` WRITE;
/*!40000 ALTER TABLE `BoardingHouse` DISABLE KEYS */;
INSERT INTO `BoardingHouse` VALUES (1,'BoardingHouse','2016-03-28 21:51:23','2016-03-17 15:02:52','CORNHILL MANOR',55,9,'<div id=\"lipsum\">\n<p>Vivamus vel sapien in urna dictum feugiat vitae ac sapien. Mauris sit amet tempus orci. Nullam lobortis lorem vitae vehicula vestibulum. Fusce pharetra venenatis egestas. Ut congue quis odio quis iaculis. Aenean elementum lectus et mollis sagittis. Mauris arcu odio, fermentum iaculis volutpat vitae, pellentesque vel odio. Donec arcu sem, cursus a risus feugiat, tincidunt molestie massa. Sed mi ex, auctor at ipsum ut, maximus dignissim orci. Nunc convallis porttitor magna, ac condimentum magna rhoncus quis. Donec nec dictum est.</p>\n<p> </p>\n</div>'),(3,'BoardingHouse','2016-03-17 15:13:25','2016-03-17 15:13:25','CORNHILL MANOR',56,9,NULL),(4,'BoardingHouse','2016-03-17 15:13:40','2016-03-17 15:13:40','CORNHILL MANOR',57,9,NULL);
/*!40000 ALTER TABLE `BoardingHouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContentBlock`
--

DROP TABLE IF EXISTS `ContentBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContentBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('ContentBlock','PhotoBlock','SliderBlock','SliderItem','Square3LinksBlock') DEFAULT 'ContentBlock',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Section` varchar(50) DEFAULT NULL,
  `Content` mediumtext,
  `PageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PageID` (`PageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContentBlock`
--

LOCK TABLES `ContentBlock` WRITE;
/*!40000 ALTER TABLE `ContentBlock` DISABLE KEYS */;
INSERT INTO `ContentBlock` VALUES (1,'ContentBlock','2016-04-04 18:26:37','2016-04-04 18:26:37',1,'Section1','<p>With a strong emphasis on the practical elements involved in dance technique, performance and choreography, you will take steps in developing your own creativity.</p><p>In addition to the academic programme, we provide a vibrant and rich Extra-Curricular Dance Programme which engages with over one third of our students through weekly classes offered in classical ballet, jazz, contemporary, hop-hop, flamenco, pointe work and tap. Dance also reaches even more of the Hurtwood community through its work within the major public shows, drawing in outside professional choreographers to support its excellent resident team.</p>',33),(2,'ContentBlock','2016-04-04 18:30:27','2016-04-04 18:30:27',2,'Section1','<p>test</p>',33);
/*!40000 ALTER TABLE `ContentBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage`
--

DROP TABLE IF EXISTS `ErrorPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage`
--

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;
INSERT INTO `ErrorPage` VALUES (4,404),(5,500);
/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_Live`
--

DROP TABLE IF EXISTS `ErrorPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage_Live`
--

LOCK TABLES `ErrorPage_Live` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;
INSERT INTO `ErrorPage_Live` VALUES (4,404),(5,500);
/*!40000 ALTER TABLE `ErrorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_versions`
--

DROP TABLE IF EXISTS `ErrorPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ErrorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage_versions`
--

LOCK TABLES `ErrorPage_versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_versions` DISABLE KEYS */;
INSERT INTO `ErrorPage_versions` VALUES (1,4,1,404),(2,5,1,500);
/*!40000 ALTER TABLE `ErrorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','Folder','Image','Image_Cached') DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext,
  `Content` mediumtext,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (1,'Folder','2016-03-12 06:50:15','2016-03-12 06:50:15','Uploads','Uploads','assets/Uploads/',NULL,1,0,1),(2,'Image','2016-03-18 06:26:33','2016-03-12 06:50:15','home-hero.jpg','home hero','assets/hero-section/home-hero.jpg',NULL,1,32,1),(3,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','SilverStripeLogo.png','SilverStripeLogo.png','assets/Uploads/SilverStripeLogo.png',NULL,1,1,1),(5,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','box-CREATIVE-FLAIR.jpg','box-CREATIVE-FLAIR.jpg','assets/Uploads/box-CREATIVE-FLAIR.jpg',NULL,1,1,1),(6,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','box2-LIFE-AT-HURTWOOD.jpg','box2-LIFE-AT-HURTWOOD.jpg','assets/Uploads/box2-LIFE-AT-HURTWOOD.jpg',NULL,1,1,1),(7,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','box3ACADEMIC-STRENGTH.jpg','box3ACADEMIC-STRENGTH.jpg','assets/Uploads/box3ACADEMIC-STRENGTH.jpg',NULL,1,1,1),(12,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','box4SPORT-RECREATION.jpg','box4SPORT-RECREATION.jpg','assets/Uploads/box4SPORT-RECREATION.jpg',NULL,1,1,1),(15,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-1.jpg','home-1.jpg','assets/Uploads/home-1.jpg',NULL,1,1,1),(16,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-10.jpg','home-10.jpg','assets/Uploads/home-10.jpg',NULL,1,1,1),(17,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-11.jpg','home-11.jpg','assets/Uploads/home-11.jpg',NULL,1,1,1),(18,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-12.jpg','home-12.jpg','assets/Uploads/home-12.jpg',NULL,1,1,1),(19,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-13.jpg','home-13.jpg','assets/Uploads/home-13.jpg',NULL,1,1,1),(20,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-14.jpg','home-14.jpg','assets/Uploads/home-14.jpg',NULL,1,1,1),(21,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-2.jpg','home-2.jpg','assets/Uploads/home-2.jpg',NULL,1,1,1),(23,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-4.jpg','home-4.jpg','assets/Uploads/home-4.jpg',NULL,1,1,1),(24,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-5.jpg','home-5.jpg','assets/Uploads/home-5.jpg',NULL,1,1,1),(25,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-6.jpg','home-6.jpg','assets/Uploads/home-6.jpg',NULL,1,1,1),(26,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-7.jpg','home-7.jpg','assets/Uploads/home-7.jpg',NULL,1,1,1),(28,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-8.jpg','home-8.jpg','assets/Uploads/home-8.jpg',NULL,1,1,1),(30,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-9.jpg','home-9.jpg','assets/Uploads/home-9.jpg',NULL,1,1,1),(31,'Image','2016-03-12 06:58:40','2016-03-12 06:58:40','home-9.png','home-9.png','assets/Uploads/home-9.png',NULL,1,1,1),(32,'Folder','2016-03-12 08:31:36','2016-03-12 08:31:36','hero-section','hero-section','assets/hero-section/',NULL,1,0,1),(33,'Image','2016-03-12 08:31:36','2016-03-12 08:31:36','life-hero.jpg','life hero','assets/hero-section/life-hero.jpg',NULL,1,32,1),(34,'Image','2016-03-12 09:31:38','2016-03-12 09:31:38','life-img-01.jpg','life img 01','assets/Uploads/life-img-01.jpg',NULL,1,1,1),(35,'Image','2016-03-12 09:31:40','2016-03-12 09:31:40','life-img-sm-01.jpg','life img sm 01','assets/Uploads/life-img-sm-01.jpg',NULL,1,1,1),(36,'Image','2016-03-12 09:31:42','2016-03-12 09:31:42','life-img-sm-02.jpg','life img sm 02','assets/Uploads/life-img-sm-02.jpg',NULL,1,1,1),(37,'Image','2016-03-12 09:31:44','2016-03-12 09:31:44','life-img-02.jpg','life img 02','assets/Uploads/life-img-02.jpg',NULL,1,1,1),(38,'Image','2016-03-13 08:10:59','2016-03-13 08:10:59','academic-1.jpg','academic-1.jpg','assets/Uploads/academic-1.jpg',NULL,1,1,1),(39,'Image','2016-03-13 08:10:59','2016-03-13 08:10:59','academic-2.jpg','academic-2.jpg','assets/Uploads/academic-2.jpg',NULL,1,1,1),(40,'Image','2016-03-13 08:10:59','2016-03-13 08:10:59','academic-3.jpg','academic-3.jpg','assets/Uploads/academic-3.jpg',NULL,1,1,1),(41,'Image','2016-03-13 08:10:59','2016-03-13 08:10:59','academic-5.png','academic-5.png','assets/Uploads/academic-5.png',NULL,1,1,1),(42,'Image','2016-03-13 08:10:59','2016-03-13 08:10:59','academic-6.png','academic-6.png','assets/Uploads/academic-6.png',NULL,1,1,1),(43,'Image','2016-03-13 08:10:59','2016-03-13 08:10:59','academic-7.jpg','academic-7.jpg','assets/Uploads/academic-7.jpg',NULL,1,1,1),(44,'Image','2016-03-13 08:10:59','2016-03-13 08:10:59','academic-hero.jpg','academic-hero.jpg','assets/hero-section/academic-hero.jpg',NULL,1,32,1),(46,'Image','2016-03-13 08:21:04','2016-03-13 08:21:04','academic-hero2.jpg','academic hero2','assets/hero-section/academic-hero2.jpg',NULL,1,32,1),(47,'Image','2016-03-17 14:00:42','2016-03-17 14:00:42','hero-supportive.jpg','hero supportive','assets/hero-section/hero-supportive.jpg',NULL,1,32,1),(48,'Image','2016-03-17 14:16:39','2016-03-17 14:16:39','supportive-img-01.jpg','supportive img 01','assets/Uploads/supportive-img-01.jpg',NULL,1,1,1),(49,'Image','2016-03-17 14:16:59','2016-03-17 14:16:59','supportive-img-02.jpg','supportive img 02','assets/Uploads/supportive-img-02.jpg',NULL,1,1,1),(50,'Image','2016-03-17 14:17:10','2016-03-17 14:17:10','supportive-img-03.jpg','supportive img 03','assets/Uploads/supportive-img-03.jpg',NULL,1,1,1),(51,'Image','2016-03-17 14:17:25','2016-03-17 14:17:25','supportive-img-04.jpg','supportive img 04','assets/Uploads/supportive-img-04.jpg',NULL,1,1,1),(52,'Image','2016-03-17 14:17:36','2016-03-17 14:17:36','supportive-img-05.jpg','supportive img 05','assets/Uploads/supportive-img-05.jpg',NULL,1,1,1),(53,'Image','2016-03-17 14:43:30','2016-03-17 14:43:30','hero-boarding.jpg','hero boarding','assets/hero-section/hero-boarding.jpg',NULL,1,32,1),(54,'Folder','2016-03-17 15:02:31','2016-03-17 15:02:31','boarding-houses','boarding-houses','assets/boarding-houses/',NULL,1,0,1),(55,'Image','2016-03-17 15:02:31','2016-03-17 15:02:31','boarding-top-01.jpg','boarding top 01','assets/boarding-houses/boarding-top-01.jpg',NULL,1,54,1),(56,'Image','2016-03-17 15:13:23','2016-03-17 15:13:23','boarding-top-02.jpg','boarding top 02','assets/Uploads/boarding-top-02.jpg',NULL,1,1,1),(57,'Image','2016-03-17 15:13:38','2016-03-17 15:13:38','boarding-top-03.jpg','boarding top 03','assets/Uploads/boarding-top-03.jpg',NULL,1,1,1),(58,'Image','2016-03-18 06:25:41','2016-03-18 06:25:41','hero-alumni.jpg','hero-alumni.jpg','assets/hero-section/hero-alumni.jpg',NULL,1,32,1),(59,'Image','2016-03-18 06:25:41','2016-03-18 06:25:41','home-hero-1.jpg','home-hero-1.jpg','assets/hero-section/home-hero-1.jpg',NULL,1,32,1),(60,'Image','2016-03-18 07:01:32','2016-03-18 07:01:32','boarding-img-01.jpg','boarding img 01','assets/Uploads/boarding-img-01.jpg',NULL,1,1,1),(61,'Image','2016-03-18 07:01:39','2016-03-18 07:01:39','boarding-img-02.jpg','boarding img 02','assets/Uploads/boarding-img-02.jpg',NULL,1,1,1),(62,'Image','2016-03-18 07:02:08','2016-03-18 07:02:08','boarding-img-03.jpg','boarding img 03','assets/Uploads/boarding-img-03.jpg',NULL,1,1,1),(63,'Image','2016-03-18 07:03:35','2016-03-18 07:03:35','boarding-img-2.jpg','boarding img 2','assets/Uploads/boarding-img-2.jpg',NULL,1,1,1),(64,'Image','2016-03-18 07:03:37','2016-03-18 07:03:37','boarding-img-3.jpg','boarding img 3','assets/Uploads/boarding-img-3.jpg',NULL,1,1,1),(65,'Image','2016-03-18 07:03:39','2016-03-18 07:03:39','boarding-img-4.jpg','boarding img 4','assets/Uploads/boarding-img-4.jpg',NULL,1,1,1),(66,'Image','2016-03-18 07:57:47','2016-03-18 07:57:47','hero-sport.jpg','hero sport','assets/hero-section/hero-sport.jpg',NULL,1,32,1),(67,'Image','2016-03-18 08:11:53','2016-03-18 08:11:53','sport-photo-01.jpg','sport photo 01','assets/Uploads/sport-photo-01.jpg',NULL,1,1,1),(68,'Image','2016-03-18 08:11:55','2016-03-18 08:11:55','sport-photo-02.jpg','sport photo 02','assets/Uploads/sport-photo-02.jpg',NULL,1,1,1),(69,'Image','2016-03-18 08:13:44','2016-03-18 08:13:44','sport-photo-2.jpg','sport photo 2','assets/Uploads/sport-photo-2.jpg',NULL,1,1,1),(70,'Image','2016-03-18 08:13:47','2016-03-18 08:13:47','sport-photo-3.jpg','sport photo 3','assets/Uploads/sport-photo-3.jpg',NULL,1,1,1),(71,'Image','2016-03-18 08:13:50','2016-03-18 08:13:50','sport-photo-03.jpg','sport photo 03','assets/Uploads/sport-photo-03.jpg',NULL,1,1,1),(72,'Image','2016-03-18 08:13:53','2016-03-18 08:13:53','sport-photo-04.jpg','sport photo 04','assets/Uploads/sport-photo-04.jpg',NULL,1,1,1),(73,'Image','2016-03-18 08:13:55','2016-03-18 08:13:55','sport-photo-05.jpg','sport photo 05','assets/Uploads/sport-photo-05.jpg',NULL,1,1,1),(74,'Image','2016-03-18 09:00:45','2016-03-18 09:00:45','enigma-hero.jpg','enigma hero','assets/hero-section/enigma-hero.jpg',NULL,1,32,1),(75,'Image','2016-03-18 09:24:34','2016-03-18 09:24:34','enigma-img-03.jpg','enigma img 03','assets/Uploads/enigma-img-03.jpg',NULL,1,1,1),(76,'Image','2016-03-18 09:24:36','2016-03-18 09:24:36','enigma-img-sm-04.jpg','enigma img sm 04','assets/Uploads/enigma-img-sm-04.jpg',NULL,1,1,1),(77,'Image','2016-03-18 09:24:38','2016-03-18 09:24:38','enigma-img-sm-03.jpg','enigma img sm 03','assets/Uploads/enigma-img-sm-03.jpg',NULL,1,1,1),(78,'Image','2016-03-18 09:24:40','2016-03-18 09:24:40','enigma-img-02.jpg','enigma img 02','assets/Uploads/enigma-img-02.jpg',NULL,1,1,1),(79,'Image','2016-03-18 09:24:46','2016-03-18 09:24:46','enigma-img-sm-02.jpg','enigma img sm 02','assets/Uploads/enigma-img-sm-02.jpg',NULL,1,1,1),(80,'Image','2016-03-18 09:24:50','2016-03-18 09:24:50','enigma-img-sm-01.jpg','enigma img sm 01','assets/Uploads/enigma-img-sm-01.jpg',NULL,1,1,1),(81,'Image','2016-03-18 09:24:59','2016-03-18 09:24:59','enigma-img-01.jpg','enigma img 01','assets/Uploads/enigma-img-01.jpg',NULL,1,1,1),(82,'Image','2016-03-18 09:55:06','2016-03-18 09:55:06','hero-students.jpg','hero students','assets/hero-section/hero-students.jpg',NULL,1,32,1),(83,'Image','2016-03-18 10:21:16','2016-03-18 10:21:16','students-img-01.jpg','students img 01','assets/Uploads/students-img-01.jpg',NULL,1,1,1),(84,'Image','2016-03-18 10:21:29','2016-03-18 10:21:29','students-img-04.jpg','students img 04','assets/Uploads/students-img-04.jpg',NULL,1,1,1),(85,'Image','2016-03-18 10:21:29','2016-03-18 10:21:29','students-img-03.jpg','students img 03','assets/Uploads/students-img-03.jpg',NULL,1,1,1),(86,'Image','2016-03-18 10:21:30','2016-03-18 10:21:30','students-img-02.jpg','students img 02','assets/Uploads/students-img-02.jpg',NULL,1,1,1),(87,'Image','2016-03-18 10:28:10','2016-03-18 10:28:10','students-img-4.jpg','students img 4','assets/Uploads/students-img-4.jpg',NULL,1,1,1),(88,'Image','2016-03-18 10:34:14','2016-03-18 10:34:14','students-img-07.png','students img 07','assets/Uploads/students-img-07.png',NULL,1,1,1),(89,'Image','2016-03-18 10:56:02','2016-03-18 10:56:02','University-of-Cambridge.png','University of Cambridge','assets/Uploads/University-of-Cambridge.png',NULL,1,1,1),(90,'Image','2016-03-18 10:56:59','2016-03-18 10:56:59','RADA.png','RADA','assets/Uploads/RADA.png',NULL,1,1,1),(91,'Image','2016-03-18 10:57:40','2016-03-18 10:57:40','University-of-Oxford.png','University of Oxford','assets/Uploads/University-of-Oxford.png',NULL,1,1,1),(92,'Image','2016-03-22 19:47:33','2016-03-22 19:47:33','hero-news.png','hero news','assets/hero-section/hero-news.png',NULL,1,32,1),(93,'Image','2016-03-22 20:23:37','2016-03-22 20:23:37','hero-article-top.png','hero article top','assets/hero-section/hero-article-top.png',NULL,1,32,1),(94,'Image','2016-03-28 22:30:48','2016-03-28 22:30:48','hero-academic-exam.jpg','hero academic exam','assets/hero-section/hero-academic-exam.jpg',NULL,1,32,1),(95,'Image','2016-03-28 22:57:31','2016-03-28 22:57:31','hero-gcse.jpg','hero gcse','assets/hero-section/hero-gcse.jpg',NULL,1,32,1),(96,'Image','2016-03-29 10:33:34','2016-03-29 10:33:34','gcse-img-01.jpg','gcse img 01','assets/Uploads/gcse-img-01.jpg',NULL,1,1,1),(97,'Image','2016-03-29 10:33:59','2016-03-29 10:33:59','gcse-img-03.png','gcse img 03','assets/Uploads/gcse-img-03.png',NULL,1,1,1),(98,'Image','2016-03-29 19:27:02','2016-03-29 19:27:02','hero-business.jpg','hero business','assets/hero-section/hero-business.jpg',NULL,1,32,1),(99,'Image','2016-03-29 20:22:48','2016-03-29 20:22:48','business-3.png','business 3','assets/Uploads/business-3.png',NULL,1,1,1),(100,'Image','2016-03-29 20:23:10','2016-03-29 20:23:10','business-5.jpg','business 5','assets/Uploads/business-5.jpg',NULL,1,1,1),(101,'Image','2016-03-29 20:23:26','2016-03-29 20:23:26','business-4.jpg','business 4','assets/Uploads/business-4.jpg',NULL,1,1,1),(102,'Image','2016-03-29 21:03:45','2016-03-29 21:03:45','HERO-creative.jpg','HERO creative','assets/hero-section/HERO-creative.jpg',NULL,1,32,1),(103,'Image','2016-03-29 21:06:12','2016-03-29 21:06:12','HERO-creative2.jpg','HERO creative2','assets/hero-section/HERO-creative2.jpg',NULL,1,32,1),(104,'Image','2016-03-29 21:07:38','2016-03-29 21:07:38','HERO-creative3.jpg','HERO creative3','assets/hero-section/HERO-creative3.jpg',NULL,1,32,1),(105,'Image','2016-03-29 21:17:16','2016-03-29 21:17:16','creative-drama-2.jpg','creative drama 2','assets/Uploads/creative-drama-2.jpg',NULL,1,1,1),(106,'Image','2016-03-29 21:21:06','2016-03-29 21:21:06','creative-media-2.jpg','creative media 2','assets/Uploads/creative-media-2.jpg',NULL,1,1,1),(107,'Image','2016-03-29 21:21:08','2016-03-29 21:21:08','creative-media-1.jpg','creative media 1','assets/Uploads/creative-media-1.jpg',NULL,1,1,1),(108,'Image','2016-03-29 21:25:28','2016-03-29 21:25:28','creative-art-1.jpg','creative art 1','assets/Uploads/creative-art-1.jpg',NULL,1,1,1),(109,'Image','2016-03-29 21:25:29','2016-03-29 21:25:29','creative-art-2.png','creative art 2','assets/Uploads/creative-art-2.png',NULL,1,1,1),(110,'Image','2016-03-29 21:25:33','2016-03-29 21:25:33','creative-art-3.png','creative art 3','assets/Uploads/creative-art-3.png',NULL,1,1,1),(111,'Image','2016-03-29 21:25:39','2016-03-29 21:25:39','creative-art-4.png','creative art 4','assets/Uploads/creative-art-4.png',NULL,1,1,1),(112,'Image','2016-03-29 21:32:46','2016-03-29 21:32:46','creative-textiles-1.png','creative textiles 1','assets/Uploads/creative-textiles-1.png',NULL,1,1,1),(113,'Image','2016-03-29 21:33:38','2016-03-29 21:33:38','creative-textiles-2.png','creative textiles 2','assets/Uploads/creative-textiles-2.png',NULL,1,1,1),(114,'Image','2016-03-29 21:35:32','2016-03-29 21:35:32','creative-music.jpg','creative music','assets/Uploads/creative-music.jpg',NULL,1,1,1),(115,'Image','2016-03-29 22:07:34','2016-03-29 22:07:34','hero-humanities.jpg','hero humanities','assets/hero-section/hero-humanities.jpg',NULL,1,32,1),(116,'Image','2016-03-29 22:12:10','2016-03-29 22:12:10','humanities-1.png','humanities 1','assets/Uploads/humanities-1.png',NULL,1,1,1),(117,'Image','2016-03-29 22:14:54','2016-03-29 22:14:54','humanities-3.jpg','humanities 3','assets/Uploads/humanities-3.jpg',NULL,1,1,1),(118,'Image','2016-03-29 22:14:55','2016-03-29 22:14:55','humanities-4.jpg','humanities 4','assets/Uploads/humanities-4.jpg',NULL,1,1,1),(119,'Image','2016-03-29 22:17:46','2016-03-29 22:17:46','humanities-5.jpg','humanities 5','assets/Uploads/humanities-5.jpg',NULL,1,1,1),(120,'Image','2016-03-29 22:17:48','2016-03-29 22:17:48','humanities-6.jpg','humanities 6','assets/Uploads/humanities-6.jpg',NULL,1,1,1),(121,'Image','2016-03-29 22:21:19','2016-03-29 22:21:19','humanities-8.jpg','humanities 8','assets/Uploads/humanities-8.jpg',NULL,1,1,1),(122,'Image','2016-03-29 22:21:39','2016-03-29 22:21:39','humanities-9.jpg','humanities 9','assets/Uploads/humanities-9.jpg',NULL,1,1,1),(123,'Image','2016-03-29 22:22:09','2016-03-29 22:22:09','humanities-10.jpg','humanities 10','assets/Uploads/humanities-10.jpg',NULL,1,1,1),(124,'Image','2016-03-29 22:22:10','2016-03-29 22:22:10','humanities-11.jpg','humanities 11','assets/Uploads/humanities-11.jpg',NULL,1,1,1),(125,'Image','2016-03-29 22:29:13','2016-03-29 22:29:13','humanities-14.jpg','humanities 14','assets/Uploads/humanities-14.jpg',NULL,1,1,1),(126,'Image','2016-03-29 22:34:31','2016-03-29 22:34:31','humanities-15.jpg','humanities 15','assets/Uploads/humanities-15.jpg',NULL,1,1,1),(127,'Image','2016-03-29 22:52:47','2016-03-29 22:52:47','science-2.png','science 2','assets/Uploads/science-2.png',NULL,1,1,1),(128,'Image','2016-03-29 22:55:45','2016-03-29 22:55:45','science-4.jpg','science 4','assets/Uploads/science-4.jpg',NULL,1,1,1),(129,'Image','2016-03-29 22:55:45','2016-03-29 22:55:45','science-5.jpg','science 5','assets/Uploads/science-5.jpg',NULL,1,1,1),(130,'Image','2016-03-29 22:59:15','2016-03-29 22:59:15','science-6.jpg','science 6','assets/Uploads/science-6.jpg',NULL,1,1,1),(131,'Image','2016-03-29 22:59:20','2016-03-29 22:59:20','science-7.jpg','science 7','assets/Uploads/science-7.jpg',NULL,1,1,1),(132,'Image','2016-03-30 22:40:58','2016-03-30 22:40:58','accounting-3x.png','accounting 3x','assets/Uploads/accounting-3x.png',NULL,1,1,1),(133,'Image','2016-03-30 23:14:41','2016-03-30 23:14:41','business-3x.png','business 3x','assets/Uploads/business-3x.png',NULL,1,1,1),(134,'Image','2016-03-31 08:42:13','2016-03-31 08:42:13','alumni-2-1.jpg','alumni 2 1','assets/Uploads/alumni-2-1.jpg',NULL,1,1,1),(135,'Image','2016-03-31 08:42:14','2016-03-31 08:42:14','alumni-3.jpg','alumni 3','assets/Uploads/alumni-3.jpg',NULL,1,1,1),(136,'Image','2016-03-31 08:42:17','2016-03-31 08:42:17','alumni-5.jpg','alumni 5','assets/Uploads/alumni-5.jpg',NULL,1,1,1),(137,'Image','2016-03-31 08:42:25','2016-03-31 08:42:25','alumni-4.jpg','alumni 4','assets/Uploads/alumni-4.jpg',NULL,1,1,1),(138,'Image','2016-03-31 08:44:11','2016-03-31 08:44:11','logo-no-text.png','logo no text','assets/Uploads/logo-no-text.png',NULL,1,1,1),(139,'Image','2016-03-31 08:44:15','2016-03-31 08:44:15','foundation.jpg','foundation','assets/Uploads/foundation.jpg',NULL,1,1,1),(140,'Image','2016-03-31 14:39:37','2016-03-31 14:39:37','hero-halloffame.jpg','hero halloffame','assets/hero-section/hero-halloffame.jpg',NULL,1,32,1),(141,'Image','2016-03-31 14:42:32','2016-03-31 14:42:32','emily-blunt-pop1.jpg','emily blunt pop1','assets/Uploads/emily-blunt-pop1.jpg',NULL,1,1,1),(142,'Image','2016-03-31 14:42:34','2016-03-31 14:42:34','emily-blunt-pop3.jpg','emily blunt pop3','assets/Uploads/emily-blunt-pop3.jpg',NULL,1,1,1),(143,'Image','2016-03-31 14:42:36','2016-03-31 14:42:36','emily-blunt-pop2.jpg','emily blunt pop2','assets/Uploads/emily-blunt-pop2.jpg',NULL,1,1,1),(144,'Image','2016-03-31 16:08:31','2016-03-31 16:08:31','foundation-hero.jpg','foundation hero','assets/hero-section/foundation-hero.jpg',NULL,1,32,1),(145,'Image','2016-03-31 20:12:06','2016-03-31 20:12:06','foundation-4.jpg','foundation 4','assets/Uploads/foundation-4.jpg',NULL,1,1,1),(146,'Image','2016-03-31 20:12:08','2016-03-31 20:12:08','foundation-1.jpg','foundation 1','assets/Uploads/foundation-1.jpg',NULL,1,1,1),(147,'Image','2016-03-31 20:12:11','2016-03-31 20:12:11','foundation-5.jpg','foundation 5','assets/Uploads/foundation-5.jpg',NULL,1,1,1),(148,'Image','2016-03-31 20:12:14','2016-03-31 20:12:14','foundation-2.jpg','foundation 2','assets/Uploads/foundation-2.jpg',NULL,1,1,1),(149,'Image','2016-03-31 20:12:16','2016-03-31 20:12:16','foundation-3.jpg','foundation 3','assets/Uploads/foundation-3.jpg',NULL,1,1,1),(150,'Image','2016-04-01 17:22:54','2016-04-01 17:22:54','admissions-top.jpg','admissions top','assets/hero-section/admissions-top.jpg',NULL,1,32,1),(151,'Image','2016-04-01 17:32:54','2016-04-01 17:32:54','reception-lounge.jpg','reception lounge','assets/Uploads/reception-lounge.jpg',NULL,1,1,1),(152,'Image','2016-04-01 17:34:03','2016-04-01 17:34:03','students-1.jpg','students 1','assets/Uploads/students-1.jpg',NULL,1,1,1),(153,'Image','2016-04-01 17:34:05','2016-04-01 17:34:05','students-2.jpg','students 2','assets/Uploads/students-2.jpg',NULL,1,1,1),(154,'Image','2016-04-01 17:36:18','2016-04-01 17:36:18','HH-Prospectus-1.jpg','HH Prospectus 1','assets/Uploads/HH-Prospectus-1.jpg',NULL,1,1,1),(155,'Image','2016-04-01 17:36:20','2016-04-01 17:36:20','HH-Prospectus-6.jpg','HH Prospectus 6','assets/Uploads/HH-Prospectus-6.jpg',NULL,1,1,1),(156,'Image','2016-04-01 20:36:21','2016-04-01 20:36:21','process-top.jpg','process top','assets/hero-section/process-top.jpg',NULL,1,32,1),(157,'Image','2016-04-01 22:33:38','2016-04-01 22:33:38','fees-top.jpg','fees top','assets/hero-section/fees-top.jpg',NULL,1,32,1),(158,'Image','2016-04-01 22:36:22','2016-04-01 22:36:22','scholarships-top.jpg','scholarships top','assets/hero-section/scholarships-top.jpg',NULL,1,32,1),(159,'Image','2016-04-04 12:01:53','2016-04-04 12:01:53','dance-3x.png','dance 3x','assets/Uploads/dance-3x.png',NULL,1,1,1),(160,'Image','2016-04-04 12:03:54','2016-04-04 12:03:54','dance-hero.jpg','dance hero','assets/hero-section/dance-hero.jpg',NULL,1,32,1),(161,'Image','2016-04-04 12:28:46','2016-04-04 12:28:46','dance-img-01.jpg','dance img 01','assets/Uploads/dance-img-01.jpg',NULL,1,1,1),(162,'Image','2016-04-04 12:30:17','2016-04-04 12:30:17','dance-img-2.jpg','dance img 2','assets/Uploads/dance-img-2.jpg',NULL,1,1,1),(163,'Image','2016-04-04 13:15:23','2016-04-04 13:15:23','ballet-dancer-icon-3x.png','ballet dancer icon 3x','assets/Uploads/ballet-dancer-icon-3x.png',NULL,1,1,1),(164,'Image','2016-04-04 16:52:53','2016-04-04 16:52:53','dance-carousel-5.jpg','dance carousel 5','assets/Uploads/dance-carousel-5.jpg',NULL,1,1,1),(165,'Image','2016-04-04 16:56:18','2016-04-04 16:56:18','dance-carousel-4.jpg','dance carousel 4','assets/Uploads/dance-carousel-4.jpg',NULL,1,1,1),(166,'Image','2016-04-04 17:11:37','2016-04-04 17:11:37','dance-carousel-6.jpg','dance carousel 6','assets/Uploads/dance-carousel-6.jpg',NULL,1,1,1),(167,'Image','2016-04-04 17:13:57','2016-04-04 17:13:57','dance-carousel-2.jpg','dance carousel 2','assets/Uploads/dance-carousel-2.jpg',NULL,1,1,1),(168,'Image','2016-04-04 17:14:14','2016-04-04 17:14:14','dance-carousel-7.jpg','dance carousel 7','assets/Uploads/dance-carousel-7.jpg',NULL,1,1,1);
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group`
--

DROP TABLE IF EXISTS `Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group`
--

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;
INSERT INTO `Group` VALUES (1,'Group','2016-03-12 06:30:21','2016-03-12 06:30:21','Content Authors',NULL,'content-authors',0,1,NULL,0),(2,'Group','2016-03-12 06:30:21','2016-03-12 06:30:21','Administrators',NULL,'administrators',0,0,NULL,0);
/*!40000 ALTER TABLE `Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Members`
--

DROP TABLE IF EXISTS `Group_Members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_Members`
--

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;
INSERT INTO `Group_Members` VALUES (1,2,1);
/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Roles`
--

DROP TABLE IF EXISTS `Group_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_Roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_Roles`
--

LOCK TABLES `Group_Roles` WRITE;
/*!40000 ALTER TABLE `Group_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Group_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HeroSection`
--

DROP TABLE IF EXISTS `HeroSection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HeroSection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('HeroSection') DEFAULT 'HeroSection',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Line1` varchar(50) DEFAULT NULL,
  `Line1CssClass` varchar(50) DEFAULT NULL,
  `Line2` varchar(50) DEFAULT NULL,
  `Line2CssClass` varchar(50) DEFAULT NULL,
  `Line3` varchar(50) DEFAULT NULL,
  `Line3CssClass` varchar(50) DEFAULT NULL,
  `Line4` varchar(50) DEFAULT NULL,
  `Line4CssClass` varchar(50) DEFAULT NULL,
  `BackgroundImageID` int(11) NOT NULL DEFAULT '0',
  `CTA` varchar(50) DEFAULT NULL,
  `CTALink` varchar(50) DEFAULT NULL,
  `CTACssClass` varchar(50) DEFAULT NULL,
  `Paragraph` mediumtext,
  PRIMARY KEY (`ID`),
  KEY `BackgroundImageID` (`BackgroundImageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HeroSection`
--

LOCK TABLES `HeroSection` WRITE;
/*!40000 ALTER TABLE `HeroSection` DISABLE KEYS */;
INSERT INTO `HeroSection` VALUES (1,'HeroSection','2016-03-12 06:36:33','2016-03-12 06:36:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(2,'HeroSection','2016-03-18 06:29:55','2016-03-12 06:42:09','STEP INTO','small-text','THE MOST','medium-text','EXCITING','max-text','SCHOOL IN ENGLAND','medium-text',2,'WATCH OUR VIDEO','#','btn-video',NULL),(3,'HeroSection','2016-03-31 08:20:32','2016-03-12 08:16:51','TOWARDS A','medium-text','UNIVERSITY','max-text','LIFESTYLE','max-text',NULL,'small-text',33,'WATCH OUR VIDEO','https://www.youtube.com/watch?v=ZzCYssRlT-I?rel=0&','btn-video',NULL),(4,'HeroSection','2016-03-18 06:25:42','2016-03-13 08:11:20','ACADEMIC','max-text','STRENGTH','max-text',NULL,'small-text',NULL,'small-text',0,'WATCH THE OVERVIEW','https://www.youtube.com/watch?v=ZzCYssRlT-I?rel=0&','btn-video',NULL),(5,'HeroSection','2016-03-18 06:28:59','2016-03-17 13:44:16','REASSURINGLY','max-text','SUPPORTIVE','max-text',NULL,'small-text',NULL,'small-text',47,NULL,NULL,'btn-ghost','<p>Few schools, if any, have the closeness of community you find at Hurtwood – where students and teachers interact in all areas of school life</p>'),(6,'HeroSection','2016-03-18 07:10:41','2016-03-17 14:44:43','A TRULY VIBRANT','medium-text','COMMUNITY','max-text',NULL,'small-text',NULL,'small-text',53,'TAKE A QUICK TOUR','https://www.youtube.com/watch?v=ZzCYssRlT-I?rel=0&','btn-video',NULL),(7,'HeroSection','2016-03-18 08:13:57','2016-03-18 07:56:50','FEELING SPORTY?','medium-text','BRING IT ON','max-text',NULL,'small-text',NULL,'small-text',66,NULL,NULL,'btn-ghost',NULL),(8,'HeroSection','2016-03-18 09:25:03','2016-03-18 09:01:10','EXTRA-CURRICULAR ACTIVITIES','small-text','ENIGMA','max-text',NULL,'small-text',NULL,'small-text',74,NULL,NULL,'btn-ghost',NULL),(9,'HeroSection','2016-03-18 10:34:28','2016-03-18 09:52:58','WHERE OUR','large-text','STUDENTS GO','large-text',NULL,'small-text',NULL,'small-text',82,NULL,NULL,'btn-ghost',NULL),(10,'HeroSection','2016-03-28 12:37:42','2016-03-22 19:35:31','JESSIE GOES ON TOUR','small-text',NULL,'small-text',NULL,'small-text',NULL,'small-text',93,NULL,NULL,'btn-ghost',NULL),(11,'HeroSection','2016-03-22 20:22:57','2016-03-22 19:47:59','THE VERY LATEST NEWS, EVENTS','small-text',' AND ANNOUNCEMENTS','small-text',NULL,'small-text',NULL,'small-text',92,NULL,NULL,'btn-ghost',NULL),(12,'HeroSection','2016-03-28 22:31:01','2016-03-28 22:31:01','EXAM SUCCESS','large-text',NULL,'small-text',NULL,'small-text',NULL,'small-text',94,NULL,NULL,'btn-ghost',NULL),(13,'HeroSection','2016-03-29 10:34:02','2016-03-28 22:57:32','GCSEs','max-text',NULL,'small-text',NULL,'small-text',NULL,'small-text',95,NULL,NULL,'btn-ghost',NULL),(14,'HeroSection','2016-03-29 19:32:51','2016-03-29 19:27:04','BUSINESS','max-text','AND','max-text','COMMERCE','max-text',NULL,'small-text',98,NULL,NULL,'btn-ghost',NULL),(15,'HeroSection','2016-03-29 20:03:54','2016-03-29 20:03:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(16,'HeroSection','2016-03-29 20:44:55','2016-03-29 20:04:03','BUSINESS','max-text','AND','max-text','COMMERCE','max-text',NULL,'small-text',98,NULL,NULL,'btn-ghost',NULL),(17,'HeroSection','2016-04-01 18:40:36','2016-03-29 21:01:24','BUSINESS','max-text','AND','max-text','COMMERCE','max-text',NULL,'small-text',98,NULL,NULL,'btn-ghost',NULL),(18,'HeroSection','2016-03-29 21:04:47','2016-03-29 21:04:47','A UTOPIA FOR','medium-text','CREATIVE','max-text','MINDS','max-text',NULL,'small-text',102,'WATCH THE OVERVIEW',NULL,'btn-video',NULL),(19,'HeroSection','2016-03-29 21:04:47','2016-03-29 21:04:47','A UTOPIA FOR','medium-text','CREATIVE','max-text','MINDS','max-text',NULL,'small-text',102,'WATCH THE OVERVIEW',NULL,'btn-video',NULL),(20,'HeroSection','2016-03-29 21:05:22','2016-03-29 21:05:22',NULL,'small-text',NULL,'small-text',NULL,'small-text',NULL,'small-text',0,NULL,NULL,'btn-ghost',NULL),(21,'HeroSection','2016-03-29 21:05:22','2016-03-29 21:05:22',NULL,'small-text',NULL,'small-text',NULL,'small-text',NULL,'small-text',0,NULL,NULL,'btn-ghost',NULL),(22,'HeroSection','2016-03-29 22:03:01','2016-03-29 21:06:14','A UTOPIA FOR','medium-text','CREATIVE','max-text','MINDS','max-text',NULL,'small-text',104,'WATCH THE OVERVIEW',NULL,'btn-video',NULL),(23,'HeroSection','2016-03-29 21:06:14','2016-03-29 21:06:14',NULL,'small-text',NULL,'small-text',NULL,'small-text',NULL,'small-text',103,NULL,NULL,'btn-ghost',NULL),(24,'HeroSection','2016-03-29 22:10:33','2016-03-29 21:56:54','HUMANITIES','large-text','AND','large-text','LANGUAGE','large-text',NULL,'small-text',115,NULL,NULL,'btn-ghost',NULL),(25,'HeroSection','2016-03-29 22:49:53','2016-03-29 22:42:34','SCIENCE','max-text',NULL,'small-text',NULL,'small-text',NULL,'small-text',59,NULL,NULL,'btn-ghost',NULL),(26,'HeroSection','2016-03-30 22:43:36','2016-03-30 22:43:36','Accounting','medium-text','Accounting','small-text','Accounting','max-text','Accounting','large-text',53,NULL,NULL,'btn-ghost',NULL),(27,'HeroSection','2016-04-01 17:32:03','2016-03-31 08:39:32','STAY CONNECTED','small-text','ALUMNI','max-text',NULL,'small-text',NULL,'small-text',58,'JOIN OUR FACEBOOK GROUP',NULL,'btn-ghost',NULL),(28,'HeroSection','2016-03-31 14:39:48','2016-03-31 14:39:48','SEE OUR','small-text','STUDENT SUCCESSES','max-text',NULL,'small-text',NULL,'small-text',140,NULL,NULL,'btn-ghost',NULL),(29,'HeroSection','2016-03-31 20:12:21','2016-03-31 16:09:27','HELP US','small-text','MAKE A DIFFERENCE','large-text',NULL,'small-text',NULL,'small-text',144,'DOWNLOAD OUR DONATION FORM',NULL,'btn-ghost',NULL),(30,'HeroSection','2016-04-01 17:31:03','2016-04-01 17:23:29','ADMISSIONS','max-text',NULL,'small-text',NULL,'small-text',NULL,'small-text',150,NULL,NULL,'btn-ghost',NULL),(31,'HeroSection','2016-04-01 22:21:46','2016-04-01 20:37:09','THE','medium-text','APPLICATION','large-text','PROCESS','medium-text',NULL,'small-text',156,NULL,NULL,'btn-ghost',NULL),(32,'HeroSection','2016-04-01 22:33:42','2016-04-01 22:33:42','FEES','large-text',NULL,'small-text',NULL,'small-text',NULL,'small-text',157,NULL,NULL,'btn-ghost',NULL),(33,'HeroSection','2016-04-01 22:39:28','2016-04-01 22:36:27','SCHOLARSHIPS','large-text',NULL,'small-text',NULL,'small-text',NULL,'small-text',158,NULL,NULL,'btn-ghost',NULL),(34,'HeroSection','2016-04-04 12:56:07','2016-04-04 12:04:13','DANCE','max-text',NULL,'small-text',NULL,'small-text',NULL,'small-text',160,NULL,NULL,'btn-ghost',NULL);
/*!40000 ALTER TABLE `HeroSection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomeBox`
--

DROP TABLE IF EXISTS `HomeBox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HomeBox` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('HomeBox') DEFAULT 'HomeBox',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  `HomePageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`),
  KEY `LinkToID` (`LinkToID`),
  KEY `HomePageID` (`HomePageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomeBox`
--

LOCK TABLES `HomeBox` WRITE;
/*!40000 ALTER TABLE `HomeBox` DISABLE KEYS */;
INSERT INTO `HomeBox` VALUES (1,'HomeBox','2016-03-17 13:53:50','2016-03-12 07:01:14','FLAIR',5,6,1),(2,'HomeBox','2016-03-17 13:54:00','2016-03-12 07:04:05','LIFE AT HURTWOOD',6,6,1),(3,'HomeBox','2016-03-17 13:54:10','2016-03-12 07:04:33','ACADEMIC STRENGTH',7,7,1),(4,'HomeBox','2016-03-17 13:54:20','2016-03-12 07:05:01','SPORT & RECREATION',12,7,1);
/*!40000 ALTER TABLE `HomeBox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomePage`
--

DROP TABLE IF EXISTS `HomePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HomePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomePage`
--

LOCK TABLES `HomePage` WRITE;
/*!40000 ALTER TABLE `HomePage` DISABLE KEYS */;
INSERT INTO `HomePage` VALUES (1,0,2);
/*!40000 ALTER TABLE `HomePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomePage_Live`
--

DROP TABLE IF EXISTS `HomePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HomePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomePage_Live`
--

LOCK TABLES `HomePage_Live` WRITE;
/*!40000 ALTER TABLE `HomePage_Live` DISABLE KEYS */;
INSERT INTO `HomePage_Live` VALUES (1,0,2);
/*!40000 ALTER TABLE `HomePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomePage_versions`
--

DROP TABLE IF EXISTS `HomePage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HomePage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `PhotoID` (`PhotoID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomePage_versions`
--

LOCK TABLES `HomePage_versions` WRITE;
/*!40000 ALTER TABLE `HomePage_versions` DISABLE KEYS */;
INSERT INTO `HomePage_versions` VALUES (1,1,2,0,0),(2,1,3,0,2);
/*!40000 ALTER TABLE `HomePage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomeSection`
--

DROP TABLE IF EXISTS `HomeSection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HomeSection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('HomeSection') DEFAULT 'HomeSection',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `HomePageID` int(11) NOT NULL DEFAULT '0',
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  `CTA` varchar(50) DEFAULT NULL,
  `CTALink` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `HomePageID` (`HomePageID`),
  KEY `LinkToID` (`LinkToID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomeSection`
--

LOCK TABLES `HomeSection` WRITE;
/*!40000 ALTER TABLE `HomeSection` DISABLE KEYS */;
INSERT INTO `HomeSection` VALUES (1,'HomeSection','2016-03-17 13:54:51','2016-03-12 07:11:21','DRIVEN BY A PASSION FOR CREATIVITY AND ACADEMIC EXCELLENCE','<p>Hurtwood has combined the best elements of the traditional boarding school system with the best elements of the modern sixth form college to create a wholly unique and individual establishment.</p><p>This is a school driven by a passion for creativity and a respect for academic rigour, a small school with a distinctive voice which is less formal and less institutional than traditional public schools.</p>','<p>Hurtwood has combined the best elements of the traditional boarding school system with the best elements of the modern sixth form college to create a wholly unique and individual establishment.</p>','<p>While breaking new ground educationally, it has retained traditional values and has created an inspirational but safe stepping-stone between school and university.</p>','<p>Hurtwood prides itself on the warmth of its relationships and its ability to engage closely with the hopes and aspirations of each individual student.</p>',15,21,0,0,1,7,'DISCOVER OUR ACADEMIC STRENGTH',NULL),(2,'HomeSection','2016-03-12 07:25:19','2016-03-12 07:25:19','NEW STUDENTS NEW CHALLENGES','<p>The students who come to Hurtwood House have usually been happy and successful at their former school, but they are now ready for fresh challenges.</p>','<p><strong>They find a sixth form which offers them a wider range of subjects and more flexibility of choice; a sixth form that is academically strong.</strong></p><p>Hurtwood has one of the largest and most powerful sixth forms in the country and one of the finest academic records.</p>','<p>They have reached an age when they feel that the learning methods and the lifestyle that worked for them when they were younger are no longer going to be as effective for them in the sixth form. At Hurtwood, they discover an intellectual and social environment closer to that of a university.</p>','<p>All the students find Hurtwood a particularly easy school to join from a social point of view, because half of the school is new every year. The new students all arrive together and do not face the problem of joining a community where friendships have already been established over a period of many years.</p>',23,24,25,0,1,0,NULL,NULL),(3,'HomeSection','2016-03-17 13:55:53','2016-03-12 07:28:44','LEARNING TO MAKE THE  RIGHT CHOICES','<p>Learning to make the right choices in life is an essential part of personal development. So many schools seek to push students down well-trodden paths into established channels.</p>','<p>Learning to make the right choices in life is an essential part of personal development. So many schools seek to push students down well-trodden paths into established channels.</p>','<p>Challenge is an important part of what Hurtwood is all about. Students have to learn to cope with change, to discover themselves and to learn how to get the best out of themselves. It is through rising to these challenges that their characters and personalities are shaped and defined.</p>','<p>When you visit, you are likely to be struck by the maturity of Hurtwood students and by the fact that they are already moving forward in life as happy, well-rounded and self-confident young adults.</p>',30,16,0,16,1,6,'DISCOVER LIFE AT HURTWOOD',NULL);
/*!40000 ALTER TABLE `HomeSection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeBoardingPage`
--

DROP TABLE IF EXISTS `LifeBoardingPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeBoardingPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Section1Title` varchar(255) DEFAULT NULL,
  `Section1Paragraph` mediumtext,
  `Section2Title` varchar(255) DEFAULT NULL,
  `Section2Paragraph1` mediumtext,
  `Section2Paragraph2` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeBoardingPage`
--

LOCK TABLES `LifeBoardingPage` WRITE;
/*!40000 ALTER TABLE `LifeBoardingPage` DISABLE KEYS */;
INSERT INTO `LifeBoardingPage` VALUES (9,6,'THE HOUSES','<p>Each House has a Housemaster who lives in and a team of House Tutors. The Housemaster is the link between the school and your parents and is their first point of contact on all academic and pastoral matters.</p><p>The House staff are responsible for looking after you, for monitoring your academic progress, for providing guidance and for creating a warm, supportive and organised family unit and what we like to think of as a sense of ‘structured informality’.</p><p>All of the working day is spent on campus and you are transported back to your House after supper every evening by the House staff.</p><p>You will have a study bedroom which is normally shared with one other student, although there are some singles for second year students and a few triples.</p>','CAMPUS LIFE','<p>Main meals are taken on campus in our award-winning ‘refectory’ building where the food is healthy and wholesome with a salad bar and a good choice of vegetarian options. It is all freshly prepared on the premises by our own staff.</p>','<p>There are also kitchen facilities in every house for toast, pot noodles, tea and coffee etc, games rooms and communal TV rooms.</p><p>You may also bring your own TV, video or DVD. All houses have high-speed internet access and a wireless LAN</p><p>The activities during the week are outstanding in range, in number and in the number of students involved ISI INSPECTION REPORT</p>',63,64,65);
/*!40000 ALTER TABLE `LifeBoardingPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeBoardingPage_Live`
--

DROP TABLE IF EXISTS `LifeBoardingPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeBoardingPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Section1Title` varchar(255) DEFAULT NULL,
  `Section1Paragraph` mediumtext,
  `Section2Title` varchar(255) DEFAULT NULL,
  `Section2Paragraph1` mediumtext,
  `Section2Paragraph2` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeBoardingPage_Live`
--

LOCK TABLES `LifeBoardingPage_Live` WRITE;
/*!40000 ALTER TABLE `LifeBoardingPage_Live` DISABLE KEYS */;
INSERT INTO `LifeBoardingPage_Live` VALUES (9,6,'THE HOUSES','<p>Each House has a Housemaster who lives in and a team of House Tutors. The Housemaster is the link between the school and your parents and is their first point of contact on all academic and pastoral matters.</p><p>The House staff are responsible for looking after you, for monitoring your academic progress, for providing guidance and for creating a warm, supportive and organised family unit and what we like to think of as a sense of ‘structured informality’.</p><p>All of the working day is spent on campus and you are transported back to your House after supper every evening by the House staff.</p><p>You will have a study bedroom which is normally shared with one other student, although there are some singles for second year students and a few triples.</p>','CAMPUS LIFE','<p>Main meals are taken on campus in our award-winning ‘refectory’ building where the food is healthy and wholesome with a salad bar and a good choice of vegetarian options. It is all freshly prepared on the premises by our own staff.</p>','<p>There are also kitchen facilities in every house for toast, pot noodles, tea and coffee etc, games rooms and communal TV rooms.</p><p>You may also bring your own TV, video or DVD. All houses have high-speed internet access and a wireless LAN</p><p>The activities during the week are outstanding in range, in number and in the number of students involved ISI INSPECTION REPORT</p>',63,64,65);
/*!40000 ALTER TABLE `LifeBoardingPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeBoardingPage_versions`
--

DROP TABLE IF EXISTS `LifeBoardingPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeBoardingPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Section1Title` varchar(255) DEFAULT NULL,
  `Section1Paragraph` mediumtext,
  `Section2Title` varchar(255) DEFAULT NULL,
  `Section2Paragraph1` mediumtext,
  `Section2Paragraph2` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeBoardingPage_versions`
--

LOCK TABLES `LifeBoardingPage_versions` WRITE;
/*!40000 ALTER TABLE `LifeBoardingPage_versions` DISABLE KEYS */;
INSERT INTO `LifeBoardingPage_versions` VALUES (1,9,3,6,NULL,NULL,NULL,NULL,NULL,0,0,0),(2,9,4,6,NULL,NULL,NULL,NULL,NULL,63,64,65),(3,9,5,6,'THE HOUSES','<p>Each House has a Housemaster who lives in and a team of House Tutors. The Housemaster is the link between the school and your parents and is their first point of contact on all academic and pastoral matters.</p><p>The House staff are responsible for looking after you, for monitoring your academic progress, for providing guidance and for creating a warm, supportive and organised family unit and what we like to think of as a sense of ‘structured informality’.</p><p>All of the working day is spent on campus and you are transported back to your House after supper every evening by the House staff.</p><p>You will have a study bedroom which is normally shared with one other student, although there are some singles for second year students and a few triples.</p>',NULL,'<p>Main meals are taken on campus in our award-winning ‘refectory’ building where the food is healthy and wholesome with a salad bar and a good choice of vegetarian options. It is all freshly prepared on the premises by our own staff.</p>','<p>There are also kitchen facilities in every house for toast, pot noodles, tea and coffee etc, games rooms and communal TV rooms.</p><p>You may also bring your own TV, video or DVD. All houses have high-speed internet access and a wireless LAN</p><p>The activities during the week are outstanding in range, in number and in the number of students involved ISI INSPECTION REPORT</p>',63,64,65),(4,9,6,6,'THE HOUSES','<p>Each House has a Housemaster who lives in and a team of House Tutors. The Housemaster is the link between the school and your parents and is their first point of contact on all academic and pastoral matters.</p><p>The House staff are responsible for looking after you, for monitoring your academic progress, for providing guidance and for creating a warm, supportive and organised family unit and what we like to think of as a sense of ‘structured informality’.</p><p>All of the working day is spent on campus and you are transported back to your House after supper every evening by the House staff.</p><p>You will have a study bedroom which is normally shared with one other student, although there are some singles for second year students and a few triples.</p>','CAMPUS LIFE','<p>Main meals are taken on campus in our award-winning ‘refectory’ building where the food is healthy and wholesome with a salad bar and a good choice of vegetarian options. It is all freshly prepared on the premises by our own staff.</p>','<p>There are also kitchen facilities in every house for toast, pot noodles, tea and coffee etc, games rooms and communal TV rooms.</p><p>You may also bring your own TV, video or DVD. All houses have high-speed internet access and a wireless LAN</p><p>The activities during the week are outstanding in range, in number and in the number of students involved ISI INSPECTION REPORT</p>',63,64,65);
/*!40000 ALTER TABLE `LifeBoardingPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeEnigmaPage`
--

DROP TABLE IF EXISTS `LifeEnigmaPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeEnigmaPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `SectionTitle` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `Paragraph6` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  `Photo6ID` int(11) NOT NULL DEFAULT '0',
  `Photo7ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`),
  KEY `Photo6ID` (`Photo6ID`),
  KEY `Photo7ID` (`Photo7ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeEnigmaPage`
--

LOCK TABLES `LifeEnigmaPage` WRITE;
/*!40000 ALTER TABLE `LifeEnigmaPage` DISABLE KEYS */;
INSERT INTO `LifeEnigmaPage` VALUES (11,8,'OUR UNIQUE ENRICHMENT PROGRAMME','<p>Life outside of the classroom at Hurtwood is just as diverse, colourful and exciting as life within.</p><p>The range of opportunities on offer is vast and designed so that every member of our community can find something extra to do whilst they are here, no matter where their interests may lie.</p>','<p>ENIGMA runs in two different ways during the week. Between 5.00pm and 6.10pm on Tuesday and Thursday afternoons, we offer a wide variety of courses for you to take part in. All students must to one course, but you can do both if you want to.</p>','<p>Then on Fridays after lunch, our emphasis moves more towards our commitment to broaden and enhance your personal, social, health and economic education in a way you probably wouldn’t get anywhere else through our team of Friday Speakers and our Lifeskills Programme.</p>','<p>Our visiting speakers don’t talk about things in the abstract; they have been there, seen it and done it and their first hand experiences cover everything from drug addiction, alcoholism, gambling and living with HIV/AIDS through to climbing Mount Everest, walking unsupported to the South Pole, cycling around the globe and storming the Iranian Embassy as a member of the SAS. </p>','<p>The Lifeskills Programme is here to equip you with the skills you will need to deal with real life as an individual:  interview technique, interpersonal skills, communication and leadership, emergency aid and road safety are all featured here. </p>','<p>Enigma is here for you and you will only get out of it what you put in.  So, it’s time for you to think beyond your immediate concerns, look to the future and start preparing for it.  Do this and you are sure to find Enigma an enjoyable, rewarding and stimulating experience! </p>',81,80,79,78,77,76,75);
/*!40000 ALTER TABLE `LifeEnigmaPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeEnigmaPage_Live`
--

DROP TABLE IF EXISTS `LifeEnigmaPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeEnigmaPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `SectionTitle` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `Paragraph6` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  `Photo6ID` int(11) NOT NULL DEFAULT '0',
  `Photo7ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`),
  KEY `Photo6ID` (`Photo6ID`),
  KEY `Photo7ID` (`Photo7ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeEnigmaPage_Live`
--

LOCK TABLES `LifeEnigmaPage_Live` WRITE;
/*!40000 ALTER TABLE `LifeEnigmaPage_Live` DISABLE KEYS */;
INSERT INTO `LifeEnigmaPage_Live` VALUES (11,8,'OUR UNIQUE ENRICHMENT PROGRAMME','<p>Life outside of the classroom at Hurtwood is just as diverse, colourful and exciting as life within.</p><p>The range of opportunities on offer is vast and designed so that every member of our community can find something extra to do whilst they are here, no matter where their interests may lie.</p>','<p>ENIGMA runs in two different ways during the week. Between 5.00pm and 6.10pm on Tuesday and Thursday afternoons, we offer a wide variety of courses for you to take part in. All students must to one course, but you can do both if you want to.</p>','<p>Then on Fridays after lunch, our emphasis moves more towards our commitment to broaden and enhance your personal, social, health and economic education in a way you probably wouldn’t get anywhere else through our team of Friday Speakers and our Lifeskills Programme.</p>','<p>Our visiting speakers don’t talk about things in the abstract; they have been there, seen it and done it and their first hand experiences cover everything from drug addiction, alcoholism, gambling and living with HIV/AIDS through to climbing Mount Everest, walking unsupported to the South Pole, cycling around the globe and storming the Iranian Embassy as a member of the SAS. </p>','<p>The Lifeskills Programme is here to equip you with the skills you will need to deal with real life as an individual:  interview technique, interpersonal skills, communication and leadership, emergency aid and road safety are all featured here. </p>','<p>Enigma is here for you and you will only get out of it what you put in.  So, it’s time for you to think beyond your immediate concerns, look to the future and start preparing for it.  Do this and you are sure to find Enigma an enjoyable, rewarding and stimulating experience! </p>',81,80,79,78,77,76,75);
/*!40000 ALTER TABLE `LifeEnigmaPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeEnigmaPage_versions`
--

DROP TABLE IF EXISTS `LifeEnigmaPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeEnigmaPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `SectionTitle` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `Paragraph6` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  `Photo6ID` int(11) NOT NULL DEFAULT '0',
  `Photo7ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`),
  KEY `Photo6ID` (`Photo6ID`),
  KEY `Photo7ID` (`Photo7ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeEnigmaPage_versions`
--

LOCK TABLES `LifeEnigmaPage_versions` WRITE;
/*!40000 ALTER TABLE `LifeEnigmaPage_versions` DISABLE KEYS */;
INSERT INTO `LifeEnigmaPage_versions` VALUES (1,11,3,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0),(2,11,4,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0),(3,11,5,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0),(4,11,6,8,'OUR UNIQUE ENRICHMENT PROGRAMME','<p>Life outside of the classroom at Hurtwood is just as diverse, colourful and exciting as life within.</p><p>The range of opportunities on offer is vast and designed so that every member of our community can find something extra to do whilst they are here, no matter where their interests may lie.</p>','<p>ENIGMA runs in two different ways during the week. Between 5.00pm and 6.10pm on Tuesday and Thursday afternoons, we offer a wide variety of courses for you to take part in. All students must to one course, but you can do both if you want to.</p>','<p>Then on Fridays after lunch, our emphasis moves more towards our commitment to broaden and enhance your personal, social, health and economic education in a way you probably wouldn’t get anywhere else through our team of Friday Speakers and our Lifeskills Programme.</p>','<p>Our visiting speakers don’t talk about things in the abstract; they have been there, seen it and done it and their first hand experiences cover everything from drug addiction, alcoholism, gambling and living with HIV/AIDS through to climbing Mount Everest, walking unsupported to the South Pole, cycling around the globe and storming the Iranian Embassy as a member of the SAS. </p>','<p>The Lifeskills Programme is here to equip you with the skills you will need to deal with real life as an individual:  interview technique, interpersonal skills, communication and leadership, emergency aid and road safety are all featured here. </p>','<p>Enigma is here for you and you will only get out of it what you put in.  So, it’s time for you to think beyond your immediate concerns, look to the future and start preparing for it.  Do this and you are sure to find Enigma an enjoyable, rewarding and stimulating experience! </p>',0,0,0,0,0,0,0),(5,11,7,8,'OUR UNIQUE ENRICHMENT PROGRAMME','<p>Life outside of the classroom at Hurtwood is just as diverse, colourful and exciting as life within.</p><p>The range of opportunities on offer is vast and designed so that every member of our community can find something extra to do whilst they are here, no matter where their interests may lie.</p>','<p>ENIGMA runs in two different ways during the week. Between 5.00pm and 6.10pm on Tuesday and Thursday afternoons, we offer a wide variety of courses for you to take part in. All students must to one course, but you can do both if you want to.</p>','<p>Then on Fridays after lunch, our emphasis moves more towards our commitment to broaden and enhance your personal, social, health and economic education in a way you probably wouldn’t get anywhere else through our team of Friday Speakers and our Lifeskills Programme.</p>','<p>Our visiting speakers don’t talk about things in the abstract; they have been there, seen it and done it and their first hand experiences cover everything from drug addiction, alcoholism, gambling and living with HIV/AIDS through to climbing Mount Everest, walking unsupported to the South Pole, cycling around the globe and storming the Iranian Embassy as a member of the SAS. </p>','<p>The Lifeskills Programme is here to equip you with the skills you will need to deal with real life as an individual:  interview technique, interpersonal skills, communication and leadership, emergency aid and road safety are all featured here. </p>','<p>Enigma is here for you and you will only get out of it what you put in.  So, it’s time for you to think beyond your immediate concerns, look to the future and start preparing for it.  Do this and you are sure to find Enigma an enjoyable, rewarding and stimulating experience! </p>',81,80,79,78,77,76,75);
/*!40000 ALTER TABLE `LifeEnigmaPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifePage`
--

DROP TABLE IF EXISTS `LifePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `TeamTitle` varchar(255) DEFAULT NULL,
  `TeamSubtitle` varchar(255) DEFAULT NULL,
  `TeamDescription` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `TeamMembersID` int(11) NOT NULL DEFAULT '0',
  `SectionTitle` varchar(255) DEFAULT NULL,
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `TeamMembersID` (`TeamMembersID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifePage`
--

LOCK TABLES `LifePage` WRITE;
/*!40000 ALTER TABLE `LifePage` DISABLE KEYS */;
INSERT INTO `LifePage` VALUES (6,3,NULL,'<p>In both the classroom and the community in general, Hurtwood offers a unique preparation for life after school – a real stepping-stone between school and university.</p><p>Life at Hurtwood is close to that of a university campus. While always under the pastoral care of the Housemaster and his staff, students earn and are granted respect and freedom of choice. Hurtwood treats students as responsible adults, and responsible adults they prove to be.</p>','<p>The code of conduct is clearly well defined and well-enforced, but it is neither petty nor over-restrictive and overall there is a fresh approach to life, a warmth to relationships and a friendly atmosphere of trust between staff and students.</p>','<p>Everyone within the school is in no doubt that learning to be mature in their dealings with others is as important a lesson as anything learned in the classroom.</p>','<p>The end result is one of ‘managed independence’. Always mindful of the fact that sixth formers may still have many uncertainties about life, Hurtwood fosters an environment within which a student can develop their individuality at their own pace.</p>','<p>I don\'t really know where to begin when trying to thank you for the last two years – which has just been the best time of my life so far.</p><p>I have taken more than anything I thought I could at Hurtwood, with all its INCREDIBLE opportunities. I will miss this amazing school so much – which is more like a home to me.</p><p class=\"text-uppercase\">Daisy M</p><p class=\"text-uppercase text-purple\">PAST STUDENT</p>','MEET THE TEAM','Imparting a passion for life','<p>The staff at Hurtwood House is made up not only of real professionals with a real depth of experience, but also of some real characters with some varied interests.</p>',34,35,36,37,0,'LIFE AT HURTWOOD',0);
/*!40000 ALTER TABLE `LifePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifePage_Live`
--

DROP TABLE IF EXISTS `LifePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `TeamTitle` varchar(255) DEFAULT NULL,
  `TeamSubtitle` varchar(255) DEFAULT NULL,
  `TeamDescription` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `TeamMembersID` int(11) NOT NULL DEFAULT '0',
  `SectionTitle` varchar(255) DEFAULT NULL,
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `TeamMembersID` (`TeamMembersID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifePage_Live`
--

LOCK TABLES `LifePage_Live` WRITE;
/*!40000 ALTER TABLE `LifePage_Live` DISABLE KEYS */;
INSERT INTO `LifePage_Live` VALUES (6,3,NULL,'<p>In both the classroom and the community in general, Hurtwood offers a unique preparation for life after school – a real stepping-stone between school and university.</p><p>Life at Hurtwood is close to that of a university campus. While always under the pastoral care of the Housemaster and his staff, students earn and are granted respect and freedom of choice. Hurtwood treats students as responsible adults, and responsible adults they prove to be.</p>','<p>The code of conduct is clearly well defined and well-enforced, but it is neither petty nor over-restrictive and overall there is a fresh approach to life, a warmth to relationships and a friendly atmosphere of trust between staff and students.</p>','<p>Everyone within the school is in no doubt that learning to be mature in their dealings with others is as important a lesson as anything learned in the classroom.</p>','<p>The end result is one of ‘managed independence’. Always mindful of the fact that sixth formers may still have many uncertainties about life, Hurtwood fosters an environment within which a student can develop their individuality at their own pace.</p>','<p>I don\'t really know where to begin when trying to thank you for the last two years – which has just been the best time of my life so far.</p><p>I have taken more than anything I thought I could at Hurtwood, with all its INCREDIBLE opportunities. I will miss this amazing school so much – which is more like a home to me.</p><p class=\"text-uppercase\">Daisy M</p><p class=\"text-uppercase text-purple\">PAST STUDENT</p>','MEET THE TEAM','Imparting a passion for life','<p>The staff at Hurtwood House is made up not only of real professionals with a real depth of experience, but also of some real characters with some varied interests.</p>',34,35,36,37,0,'LIFE AT HURTWOOD',0);
/*!40000 ALTER TABLE `LifePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifePage_versions`
--

DROP TABLE IF EXISTS `LifePage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifePage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `TeamTitle` varchar(255) DEFAULT NULL,
  `TeamSubtitle` varchar(255) DEFAULT NULL,
  `TeamDescription` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `TeamMembersID` int(11) NOT NULL DEFAULT '0',
  `SectionTitle` varchar(255) DEFAULT NULL,
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `TeamMembersID` (`TeamMembersID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifePage_versions`
--

LOCK TABLES `LifePage_versions` WRITE;
/*!40000 ALTER TABLE `LifePage_versions` DISABLE KEYS */;
INSERT INTO `LifePage_versions` VALUES (1,6,1,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,0),(2,6,2,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,0),(3,6,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,0),(4,6,4,3,NULL,'<p>In both the classroom and the community in general, Hurtwood offers a unique preparation for life after school – a real stepping-stone between school and university.</p><p>Life at Hurtwood is close to that of a university campus. While always under the pastoral care of the Housemaster and his staff, students earn and are granted respect and freedom of choice. Hurtwood treats students as responsible adults, and responsible adults they prove to be.</p>','<p>The code of conduct is clearly well defined and well-enforced, but it is neither petty nor over-restrictive and overall there is a fresh approach to life, a warmth to relationships and a friendly atmosphere of trust between staff and students.</p>','<p>Everyone within the school is in no doubt that learning to be mature in their dealings with others is as important a lesson as anything learned in the classroom.</p>','<p>The end result is one of ‘managed independence’. Always mindful of the fact that sixth formers may still have many uncertainties about life, Hurtwood fosters an environment within which a student can develop their individuality at their own pace.</p>','<p>I don\'t really know where to begin when trying to thank you for the last two years – which has just been the best time of my life so far.</p><p>I have taken more than anything I thought I could at Hurtwood, with all its INCREDIBLE opportunities. I will miss this amazing school so much – which is more like a home to me.</p><p class=\"text-uppercase\">Daisy M</p><p class=\"text-uppercase text-purple\">PAST STUDENT</p>',NULL,NULL,NULL,0,0,0,0,0,'LIFE AT HURTWOOD',0),(5,6,5,3,NULL,'<p>In both the classroom and the community in general, Hurtwood offers a unique preparation for life after school – a real stepping-stone between school and university.</p><p>Life at Hurtwood is close to that of a university campus. While always under the pastoral care of the Housemaster and his staff, students earn and are granted respect and freedom of choice. Hurtwood treats students as responsible adults, and responsible adults they prove to be.</p>','<p>The code of conduct is clearly well defined and well-enforced, but it is neither petty nor over-restrictive and overall there is a fresh approach to life, a warmth to relationships and a friendly atmosphere of trust between staff and students.</p>','<p>Everyone within the school is in no doubt that learning to be mature in their dealings with others is as important a lesson as anything learned in the classroom.</p>','<p>The end result is one of ‘managed independence’. Always mindful of the fact that sixth formers may still have many uncertainties about life, Hurtwood fosters an environment within which a student can develop their individuality at their own pace.</p>','<p>I don\'t really know where to begin when trying to thank you for the last two years – which has just been the best time of my life so far.</p><p>I have taken more than anything I thought I could at Hurtwood, with all its INCREDIBLE opportunities. I will miss this amazing school so much – which is more like a home to me.</p><p class=\"text-uppercase\">Daisy M</p><p class=\"text-uppercase text-purple\">PAST STUDENT</p>',NULL,NULL,NULL,34,35,36,37,0,'LIFE AT HURTWOOD',0),(6,6,6,3,NULL,'<p>In both the classroom and the community in general, Hurtwood offers a unique preparation for life after school – a real stepping-stone between school and university.</p><p>Life at Hurtwood is close to that of a university campus. While always under the pastoral care of the Housemaster and his staff, students earn and are granted respect and freedom of choice. Hurtwood treats students as responsible adults, and responsible adults they prove to be.</p>','<p>The code of conduct is clearly well defined and well-enforced, but it is neither petty nor over-restrictive and overall there is a fresh approach to life, a warmth to relationships and a friendly atmosphere of trust between staff and students.</p>','<p>Everyone within the school is in no doubt that learning to be mature in their dealings with others is as important a lesson as anything learned in the classroom.</p>','<p>The end result is one of ‘managed independence’. Always mindful of the fact that sixth formers may still have many uncertainties about life, Hurtwood fosters an environment within which a student can develop their individuality at their own pace.</p>','<p>I don\'t really know where to begin when trying to thank you for the last two years – which has just been the best time of my life so far.</p><p>I have taken more than anything I thought I could at Hurtwood, with all its INCREDIBLE opportunities. I will miss this amazing school so much – which is more like a home to me.</p><p class=\"text-uppercase\">Daisy M</p><p class=\"text-uppercase text-purple\">PAST STUDENT</p>','MEET THE TEAM',NULL,'<p>The staff at Hurtwood House is made up not only of real professionals with a real depth of experience, but also of some real characters with some varied interests.</p>',34,35,36,37,0,'LIFE AT HURTWOOD',0),(7,6,7,3,NULL,'<p>In both the classroom and the community in general, Hurtwood offers a unique preparation for life after school – a real stepping-stone between school and university.</p><p>Life at Hurtwood is close to that of a university campus. While always under the pastoral care of the Housemaster and his staff, students earn and are granted respect and freedom of choice. Hurtwood treats students as responsible adults, and responsible adults they prove to be.</p>','<p>The code of conduct is clearly well defined and well-enforced, but it is neither petty nor over-restrictive and overall there is a fresh approach to life, a warmth to relationships and a friendly atmosphere of trust between staff and students.</p>','<p>Everyone within the school is in no doubt that learning to be mature in their dealings with others is as important a lesson as anything learned in the classroom.</p>','<p>The end result is one of ‘managed independence’. Always mindful of the fact that sixth formers may still have many uncertainties about life, Hurtwood fosters an environment within which a student can develop their individuality at their own pace.</p>','<p>I don\'t really know where to begin when trying to thank you for the last two years – which has just been the best time of my life so far.</p><p>I have taken more than anything I thought I could at Hurtwood, with all its INCREDIBLE opportunities. I will miss this amazing school so much – which is more like a home to me.</p><p class=\"text-uppercase\">Daisy M</p><p class=\"text-uppercase text-purple\">PAST STUDENT</p>','MEET THE TEAM','Imparting a passion for life','<p>The staff at Hurtwood House is made up not only of real professionals with a real depth of experience, but also of some real characters with some varied interests.</p>',34,35,36,37,0,'LIFE AT HURTWOOD',0),(8,6,8,3,NULL,'<p>In both the classroom and the community in general, Hurtwood offers a unique preparation for life after school – a real stepping-stone between school and university.</p><p>Life at Hurtwood is close to that of a university campus. While always under the pastoral care of the Housemaster and his staff, students earn and are granted respect and freedom of choice. Hurtwood treats students as responsible adults, and responsible adults they prove to be.</p>','<p>The code of conduct is clearly well defined and well-enforced, but it is neither petty nor over-restrictive and overall there is a fresh approach to life, a warmth to relationships and a friendly atmosphere of trust between staff and students.</p>','<p>Everyone within the school is in no doubt that learning to be mature in their dealings with others is as important a lesson as anything learned in the classroom.</p>','<p>The end result is one of ‘managed independence’. Always mindful of the fact that sixth formers may still have many uncertainties about life, Hurtwood fosters an environment within which a student can develop their individuality at their own pace.</p>','<p>I don\'t really know where to begin when trying to thank you for the last two years – which has just been the best time of my life so far.</p><p>I have taken more than anything I thought I could at Hurtwood, with all its INCREDIBLE opportunities. I will miss this amazing school so much – which is more like a home to me.</p><p class=\"text-uppercase\">Daisy M</p><p class=\"text-uppercase text-purple\">PAST STUDENT</p>','MEET THE TEAM',NULL,'<p>The staff at Hurtwood House is made up not only of real professionals with a real depth of experience, but also of some real characters with some varied interests.</p>',34,35,36,37,0,'LIFE AT HURTWOOD',0),(9,6,9,3,NULL,'<p>In both the classroom and the community in general, Hurtwood offers a unique preparation for life after school – a real stepping-stone between school and university.</p><p>Life at Hurtwood is close to that of a university campus. While always under the pastoral care of the Housemaster and his staff, students earn and are granted respect and freedom of choice. Hurtwood treats students as responsible adults, and responsible adults they prove to be.</p>','<p>The code of conduct is clearly well defined and well-enforced, but it is neither petty nor over-restrictive and overall there is a fresh approach to life, a warmth to relationships and a friendly atmosphere of trust between staff and students.</p>','<p>Everyone within the school is in no doubt that learning to be mature in their dealings with others is as important a lesson as anything learned in the classroom.</p>','<p>The end result is one of ‘managed independence’. Always mindful of the fact that sixth formers may still have many uncertainties about life, Hurtwood fosters an environment within which a student can develop their individuality at their own pace.</p>','<p>I don\'t really know where to begin when trying to thank you for the last two years – which has just been the best time of my life so far.</p><p>I have taken more than anything I thought I could at Hurtwood, with all its INCREDIBLE opportunities. I will miss this amazing school so much – which is more like a home to me.</p><p class=\"text-uppercase\">Daisy M</p><p class=\"text-uppercase text-purple\">PAST STUDENT</p>','MEET THE TEAM',NULL,'<p>The staff at Hurtwood House is made up not only of real professionals with a real depth of experience, but also of some real characters with some varied interests.</p>',34,35,36,37,0,'LIFE AT HURTWOOD',0),(10,6,10,3,NULL,'<p>In both the classroom and the community in general, Hurtwood offers a unique preparation for life after school – a real stepping-stone between school and university.</p><p>Life at Hurtwood is close to that of a university campus. While always under the pastoral care of the Housemaster and his staff, students earn and are granted respect and freedom of choice. Hurtwood treats students as responsible adults, and responsible adults they prove to be.</p>','<p>The code of conduct is clearly well defined and well-enforced, but it is neither petty nor over-restrictive and overall there is a fresh approach to life, a warmth to relationships and a friendly atmosphere of trust between staff and students.</p>','<p>Everyone within the school is in no doubt that learning to be mature in their dealings with others is as important a lesson as anything learned in the classroom.</p>','<p>The end result is one of ‘managed independence’. Always mindful of the fact that sixth formers may still have many uncertainties about life, Hurtwood fosters an environment within which a student can develop their individuality at their own pace.</p>','<p>I don\'t really know where to begin when trying to thank you for the last two years – which has just been the best time of my life so far.</p><p>I have taken more than anything I thought I could at Hurtwood, with all its INCREDIBLE opportunities. I will miss this amazing school so much – which is more like a home to me.</p><p class=\"text-uppercase\">Daisy M</p><p class=\"text-uppercase text-purple\">PAST STUDENT</p>','MEET THE TEAM','Imparting a passion for life','<p>The staff at Hurtwood House is made up not only of real professionals with a real depth of experience, but also of some real characters with some varied interests.</p>',34,35,36,37,0,'LIFE AT HURTWOOD',0);
/*!40000 ALTER TABLE `LifePage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeSportPage`
--

DROP TABLE IF EXISTS `LifeSportPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeSportPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeSportPage`
--

LOCK TABLES `LifeSportPage` WRITE;
/*!40000 ALTER TABLE `LifeSportPage` DISABLE KEYS */;
INSERT INTO `LifeSportPage` VALUES (10,7,'<p>It is clearly important to achieve the right balance between work and relaxation and Hurtwood provides a wide range of other activities so that there is something for everyone.</p><p>As well as football, rugby, hockey, netball, cricket and basketball, typical afternoon activities include gym, climbing, mountain biking, aerobics, dance, audition preparation, golf, riding, polo, swimming, broadcasting from the school’s radio station, or advanced documentary film production in the Film Academy.</p>','<p>The best kit on and off the field</p><p>We offer bespoke Hurtwood House sports kit from the British Sports Wear provider, Playerlayer. If you child wishes to wear sports kit/or casual sports clothing, we strongly recommend that you child orders as soon as possible to ensure delivery before the start of term.</p>','<p>Out and about</p><p>Hurtwood students also get out and about as often as possible, with visits to conferences and exhibitions, theatres, museums and galleries, sports tournaments, outdoor education weekends and subject-related, European excursions. </p>','<p><strong>The activities during the week are outstanding</strong> in range, in number and in the number of students involved ISI INSPECTION REPORT</p>',69,70,71,72,73);
/*!40000 ALTER TABLE `LifeSportPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeSportPage_Live`
--

DROP TABLE IF EXISTS `LifeSportPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeSportPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeSportPage_Live`
--

LOCK TABLES `LifeSportPage_Live` WRITE;
/*!40000 ALTER TABLE `LifeSportPage_Live` DISABLE KEYS */;
INSERT INTO `LifeSportPage_Live` VALUES (10,7,'<p>It is clearly important to achieve the right balance between work and relaxation and Hurtwood provides a wide range of other activities so that there is something for everyone.</p><p>As well as football, rugby, hockey, netball, cricket and basketball, typical afternoon activities include gym, climbing, mountain biking, aerobics, dance, audition preparation, golf, riding, polo, swimming, broadcasting from the school’s radio station, or advanced documentary film production in the Film Academy.</p>','<p>The best kit on and off the field</p><p>We offer bespoke Hurtwood House sports kit from the British Sports Wear provider, Playerlayer. If you child wishes to wear sports kit/or casual sports clothing, we strongly recommend that you child orders as soon as possible to ensure delivery before the start of term.</p>','<p>Out and about</p><p>Hurtwood students also get out and about as often as possible, with visits to conferences and exhibitions, theatres, museums and galleries, sports tournaments, outdoor education weekends and subject-related, European excursions. </p>','<p><strong>The activities during the week are outstanding</strong> in range, in number and in the number of students involved ISI INSPECTION REPORT</p>',69,70,71,72,73);
/*!40000 ALTER TABLE `LifeSportPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeSportPage_versions`
--

DROP TABLE IF EXISTS `LifeSportPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeSportPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeSportPage_versions`
--

LOCK TABLES `LifeSportPage_versions` WRITE;
/*!40000 ALTER TABLE `LifeSportPage_versions` DISABLE KEYS */;
INSERT INTO `LifeSportPage_versions` VALUES (1,10,1,7,NULL,NULL,NULL,NULL,0,0,0,0,0),(2,10,2,7,NULL,NULL,NULL,NULL,0,0,0,0,0),(3,10,3,7,NULL,NULL,NULL,NULL,0,0,0,0,0),(4,10,4,7,'<p>It is clearly important to achieve the right balance between work and relaxation and Hurtwood provides a wide range of other activities so that there is something for everyone.</p><p>As well as football, rugby, hockey, netball, cricket and basketball, typical afternoon activities include gym, climbing, mountain biking, aerobics, dance, audition preparation, golf, riding, polo, swimming, broadcasting from the school’s radio station, or advanced documentary film production in the Film Academy.</p>','<p>The best kit on and off the field</p><p>We offer bespoke Hurtwood House sports kit from the British Sports Wear provider, Playerlayer. If you child wishes to wear sports kit/or casual sports clothing, we strongly recommend that you child orders as soon as possible to ensure delivery before the start of term.</p>','<p>Out and about</p><p>Hurtwood students also get out and about as often as possible, with visits to conferences and exhibitions, theatres, museums and galleries, sports tournaments, outdoor education weekends and subject-related, European excursions. </p>','<p><strong>The activities during the week are outstanding</strong> in range, in number and in the number of students involved ISI INSPECTION REPORT</p>',0,0,0,0,0),(5,10,5,7,'<p>It is clearly important to achieve the right balance between work and relaxation and Hurtwood provides a wide range of other activities so that there is something for everyone.</p><p>As well as football, rugby, hockey, netball, cricket and basketball, typical afternoon activities include gym, climbing, mountain biking, aerobics, dance, audition preparation, golf, riding, polo, swimming, broadcasting from the school’s radio station, or advanced documentary film production in the Film Academy.</p>','<p>The best kit on and off the field</p><p>We offer bespoke Hurtwood House sports kit from the British Sports Wear provider, Playerlayer. If you child wishes to wear sports kit/or casual sports clothing, we strongly recommend that you child orders as soon as possible to ensure delivery before the start of term.</p>','<p>Out and about</p><p>Hurtwood students also get out and about as often as possible, with visits to conferences and exhibitions, theatres, museums and galleries, sports tournaments, outdoor education weekends and subject-related, European excursions. </p>','<p><strong>The activities during the week are outstanding</strong> in range, in number and in the number of students involved ISI INSPECTION REPORT</p>',69,70,71,72,73);
/*!40000 ALTER TABLE `LifeSportPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeStudentsPage`
--

DROP TABLE IF EXISTS `LifeStudentsPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeStudentsPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Section1Title` varchar(255) DEFAULT NULL,
  `Section1Paragraph1` mediumtext,
  `Section1Paragraph2` mediumtext,
  `Section1Paragraph3` mediumtext,
  `Section2Title` varchar(255) DEFAULT NULL,
  `Section2Paragraph1` mediumtext,
  `Section2CTA` varchar(50) DEFAULT NULL,
  `Section2CTALinkToID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  `Photo6ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Section2CTALinkToID` (`Section2CTALinkToID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`),
  KEY `Photo6ID` (`Photo6ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeStudentsPage`
--

LOCK TABLES `LifeStudentsPage` WRITE;
/*!40000 ALTER TABLE `LifeStudentsPage` DISABLE KEYS */;
INSERT INTO `LifeStudentsPage` VALUES (12,9,'SUCCESSFUL REALIZATION','<p>University, drama school, art school, film school – an outstanding record of placing students on the next stage of their careers.</p>','<p>With Hurtwood’s superb A level results it is not surprising that the vast majority of our students go on to degree courses at England’s top universities. The courses they take range from Astrophysics and Macro Biology to Economics and Psychology.</p>','<p>On the creative side Hurtwood has provided unparalleled access to a massive range of colleges and courses for the aspiring actor, dancer, film director, artist, fashion designer, photographer, musician, singer or composer.</p>','AFTER HURTWOOD','<p>Students leave Hurtwood with the confidence, maturity and skills to take them further on their path.</p><p>In the Performance Arts world we have had many successes including Hans Zimmer (Oscar winning film composer), Emily Blunt (Golden Globe winning actress), Celia Mei Rubin (Broadway/West End dancer/performer), Dan Higgott (West End sound engineer), and Rise To Remain (the heavy metal band featuring ex-student Austin Dickinson).</p>','VISIT THE HALL OF FAME',7,83,86,85,84,88,0);
/*!40000 ALTER TABLE `LifeStudentsPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeStudentsPage_Live`
--

DROP TABLE IF EXISTS `LifeStudentsPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeStudentsPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Section1Title` varchar(255) DEFAULT NULL,
  `Section1Paragraph1` mediumtext,
  `Section1Paragraph2` mediumtext,
  `Section1Paragraph3` mediumtext,
  `Section2Title` varchar(255) DEFAULT NULL,
  `Section2Paragraph1` mediumtext,
  `Section2CTA` varchar(50) DEFAULT NULL,
  `Section2CTALinkToID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  `Photo6ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Section2CTALinkToID` (`Section2CTALinkToID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`),
  KEY `Photo6ID` (`Photo6ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeStudentsPage_Live`
--

LOCK TABLES `LifeStudentsPage_Live` WRITE;
/*!40000 ALTER TABLE `LifeStudentsPage_Live` DISABLE KEYS */;
INSERT INTO `LifeStudentsPage_Live` VALUES (12,9,'SUCCESSFUL REALIZATION','<p>University, drama school, art school, film school – an outstanding record of placing students on the next stage of their careers.</p>','<p>With Hurtwood’s superb A level results it is not surprising that the vast majority of our students go on to degree courses at England’s top universities. The courses they take range from Astrophysics and Macro Biology to Economics and Psychology.</p>','<p>On the creative side Hurtwood has provided unparalleled access to a massive range of colleges and courses for the aspiring actor, dancer, film director, artist, fashion designer, photographer, musician, singer or composer.</p>','AFTER HURTWOOD','<p>Students leave Hurtwood with the confidence, maturity and skills to take them further on their path.</p><p>In the Performance Arts world we have had many successes including Hans Zimmer (Oscar winning film composer), Emily Blunt (Golden Globe winning actress), Celia Mei Rubin (Broadway/West End dancer/performer), Dan Higgott (West End sound engineer), and Rise To Remain (the heavy metal band featuring ex-student Austin Dickinson).</p>','VISIT THE HALL OF FAME',7,83,86,85,84,88,0);
/*!40000 ALTER TABLE `LifeStudentsPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeStudentsPage_versions`
--

DROP TABLE IF EXISTS `LifeStudentsPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeStudentsPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Section1Title` varchar(255) DEFAULT NULL,
  `Section1Paragraph1` mediumtext,
  `Section1Paragraph2` mediumtext,
  `Section1Paragraph3` mediumtext,
  `Section2Title` varchar(255) DEFAULT NULL,
  `Section2Paragraph1` mediumtext,
  `Section2CTA` varchar(50) DEFAULT NULL,
  `Section2CTALinkToID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  `Photo6ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Section2CTALinkToID` (`Section2CTALinkToID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`),
  KEY `Photo6ID` (`Photo6ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeStudentsPage_versions`
--

LOCK TABLES `LifeStudentsPage_versions` WRITE;
/*!40000 ALTER TABLE `LifeStudentsPage_versions` DISABLE KEYS */;
INSERT INTO `LifeStudentsPage_versions` VALUES (1,12,1,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0),(2,12,2,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0),(3,12,3,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0),(4,12,4,9,'SUCCESSFUL REALIZATION','<p>University, drama school, art school, film school – an outstanding record of placing students on the next stage of their careers.</p>',NULL,NULL,'AFTER HURTWOOD',NULL,'VISIT THE HALL OF FAME',7,0,0,0,0,0,0),(5,12,5,9,'SUCCESSFUL REALIZATION','<p>University, drama school, art school, film school – an outstanding record of placing students on the next stage of their careers.</p>','<p>With Hurtwood’s superb A level results it is not surprising that the vast majority of our students go on to degree courses at England’s top universities. The courses they take range from Astrophysics and Macro Biology to Economics and Psychology.</p>','<p>On the creative side Hurtwood has provided unparalleled access to a massive range of colleges and courses for the aspiring actor, dancer, film director, artist, fashion designer, photographer, musician, singer or composer.</p>','AFTER HURTWOOD',NULL,'VISIT THE HALL OF FAME',7,0,0,0,0,0,0),(6,12,6,9,'SUCCESSFUL REALIZATION','<p>University, drama school, art school, film school – an outstanding record of placing students on the next stage of their careers.</p>','<p>With Hurtwood’s superb A level results it is not surprising that the vast majority of our students go on to degree courses at England’s top universities. The courses they take range from Astrophysics and Macro Biology to Economics and Psychology.</p>','<p>On the creative side Hurtwood has provided unparalleled access to a massive range of colleges and courses for the aspiring actor, dancer, film director, artist, fashion designer, photographer, musician, singer or composer.</p>','AFTER HURTWOOD','<p>Students leave Hurtwood with the confidence, maturity and skills to take them further on their path.</p><p>In the Performance Arts world we have had many successes including Hans Zimmer (Oscar winning film composer), Emily Blunt (Golden Globe winning actress), Celia Mei Rubin (Broadway/West End dancer/performer), Dan Higgott (West End sound engineer), and Rise To Remain (the heavy metal band featuring ex-student Austin Dickinson).</p>','VISIT THE HALL OF FAME',7,0,0,0,0,0,0),(7,12,7,9,'SUCCESSFUL REALIZATION','<p>University, drama school, art school, film school – an outstanding record of placing students on the next stage of their careers.</p>','<p>With Hurtwood’s superb A level results it is not surprising that the vast majority of our students go on to degree courses at England’s top universities. The courses they take range from Astrophysics and Macro Biology to Economics and Psychology.</p>','<p>On the creative side Hurtwood has provided unparalleled access to a massive range of colleges and courses for the aspiring actor, dancer, film director, artist, fashion designer, photographer, musician, singer or composer.</p>','AFTER HURTWOOD','<p>Students leave Hurtwood with the confidence, maturity and skills to take them further on their path.</p><p>In the Performance Arts world we have had many successes including Hans Zimmer (Oscar winning film composer), Emily Blunt (Golden Globe winning actress), Celia Mei Rubin (Broadway/West End dancer/performer), Dan Higgott (West End sound engineer), and Rise To Remain (the heavy metal band featuring ex-student Austin Dickinson).</p>','VISIT THE HALL OF FAME',7,83,86,84,85,0,0),(8,12,8,9,'SUCCESSFUL REALIZATION','<p>University, drama school, art school, film school – an outstanding record of placing students on the next stage of their careers.</p>','<p>With Hurtwood’s superb A level results it is not surprising that the vast majority of our students go on to degree courses at England’s top universities. The courses they take range from Astrophysics and Macro Biology to Economics and Psychology.</p>','<p>On the creative side Hurtwood has provided unparalleled access to a massive range of colleges and courses for the aspiring actor, dancer, film director, artist, fashion designer, photographer, musician, singer or composer.</p>','AFTER HURTWOOD','<p>Students leave Hurtwood with the confidence, maturity and skills to take them further on their path.</p><p>In the Performance Arts world we have had many successes including Hans Zimmer (Oscar winning film composer), Emily Blunt (Golden Globe winning actress), Celia Mei Rubin (Broadway/West End dancer/performer), Dan Higgott (West End sound engineer), and Rise To Remain (the heavy metal band featuring ex-student Austin Dickinson).</p>','VISIT THE HALL OF FAME',7,83,86,85,84,0,0),(9,12,9,9,'SUCCESSFUL REALIZATION','<p>University, drama school, art school, film school – an outstanding record of placing students on the next stage of their careers.</p>','<p>With Hurtwood’s superb A level results it is not surprising that the vast majority of our students go on to degree courses at England’s top universities. The courses they take range from Astrophysics and Macro Biology to Economics and Psychology.</p>','<p>On the creative side Hurtwood has provided unparalleled access to a massive range of colleges and courses for the aspiring actor, dancer, film director, artist, fashion designer, photographer, musician, singer or composer.</p>','AFTER HURTWOOD','<p>Students leave Hurtwood with the confidence, maturity and skills to take them further on their path.</p><p>In the Performance Arts world we have had many successes including Hans Zimmer (Oscar winning film composer), Emily Blunt (Golden Globe winning actress), Celia Mei Rubin (Broadway/West End dancer/performer), Dan Higgott (West End sound engineer), and Rise To Remain (the heavy metal band featuring ex-student Austin Dickinson).</p>','VISIT THE HALL OF FAME',7,83,86,85,84,87,0),(10,12,10,9,'SUCCESSFUL REALIZATION','<p>University, drama school, art school, film school – an outstanding record of placing students on the next stage of their careers.</p>','<p>With Hurtwood’s superb A level results it is not surprising that the vast majority of our students go on to degree courses at England’s top universities. The courses they take range from Astrophysics and Macro Biology to Economics and Psychology.</p>','<p>On the creative side Hurtwood has provided unparalleled access to a massive range of colleges and courses for the aspiring actor, dancer, film director, artist, fashion designer, photographer, musician, singer or composer.</p>','AFTER HURTWOOD','<p>Students leave Hurtwood with the confidence, maturity and skills to take them further on their path.</p><p>In the Performance Arts world we have had many successes including Hans Zimmer (Oscar winning film composer), Emily Blunt (Golden Globe winning actress), Celia Mei Rubin (Broadway/West End dancer/performer), Dan Higgott (West End sound engineer), and Rise To Remain (the heavy metal band featuring ex-student Austin Dickinson).</p>','VISIT THE HALL OF FAME',7,83,86,85,84,88,0);
/*!40000 ALTER TABLE `LifeStudentsPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeSupportivePage`
--

DROP TABLE IF EXISTS `LifeSupportivePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeSupportivePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `Paragraph6` mediumtext,
  `Paragraph7` mediumtext,
  `Paragraph8` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeSupportivePage`
--

LOCK TABLES `LifeSupportivePage` WRITE;
/*!40000 ALTER TABLE `LifeSupportivePage` DISABLE KEYS */;
INSERT INTO `LifeSupportivePage` VALUES (8,'<p>Hurtwood has the sort of teachers you always wished you’d had when you were younger.</p><p>They are A-level specialists teaching exclusively at sixth-form level. They are great communicators, are passionate about their chosen subject, and know how to inspire their students. They are also a vital part of a team that ensures students achieve their full potential, often far in excess of their own expectations.</p>','<p>As well as being an inspirational environment, Hurtwood is also exceptionally supportive.</p>','<p>Our unique system for monitoring academic progress is probably the single most important reason why our students do so well.</p>','<p>Contrary to the style of many other schools, Hurtwood does not believe that all students of sixth-form age are naturally equipped to manage their academic career by themselves.</p>','<p>It is effective on many fronts, keeping students on target and providing everyone involved – students, staff, school management and parents – with a permanently up-to-date picture of progress.</p>','<p>It also enables Housemasters and personal tutors to help their students on the really important issues and in doing so to develop a stronger working relationship.</p>','<p>As well as being an inspirational environment, Hurtwood is also exceptionally supportive.</p>','<p>In both an academic and a pastoral sense Hurtwood teachers act much more as mentors than monitors and are there as needed to give counsel and a real-world perspective.</p>',5,48,49,50,51,52);
/*!40000 ALTER TABLE `LifeSupportivePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeSupportivePage_Live`
--

DROP TABLE IF EXISTS `LifeSupportivePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeSupportivePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `Paragraph6` mediumtext,
  `Paragraph7` mediumtext,
  `Paragraph8` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeSupportivePage_Live`
--

LOCK TABLES `LifeSupportivePage_Live` WRITE;
/*!40000 ALTER TABLE `LifeSupportivePage_Live` DISABLE KEYS */;
INSERT INTO `LifeSupportivePage_Live` VALUES (8,'<p>Hurtwood has the sort of teachers you always wished you’d had when you were younger.</p><p>They are A-level specialists teaching exclusively at sixth-form level. They are great communicators, are passionate about their chosen subject, and know how to inspire their students. They are also a vital part of a team that ensures students achieve their full potential, often far in excess of their own expectations.</p>','<p>As well as being an inspirational environment, Hurtwood is also exceptionally supportive.</p>','<p>Our unique system for monitoring academic progress is probably the single most important reason why our students do so well.</p>','<p>Contrary to the style of many other schools, Hurtwood does not believe that all students of sixth-form age are naturally equipped to manage their academic career by themselves.</p>','<p>It is effective on many fronts, keeping students on target and providing everyone involved – students, staff, school management and parents – with a permanently up-to-date picture of progress.</p>','<p>It also enables Housemasters and personal tutors to help their students on the really important issues and in doing so to develop a stronger working relationship.</p>','<p>As well as being an inspirational environment, Hurtwood is also exceptionally supportive.</p>','<p>In both an academic and a pastoral sense Hurtwood teachers act much more as mentors than monitors and are there as needed to give counsel and a real-world perspective.</p>',5,48,49,50,51,52);
/*!40000 ALTER TABLE `LifeSupportivePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LifeSupportivePage_versions`
--

DROP TABLE IF EXISTS `LifeSupportivePage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LifeSupportivePage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `Paragraph5` mediumtext,
  `Paragraph6` mediumtext,
  `Paragraph7` mediumtext,
  `Paragraph8` mediumtext,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `Photo5ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `Photo5ID` (`Photo5ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LifeSupportivePage_versions`
--

LOCK TABLES `LifeSupportivePage_versions` WRITE;
/*!40000 ALTER TABLE `LifeSupportivePage_versions` DISABLE KEYS */;
INSERT INTO `LifeSupportivePage_versions` VALUES (1,8,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,0,0,0,0),(2,8,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,0,0,0,0),(3,8,3,'<p>Hurtwood has the sort of teachers you always wished you’d had when you were younger.</p><p>They are A-level specialists teaching exclusively at sixth-form level. They are great communicators, are passionate about their chosen subject, and know how to inspire their students. They are also a vital part of a team that ensures students achieve their full potential, often far in excess of their own expectations.</p>','<p>As well as being an inspirational environment, Hurtwood is also exceptionally supportive.</p>','<p>Our unique system for monitoring academic progress is probably the single most important reason why our students do so well.</p>','<p>Contrary to the style of many other schools, Hurtwood does not believe that all students of sixth-form age are naturally equipped to manage their academic career by themselves.</p>','<p>It is effective on many fronts, keeping students on target and providing everyone involved – students, staff, school management and parents – with a permanently up-to-date picture of progress.</p>',NULL,NULL,NULL,5,0,0,0,0,0),(4,8,4,'<p>Hurtwood has the sort of teachers you always wished you’d had when you were younger.</p><p>They are A-level specialists teaching exclusively at sixth-form level. They are great communicators, are passionate about their chosen subject, and know how to inspire their students. They are also a vital part of a team that ensures students achieve their full potential, often far in excess of their own expectations.</p>','<p>As well as being an inspirational environment, Hurtwood is also exceptionally supportive.</p>','<p>Our unique system for monitoring academic progress is probably the single most important reason why our students do so well.</p>','<p>Contrary to the style of many other schools, Hurtwood does not believe that all students of sixth-form age are naturally equipped to manage their academic career by themselves.</p>','<p>It is effective on many fronts, keeping students on target and providing everyone involved – students, staff, school management and parents – with a permanently up-to-date picture of progress.</p>','<p>It also enables Housemasters and personal tutors to help their students on the really important issues and in doing so to develop a stronger working relationship.</p>','<p>As well as being an inspirational environment, Hurtwood is also exceptionally supportive.</p>','<p>In both an academic and a pastoral sense Hurtwood teachers act much more as mentors than monitors and are there as needed to give counsel and a real-world perspective.</p>',5,0,0,0,0,0),(5,8,5,'<p>Hurtwood has the sort of teachers you always wished you’d had when you were younger.</p><p>They are A-level specialists teaching exclusively at sixth-form level. They are great communicators, are passionate about their chosen subject, and know how to inspire their students. They are also a vital part of a team that ensures students achieve their full potential, often far in excess of their own expectations.</p>','<p>As well as being an inspirational environment, Hurtwood is also exceptionally supportive.</p>','<p>Our unique system for monitoring academic progress is probably the single most important reason why our students do so well.</p>','<p>Contrary to the style of many other schools, Hurtwood does not believe that all students of sixth-form age are naturally equipped to manage their academic career by themselves.</p>','<p>It is effective on many fronts, keeping students on target and providing everyone involved – students, staff, school management and parents – with a permanently up-to-date picture of progress.</p>','<p>It also enables Housemasters and personal tutors to help their students on the really important issues and in doing so to develop a stronger working relationship.</p>','<p>As well as being an inspirational environment, Hurtwood is also exceptionally supportive.</p>','<p>In both an academic and a pastoral sense Hurtwood teachers act much more as mentors than monitors and are there as needed to give counsel and a real-world perspective.</p>',5,48,49,50,51,52);
/*!40000 ALTER TABLE `LifeSupportivePage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginAttempt`
--

DROP TABLE IF EXISTS `LoginAttempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginAttempt`
--

LOCK TABLES `LoginAttempt` WRITE;
/*!40000 ALTER TABLE `LoginAttempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoginAttempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` VALUES (1,'Member','2016-04-01 16:42:55','2016-03-12 06:30:21','Default Admin',NULL,'admin','3969fe508039d4a1c323f54d4754348debbd2824','2016-04-04 16:42:55',NULL,NULL,7,'2016-04-04 18:35:44',NULL,NULL,NULL,NULL,NULL,NULL,'en_GB',0,NULL,NULL);
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberPassword`
--

DROP TABLE IF EXISTS `MemberPassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberPassword`
--

LOCK TABLES `MemberPassword` WRITE;
/*!40000 ALTER TABLE `MemberPassword` DISABLE KEYS */;
/*!40000 ALTER TABLE `MemberPassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsArticle`
--

DROP TABLE IF EXISTS `NewsArticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsArticle` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PublicationDate` date DEFAULT NULL,
  `ArticleHolderID` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Section1` mediumtext,
  `Section2` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ArticleHolderID` (`ArticleHolderID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `HeroImageID` (`HeroImageID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsArticle`
--

LOCK TABLES `NewsArticle` WRITE;
/*!40000 ALTER TABLE `NewsArticle` DISABLE KEYS */;
INSERT INTO `NewsArticle` VALUES (14,'2016-03-09',0,10,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed convallis augue ut leo pulvinar, sed bibendum neque congue. Nulla ullamcorper, tellus nec ultrices ultrices, orci massa pretium magna, in imperdiet lorem est vel lectus. Ut at volutpat metus. Nullam mauris nisl, cursus fermentum volutpat vitae, fermentum at odio. Donec eu convallis metus, sed aliquam ante. Praesent at placerat ante, eget blandit enim. Integer nunc eros, rhoncus scelerisque tortor id, vehicula congue sem.</p><p>Morbi volutpat egestas pretium. Maecenas tempus nec leo nec dictum. Suspendisse quis turpis at neque mattis dictum. Duis vel odio at enim molestie pharetra. Fusce eget mauris purus. Integer egestas at diam sit amet lobortis. Praesent non dui quis sem lacinia porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus eget justo gravida, lobortis magna in, pretium justo.</p><p> </p>','<blockquote>\n<p>Quisque dictum justo ut consectetur iaculis. Nullam et cursus mi. Aliquam eu malesuada elit. Maecenas vitae enim lorem. Nullam accumsan nulla nec tortor finibus commodo. Sed faucibus dapibus erat, lobortis pretium </p>\n</blockquote><p>Quisque dictum justo ut consectetur iaculis. Nullam et cursus mi. Aliquam eu malesuada elit. Maecenas vitae enim lorem. Nullam accumsan nulla nec tortor finibus commodo. Sed faucibus dapibus erat, lobortis pretium ante efficitur sit amet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla vel ipsum justo. Donec sagittis libero non mauris aliquam, eu lobortis tortor malesuada. Donec eu lacus sed dui imperdiet consequat sit amet eget ex. Pellentesque malesuada augue eros, nec euismod purus dapibus et.</p><p>Vestibulum tristique mauris eu diam efficitur pharetra. Nunc dapibus sagittis faucibus. Aliquam nec varius odio. Vestibulum aliquam at quam at ullamcorper. Nam a felis lacinia, mattis lacus eu, auctor sem. Nunc varius sollicitudin imperdiet. Duis viverra dui massa, vitae convallis ex bibendum sed. Sed justo nunc, bibendum at aliquet eget, sodales sit amet ante. Sed vestibulum tristique lorem. Nullam nec erat laoreet, efficitur massa cursus, efficitur felis. Nunc nibh enim, placerat nec tincidunt cursus, feugiat et ex. Sed sagittis varius semper. Mauris pharetra, leo ac imperdiet imperdiet, sapien felis fermentum eros, eget efficitur turpis quam eget eros.</p><p> </p>',60,61,62,93);
/*!40000 ALTER TABLE `NewsArticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsArticle_Live`
--

DROP TABLE IF EXISTS `NewsArticle_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsArticle_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PublicationDate` date DEFAULT NULL,
  `ArticleHolderID` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Section1` mediumtext,
  `Section2` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ArticleHolderID` (`ArticleHolderID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `HeroImageID` (`HeroImageID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsArticle_Live`
--

LOCK TABLES `NewsArticle_Live` WRITE;
/*!40000 ALTER TABLE `NewsArticle_Live` DISABLE KEYS */;
INSERT INTO `NewsArticle_Live` VALUES (14,'2016-03-09',0,10,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed convallis augue ut leo pulvinar, sed bibendum neque congue. Nulla ullamcorper, tellus nec ultrices ultrices, orci massa pretium magna, in imperdiet lorem est vel lectus. Ut at volutpat metus. Nullam mauris nisl, cursus fermentum volutpat vitae, fermentum at odio. Donec eu convallis metus, sed aliquam ante. Praesent at placerat ante, eget blandit enim. Integer nunc eros, rhoncus scelerisque tortor id, vehicula congue sem.</p><p>Morbi volutpat egestas pretium. Maecenas tempus nec leo nec dictum. Suspendisse quis turpis at neque mattis dictum. Duis vel odio at enim molestie pharetra. Fusce eget mauris purus. Integer egestas at diam sit amet lobortis. Praesent non dui quis sem lacinia porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus eget justo gravida, lobortis magna in, pretium justo.</p><p> </p>','<blockquote>\n<p>Quisque dictum justo ut consectetur iaculis. Nullam et cursus mi. Aliquam eu malesuada elit. Maecenas vitae enim lorem. Nullam accumsan nulla nec tortor finibus commodo. Sed faucibus dapibus erat, lobortis pretium </p>\n</blockquote><p>Quisque dictum justo ut consectetur iaculis. Nullam et cursus mi. Aliquam eu malesuada elit. Maecenas vitae enim lorem. Nullam accumsan nulla nec tortor finibus commodo. Sed faucibus dapibus erat, lobortis pretium ante efficitur sit amet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla vel ipsum justo. Donec sagittis libero non mauris aliquam, eu lobortis tortor malesuada. Donec eu lacus sed dui imperdiet consequat sit amet eget ex. Pellentesque malesuada augue eros, nec euismod purus dapibus et.</p><p>Vestibulum tristique mauris eu diam efficitur pharetra. Nunc dapibus sagittis faucibus. Aliquam nec varius odio. Vestibulum aliquam at quam at ullamcorper. Nam a felis lacinia, mattis lacus eu, auctor sem. Nunc varius sollicitudin imperdiet. Duis viverra dui massa, vitae convallis ex bibendum sed. Sed justo nunc, bibendum at aliquet eget, sodales sit amet ante. Sed vestibulum tristique lorem. Nullam nec erat laoreet, efficitur massa cursus, efficitur felis. Nunc nibh enim, placerat nec tincidunt cursus, feugiat et ex. Sed sagittis varius semper. Mauris pharetra, leo ac imperdiet imperdiet, sapien felis fermentum eros, eget efficitur turpis quam eget eros.</p><p> </p>',60,61,62,93);
/*!40000 ALTER TABLE `NewsArticle_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsArticle_versions`
--

DROP TABLE IF EXISTS `NewsArticle_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsArticle_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PublicationDate` date DEFAULT NULL,
  `ArticleHolderID` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  `Section1` mediumtext,
  `Section2` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `ArticleHolderID` (`ArticleHolderID`),
  KEY `HeroSectionID` (`HeroSectionID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `HeroImageID` (`HeroImageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsArticle_versions`
--

LOCK TABLES `NewsArticle_versions` WRITE;
/*!40000 ALTER TABLE `NewsArticle_versions` DISABLE KEYS */;
INSERT INTO `NewsArticle_versions` VALUES (1,14,3,'2016-03-09',0,10,NULL,NULL,0,0,0,0),(2,14,4,'2016-03-09',0,10,'<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MDBd/academic-1.jpg\" alt=\"academic-1.jpg\" width=\"600\" height=\"400\"></p>',NULL,0,0,0,0),(3,14,5,'2016-03-09',0,0,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed convallis augue ut leo pulvinar, sed bibendum neque congue. Nulla ullamcorper, tellus nec ultrices ultrices, orci massa pretium magna, in imperdiet lorem est vel lectus. Ut at volutpat metus. Nullam mauris nisl, cursus fermentum volutpat vitae, fermentum at odio. Donec eu convallis metus, sed aliquam ante. Praesent at placerat ante, eget blandit enim. Integer nunc eros, rhoncus scelerisque tortor id, vehicula congue sem.</p><p>Morbi volutpat egestas pretium. Maecenas tempus nec leo nec dictum. Suspendisse quis turpis at neque mattis dictum. Duis vel odio at enim molestie pharetra. Fusce eget mauris purus. Integer egestas at diam sit amet lobortis. Praesent non dui quis sem lacinia porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus eget justo gravida, lobortis magna in, pretium justo.</p><p> </p>','<blockquote>\n<p>Quisque dictum justo ut consectetur iaculis. Nullam et cursus mi. Aliquam eu malesuada elit. Maecenas vitae enim lorem. Nullam accumsan nulla nec tortor finibus commodo. Sed faucibus dapibus erat, lobortis pretium </p>\n</blockquote><p>Quisque dictum justo ut consectetur iaculis. Nullam et cursus mi. Aliquam eu malesuada elit. Maecenas vitae enim lorem. Nullam accumsan nulla nec tortor finibus commodo. Sed faucibus dapibus erat, lobortis pretium ante efficitur sit amet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla vel ipsum justo. Donec sagittis libero non mauris aliquam, eu lobortis tortor malesuada. Donec eu lacus sed dui imperdiet consequat sit amet eget ex. Pellentesque malesuada augue eros, nec euismod purus dapibus et.</p><p>Vestibulum tristique mauris eu diam efficitur pharetra. Nunc dapibus sagittis faucibus. Aliquam nec varius odio. Vestibulum aliquam at quam at ullamcorper. Nam a felis lacinia, mattis lacus eu, auctor sem. Nunc varius sollicitudin imperdiet. Duis viverra dui massa, vitae convallis ex bibendum sed. Sed justo nunc, bibendum at aliquet eget, sodales sit amet ante. Sed vestibulum tristique lorem. Nullam nec erat laoreet, efficitur massa cursus, efficitur felis. Nunc nibh enim, placerat nec tincidunt cursus, feugiat et ex. Sed sagittis varius semper. Mauris pharetra, leo ac imperdiet imperdiet, sapien felis fermentum eros, eget efficitur turpis quam eget eros.</p><p> </p>',0,0,0,0),(4,14,6,'2016-03-09',0,0,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed convallis augue ut leo pulvinar, sed bibendum neque congue. Nulla ullamcorper, tellus nec ultrices ultrices, orci massa pretium magna, in imperdiet lorem est vel lectus. Ut at volutpat metus. Nullam mauris nisl, cursus fermentum volutpat vitae, fermentum at odio. Donec eu convallis metus, sed aliquam ante. Praesent at placerat ante, eget blandit enim. Integer nunc eros, rhoncus scelerisque tortor id, vehicula congue sem.</p><p>Morbi volutpat egestas pretium. Maecenas tempus nec leo nec dictum. Suspendisse quis turpis at neque mattis dictum. Duis vel odio at enim molestie pharetra. Fusce eget mauris purus. Integer egestas at diam sit amet lobortis. Praesent non dui quis sem lacinia porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus eget justo gravida, lobortis magna in, pretium justo.</p><p> </p>','<blockquote>\n<p>Quisque dictum justo ut consectetur iaculis. Nullam et cursus mi. Aliquam eu malesuada elit. Maecenas vitae enim lorem. Nullam accumsan nulla nec tortor finibus commodo. Sed faucibus dapibus erat, lobortis pretium </p>\n</blockquote><p>Quisque dictum justo ut consectetur iaculis. Nullam et cursus mi. Aliquam eu malesuada elit. Maecenas vitae enim lorem. Nullam accumsan nulla nec tortor finibus commodo. Sed faucibus dapibus erat, lobortis pretium ante efficitur sit amet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla vel ipsum justo. Donec sagittis libero non mauris aliquam, eu lobortis tortor malesuada. Donec eu lacus sed dui imperdiet consequat sit amet eget ex. Pellentesque malesuada augue eros, nec euismod purus dapibus et.</p><p>Vestibulum tristique mauris eu diam efficitur pharetra. Nunc dapibus sagittis faucibus. Aliquam nec varius odio. Vestibulum aliquam at quam at ullamcorper. Nam a felis lacinia, mattis lacus eu, auctor sem. Nunc varius sollicitudin imperdiet. Duis viverra dui massa, vitae convallis ex bibendum sed. Sed justo nunc, bibendum at aliquet eget, sodales sit amet ante. Sed vestibulum tristique lorem. Nullam nec erat laoreet, efficitur massa cursus, efficitur felis. Nunc nibh enim, placerat nec tincidunt cursus, feugiat et ex. Sed sagittis varius semper. Mauris pharetra, leo ac imperdiet imperdiet, sapien felis fermentum eros, eget efficitur turpis quam eget eros.</p><p> </p>',60,61,62,93);
/*!40000 ALTER TABLE `NewsArticle_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsCategory`
--

DROP TABLE IF EXISTS `NewsCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsCategory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('NewsCategory') DEFAULT 'NewsCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `NewsHolderID` int(11) NOT NULL DEFAULT '0',
  `Slug` varchar(50) DEFAULT NULL,
  `PageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `NewsHolderID` (`NewsHolderID`),
  KEY `ClassName` (`ClassName`),
  KEY `PageID` (`PageID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsCategory`
--

LOCK TABLES `NewsCategory` WRITE;
/*!40000 ALTER TABLE `NewsCategory` DISABLE KEYS */;
INSERT INTO `NewsCategory` VALUES (1,'NewsCategory','2016-03-28 20:22:02','2016-03-28 13:59:32','ACADEMIC',13,'academic',0),(2,'NewsCategory','2016-03-28 21:00:26','2016-03-28 14:00:17','RESULT',13,'result',0),(3,'NewsCategory','2016-03-28 21:00:19','2016-03-28 14:00:25','A-LEVELS',13,'a-levels',0);
/*!40000 ALTER TABLE `NewsCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsHolder`
--

DROP TABLE IF EXISTS `NewsHolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsHolder` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsHolder`
--

LOCK TABLES `NewsHolder` WRITE;
/*!40000 ALTER TABLE `NewsHolder` DISABLE KEYS */;
INSERT INTO `NewsHolder` VALUES (13,11);
/*!40000 ALTER TABLE `NewsHolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsHolder_Categories`
--

DROP TABLE IF EXISTS `NewsHolder_Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsHolder_Categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NewsHolderID` int(11) NOT NULL DEFAULT '0',
  `ArticleCategoryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `NewsHolderID` (`NewsHolderID`),
  KEY `ArticleCategoryID` (`ArticleCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsHolder_Categories`
--

LOCK TABLES `NewsHolder_Categories` WRITE;
/*!40000 ALTER TABLE `NewsHolder_Categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewsHolder_Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsHolder_Live`
--

DROP TABLE IF EXISTS `NewsHolder_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsHolder_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsHolder_Live`
--

LOCK TABLES `NewsHolder_Live` WRITE;
/*!40000 ALTER TABLE `NewsHolder_Live` DISABLE KEYS */;
INSERT INTO `NewsHolder_Live` VALUES (13,11);
/*!40000 ALTER TABLE `NewsHolder_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsHolder_versions`
--

DROP TABLE IF EXISTS `NewsHolder_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsHolder_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsHolder_versions`
--

LOCK TABLES `NewsHolder_versions` WRITE;
/*!40000 ALTER TABLE `NewsHolder_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewsHolder_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPage`
--

DROP TABLE IF EXISTS `NewsPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PublicationDate` date DEFAULT NULL,
  `Section1` mediumtext,
  `Section2` mediumtext,
  `ArticleHolderID` int(11) NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ArticleHolderID` (`ArticleHolderID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsPage`
--

LOCK TABLES `NewsPage` WRITE;
/*!40000 ALTER TABLE `NewsPage` DISABLE KEYS */;
INSERT INTO `NewsPage` VALUES (14,'2016-03-20',NULL,NULL,0,93,0,0,0),(15,'2016-03-27','<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p><p> </p>','<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p><blockquote>\n<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p>\n<p> </p>\n</blockquote>',0,74,46,62,57),(16,'2016-03-31','<p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p><blockquote>\n<p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p>\n<p> </p>\n</blockquote>','<p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p><p> </p><p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p><p> </p><p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p><p> </p>',0,59,41,6,77);
/*!40000 ALTER TABLE `NewsPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPage_Categories`
--

DROP TABLE IF EXISTS `NewsPage_Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsPage_Categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NewsPageID` int(11) NOT NULL DEFAULT '0',
  `ArticleCategoryID` int(11) NOT NULL DEFAULT '0',
  `NewsCategoryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `NewsPageID` (`NewsPageID`),
  KEY `ArticleCategoryID` (`ArticleCategoryID`),
  KEY `NewsCategoryID` (`NewsCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsPage_Categories`
--

LOCK TABLES `NewsPage_Categories` WRITE;
/*!40000 ALTER TABLE `NewsPage_Categories` DISABLE KEYS */;
INSERT INTO `NewsPage_Categories` VALUES (2,14,0,2),(3,15,0,1),(4,15,0,3),(5,16,0,3);
/*!40000 ALTER TABLE `NewsPage_Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPage_Live`
--

DROP TABLE IF EXISTS `NewsPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PublicationDate` date DEFAULT NULL,
  `Section1` mediumtext,
  `Section2` mediumtext,
  `ArticleHolderID` int(11) NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ArticleHolderID` (`ArticleHolderID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsPage_Live`
--

LOCK TABLES `NewsPage_Live` WRITE;
/*!40000 ALTER TABLE `NewsPage_Live` DISABLE KEYS */;
INSERT INTO `NewsPage_Live` VALUES (14,'2016-03-20',NULL,NULL,0,93,0,0,0),(15,'2016-03-27','<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p><p> </p>','<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p><blockquote>\n<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p>\n<p> </p>\n</blockquote>',0,74,46,62,57),(16,'2016-03-31','<p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p><blockquote>\n<p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p>\n<p> </p>\n</blockquote>','<p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p><p> </p><p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p><p> </p><p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p><p> </p>',0,59,41,6,77);
/*!40000 ALTER TABLE `NewsPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPage_Tags`
--

DROP TABLE IF EXISTS `NewsPage_Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsPage_Tags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NewsPageID` int(11) NOT NULL DEFAULT '0',
  `NewsTagID` int(11) NOT NULL DEFAULT '0',
  `TagID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `NewsPageID` (`NewsPageID`),
  KEY `NewsTagID` (`NewsTagID`),
  KEY `TagID` (`TagID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsPage_Tags`
--

LOCK TABLES `NewsPage_Tags` WRITE;
/*!40000 ALTER TABLE `NewsPage_Tags` DISABLE KEYS */;
INSERT INTO `NewsPage_Tags` VALUES (1,14,1,0),(2,16,2,0),(3,16,3,0),(4,16,6,0),(5,15,5,0),(6,14,0,1),(7,14,0,2),(8,14,0,3),(9,14,0,4);
/*!40000 ALTER TABLE `NewsPage_Tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPage_versions`
--

DROP TABLE IF EXISTS `NewsPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PublicationDate` date DEFAULT NULL,
  `Section1` mediumtext,
  `Section2` mediumtext,
  `ArticleHolderID` int(11) NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `ArticleHolderID` (`ArticleHolderID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsPage_versions`
--

LOCK TABLES `NewsPage_versions` WRITE;
/*!40000 ALTER TABLE `NewsPage_versions` DISABLE KEYS */;
INSERT INTO `NewsPage_versions` VALUES (1,14,7,NULL,NULL,NULL,0,0,0,0,0),(2,14,8,'2016-03-01',NULL,NULL,0,0,0,0,0),(3,14,9,'2016-03-01',NULL,NULL,0,93,0,0,0),(4,14,10,'2016-03-01',NULL,NULL,0,93,0,0,0),(5,14,11,'2016-03-20',NULL,NULL,0,93,0,0,0),(6,15,1,NULL,NULL,NULL,0,0,0,0,0),(7,15,2,'2016-03-27','<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p><p> </p>','<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p><blockquote>\n<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p>\n<p> </p>\n</blockquote>',0,0,0,0,0),(8,15,3,'2016-03-27','<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p><p> </p>','<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p><blockquote>\n<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p>\n<p> </p>\n</blockquote>',0,74,0,0,0),(9,15,4,'2016-03-27','<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p><p> </p>','<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p><blockquote>\n<p>Donec ut vestibulum augue, et vulputate est. Morbi sed lacinia sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin viverra, dolor non consectetur consequat, eros lectus lacinia turpis, et porttitor nisi risus sed felis. Suspendisse potenti. Quisque vel vehicula risus. Vivamus velit neque, imperdiet vel pellentesque at, semper at eros.</p>\n<p> </p>\n</blockquote>',0,74,46,62,57),(10,16,1,NULL,NULL,NULL,0,0,0,0,0),(11,16,2,'2016-03-31','<p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p><blockquote>\n<p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p>\n<p> </p>\n</blockquote>','<p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p><p> </p><p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p><p> </p><p>Nunc eget sapien sed urna pellentesque gravida egestas vitae lorem. Pellentesque sed nisl vel ante cursus sagittis. Vestibulum non libero porttitor, euismod sem non, feugiat nibh. Quisque viverra, odio eget finibus finibus, lacus sapien maximus quam, sed molestie enim diam ut orci. Duis at finibus ex, a fringilla sapien. Curabitur in nunc eget felis posuere lacinia. Aliquam a interdum libero.</p><p> </p>',0,59,41,6,77);
/*!40000 ALTER TABLE `NewsPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsTag`
--

DROP TABLE IF EXISTS `NewsTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsTag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('NewsTag') DEFAULT 'NewsTag',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Slug` varchar(50) DEFAULT NULL,
  `NewsHolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `NewsHolderID` (`NewsHolderID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsTag`
--

LOCK TABLES `NewsTag` WRITE;
/*!40000 ALTER TABLE `NewsTag` DISABLE KEYS */;
INSERT INTO `NewsTag` VALUES (1,'NewsTag','2016-03-31 13:00:12','2016-03-31 13:00:12','University Life','university-life',13),(2,'NewsTag','2016-03-31 13:00:55','2016-03-31 13:00:55','General','general',13),(3,'NewsTag','2016-03-31 13:01:12','2016-03-31 13:01:12','Academic','academic',13),(4,'NewsTag','2016-03-31 13:01:26','2016-03-31 13:01:26','A-Level','a-level',13),(5,'NewsTag','2016-03-31 13:01:43','2016-03-31 13:01:43','Alumni','alumni',13),(6,'NewsTag','2016-03-31 13:01:59','2016-03-31 13:01:59','Fashion','fashion',13);
/*!40000 ALTER TABLE `NewsTag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permission`
--

DROP TABLE IF EXISTS `Permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permission`
--

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;
INSERT INTO `Permission` VALUES (1,'Permission','2016-03-12 06:30:21','2016-03-12 06:30:21','CMS_ACCESS_CMSMain',0,1,1),(2,'Permission','2016-03-12 06:30:21','2016-03-12 06:30:21','CMS_ACCESS_AssetAdmin',0,1,1),(3,'Permission','2016-03-12 06:30:21','2016-03-12 06:30:21','CMS_ACCESS_ReportAdmin',0,1,1),(4,'Permission','2016-03-12 06:30:21','2016-03-12 06:30:21','SITETREE_REORGANISE',0,1,1),(5,'Permission','2016-03-12 06:30:21','2016-03-12 06:30:21','ADMIN',0,1,2);
/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionRole`
--

DROP TABLE IF EXISTS `PermissionRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionRole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionRole`
--

LOCK TABLES `PermissionRole` WRITE;
/*!40000 ALTER TABLE `PermissionRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionRoleCode`
--

DROP TABLE IF EXISTS `PermissionRoleCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionRoleCode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionRoleCode`
--

LOCK TABLES `PermissionRoleCode` WRITE;
/*!40000 ALTER TABLE `PermissionRoleCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRoleCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person`
--

DROP TABLE IF EXISTS `Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Person') DEFAULT 'Person',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `AlumniHallOfFamePageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `ClassName` (`ClassName`),
  KEY `AlumniHallOfFamePageID` (`AlumniHallOfFamePageID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
INSERT INTO `Person` VALUES (1,'Person','2016-03-31 14:46:02','2016-03-31 14:42:38','Nikki Amuka-Bird','<p>Emily\'s career has gone from strength to strength since she left Hurtwood in 2001. She was signed up with agent Ken Mcreddie after we invited him to see her in a show written by another ex-student, Paul Sellar (Hurtwood 1986).</p><p>Within months she was sharing the stage with Dame Judi Dench in The Royal Family, directed by Trevor Nunn, before breaking into film with her role as Tamsin in the 2004 British movie My Summer of Love, for which she shared an Evening Standard British Film Award for Most Promising Newcomer with co-star Nathalie Press.</p><p>In 2005 she co-starred with Bill Nighy and Miranda Richardson in the British TV drama Gideon\'s Daughter, for which she won a Golden Globe, before going on to star opposite Meryl Streep and Anne Hathaway in the box-office success The Devil Wears Prada, for which she earned a BAFTA nomination.</p><p>Her career continued with the title role in Young Victoria, The Sunshine Cleaning, and the re-make of \'The Wolfman\' starring alongside Benecio Del Toro and Anthony Hopkins. Other credits now include Curiosity, Gulliver\'s Travels, voicing Angelina\'s mother in the TV series Angelina Ballerina, The Adjustment Bureau, Salmon Fishing in the Yemen (alongside fellow ex-Hurtwood actor Tom Mison), The five-Year Engagement, Looper, The Edge of Tomorrow with Tom Cruise, All You Need Is Kill, and a treasured guest spot with The Muppets. She also features as the Baker’s Wife in the film adaptation of Sondheim’s Into the Woods.</p><p>She is also the ambassadress of the new Yves Saint Laurent fragrance, Opium.</p>',141,142,143,26);
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhotoBlock`
--

DROP TABLE IF EXISTS `PhotoBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhotoBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PhotoBlock') DEFAULT 'PhotoBlock',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Caption` mediumtext,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `IconID` int(11) NOT NULL DEFAULT '0',
  `Section` varchar(50) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`),
  KEY `ClassName` (`ClassName`),
  KEY `IconID` (`IconID`),
  KEY `PageID` (`PageID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhotoBlock`
--

LOCK TABLES `PhotoBlock` WRITE;
/*!40000 ALTER TABLE `PhotoBlock` DISABLE KEYS */;
INSERT INTO `PhotoBlock` VALUES (1,'PhotoBlock','2016-04-04 12:28:49','2016-04-04 12:28:49','<p>How Dance is taught at Hurtwood</p>',161,0,NULL,0,0),(3,'PhotoBlock',NULL,NULL,'<p>How Dance is taught at Hurtwood</p>',162,0,'Section1',0,0),(8,'PhotoBlock',NULL,NULL,NULL,164,0,NULL,0,0),(9,'PhotoBlock',NULL,NULL,NULL,165,0,NULL,0,0);
/*!40000 ALTER TABLE `PhotoBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProcessStep`
--

DROP TABLE IF EXISTS `ProcessStep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProcessStep` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('ProcessStep') DEFAULT 'ProcessStep',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` mediumtext,
  `AdmissionsProcessPageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `AdmissionsProcessPageID` (`AdmissionsProcessPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProcessStep`
--

LOCK TABLES `ProcessStep` WRITE;
/*!40000 ALTER TABLE `ProcessStep` DISABLE KEYS */;
INSERT INTO `ProcessStep` VALUES (1,'ProcessStep','2016-04-01 21:03:58','2016-04-01 21:03:58','CONSIDERATION OF APPLICANTS','<p>Applicants will be considered for a place at Hurtwood House when the application form is returned/submitted online with the registration fee of £1000.</p>',30),(2,'ProcessStep','2016-04-01 21:06:26','2016-04-01 21:06:26','AVAILABILITY  OF PLACES','<p>Places are subject to availability and the student satisfying the admissions requirements at the time. The criteria for admission are supplied prior to interview and are available <a href=\"#\">here</a>.</p>',30),(3,'ProcessStep','2016-04-01 21:08:36','2016-04-01 21:07:50','IF NO PLACES   ARE AVAILABLE','<p><span>If a place for the prospective student is not made available by the school, the registration fee will be returned to the parent in full.</span></p>',30),(4,'ProcessStep','2016-04-01 21:31:47','2016-04-01 21:31:47','CONFIRMING A PLACEMENT','<p>If the school confirms a place for the student, £300 of the registration fee will be retained as a non-refundable confirmation fee and the balance of the registration fee will be held as a deposit in the general funds of the school and will be transferred to the Hurtwood House Foundation after deduction of any sums due to the school on leaving, unless the parents request the balance is repaid to them. Such requests should be made in writing addressed to the Headmaster before the last day of December in the year the student leaves the school.</p>',30),(5,'ProcessStep','2016-04-01 21:32:54','2016-04-01 21:32:54','CONFIRMING A  PLACEMENT','<p><span>In the event of cancellation of a place which has been accepted, no part of the £1000 will be refundable. (See also item 74 of our </span><a href=\"admissions/admissions-process/\">Terms and Conditions</a><span> re. cancelling acceptance).</span></p>',30);
/*!40000 ALTER TABLE `ProcessStep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quote`
--

DROP TABLE IF EXISTS `Quote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Quote` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Quote') DEFAULT 'Quote',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Content` mediumtext,
  `Author` varchar(255) DEFAULT NULL,
  `PageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `PageID` (`PageID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quote`
--

LOCK TABLES `Quote` WRITE;
/*!40000 ALTER TABLE `Quote` DISABLE KEYS */;
INSERT INTO `Quote` VALUES (1,'Quote','2016-03-29 20:31:00','2016-03-29 20:31:00','<p>“Whilst I have been there it has been a great experience. A perfect mix of academics and social life! And above all the faculty is one of the best I have ever experienced.” </p>','Roman Kauls, Past Student',19);
/*!40000 ALTER TABLE `Quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage`
--

DROP TABLE IF EXISTS `RedirectorPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage`
--

LOCK TABLES `RedirectorPage` WRITE;
/*!40000 ALTER TABLE `RedirectorPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_Live`
--

DROP TABLE IF EXISTS `RedirectorPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage_Live`
--

LOCK TABLES `RedirectorPage_Live` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_versions`
--

DROP TABLE IF EXISTS `RedirectorPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RedirectorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage_versions`
--

LOCK TABLES `RedirectorPage_versions` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Section`
--

DROP TABLE IF EXISTS `Section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Section') DEFAULT 'Section',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Paragraph1` mediumtext,
  `Paragraph2` mediumtext,
  `Paragraph3` mediumtext,
  `Paragraph4` mediumtext,
  `CTA` varchar(50) DEFAULT NULL,
  `Photo1ID` int(11) NOT NULL DEFAULT '0',
  `Photo2ID` int(11) NOT NULL DEFAULT '0',
  `Photo3ID` int(11) NOT NULL DEFAULT '0',
  `Photo4ID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0',
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Photo1ID` (`Photo1ID`),
  KEY `Photo2ID` (`Photo2ID`),
  KEY `Photo3ID` (`Photo3ID`),
  KEY `Photo4ID` (`Photo4ID`),
  KEY `PageID` (`PageID`),
  KEY `LinkToID` (`LinkToID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Section`
--

LOCK TABLES `Section` WRITE;
/*!40000 ALTER TABLE `Section` DISABLE KEYS */;
INSERT INTO `Section` VALUES (1,'Section','2016-03-29 12:27:25','2016-03-29 12:22:27','DRIVEN BY A PASSION FOR CREATIVITY AND ACADEMIC EXCELLENCE','<p>Hurtwood has combined the best elements of the traditional boarding school system with the best elements of the modern sixth form college to create a wholly unique and individual establishment.</p><p>This is a school driven by a passion for creativity and a respect for academic rigour, a small school with a distinctive voice which is less formal and less institutional than traditional public schools.</p>','<p>Hurtwood has combined the best elements of the traditional boarding school system with the best elements of the modern sixth form college to create a wholly unique and individual establishment.</p>','<p>While breaking new ground educationally, it has retained traditional values and has created an inspirational but safe stepping-stone between school and university.</p>',NULL,'DISCOVER OUR ACADEMIC STRENGTH',15,21,0,0,1,7),(2,'Section','2016-03-29 12:30:03','2016-03-29 12:30:03','NEW STUDENTS NEW CHALLENGES','<p><span>The students who come to Hurtwood House have usually been happy and successful at their former school, but they are now ready for fresh challenges.</span></p>','<p><strong>They find a sixth form which offers them a wider range of subjects and more flexibility of choice; a sixth form that is academically strong.</strong></p><p>Hurtwood has one of the largest and most powerful sixth forms in the country and one of the finest academic records.</p>','<p><span>They have reached an age when they feel that the learning methods and the lifestyle that worked for them when they were younger are no longer going to be as effective for them in the sixth form. At Hurtwood, they discover an intellectual and social environment closer to that of a university.</span></p>','<p><span>All the students find Hurtwood a particularly easy school to join from a social point of view, because half of the school is new every year. The new students all arrive together and do not face the problem of joining a community where friendships have already been established over a period of many years.</span></p>',NULL,23,43,25,0,1,0),(3,'Section','2016-03-29 12:33:40','2016-03-29 12:33:40','LEARNING TO MAKE THE  RIGHT CHOICES','<p>Learning to make the right choices in life is an essential part of personal development. So many schools seek to push students down well-trodden paths into established channels.</p><p> </p>','<p>Learning to make the right choices in life is an essential part of personal development. So many schools seek to push students down well-trodden paths into established channels.</p><p> </p>','<p class=\"wow slideInUp animated\" data-wow-duration=\"700ms\" data-wow-delay=\"600ms\">Challenge is an important part of what Hurtwood is all about. Students have to learn to cope with change, to discover themselves and to learn how to get the best out of themselves. It is through rising to these challenges that their characters and personalities are shaped and defined.</p><p> </p>','<div id=\"home-3\" class=\"section skew-bg-solid home-3\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-xs-12 floating-content\">\n<div class=\"text right-align font-white mt40 _elem-7\">\n<p class=\"wow slideInUp animated\" data-wow-duration=\"700ms\" data-wow-delay=\"600ms\">When you visit, you are likely to be struck by the maturity of Hurtwood students and by the fact that they are already moving forward in life as happy, well-rounded and self-confident young adults.</p>\n</div>\n</div>\n</div>\n</div>\n</div>',NULL,40,18,0,0,1,6),(4,'Section','2016-03-29 20:02:36','2016-03-29 19:51:00','ACCOUNTING','<h4>Accountancy is a popular and highly successful A-Level subject, one that is recognised as being truly ‘hands-on’ for the student because it deals with the practicalities of business analysis and decision-making that is essential to any company.</h4><p class=\"mt20\">It may surprise some to see Accounting offered as an A-Level subject. You can, of course, qualify as an Accountant without taking A-Level, but students who are not sure of their future careers, although they have an inkling that they want to do something in business or commerce, find that Accounting gives a practical perspective to their studies and enables them to get to taste the sharply realistic techniques of financial and management accounting which are the foundation upon which all businesses are run.</p>',NULL,NULL,NULL,'FIND OUT MORE',0,0,0,0,0,7),(5,'Section','2016-03-29 20:05:25','2016-03-29 20:05:25','ACCOUNTING','<p>Business and Commerce is a highly relevant and fast-moving area in which to study and is constantly evolving to reflect the changes that are happening on an almost-daily basis in the world.</p><p>Never before have the worlds of business and commerce so affected the lives of the average person, from the obvious effects of the credit crunch to the global financing of terrorists, the movements of governments and companies as they look to control dwindling resources and their reactions as they endeavour to respond to environmental issues.</p>',NULL,NULL,NULL,'FIND OUT MORE',0,0,0,0,19,0),(6,'Section','2016-03-29 20:19:53','2016-03-29 20:12:33','BUSINESS  STUDIES','<h4>Taking the right decisions is the key factor which determines business success. The course concentrates on how managers can take effective decisions and the information they need to make the right choices.</h4><p class=\"mt20\">How does Coca-Cola ‘think globally but act locally? Is the Body Shop right to adopt ‘green’ policies or would it make higher profits if it sold less environmentally-friendly products? Should BP be concerned about the company’s health and safety record? Students are encouraged to analyse and discuss these business situations to provide an insight into the true core of the subject – decision-making within organisations.</p>',NULL,NULL,NULL,'View Business Studies',0,0,0,0,19,7),(7,'Section','2016-03-29 20:23:28','2016-03-29 20:23:28','ECONOMICS','<h4>Economics is an academic A-Level highly valued by universities, but it is also a subject that deals with vital matters concerning all of our daily lives.</h4><p>This is not a theoretical, text-book subject, but one that can be observed in action every day in the newspapers and on TV programmes. Indeed, events mean that up-to-the-minute changes are monitored by frequently issued economics magazines and the internet. In short, Economics is an interesting, topical and popular A-Level.</p>',NULL,NULL,NULL,'Discover Economics',99,100,101,0,19,7),(8,'Section','2016-03-29 21:11:59','2016-03-29 21:11:59','DANCE','<h4>A passion? A hobby? A career?</h4><p>Whether it is classical ballet, lyrical jazz, music theatre, contemporary, tap, flaminco, pas de deux, modern, commecial hip-hop or Bollywood; whether it is for fitness or for fun; and whether it is curricular or extra-curricular, Hurtwood offers an extraordinarily rich and varied diet of dance styles and techniques.</p>',NULL,NULL,NULL,'DISCOVER DANCE',0,0,0,0,20,7),(9,'Section','2016-03-29 21:18:14','2016-03-29 21:18:14','DRAMA','<h3>WE’VE TAKEN DRAMA TO A STANDARD PREVIOUSLY THOUGHT UNACHIEVABLE</h3>','<h4>Hurtwood has the largest and most professional theatre department of any school in the country.</h4><p>Over a dozen hands-on theatre practitioners challenge the students to work to professional standards in an atmosphere of creative collaboration.</p><p>Working with such seasoned professionals means high expectations and a demanding workload, but offers the opportunity to perform with the best at the very highest level.</p>',NULL,NULL,'EXPLORE THEATRE STUDIES',105,0,0,0,20,7),(10,'Section','2016-03-29 21:23:01','2016-03-29 21:23:01','MEDIA','<h4>Hurtwood provides a media education which is dynamic, provocative and rewarding –  and unparalleled at this level.</h4><p>With state-of-the-art technology and high levels of expertise and instruction, students are given the freedom to be creative and the tools to achieve at the highest level.</p>',NULL,NULL,NULL,'MEDIA STUDIES',106,107,0,0,20,7),(11,'Section','2016-03-29 21:26:00','2016-03-29 21:26:00','ART','<h4>We have one of the most successful and exciting Art &amp; Design, Textiles and Photography departments in the country.</h4><p>Expectations are high. The atmosphere is stimulating and vibrant and students produce portfolios rich in their diversity and creativity and of extremely high quality.</p>',NULL,NULL,NULL,'EXPLORE ART',108,109,110,111,20,7),(12,'Section','2016-03-29 21:34:40','2016-03-29 21:34:40','TEXTILES','<h4>We believe that students can, through careful guidance and clear demonstrations, be taught a broad range of diverse textile techniques, including basic skills of drawing and observation.</h4><p>We have high expectations of our students and this is reflected by the excellent examination results that have been achieved and the high percentage of students that gain access to Foundation and Degree courses in Art and Design both in the UK and abroad.</p>',NULL,NULL,NULL,'TUNE IN TO TEXTILES',112,113,0,0,20,0),(13,'Section','2016-03-29 21:37:25','2016-03-29 21:37:25','MUSIC','<h4>Hurtwood attracts a vast amount of musical talent because of the outstanding opportunities it affords.</h4><p>Elaborately staged concerts and musical showcases give singers the opportunity to perform with professional musicians in front of audiences which often include agents and record companies. More than 100 of our students take music and singing lessons, and many a musical career has started here.</p>',NULL,NULL,NULL,'DISCOVER MUSIC',114,0,0,0,20,0),(14,'Section','2016-03-29 22:13:07','2016-03-29 22:13:07','ENGLISH  LITERATURE','<h4>Accountancy is a popular and highly successful A-Level subject, one that is recognised as being truly ‘hands-on’ for the student because it deals with the practicalities of business analysis and decision-making that is essential to any company.</h4><p class=\"mt20\">It may surprise some to see Accounting offered as an A-Level subject. You can, of course, qualify as an Accountant without taking A-Level, but students who are not sure of their future careers, although they have an inkling that they want to do something in business or commerce, find that Accounting gives a practical perspective to their studies and enables them to get to taste the sharply realistic techniques of financial and management accounting which are the foundation upon which all businesses are run.</p>',NULL,NULL,NULL,'FIND OUT MORE',116,0,0,0,21,0),(15,'Section','2016-03-29 22:17:00','2016-03-29 22:17:00','HISTORY','<h3>TEACHING TAKES PLACE IN SMALL CLASSES OF BETWEEN 10 AND 12 STUDENTS</h3>','<h4>Debate and discussion are absolutely essential ingredients of good history and students are very much encouraged to take part in these activities.</h4><p class=\"mt20\">A feature of the A-level course at Hurtwood House is the way in which students are able to learn about the subject from visiting speakers, by going to subject conferences and by visits to places such as the Imperial War Museum where specialist information is available.</p>',NULL,NULL,'EXPLORE HISTORY',117,118,0,0,21,0),(16,'Section','2016-03-29 22:19:25','2016-03-29 22:19:25','GEOGRAPHY','<h4>If you are interested in the world around you, in explaining how our planet affects us and how we impact upon it – then A Level Geography is for you!</h4><p>Studying AS and A Level Geography will give you a unique opportunity to explore the human, physical and environmental interactions of our planet. It is a dynamic discipline which seeks to explain physical landforms and phenomena along with giving us a clearer insight into how human activities are shaping the characteristics of our world.</p>',NULL,NULL,NULL,'GEOGRAPHY',119,120,0,0,21,0),(17,'Section','2016-03-29 22:25:48','2016-03-29 22:25:12','SOCIOLOGY','<h4>Teaching a subject such as Sociology requires an approach that manages to avoid the pitfalls of woolly thinking and uninformed opinion.</h4><p>At Hurtwood House the methods used are highly effective, with students working to a structured weekly worksheet and combining this with an active-learning situation in the classroom. This is where the group gain their knowledge of a topic and research it in depth and then discuss it fully.</p>',NULL,NULL,NULL,'EXPLORE SOCIOLOGY',121,122,123,124,21,0),(18,'Section','2016-03-29 22:27:48','2016-03-29 22:27:48','PSYCHOLOGY','<h4>Let us provoke an awareness of the variety and complexity of the human mind, human behaviour and human relationships.</h4><p class=\"mt20\">A-level Psychology offers students the chance to get to grips with these issues among others. It is a fascinating and intriguing subject that has the potential to really change the way you think and look at the world and the people in it. It will promote understanding of self, other people, moral actions and thoughts as well as cultural differences/similarities.</p>',NULL,NULL,NULL,'EXPLORE PSYCHOLOGY',0,0,0,0,21,0),(19,'Section','2016-03-29 22:33:04','2016-03-29 22:33:04','SPANISH','<h4>Spanish teaching is based around a range of activities which are designed to help students learn the language in a dynamic, exciting classroom atmosphere.</h4><p class=\"mt20\">Students have at least six hours contact time a week with our native speaking teachers and they make excellent progress as a result. By the final examinations, all students are expected to have the confidence and competence to communicate effectively and accurately in Spanish.</p>',NULL,NULL,NULL,'DISCOVER SPANISH',125,0,0,0,21,0),(20,'Section','2016-03-29 22:35:21','2016-03-29 22:35:21','FRENCH','<h4>Bonjour et bienvenue à tous!</h4><p class=\"mt20\">This course encourages you to develop an understanding and to communicate confidently, clearly and imaginatively in French through both the spoken and written word, using increasingly accurate, complex and varied language while developing critical insights into, and contact with, contemporary France, its cultural background and heritage.</p>',NULL,NULL,NULL,'DISCOVER FRENCH',126,0,0,0,21,0),(21,'Section','2016-03-29 22:50:25','2016-03-29 22:50:25','BIOLOGY','<h4>Biology is very much a ‘living’ science and for that reason, the approach to the subject places a strong emphasis on the lessons that can be learned from practical investigation.</h4><p class=\"mt20\">Classes involve microscopy, anatomy and experimental work and this can be aided by statistical analysis, as in the study of the genetic distribution of certain human characteristics, such colour blindness. Practical laboratory work provides an ideal opportunity for you to learn about collating and interpreting data, recording and reporting your findings concisely and arriving at effective solutions to problems..</p>',NULL,NULL,NULL,'FIND OUT MORE',0,0,0,0,22,0),(22,'Section','2016-03-29 22:54:53','2016-03-29 22:53:00','CHEMISTRY','<h3>THE INTRUIGING STUDY OF EVERYTHING</h3>','<h4><br class=\"Apple-interchange-newline\">This A-Level course starts you on a journey of knowledge, discovery and excitement that may lead you wherever your imagination will take you.</h4><p class=\"mt20\">Chemisty gives understanding of the important issues that face your generation. Can you really evaluate climate change, genetic engineering, food and agricultural additives without the safety of medicine? Would you like to discover something no-one else has seen or touched before? With Chemistry, all this is possible and much more.</p>',NULL,NULL,'EXPLORE CHEMISTRY',127,0,0,0,22,0),(23,'Section','2016-03-29 22:56:01','2016-03-29 22:56:01','PHYSICS','<h4>In Physics, the ‘game’ is life, the universe and everything – and most of the rules are more obvious.</h4><p>The theoretician tried to find a rule that describes what he sees. The experimentalist tries to devise an experiment to check the theory. When it all seems to work, a ‘rule’ is written and called a Law. Once we know the laws, we ought to be able to predict what will happen in different circumstances.</p>',NULL,NULL,NULL,'DISCOVER PHYSICS',128,129,0,0,22,0),(24,'Section','2016-03-29 22:59:32','2016-03-29 22:59:32','MATHS','<h4>In everyday, practical lives mathematics is indispensible. It can take the patterns it finds and use them to explain and control natural happenings and situations.</h4><p>Mathematics is the oldest of the sciences and those who choose to study it as an A-level subject like its challenge, its clarity and its ability to reduce apparently complex problems into formulations from which analytical solutions can be obtained. Mathematics is all about logical analysis, deduction and calculation.</p>',NULL,NULL,NULL,'GET INTO MATHS',130,131,0,0,22,0),(25,'Section','2016-03-29 23:01:25','2016-03-29 23:01:25','FURTHER  MATHS','<h4>In Mathematics, we have a universal language – valid, useful, intelligible everywhere in place and time.</h4><p>– in banks and insurance companies, on the parchments of the architects who raised the Temple of Solomon and on the blueprints of the engineer who, with their calculus of chaos, master the winds. Here is a discipline of a hundred branches, fabulously rich, literally without limit in its sphere of application… here is a creation of the mind, both mystic and pragmatic in appeal.’</p><p><cite>‘Mathematics and the Imagination’ <span>Kasner and Newman (1979)</span></cite></p>',NULL,NULL,NULL,'FURTHER MATHS',0,0,0,0,22,0),(26,'Section','2016-03-31 14:46:59','2016-03-31 08:42:45','KEEP IN TOUCH','<p><span>Hurtwood House students have gone on to achieve success in many walks of life, which is why we encourage past students to keep in touch by joining our facebook group or by email.</span></p>',NULL,NULL,NULL,'VISIT THE HALL OF FAME',134,137,135,136,25,26),(27,'Section','2016-04-01 18:57:36','2016-03-31 08:44:32','THE HURTWOOD FOUNDATION','<p><span>The Hurtwood Foundation was established to provide bursary awards to enable specially gifted and talented students to take advantage of the outstanding education and to help fund select capital projects on the School Development Programme.</span></p>',NULL,NULL,NULL,'HELP MAKE A DIFFERENCE',139,138,0,0,25,27),(28,'Section','2016-04-01 17:32:56','2016-04-01 17:32:56','MAKE YOUR A LEVEL EXPERIENCE AS EXCITING AND REWARDING AS GOING TO UNIVERSITY','<p>Life outside of the classroom at Hurtwood is just as diverse, colourful and exciting as life within.</p><h4 class=\"small\">The range of opportunities on offer is vast and designed so that every member of our community can find something extra to do whilst they are here, no matter where their interests may lie.</h4>',NULL,NULL,NULL,NULL,151,0,0,0,29,0),(29,'Section','2016-04-01 17:34:11','2016-04-01 17:34:11','HOW STUDENTS ARE SELECTED FOR ENTRY','<p><span>Selection is based largely on the impressions formed at interview and on the reference provided by your school. In general, we want to be sure that you have a clear idea of what you want to achieve, that you are hard-working, mature and ready to take full advantage of all the opportunities that Hurtwood House provides.</span></p>','<p><span>Obviously, your academic record is important, and we have high academic standards to maintain, but this is certainly not the only criterion for selection. Above all, we need to feel that you are going to make a positive contribution to our community. Character, willingness, cheerfulness, creativity and enthusiasm are all qualities that we are looking for.</span></p>','<p><span>Our visiting speakers don’t talk about things in the abstract; they have been there, seen it and done it and their first hand experiences cover everything from drug addiction, alcoholism, gambling and living with HIV/AIDS through to climbing Mount Everest, walking unsupported to the South Pole, cycling around the globe and storming the Iranian Embassy as a member of the SAS. </span></p>',NULL,NULL,152,153,0,0,29,0),(30,'Section','2016-04-01 17:36:32','2016-04-01 17:36:32','WHAT\'S NEXT? REQUEST PROSPECTUS',NULL,NULL,NULL,NULL,NULL,154,155,0,0,29,0);
/*!40000 ALTER TABLE `Section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig`
--

DROP TABLE IF EXISTS `SiteConfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `ModernoLinkColor` varchar(6) DEFAULT NULL,
  `ModernoLogoBkgColor` varchar(6) DEFAULT NULL,
  `ModernoHighlightColor` varchar(6) DEFAULT NULL,
  `ModernoProfileLinkColor` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig`
--

LOCK TABLES `SiteConfig` WRITE;
/*!40000 ALTER TABLE `SiteConfig` DISABLE KEYS */;
INSERT INTO `SiteConfig` VALUES (1,'SiteConfig','2016-04-01 08:04:50','2016-03-12 06:30:21','Hurtwood House','The public school specialising in the sixth form, our unique blend of the creative and academic prepares students for university and life beyond.','hurtwood','Anyone','LoggedInUsers','LoggedInUsers',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `SiteConfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

DROP TABLE IF EXISTS `SiteConfig_CreateTopLevelGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_CreateTopLevelGroups`
--

LOCK TABLES `SiteConfig_CreateTopLevelGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_EditorGroups`
--

DROP TABLE IF EXISTS `SiteConfig_EditorGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_EditorGroups`
--

LOCK TABLES `SiteConfig_EditorGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteConfig_ViewerGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_ViewerGroups`
--

LOCK TABLES `SiteConfig_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree`
--

DROP TABLE IF EXISTS `SiteTree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','AcademicPage','AdmissionsPage','AlumniPage','HomePage','LifePage','NewsHolder','ErrorPage','RedirectorPage','VirtualPage','AcademicBasePage','AcademicBusinessPage','AcademicCreativePage','AcademicHumanitiesPage','AcademicSciencePage','AcademicExamPage','AcademicGscePage','AdmissionsContentPage','AdmissionsProcessPage','AlumniHallOfFamePage','AlumniSupportPage','SubjectPage','AcademicSubjectPage','AcademicCreativeSubjectPage','LifeBoardingPage','LifeEnigmaPage','LifeSportPage','LifeStudentsPage','LifeSupportivePage','NewsPage') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree`
--

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` VALUES (1,'HomePage','2016-03-18 06:29:55','2016-03-12 06:30:21','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default home page. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',3,0),(3,'Page','2016-03-18 06:25:42','2016-03-12 06:30:21','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',1,0),(4,'ErrorPage','2016-03-18 06:25:42','2016-03-12 06:30:21','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,8,0,0,NULL,'Inherit','Inherit',1,0),(5,'ErrorPage','2016-03-18 06:25:42','2016-03-12 06:30:21','server-error','Server error',NULL,'<p>Sorry, there was a problem handling your request.</p>',NULL,NULL,0,0,9,0,0,NULL,'Inherit','Inherit',1,0),(6,'LifePage','2016-03-31 08:20:32','2016-03-12 08:16:51','life','Life',NULL,NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',10,0),(7,'AcademicPage','2016-03-18 06:25:41','2016-03-13 08:11:20','academic','Academic',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',6,0),(8,'LifeSupportivePage','2016-03-18 06:28:59','2016-03-17 13:44:16','reassuringly-supportive','Reassuringly Supportive    ',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',5,6),(9,'LifeBoardingPage','2016-03-18 07:10:41','2016-03-17 14:34:35','boarding-houses','Boarding Houses',NULL,'<p>As a fully residential school our first concern is to provide you with a safe, structured, caring and happy community. That is why we place so much emphasis on our House structure.</p><p>You will be living in one of five country houses or their lodges, some of which are on the campus and some nearby.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',6,6),(10,'LifeSportPage','2016-03-18 08:13:57','2016-03-18 07:56:50','sports-and-recreation','Sports and Recreation',NULL,'<p>Because all work and no play makes for a dull day.</p><p>Although it is not compulsory, sport plays an important part in Hurtwood life and there is a full programme of sports and other activities every afternoon with a crowded fixture list of inter-school matches and tournaments.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',5,6),(11,'LifeEnigmaPage','2016-03-18 09:25:03','2016-03-18 08:29:57','enigma','ENIGMA',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',7,6),(12,'LifeStudentsPage','2016-03-18 10:34:28','2016-03-18 09:52:58','students','Where our Students Go','Students',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',10,6),(13,'NewsHolder','2016-03-22 20:22:57','2016-03-22 15:11:51','news','News',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',3,0),(14,'NewsPage','2016-03-31 21:44:03','2016-03-22 18:59:43','jessie-goes-on-tour','JESSIE GOES ON TOUR',NULL,'<p>nie wiem co powiedzieć</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',11,13),(15,'NewsPage','2016-03-31 14:11:58','2016-03-28 19:29:36','lorem-lorem-e','Lorem Lorem #e',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',4,13),(16,'NewsPage','2016-03-31 13:52:37','2016-03-28 19:45:29','lerem-becon-4','Lerem Becon #4',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',2,13),(17,'AcademicExamPage','2016-03-28 22:31:01','2016-03-28 22:15:42','exam-results','Exam results',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',2,7),(18,'AcademicGscePage','2016-03-29 10:34:02','2016-03-28 22:16:19','gsces','GSCEs',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',5,7),(19,'AcademicBusinessPage','2016-04-01 18:40:36','2016-03-29 12:48:02','business','Business and Commerce','Business','<p>Business and Commerce is a highly relevant and fast-moving area in which to study and is constantly evolving to reflect the changes that are happening on an almost-daily basis in the world.</p><p>Never before have the worlds of business and commerce so affected the lives of the average person, from the obvious effects of the credit crunch to the global financing of terrorists, the movements of governments and companies as they look to control dwindling resources and their reactions as they endeavour to respond to environmental issues.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',5,7),(20,'AcademicCreativePage','2016-03-29 22:03:01','2016-03-29 20:42:25','creative','Creative and Performing Arts','Creative','<p>There is something inside humankind that drives us to create, to share our innermost thoughts, to inspire, to convey powerful emotions through creative expressions.</p><p>This is a highly rewarding process that can also lead to exciting careers should the student wish. But even if they don’t want to continue with this career path, they will always find that they have gained something highly valuable from it.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',3,7),(21,'AcademicHumanitiesPage','2016-03-29 22:10:33','2016-03-29 21:56:54','humanities','Humanities and Language','Humanities','<p>Humanities and Languages cover a broad spectrum. However, they are all dynamic courses that allow students not only to better connect but to better understand the world around them.</p><p class=\"small mt25 wow fadeInRight2 animated\">Be it the more obvious foreign languages or the more cerebral courses of Sociology and Psychology, students will be totally immersed in the new world that they are going to be introduced to and are sure to leave us with a richer understanding of humanity.</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',3,7),(22,'AcademicSciencePage','2016-03-29 22:49:53','2016-03-29 22:42:34','science','Science',NULL,'<p>The field of science is vast, but with all these courses, students will have their thinking and understanding not only challenged but enriched.</p><p class=\"small mt25\">They will learn to question and to base their conjectures on science and facts, not on beliefs. Yet with all this, there will be a warmth and a humour that only tutors of the highest calibre can feel comfortable imparting.</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',3,7),(23,'AcademicSubjectPage','2016-03-30 22:43:36','2016-03-30 22:38:23','accounting','Accounting',NULL,'<h4>Accountancy is a popular and highly successful A-Level subject, one that is recognised as being truly ‘hands-on’ for the student because it deals with the practicalities of business analysis and decision-making that is essential to any company.</h4><p class=\"mt20\">It may surprise some to see Accounting offered as an A-Level subject. You can, of course, qualify as an Accountant without taking A-Level, but students who are not sure of their future careers, although they have an inkling that they want to do something in business or commerce, find that Accounting gives a practical perspective to their studies and enables them to get to taste the sharply realistic techniques of financial and management accounting which are the foundation upon which all businesses are run.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',2,19),(24,'AcademicSubjectPage','2016-03-30 23:14:45','2016-03-30 23:13:59','business-studies','BUSINESS  STUDIES',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',2,19),(25,'AlumniPage','2016-04-01 17:32:03','2016-03-31 07:39:37','alumni','Alumni',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',5,0),(26,'AlumniHallOfFamePage','2016-03-31 14:39:48','2016-03-31 14:36:10','hall-of-fame','Hall Of Fame',NULL,'<p><span>Students leave Hurtwood with the confidence, maturity and skills to take them further on their path.</span></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',2,25),(27,'AlumniSupportPage','2016-03-31 20:12:20','2016-03-31 16:01:02','the-hurtwood-foundation','The Hurtwood Foundation',NULL,'<p><span>Hurtwood House students have gone on to achieve success in many walks of life, which is why we encourage past students to keep in touch by joining our facebook group or by email.</span></p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',5,25),(29,'AdmissionsPage','2016-04-01 17:31:03','2016-04-01 16:59:46','admissions','Admissions',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',3,0),(30,'AdmissionsProcessPage','2016-04-01 22:21:46','2016-04-01 20:32:32','admissions-process','Admissions process',NULL,'<p><span>Once you start your application, one of our enrollment advisors will be in touch to support you through the process. Simply complete the </span><a href=\"http://localhost:8000/admissions-process.html\">online form</a><span>, or </span><a href=\"http://localhost:8000/admissions-process.html\">download</a><span> it in PDF format and return by email or by post.</span></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',4,29),(31,'AdmissionsContentPage','2016-04-01 22:33:42','2016-04-01 22:19:48','fees','Fees',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',5,29),(32,'AdmissionsContentPage','2016-04-01 22:39:28','2016-04-01 22:21:19','scholarships','Scholarships',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',3,29),(33,'AcademicCreativeSubjectPage','2016-04-04 12:56:06','2016-04-04 11:59:24','dance','Dance',NULL,'<p>Dance is currently the fastest growing department at Hurtwood.</p><p>Past and present students will agree that dance is done excellently here, and the recent launch of the purpose built, fully sprung dance studio brought the final ingredient which was needed to launch the Academic Dance Programme.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',3,20);
/*!40000 ALTER TABLE `SiteTree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_EditorGroups`
--

DROP TABLE IF EXISTS `SiteTree_EditorGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_EditorGroups`
--

LOCK TABLES `SiteTree_EditorGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ImageTracking`
--

DROP TABLE IF EXISTS `SiteTree_ImageTracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_ImageTracking`
--

LOCK TABLES `SiteTree_ImageTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_LinkTracking`
--

DROP TABLE IF EXISTS `SiteTree_LinkTracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

LOCK TABLES `SiteTree_LinkTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_Live`
--

DROP TABLE IF EXISTS `SiteTree_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','AcademicPage','AdmissionsPage','AlumniPage','HomePage','LifePage','NewsHolder','ErrorPage','RedirectorPage','VirtualPage','AcademicBasePage','AcademicBusinessPage','AcademicCreativePage','AcademicHumanitiesPage','AcademicSciencePage','AcademicExamPage','AcademicGscePage','AdmissionsContentPage','AdmissionsProcessPage','AlumniHallOfFamePage','AlumniSupportPage','SubjectPage','AcademicSubjectPage','AcademicCreativeSubjectPage','LifeBoardingPage','LifeEnigmaPage','LifeSportPage','LifeStudentsPage','LifeSupportivePage','NewsPage') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_Live`
--

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` VALUES (1,'HomePage','2016-03-18 06:29:55','2016-03-12 06:30:21','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default home page. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',3,0),(3,'Page','2016-03-12 06:30:21','2016-03-12 06:30:21','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',1,0),(4,'ErrorPage','2016-03-12 06:30:21','2016-03-12 06:30:21','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,8,0,0,NULL,'Inherit','Inherit',1,0),(5,'ErrorPage','2016-03-12 06:30:21','2016-03-12 06:30:21','server-error','Server error',NULL,'<p>Sorry, there was a problem handling your request.</p>',NULL,NULL,0,0,9,0,0,NULL,'Inherit','Inherit',1,0),(6,'LifePage','2016-03-31 08:20:32','2016-03-12 08:16:51','life','Life',NULL,NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',10,0),(7,'AcademicPage','2016-03-13 08:21:08','2016-03-13 08:11:20','academic','Academic',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',6,0),(8,'LifeSupportivePage','2016-03-18 06:28:59','2016-03-17 13:44:16','reassuringly-supportive','Reassuringly Supportive    ',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',5,6),(9,'LifeBoardingPage','2016-03-18 07:10:41','2016-03-17 14:34:35','boarding-houses','Boarding Houses',NULL,'<p>As a fully residential school our first concern is to provide you with a safe, structured, caring and happy community. That is why we place so much emphasis on our House structure.</p><p>You will be living in one of five country houses or their lodges, some of which are on the campus and some nearby.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',6,6),(10,'LifeSportPage','2016-03-18 08:13:57','2016-03-18 07:56:50','sports-and-recreation','Sports and Recreation',NULL,'<p>Because all work and no play makes for a dull day.</p><p>Although it is not compulsory, sport plays an important part in Hurtwood life and there is a full programme of sports and other activities every afternoon with a crowded fixture list of inter-school matches and tournaments.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',5,6),(11,'LifeEnigmaPage','2016-03-18 09:25:03','2016-03-18 08:29:57','enigma','ENIGMA',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',7,6),(12,'LifeStudentsPage','2016-03-18 10:34:28','2016-03-18 09:52:58','students','Where our Students Go','Students',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',10,6),(13,'NewsHolder','2016-03-22 20:22:57','2016-03-22 15:11:51','news','News',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',3,0),(14,'NewsPage','2016-03-31 21:44:03','2016-03-22 18:59:43','jessie-goes-on-tour','JESSIE GOES ON TOUR',NULL,'<p>nie wiem co powiedzieć</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',11,13),(15,'NewsPage','2016-03-31 14:11:58','2016-03-28 19:29:36','lorem-lorem-e','Lorem Lorem #e',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',4,13),(16,'NewsPage','2016-03-31 13:52:37','2016-03-28 19:45:29','lerem-becon-4','Lerem Becon #4',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',2,13),(17,'AcademicExamPage','2016-03-28 22:31:01','2016-03-28 22:15:42','exam-results','Exam results',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',2,7),(18,'AcademicGscePage','2016-03-29 10:34:02','2016-03-28 22:16:19','gsces','GSCEs',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',5,7),(19,'AcademicBusinessPage','2016-04-01 18:40:36','2016-03-29 12:48:02','business','Business and Commerce','Business','<p>Business and Commerce is a highly relevant and fast-moving area in which to study and is constantly evolving to reflect the changes that are happening on an almost-daily basis in the world.</p><p>Never before have the worlds of business and commerce so affected the lives of the average person, from the obvious effects of the credit crunch to the global financing of terrorists, the movements of governments and companies as they look to control dwindling resources and their reactions as they endeavour to respond to environmental issues.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',5,7),(20,'AcademicCreativePage','2016-03-29 22:03:01','2016-03-29 20:42:25','creative','Creative and Performing Arts','Creative','<p>There is something inside humankind that drives us to create, to share our innermost thoughts, to inspire, to convey powerful emotions through creative expressions.</p><p>This is a highly rewarding process that can also lead to exciting careers should the student wish. But even if they don’t want to continue with this career path, they will always find that they have gained something highly valuable from it.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',3,7),(21,'AcademicHumanitiesPage','2016-03-29 22:10:33','2016-03-29 21:56:54','humanities','Humanities and Language','Humanities','<p>Humanities and Languages cover a broad spectrum. However, they are all dynamic courses that allow students not only to better connect but to better understand the world around them.</p><p class=\"small mt25 wow fadeInRight2 animated\">Be it the more obvious foreign languages or the more cerebral courses of Sociology and Psychology, students will be totally immersed in the new world that they are going to be introduced to and are sure to leave us with a richer understanding of humanity.</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',3,7),(22,'AcademicSciencePage','2016-03-29 22:49:53','2016-03-29 22:42:34','science','Science',NULL,'<p>The field of science is vast, but with all these courses, students will have their thinking and understanding not only challenged but enriched.</p><p class=\"small mt25\">They will learn to question and to base their conjectures on science and facts, not on beliefs. Yet with all this, there will be a warmth and a humour that only tutors of the highest calibre can feel comfortable imparting.</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',3,7),(23,'AcademicSubjectPage','2016-03-30 22:43:36','2016-03-30 22:38:23','accounting','Accounting',NULL,'<h4>Accountancy is a popular and highly successful A-Level subject, one that is recognised as being truly ‘hands-on’ for the student because it deals with the practicalities of business analysis and decision-making that is essential to any company.</h4><p class=\"mt20\">It may surprise some to see Accounting offered as an A-Level subject. You can, of course, qualify as an Accountant without taking A-Level, but students who are not sure of their future careers, although they have an inkling that they want to do something in business or commerce, find that Accounting gives a practical perspective to their studies and enables them to get to taste the sharply realistic techniques of financial and management accounting which are the foundation upon which all businesses are run.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',2,19),(24,'AcademicSubjectPage','2016-03-30 23:14:45','2016-03-30 23:13:59','business-studies','BUSINESS  STUDIES',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',2,19),(25,'AlumniPage','2016-04-01 17:32:03','2016-03-31 07:39:37','alumni','Alumni',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',5,0),(26,'AlumniHallOfFamePage','2016-03-31 14:39:48','2016-03-31 14:36:10','hall-of-fame','Hall Of Fame',NULL,'<p><span>Students leave Hurtwood with the confidence, maturity and skills to take them further on their path.</span></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',2,25),(27,'AlumniSupportPage','2016-03-31 20:12:21','2016-03-31 16:01:02','the-hurtwood-foundation','The Hurtwood Foundation',NULL,'<p><span>Hurtwood House students have gone on to achieve success in many walks of life, which is why we encourage past students to keep in touch by joining our facebook group or by email.</span></p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',5,25),(29,'AdmissionsPage','2016-04-01 17:31:03','2016-04-01 16:59:46','admissions','Admissions',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',3,0),(30,'AdmissionsProcessPage','2016-04-01 22:21:46','2016-04-01 20:32:32','admissions-process','Admissions process',NULL,'<p><span>Once you start your application, one of our enrollment advisors will be in touch to support you through the process. Simply complete the </span><a href=\"http://localhost:8000/admissions-process.html\">online form</a><span>, or </span><a href=\"http://localhost:8000/admissions-process.html\">download</a><span> it in PDF format and return by email or by post.</span></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',4,29),(31,'AdmissionsContentPage','2016-04-01 22:33:42','2016-04-01 22:19:48','fees','Fees',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',5,29),(32,'AdmissionsContentPage','2016-04-01 22:39:28','2016-04-01 22:21:19','scholarships','Scholarships',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',3,29),(33,'AcademicCreativeSubjectPage','2016-04-04 12:56:06','2016-04-04 11:59:24','dance','Dance',NULL,'<p>Dance is currently the fastest growing department at Hurtwood.</p><p>Past and present students will agree that dance is done excellently here, and the recent launch of the purpose built, fully sprung dance studio brought the final ingredient which was needed to launch the Academic Dance Programme.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',3,20);
/*!40000 ALTER TABLE `SiteTree_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteTree_ViewerGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_ViewerGroups`
--

LOCK TABLES `SiteTree_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_versions`
--

DROP TABLE IF EXISTS `SiteTree_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','AcademicPage','AdmissionsPage','AlumniPage','HomePage','LifePage','NewsHolder','ErrorPage','RedirectorPage','VirtualPage','AcademicBasePage','AcademicBusinessPage','AcademicCreativePage','AcademicHumanitiesPage','AcademicSciencePage','AcademicExamPage','AcademicGscePage','AdmissionsContentPage','AdmissionsProcessPage','AlumniHallOfFamePage','AlumniSupportPage','SubjectPage','AcademicSubjectPage','AcademicCreativeSubjectPage','LifeBoardingPage','LifeEnigmaPage','LifeSportPage','LifeStudentsPage','LifeSupportivePage','NewsPage') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_versions`
--

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;
INSERT INTO `SiteTree_versions` VALUES (1,1,1,1,1,1,'Page','2016-03-12 06:30:21','2016-03-12 06:30:21','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default home page. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),(2,2,1,1,1,1,'Page','2016-03-12 06:30:21','2016-03-12 06:30:21','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),(3,3,1,1,1,1,'Page','2016-03-12 06:30:21','2016-03-12 06:30:21','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),(4,4,1,1,1,1,'ErrorPage','2016-03-12 06:30:21','2016-03-12 06:30:21','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,4,0,0,NULL,'Inherit','Inherit',0),(5,5,1,1,1,1,'ErrorPage','2016-03-12 06:30:21','2016-03-12 06:30:21','server-error','Server error',NULL,'<p>Sorry, there was a problem handling your request.</p>',NULL,NULL,0,0,5,0,0,NULL,'Inherit','Inherit',0),(6,1,2,1,1,1,'HomePage','2016-03-12 06:36:33','2016-03-12 06:30:21','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default home page. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),(7,6,1,0,1,0,'LifePage','2016-03-12 08:16:51','2016-03-12 08:16:51','new-life-page','New Life Page',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),(8,6,2,1,1,1,'LifePage','2016-03-12 08:17:08','2016-03-12 08:16:51','life','Life',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),(9,6,3,1,1,1,'LifePage','2016-03-12 08:31:29','2016-03-12 08:16:51','life','Life',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),(10,6,4,1,1,1,'LifePage','2016-03-12 09:30:22','2016-03-12 08:16:51','life','Life',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),(11,6,5,1,1,1,'LifePage','2016-03-12 09:31:50','2016-03-12 08:16:51','life','Life',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),(12,6,6,1,1,1,'LifePage','2016-03-12 09:38:58','2016-03-12 08:16:51','life','Life',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),(13,6,7,1,1,1,'LifePage','2016-03-12 09:43:33','2016-03-12 08:16:51','life','Life',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),(14,6,8,1,1,1,'LifePage','2016-03-12 09:46:09','2016-03-12 08:16:51','life','Life',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),(15,6,9,1,1,1,'LifePage','2016-03-12 09:47:22','2016-03-12 08:16:51','life','Life',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),(16,7,1,1,1,1,'AcademicPage','2016-03-13 08:11:20','2016-03-13 08:11:20','new-academic-page','New Academic Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',0),(17,7,2,1,1,1,'AcademicPage','2016-03-13 08:13:57','2016-03-13 08:11:20','academic','Academic',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',0),(18,7,3,1,1,1,'AcademicPage','2016-03-13 08:16:04','2016-03-13 08:11:20','academic','Academic',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',0),(19,7,4,1,1,1,'AcademicPage','2016-03-13 08:17:06','2016-03-13 08:11:20','academic','Academic',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),(20,7,5,1,1,1,'AcademicPage','2016-03-13 08:17:39','2016-03-13 08:11:20','academic','Academic',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),(21,7,6,1,1,1,'AcademicPage','2016-03-13 08:20:27','2016-03-13 08:11:20','academic','Academic',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),(22,8,1,0,1,0,'LifeSupportivePage','2016-03-17 13:44:16','2016-03-17 13:44:16','new-life-supportive-page','New Life Supportive Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),(23,8,2,1,1,1,'LifeSupportivePage','2016-03-17 13:44:41','2016-03-17 13:44:16','reassuringly-supportive','Reassuringly Supportive    ',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),(24,2,2,0,1,0,'Page','2016-03-17 13:53:28','2016-03-12 06:30:21','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',0),(25,8,3,1,1,1,'LifeSupportivePage','2016-03-17 14:13:58','2016-03-17 13:44:16','reassuringly-supportive','Reassuringly Supportive    ',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),(26,8,4,1,1,1,'LifeSupportivePage','2016-03-17 14:16:14','2016-03-17 13:44:16','reassuringly-supportive','Reassuringly Supportive    ',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),(27,8,5,1,1,1,'LifeSupportivePage','2016-03-17 14:17:39','2016-03-17 13:44:16','reassuringly-supportive','Reassuringly Supportive    ',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),(28,9,1,0,1,0,'LifeBoardingPage','2016-03-17 14:34:35','2016-03-17 14:34:35','new-life-boarding-page','New Life Boarding Page',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',6),(29,9,2,1,1,1,'LifeBoardingPage','2016-03-17 14:34:51','2016-03-17 14:34:35','boarding-houses','Boarding Houses',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',6),(30,9,3,1,1,1,'LifeBoardingPage','2016-03-17 15:29:21','2016-03-17 14:34:35','boarding-houses','Boarding Houses',NULL,'<p>As a fully residential school our first concern is to provide you with a safe, structured, caring and happy community. That is why we place so much emphasis on our House structure.</p><p>You will be living in one of five country houses or their lodges, some of which are on the campus and some nearby.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',6),(31,1,3,1,1,1,'HomePage','2016-03-18 06:24:30','2016-03-12 06:30:21','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default home page. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',0),(32,9,4,1,1,1,'LifeBoardingPage','2016-03-18 07:03:41','2016-03-17 14:34:35','boarding-houses','Boarding Houses',NULL,'<p>As a fully residential school our first concern is to provide you with a safe, structured, caring and happy community. That is why we place so much emphasis on our House structure.</p><p>You will be living in one of five country houses or their lodges, some of which are on the campus and some nearby.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',6),(33,9,5,1,1,1,'LifeBoardingPage','2016-03-18 07:09:57','2016-03-17 14:34:35','boarding-houses','Boarding Houses',NULL,'<p>As a fully residential school our first concern is to provide you with a safe, structured, caring and happy community. That is why we place so much emphasis on our House structure.</p><p>You will be living in one of five country houses or their lodges, some of which are on the campus and some nearby.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',6),(34,9,6,1,1,1,'LifeBoardingPage','2016-03-18 07:10:41','2016-03-17 14:34:35','boarding-houses','Boarding Houses',NULL,'<p>As a fully residential school our first concern is to provide you with a safe, structured, caring and happy community. That is why we place so much emphasis on our House structure.</p><p>You will be living in one of five country houses or their lodges, some of which are on the campus and some nearby.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',6),(35,10,1,0,1,0,'LifeSportPage','2016-03-18 07:56:50','2016-03-18 07:56:50','new-life-sport-page','New Life Sport Page',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',6),(36,10,2,1,1,1,'LifeSportPage','2016-03-18 07:57:02','2016-03-18 07:56:50','sports-and-recreation','Sports and Recreation',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',6),(37,10,3,1,1,1,'LifeSportPage','2016-03-18 08:01:49','2016-03-18 07:56:50','sports-and-recreation','Sports and Recreation',NULL,'<p>Because all work and no play makes for a dull day.</p><p>Although it is not compulsory, sport plays an important part in Hurtwood life and there is a full programme of sports and other activities every afternoon with a crowded fixture list of inter-school matches and tournaments.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',6),(38,10,4,1,1,1,'LifeSportPage','2016-03-18 08:10:13','2016-03-18 07:56:50','sports-and-recreation','Sports and Recreation',NULL,'<p>Because all work and no play makes for a dull day.</p><p>Although it is not compulsory, sport plays an important part in Hurtwood life and there is a full programme of sports and other activities every afternoon with a crowded fixture list of inter-school matches and tournaments.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',6),(39,10,5,1,1,1,'LifeSportPage','2016-03-18 08:13:57','2016-03-18 07:56:50','sports-and-recreation','Sports and Recreation',NULL,'<p>Because all work and no play makes for a dull day.</p><p>Although it is not compulsory, sport plays an important part in Hurtwood life and there is a full programme of sports and other activities every afternoon with a crowded fixture list of inter-school matches and tournaments.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',6),(40,11,1,0,1,0,'LifeEnigmaPage','2016-03-18 08:29:57','2016-03-18 08:29:57','new-life-enigma-page','New Life Enigma Page',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',6),(41,11,2,1,1,1,'LifeEnigmaPage','2016-03-18 08:31:22','2016-03-18 08:29:57','enigma','ENIGMA',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',6),(42,11,3,1,1,1,'LifeEnigmaPage','2016-03-18 09:13:35','2016-03-18 08:29:57','enigma','OUR UNIQUE ENRICHMENT PROGRAMME','ENIGMA',NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',6),(43,11,4,1,1,1,'LifeEnigmaPage','2016-03-18 09:14:41','2016-03-18 08:29:57','enigma','ENIGMA','OUR UNIQUE ENRICHMENT PROGRAMME',NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',6),(44,11,5,1,1,1,'LifeEnigmaPage','2016-03-18 09:15:24','2016-03-18 08:29:57','enigma','ENIGMA','OUR UNIQUE ENRICHMENT PROGRAMME',NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',6),(45,11,6,1,1,1,'LifeEnigmaPage','2016-03-18 09:23:35','2016-03-18 08:29:57','enigma','ENIGMA',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',6),(46,11,7,1,1,1,'LifeEnigmaPage','2016-03-18 09:25:03','2016-03-18 08:29:57','enigma','ENIGMA',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',6),(47,12,1,0,1,0,'LifeStudentsPage','2016-03-18 09:52:58','2016-03-18 09:52:58','new-life-students-page','New Life Students Page',NULL,NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',6),(48,12,2,1,1,1,'LifeStudentsPage','2016-03-18 09:53:25','2016-03-18 09:52:58','students','Where our Students Go',NULL,NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',6),(49,12,3,1,1,1,'LifeStudentsPage','2016-03-18 09:53:37','2016-03-18 09:52:58','students','Where our Students Go','Students',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',6),(50,12,4,1,1,1,'LifeStudentsPage','2016-03-18 10:13:54','2016-03-18 09:52:58','students','Where our Students Go','Students',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',6),(51,12,5,1,1,1,'LifeStudentsPage','2016-03-18 10:19:04','2016-03-18 09:52:58','students','Where our Students Go','Students',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',6),(52,12,6,1,1,1,'LifeStudentsPage','2016-03-18 10:19:49','2016-03-18 09:52:58','students','Where our Students Go','Students',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',6),(53,12,7,1,1,1,'LifeStudentsPage','2016-03-18 10:23:08','2016-03-18 09:52:58','students','Where our Students Go','Students',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',6),(54,12,8,1,1,1,'LifeStudentsPage','2016-03-18 10:24:29','2016-03-18 09:52:58','students','Where our Students Go','Students',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',6),(55,12,9,1,1,1,'LifeStudentsPage','2016-03-18 10:28:13','2016-03-18 09:52:58','students','Where our Students Go','Students',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',6),(56,12,10,1,1,1,'LifeStudentsPage','2016-03-18 10:34:28','2016-03-18 09:52:58','students','Where our Students Go','Students',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',6),(57,13,1,0,1,0,'NewsHolder','2016-03-22 15:11:51','2016-03-22 15:11:51','new-news-holder','New News Holder',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',0),(58,13,2,1,1,1,'NewsHolder','2016-03-22 15:12:10','2016-03-22 15:11:51','news','News',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',0),(59,13,3,1,1,1,'NewsHolder','2016-03-22 18:56:40','2016-03-22 15:11:51','news','News',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),(60,14,1,0,1,0,'','2016-03-22 18:59:43','2016-03-22 18:59:43','new-news-article','New News Article',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',13),(61,14,2,1,1,1,'','2016-03-22 19:00:33','2016-03-22 18:59:43','jessie-goes-on-tour','JESSIE GOES ON TOUR',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',13),(62,14,3,1,1,1,'','2016-03-22 19:35:31','2016-03-22 18:59:43','jessie-goes-on-tour','JESSIE GOES ON TOUR',NULL,'<p>nie wiem co powiedzieć</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',13),(63,14,4,1,1,1,'','2016-03-28 12:37:41','2016-03-22 18:59:43','jessie-goes-on-tour','JESSIE GOES ON TOUR #hero','JESSIE GOES ON TOUR','<p>nie wiem co powiedzieć</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',13),(64,14,5,1,1,1,'','2016-03-28 12:59:58','2016-03-22 18:59:43','jessie-goes-on-tour','JESSIE GOES ON TOUR #hero','JESSIE GOES ON TOUR','<p>nie wiem co powiedzieć</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',13),(65,14,6,1,1,1,'','2016-03-28 13:00:51','2016-03-22 18:59:43','jessie-goes-on-tour','JESSIE GOES ON TOUR #hero','JESSIE GOES ON TOUR','<p>nie wiem co powiedzieć</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',13),(66,14,7,1,1,1,'NewsPage','2016-03-28 14:03:35','2016-03-22 18:59:43','jessie-goes-on-tour','JESSIE GOES ON TOUR #hero','JESSIE GOES ON TOUR','<p>nie wiem co powiedzieć</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',13),(67,14,8,1,1,1,'NewsPage','2016-03-28 14:26:42','2016-03-22 18:59:43','jessie-goes-on-tour','JESSIE GOES ON TOUR #hero','JESSIE GOES ON TOUR','<p>nie wiem co powiedzieć</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',13),(68,14,9,1,1,1,'NewsPage','2016-03-28 14:55:47','2016-03-22 18:59:43','jessie-goes-on-tour','JESSIE GOES ON TOUR #hero','JESSIE GOES ON TOUR','<p>nie wiem co powiedzieć</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',13),(69,14,10,1,1,1,'NewsPage','2016-03-28 14:56:27','2016-03-22 18:59:43','jessie-goes-on-tour','JESSIE GOES ON TOUR','JESSIE GOES ON TOUR','<p>nie wiem co powiedzieć</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',13),(70,14,11,1,1,1,'NewsPage','2016-03-28 14:56:46','2016-03-22 18:59:43','jessie-goes-on-tour','JESSIE GOES ON TOUR',NULL,'<p>nie wiem co powiedzieć</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',13),(71,15,1,0,1,0,'NewsPage','2016-03-28 19:29:36','2016-03-28 19:29:36','new-news-page','New News Page',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',13),(72,15,2,1,1,1,'NewsPage','2016-03-28 19:32:22','2016-03-28 19:29:36','lorem-lorem-e','Lorem Lorem #e',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',13),(73,15,3,1,1,1,'NewsPage','2016-03-28 19:33:05','2016-03-28 19:29:36','lorem-lorem-e','Lorem Lorem #e',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',13),(74,15,4,1,1,1,'NewsPage','2016-03-28 19:37:22','2016-03-28 19:29:36','lorem-lorem-e','Lorem Lorem #e',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',13),(75,16,1,0,1,0,'NewsPage','2016-03-28 19:45:29','2016-03-28 19:45:29','new-news-page','New News Page',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',13),(76,16,2,1,1,1,'NewsPage','2016-03-28 19:47:09','2016-03-28 19:45:29','lerem-becon-4','Lerem Becon #4',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',13),(77,17,1,0,1,0,'AcademicExamPage','2016-03-28 22:15:42','2016-03-28 22:15:42','new-academic-exam-page','New Academic Exam Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',7),(78,17,2,1,1,1,'AcademicExamPage','2016-03-28 22:16:06','2016-03-28 22:15:42','exam-results','Exam results',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',7),(79,18,1,0,1,0,'AcademicGscePage','2016-03-28 22:16:19','2016-03-28 22:16:19','new-academic-gsce-page','New Academic Gsce Page',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',7),(80,18,2,1,1,1,'AcademicGscePage','2016-03-28 22:16:28','2016-03-28 22:16:19','gsces','GSCEs',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',7),(81,18,3,1,1,1,'AcademicGscePage','2016-03-29 10:31:23','2016-03-28 22:16:19','gsces','GSCEs',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',7),(82,18,4,1,1,1,'AcademicGscePage','2016-03-29 10:32:22','2016-03-28 22:16:19','gsces','GSCEs',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',7),(83,18,5,1,1,1,'AcademicGscePage','2016-03-29 10:34:02','2016-03-28 22:16:19','gsces','GSCEs',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',7),(84,19,1,0,1,0,'AcademicBusinessPage','2016-03-29 12:48:02','2016-03-29 12:48:02','new-academic-business-page','New Academic Business Page',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',7),(85,19,2,1,1,1,'AcademicBusinessPage','2016-03-29 12:49:34','2016-03-29 12:48:02','business','BUSINESS AND COMMERCE','Business','<p>Business</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',7),(86,19,3,1,1,1,'AcademicBusinessPage','2016-03-29 19:28:16','2016-03-29 12:48:02','business','BUSINESS AND COMMERCE','Business','<p>Business and Commerce is a highly relevant and fast-moving area in which to study and is constantly evolving to reflect the changes that are happening on an almost-daily basis in the world.</p><p>Never before have the worlds of business and commerce so affected the lives of the average person, from the obvious effects of the credit crunch to the global financing of terrorists, the movements of governments and companies as they look to control dwindling resources and their reactions as they endeavour to respond to environmental issues.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',7),(87,19,4,1,1,1,'AcademicBusinessPage','2016-03-29 20:09:33','2016-03-29 12:48:02','business','BUSINESS AND COMMERCE','Business','<p>Business and Commerce is a highly relevant and fast-moving area in which to study and is constantly evolving to reflect the changes that are happening on an almost-daily basis in the world.</p><p>Never before have the worlds of business and commerce so affected the lives of the average person, from the obvious effects of the credit crunch to the global financing of terrorists, the movements of governments and companies as they look to control dwindling resources and their reactions as they endeavour to respond to environmental issues.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',7),(88,20,1,0,1,0,'AcademicCreativePage','2016-03-29 20:42:25','2016-03-29 20:42:25','new-academic-creative-page','New Academic Creative Page',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',7),(89,20,2,1,1,1,'AcademicCreativePage','2016-03-29 20:44:26','2016-03-29 20:42:25','creative','Creative and Performing Arts','Creative',NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',7),(90,19,5,1,1,1,'AcademicBusinessPage','2016-03-29 20:44:55','2016-03-29 12:48:02','business','Business and Commerce','Business','<p>Business and Commerce is a highly relevant and fast-moving area in which to study and is constantly evolving to reflect the changes that are happening on an almost-daily basis in the world.</p><p>Never before have the worlds of business and commerce so affected the lives of the average person, from the obvious effects of the credit crunch to the global financing of terrorists, the movements of governments and companies as they look to control dwindling resources and their reactions as they endeavour to respond to environmental issues.</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',7),(91,20,3,1,1,1,'AcademicCreativePage','2016-03-29 21:10:21','2016-03-29 20:42:25','creative','Creative and Performing Arts','Creative','<p>There is something inside humankind that drives us to create, to share our innermost thoughts, to inspire, to convey powerful emotions through creative expressions.</p><p>This is a highly rewarding process that can also lead to exciting careers should the student wish. But even if they don’t want to continue with this career path, they will always find that they have gained something highly valuable from it.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',7),(92,21,1,0,1,0,'AcademicHumanitiesPage','2016-03-29 21:56:54','2016-03-29 21:56:54','new-academic-humanities-page','New Academic Humanities Page',NULL,NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',7),(93,21,2,1,1,1,'AcademicHumanitiesPage','2016-03-29 21:59:37','2016-03-29 21:56:54','humanities','Humanities and Language','Humanities',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',7),(94,21,3,1,1,1,'AcademicHumanitiesPage','2016-03-29 22:10:04','2016-03-29 21:56:54','humanities','Humanities and Language','Humanities','<p>Humanities and Languages cover a broad spectrum. However, they are all dynamic courses that allow students not only to better connect but to better understand the world around them.</p><p class=\"small mt25 wow fadeInRight2 animated\">Be it the more obvious foreign languages or the more cerebral courses of Sociology and Psychology, students will be totally immersed in the new world that they are going to be introduced to and are sure to leave us with a richer understanding of humanity.</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',7),(95,22,1,0,1,0,'AcademicSciencePage','2016-03-29 22:42:34','2016-03-29 22:42:34','new-academic-science-page','New Academic Science Page',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',7),(96,22,2,1,1,1,'AcademicSciencePage','2016-03-29 22:45:21','2016-03-29 22:42:34','science','Science',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',7),(97,22,3,1,1,1,'AcademicSciencePage','2016-03-29 22:49:53','2016-03-29 22:42:34','science','Science',NULL,'<p>The field of science is vast, but with all these courses, students will have their thinking and understanding not only challenged but enriched.</p><p class=\"small mt25\">They will learn to question and to base their conjectures on science and facts, not on beliefs. Yet with all this, there will be a warmth and a humour that only tutors of the highest calibre can feel comfortable imparting.</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',7),(98,23,1,0,1,0,'AcademicSubjectPage','2016-03-30 22:38:23','2016-03-30 22:38:23','new-academic-subject-page','New Academic Subject Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',19),(99,23,2,1,1,1,'AcademicSubjectPage','2016-03-30 22:43:36','2016-03-30 22:38:23','accounting','Accounting',NULL,'<h4>Accountancy is a popular and highly successful A-Level subject, one that is recognised as being truly ‘hands-on’ for the student because it deals with the practicalities of business analysis and decision-making that is essential to any company.</h4><p class=\"mt20\">It may surprise some to see Accounting offered as an A-Level subject. You can, of course, qualify as an Accountant without taking A-Level, but students who are not sure of their future careers, although they have an inkling that they want to do something in business or commerce, find that Accounting gives a practical perspective to their studies and enables them to get to taste the sharply realistic techniques of financial and management accounting which are the foundation upon which all businesses are run.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',19),(100,24,1,0,1,0,'AcademicSubjectPage','2016-03-30 23:13:59','2016-03-30 23:13:59','new-academic-subject-page','New Academic Subject Page',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',19),(101,24,2,1,1,1,'AcademicSubjectPage','2016-03-30 23:14:45','2016-03-30 23:13:59','business-studies','BUSINESS  STUDIES',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',19),(102,25,1,0,1,0,'AlumniPage','2016-03-31 07:39:37','2016-03-31 07:39:37','new-alumni-page','New Alumni Page',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),(103,25,2,1,1,1,'AlumniPage','2016-03-31 07:47:27','2016-03-31 07:39:37','alumni','Alumni',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),(104,25,3,0,1,0,'AlumniPage','2016-03-31 08:19:12','2016-03-31 07:39:37','alumni','Alumni',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),(105,25,4,1,1,1,'AlumniPage','2016-03-31 08:19:48','2016-03-31 07:39:37','alumni','Alumni',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),(106,6,10,1,1,1,'LifePage','2016-03-31 08:20:16','2016-03-12 08:16:51','life','Life',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),(107,26,1,0,1,0,'AlumniHallOfFamePage','2016-03-31 14:36:10','2016-03-31 14:36:10','new-alumni-hall-of-fame-page','New Alumni Hall Of Fame Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',25),(108,26,2,1,1,1,'AlumniHallOfFamePage','2016-03-31 14:39:48','2016-03-31 14:36:10','hall-of-fame','Hall Of Fame',NULL,'<p><span>Students leave Hurtwood with the confidence, maturity and skills to take them further on their path.</span></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',25),(109,27,1,0,1,0,'AlumniSupportPage','2016-03-31 16:01:02','2016-03-31 16:01:02','new-alumni-support-page','New Alumni Support Page',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',25),(110,27,2,1,1,1,'AlumniSupportPage','2016-03-31 16:09:27','2016-03-31 16:01:02','the-hurtwood-foundation','The Hurtwood Foundation',NULL,'<p><span>Hurtwood House students have gone on to achieve success in many walks of life, which is why we encourage past students to keep in touch by joining our facebook group or by email.</span></p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',25),(111,27,3,1,1,1,'AlumniSupportPage','2016-03-31 20:07:39','2016-03-31 16:01:02','the-hurtwood-foundation','The Hurtwood Foundation',NULL,'<p><span>Hurtwood House students have gone on to achieve success in many walks of life, which is why we encourage past students to keep in touch by joining our facebook group or by email.</span></p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',25),(112,27,4,1,1,1,'AlumniSupportPage','2016-03-31 20:10:41','2016-03-31 16:01:02','the-hurtwood-foundation','The Hurtwood Foundation',NULL,'<p><span>Hurtwood House students have gone on to achieve success in many walks of life, which is why we encourage past students to keep in touch by joining our facebook group or by email.</span></p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',25),(113,27,5,1,1,1,'AlumniSupportPage','2016-03-31 20:12:20','2016-03-31 16:01:02','the-hurtwood-foundation','The Hurtwood Foundation',NULL,'<p><span>Hurtwood House students have gone on to achieve success in many walks of life, which is why we encourage past students to keep in touch by joining our facebook group or by email.</span></p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',25),(114,28,1,0,1,0,'AdmissionsPage','2016-04-01 16:59:06','2016-04-01 16:59:06','new-admissions-page','New Admissions Page',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),(115,29,1,0,1,0,'AdmissionsPage','2016-04-01 16:59:46','2016-04-01 16:59:46','new-admissions-page-2','New Admissions Page',NULL,NULL,NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',0),(116,29,2,1,1,1,'AdmissionsPage','2016-04-01 17:02:46','2016-04-01 16:59:46','admissions','Admissions',NULL,NULL,NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',0),(117,29,3,1,1,1,'AdmissionsPage','2016-04-01 17:30:02','2016-04-01 16:59:46','admissions','Admissions',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),(118,25,5,1,1,1,'AlumniPage','2016-04-01 17:31:45','2016-03-31 07:39:37','alumni','Alumni',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),(119,30,1,0,1,0,'AdmissionsProcessPage','2016-04-01 20:32:32','2016-04-01 20:32:32','new-admissions-process-page','New Admissions Process Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',29),(120,30,2,1,1,1,'AdmissionsProcessPage','2016-04-01 20:37:09','2016-04-01 20:32:32','admissions-process','Admissions Process',NULL,'<p><span>Once you start your application, one of our enrollment advisors will be in touch to support you through the process. Simply complete the </span><a href=\"http://localhost:8000/admissions-process.html\">online form</a><span>, or </span><a href=\"http://localhost:8000/admissions-process.html\">download</a><span> it in PDF format and return by email or by post.</span></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',29),(121,30,3,1,1,1,'AdmissionsProcessPage','2016-04-01 21:54:49','2016-04-01 20:32:32','admissions-process','Admissions process',NULL,'<p><span>Once you start your application, one of our enrollment advisors will be in touch to support you through the process. Simply complete the </span><a href=\"http://localhost:8000/admissions-process.html\">online form</a><span>, or </span><a href=\"http://localhost:8000/admissions-process.html\">download</a><span> it in PDF format and return by email or by post.</span></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',29),(122,31,1,0,1,0,'AdmissionsContentPage','2016-04-01 22:19:48','2016-04-01 22:19:48','new-admissions-content-page','New Admissions Content Page',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',29),(123,31,2,0,1,0,'AdmissionsContentPage','2016-04-01 22:20:47','2016-04-01 22:19:48','new-admissions-content-page','New Admissions Content Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',29),(124,31,3,1,1,1,'AdmissionsContentPage','2016-04-01 22:20:51','2016-04-01 22:19:48','fees','Fees',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',29),(125,32,1,0,1,0,'AdmissionsContentPage','2016-04-01 22:21:19','2016-04-01 22:21:19','new-admissions-content-page','New Admissions Content Page',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',29),(126,30,4,1,1,1,'AdmissionsProcessPage','2016-04-01 22:21:35','2016-04-01 20:32:32','admissions-process','Admissions process',NULL,'<p><span>Once you start your application, one of our enrollment advisors will be in touch to support you through the process. Simply complete the </span><a href=\"http://localhost:8000/admissions-process.html\">online form</a><span>, or </span><a href=\"http://localhost:8000/admissions-process.html\">download</a><span> it in PDF format and return by email or by post.</span></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',29),(127,32,2,1,1,1,'AdmissionsContentPage','2016-04-01 22:21:38','2016-04-01 22:21:19','scholarships','Scholarships',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',29),(128,31,4,1,1,1,'AdmissionsContentPage','2016-04-01 22:31:34','2016-04-01 22:19:48','fees','Fees',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',29),(129,31,5,1,1,1,'AdmissionsContentPage','2016-04-01 22:32:20','2016-04-01 22:19:48','fees','Fees',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',29),(130,32,3,1,1,1,'AdmissionsContentPage','2016-04-01 22:39:28','2016-04-01 22:21:19','scholarships','Scholarships',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',29),(131,33,1,0,1,0,'AcademicCreativeSubjectPage','2016-04-04 11:59:24','2016-04-04 11:59:24','new-academic-creative-subject-page','New Academic Creative Subject Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',20),(132,33,2,1,1,1,'AcademicCreativeSubjectPage','2016-04-04 12:02:02','2016-04-04 11:59:24','dance','Dance',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',20),(133,33,3,1,1,1,'AcademicCreativeSubjectPage','2016-04-04 12:56:05','2016-04-04 11:59:24','dance','Dance',NULL,'<p>Dance is currently the fastest growing department at Hurtwood.</p><p>Past and present students will agree that dance is done excellently here, and the recent launch of the purpose built, fully sprung dance studio brought the final ingredient which was needed to launch the Academic Dance Programme.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',20);
/*!40000 ALTER TABLE `SiteTree_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Slide`
--

DROP TABLE IF EXISTS `Slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Slide` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Slide') DEFAULT 'Slide',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `AcademicSubjectPageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`),
  KEY `AcademicSubjectPageID` (`AcademicSubjectPageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Slide`
--

LOCK TABLES `Slide` WRITE;
/*!40000 ALTER TABLE `Slide` DISABLE KEYS */;
INSERT INTO `Slide` VALUES (1,'Slide','2016-03-30 23:13:01','2016-03-30 23:12:50',43,23),(2,'Slide','2016-03-30 23:15:05','2016-03-30 23:15:05',57,24);
/*!40000 ALTER TABLE `Slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SliderBlock`
--

DROP TABLE IF EXISTS `SliderBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SliderBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Section` varchar(50) DEFAULT NULL,
  `PageID` int(11) NOT NULL DEFAULT '0',
  `IconID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PageID` (`PageID`),
  KEY `IconID` (`IconID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SliderBlock`
--

LOCK TABLES `SliderBlock` WRITE;
/*!40000 ALTER TABLE `SliderBlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `SliderBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SliderItem`
--

DROP TABLE IF EXISTS `SliderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SliderItem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SliderID` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SliderID` (`SliderID`),
  KEY `PhotoID` (`PhotoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SliderItem`
--

LOCK TABLES `SliderItem` WRITE;
/*!40000 ALTER TABLE `SliderItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `SliderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Square3LinksBlock`
--

DROP TABLE IF EXISTS `Square3LinksBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Square3LinksBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Section` varchar(50) DEFAULT NULL,
  `Link1Text` varchar(50) DEFAULT NULL,
  `Link2Text` varchar(50) DEFAULT NULL,
  `Link3Text` varchar(50) DEFAULT NULL,
  `PageID` int(11) NOT NULL DEFAULT '0',
  `Link1ToID` int(11) NOT NULL DEFAULT '0',
  `Link2ToID` int(11) NOT NULL DEFAULT '0',
  `Link3ToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PageID` (`PageID`),
  KEY `Link1ToID` (`Link1ToID`),
  KEY `Link2ToID` (`Link2ToID`),
  KEY `Link3ToID` (`Link3ToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Square3LinksBlock`
--

LOCK TABLES `Square3LinksBlock` WRITE;
/*!40000 ALTER TABLE `Square3LinksBlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `Square3LinksBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tag`
--

DROP TABLE IF EXISTS `Tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Tag') DEFAULT 'Tag',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Slug` varchar(50) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tag`
--

LOCK TABLES `Tag` WRITE;
/*!40000 ALTER TABLE `Tag` DISABLE KEYS */;
INSERT INTO `Tag` VALUES (3,'Tag','2016-03-31 21:44:03','2016-03-31 21:44:03',NULL,'alumni','Alumni'),(4,'Tag','2016-03-31 21:44:03','2016-03-31 21:44:03',NULL,'a-level','A-Level'),(5,'Tag','2016-04-01 07:52:00','2016-04-01 07:52:00',NULL,'academic','Academic'),(6,'Tag','2016-04-01 07:52:00','2016-04-01 07:52:00',NULL,'life','Life'),(7,'Tag','2016-04-01 07:55:54','2016-04-01 07:55:54',NULL,'fashion','Fashion'),(8,'Tag','2016-04-01 07:57:10','2016-04-01 07:57:10',NULL,'exam','Exam'),(9,'Tag','2016-04-01 17:26:52','2016-04-01 17:26:52',NULL,'admissions','Admissions'),(10,'Tag','2016-04-01 21:20:47','2016-04-01 21:20:47',NULL,'generic','Generic');
/*!40000 ALTER TABLE `Tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeamMember`
--

DROP TABLE IF EXISTS `TeamMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeamMember` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('TeamMember') DEFAULT 'TeamMember',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CssClass` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Subtitle` varchar(50) DEFAULT NULL,
  `PhoneNumber1` varchar(50) DEFAULT NULL,
  `PhoneNumber2` varchar(50) DEFAULT NULL,
  `LifePageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `LifePageID` (`LifePageID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeamMember`
--

LOCK TABLES `TeamMember` WRITE;
/*!40000 ALTER TABLE `TeamMember` DISABLE KEYS */;
INSERT INTO `TeamMember` VALUES (2,'TeamMember','2016-03-12 09:55:48','2016-03-12 09:52:46','team-purple-1','C M','JACKSON','HEADMASTER','BEd',NULL,NULL,6),(3,'TeamMember','2016-03-12 09:56:31','2016-03-12 09:56:31','team-purple-1','KRB','JACKSON','HEADMASTER','MA',NULL,NULL,6),(4,'TeamMember','2016-03-12 09:57:33','2016-03-12 09:57:33','team-purple-2','JAMES','BAKER','DEPUTY HEAD AND DIRECTOR OF STAFF','MA PGCE',NULL,NULL,6),(5,'TeamMember','2016-03-12 09:58:22','2016-03-12 09:58:22','team-purple-2','DAVE','FONSEKA','DEPUTY HEAD AND DIRECTOR OF STUDENTS','BEd EDM MCMI',NULL,NULL,6),(6,'TeamMember','2016-03-12 09:59:02','2016-03-12 09:59:02','team-purple-2','ABI','HOYLE','DEPUTY HEAD AND DIRECTOR OF CURRICULUM','BA PGCE',NULL,NULL,6),(7,'TeamMember',NULL,'2016-03-12 10:01:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(8,'TeamMember','2016-03-12 10:03:08','2016-03-12 10:02:21','team-purple-3','JAMES','BAKER','BEATRICE WEBB HOUSE MASTER',NULL,'01483 279106','01306 730404',6),(9,'TeamMember','2016-03-12 10:03:51','2016-03-12 10:03:51','team-purple-3','TED','JACKSON','CORHNILL MANOR HOUSE MASTER',NULL,'01483 279199','01483 277621',6),(10,'TeamMember','2016-03-12 10:04:39','2016-03-12 10:04:39','team-purple-3','CATY','JAQUES','DAY HOUSE HOUSE MASTER',NULL,'01483 279152','01483 279000',6),(11,'TeamMember','2016-03-12 10:05:39','2016-03-12 10:05:39','team-purple-3','IAN','BARTER','EWHURST PLACE HOUSE MASTER',NULL,'01483 279117','01483 277251',6),(12,'TeamMember','2016-03-12 10:06:26','2016-03-12 10:06:26','team-purple-3','SOPHIE','MURENU','HURTWOOD HOUSE HOUSE MASTER',NULL,'01483 279170','01483 279000',6),(13,'TeamMember','2016-03-12 10:07:59','2016-03-12 10:07:22','team-purple-3','DOUG','QUINN','THE LODGE HOUSE MASTER',NULL,'01483 279155','01483 277642',6),(14,'TeamMember','2016-03-12 10:08:49','2016-03-12 10:08:49','team-purple-3','ADAM','GRANT','PEASLAKE HOUSE HOUSE MASTER',NULL,'01483 279172','01306 731481',6);
/*!40000 ALTER TABLE `TeamMember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Testimonial`
--

DROP TABLE IF EXISTS `Testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Testimonial` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Testimonial') DEFAULT 'Testimonial',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Content` mediumtext,
  `Author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Testimonial`
--

LOCK TABLES `Testimonial` WRITE;
/*!40000 ALTER TABLE `Testimonial` DISABLE KEYS */;
INSERT INTO `Testimonial` VALUES (1,'Testimonial','2016-04-01 21:20:47','2016-03-31 21:55:47','<p><span>Whilst I have been there it has been a great experience. A perfect mix of academics and social life! And above all the faculty is one of the best I have ever experienced.</span></p>','Roman Kauls, Past Student'),(2,'Testimonial','2016-04-01 21:20:58','2016-04-01 07:53:25','<p>Lorem ipsum dolor sit amet, ut nec wisi aeterno. Id veniam detraxit sea, eirmod accommodare duo ea. Est et dicta convenire. Qui utamur intellegat omittantur an, eu qui elit percipit legendos, quo ubique salutandi persequeris te. Qui no quas liber bonorum, ei consul vidisse eos, impedit conclusionemque nam at. Id atqui aliquip mea, duo an lobortis disputando, agam volumus placerat in vim.</p><p>Nam brute petentium hendrerit id, labitur mediocrem cum ut. Dicunt platonem et cum, propriae salutatus mnesarchum id vix, laudem facilisi te sit. Qui elit antiopam complectitur ea. Officiis torquatos pri no. Has ad facer audiam accusam.</p><p>Et nisl velit singulis mei. Mea denique vivendum ex. Est at nominati rationibus. Elit perpetua facilisis vel te. Minim diceret ei pri, usu stet vivendo complectitur ei, ei vix viderer labores veritus.</p><p>Mei ancillae similique ei, duis rebum simul vel id. Facer nominati interpretaris est no. Eum id quodsi ornatus repudiare, vel nostrud verterem at, dolorum detraxit pri at. Usu at sumo autem labore. Amet doming repudiandae eos ea.</p><p>No per semper maluisset, quo natum utamur ut, te cum everti offendit scaevola. Pro et cibo omittam, nec ei dignissim repudiandae. Id eam deserunt assueverit, ius eu aliquam invenire delicatissimi, ne est veri fuisset. Vidit pertinax duo no. Sed ne dicunt expetendis, nam ex errem quando labore.</p>','John'),(3,'Testimonial','2016-04-01 21:21:07','2016-04-01 07:54:44','<p>In eos aeterno posidonium. Sed no legere commodo maluisset. Et duo tota neglegentur. Ne sed possit volumus constituam, per nihil accommodare an.</p><p>Natum offendit ei nec, est ad tacimates adolescens constituto. Detraxit tacimates delicata eam ad, vocibus officiis eum ut, te incorrupte definitiones reprehendunt vis. Veritus expetenda est in, congue complectitur an est. Usu nisl ornatus definitiones in, an nam dicant oportere. An sea labore tibique ponderum, no tritani verterem senserit his. Temporibus liberavisse per cu, expetenda eloquentiam cu pro.</p>','Sharlto Copley'),(4,'Testimonial','2016-04-01 07:57:10','2016-04-01 07:56:40','<p>Ei equidem probatus patrioque vim, mei ne tritani detraxit, mollis assentior dissentias ea vel. Vix an omnesque electram definitiones. Et sed affert sensibus omittantur, an dicit scaevola insolens duo. Suas agam choro ut eum. Dicant munere aliquid ea sed, pro elitr aliquip vocibus an. Sit ex civibus molestie cotidieque, movet epicuri elaboraret ut ius.</p>','Danila Kozlovsky'),(5,'Testimonial','2016-04-01 21:21:18','2016-04-01 07:57:51','<p>Mel id audire dignissim, mel omnis viris concludaturque no. In vel scripta admodum inciderint. Vim ad vidit dicit. Soleat gubergren signiferumque ut eum, sea id assentior expetendis.</p><p>Has ne latine deseruisse omittantur. Quo audire pertinacia ne. Periculis expetendis temporibus mel no, et facete fabellas rationibus vim, id eos vero assum. Ne epicuri efficiendi necessitatibus cum. Id mel consul dictas principes, ne facilisi scribentur sea.</p><p>Nam quidam perpetua ea. At tempor platonem eos. Quod odio ut nam, alterum elaboraret ei eos. Qui ad purto paulo.</p><p>In solet sadipscing vis. Tota accusam similique eum ut. Eam exerci officiis eu, tantas incorrupte eos ut, ne eam delectus scripserit. Cu vel discere oporteat, propriae offendit laboramus an mel, minim labore pertinax no nec. Eu tale consequat torquatos sed.</p>','Haley Bennett'),(6,'Testimonial','2016-04-01 17:29:34','2016-04-01 17:29:22','<p>Oblique sapientem an his, utamur partiendo vim ei. Pri ea quod dicat dicit. Case definitionem ei sed. No quando utamur evertitur nam, an vel quem semper. Appareat atomorum ei est, graece ceteros omittantur mei et. Usu ut timeam sententiae.</p><p>Ius ei purto summo viris, nulla laboramus ut mel. Quo te homero fabellas. Id volutpat delicatissimi signiferumque his, pri in decore nusquam. Per id omnesque perfecto, vis dicit suscipit ex, no duo dicunt rationibus.</p><p>At has eirmod nonumes. Admodum omnesque oporteat eos ne. Aliquid luptatum usu ei, qui affert periculis ei, cu meliore fuisset vel. No eligendi detraxit pri. Te ludus possit nam, usu autem aperiam ei.</p><p>An tota ullum iusto eos, nisl signiferumque eam id. Postea necessitatibus in vix, placerat voluptaria definiebas eu qui. Has eius facer scripserit te. No vix illud oporteat corrumpit. Erat nemore partiendo eum te, pro elitr eruditi reformidans in, sit at melius sensibus torquatos.</p><p>Usu alienum molestie cu, sea paulo tamquam reprehendunt et. Quo quaestio sensibus disputando eu, ex appetere volutpat mel. Dolores iracundia eu vix, ei sint legere vis, habeo mutat liber mei in. Mei suas epicurei eu. Vix eu dicta tollit altera. Dolor legimus sea ea, usu sumo dicta te, eos facer noluisse argumentum ei. Ad sed rebum omittam scriptorem.</p><p>Sea an iusto partiendo, ne qui probo reprimique comprehensam. Facer graece interpretaris duo no, ei audiam dolorum eum, alienum signiferumque ex nec. Accusamus aliquando has cu, at unum utinam ius. Odio primis adolescens eum no, eu liber graecis interpretaris per. Ne affert commodo appellantur mea.</p><p>Justo laudem eligendi vim ut. Ferri liber ex duo, est paulo quaestio in, veri dictas fabulas ex duo. Est populo periculis sadipscing eu, te virtute inermis pri, ea prompta debitis convenire ius. Dolore atomorum at sit. Eius scaevola concludaturque ut eam, sale iriure mei an.</p><p>Mei utinam nusquam et. Eu altera dicunt accusamus has. Rebum porro affert ne sit. Id eam bonorum adipiscing. Qui legimus nonumes principes an, vis cu errem civibus.</p><p>Mel ei fierent omittam propriae, pro te malis labore admodum, eu has diam putant. At nobis solet admodum vis. Qui ea dolorum suscipit, omnis dicit intellegat id per. Te per nonumes dignissim, id omnes cetero sed. Duo ne illum tation tacimates, scripta consectetuer ius ei, ipsum equidem est no. No vis iisque assentior, eu sea quis maluisset splendide, cum natum tacimates antiopam eu.</p><p>His at minimum elaboraret, quis velit ex cum, mei at eros aperiam oporteat. Et aliquid corrumpit has. Id pro pertinacia concludaturque. Viderer lucilius facilisis nam no. At eos probo oportere, malis detracto eos te, has hinc adolescens et. Eos te nisl dicunt molestie, id senserit constituto persequeris quo. Eirmod mandamus deterruisset vis eu.</p>','Adam West');
/*!40000 ALTER TABLE `Testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Testimonial_Tags`
--

DROP TABLE IF EXISTS `Testimonial_Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Testimonial_Tags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TestimonialID` int(11) NOT NULL DEFAULT '0',
  `TagID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `TestimonialID` (`TestimonialID`),
  KEY `TagID` (`TagID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Testimonial_Tags`
--

LOCK TABLES `Testimonial_Tags` WRITE;
/*!40000 ALTER TABLE `Testimonial_Tags` DISABLE KEYS */;
INSERT INTO `Testimonial_Tags` VALUES (1,1,3),(2,1,5),(3,1,6),(4,2,6),(5,2,3),(6,3,7),(7,3,5),(8,4,6),(9,4,8),(10,5,6),(11,5,3),(12,5,9),(13,6,9),(14,6,6),(15,1,10),(16,2,10),(17,3,10),(18,5,10);
/*!40000 ALTER TABLE `Testimonial_Tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `University`
--

DROP TABLE IF EXISTS `University`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `University` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('University') DEFAULT 'University',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `LifeStudentsPageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`),
  KEY `LifeStudentsPageID` (`LifeStudentsPageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `University`
--

LOCK TABLES `University` WRITE;
/*!40000 ALTER TABLE `University` DISABLE KEYS */;
INSERT INTO `University` VALUES (1,'University','2016-03-18 10:56:04','2016-03-18 10:56:04','University of Cambridge',89,12),(2,'University','2016-03-18 10:57:05','2016-03-18 10:57:05','The Royal Academy of Dramatic Art',90,12),(3,'University','2016-03-18 10:57:42','2016-03-18 10:57:42','University of Oxford',91,12);
/*!40000 ALTER TABLE `University` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage`
--

DROP TABLE IF EXISTS `VirtualPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage`
--

LOCK TABLES `VirtualPage` WRITE;
/*!40000 ALTER TABLE `VirtualPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_Live`
--

DROP TABLE IF EXISTS `VirtualPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage_Live`
--

LOCK TABLES `VirtualPage_Live` WRITE;
/*!40000 ALTER TABLE `VirtualPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_versions`
--

DROP TABLE IF EXISTS `VirtualPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage_versions`
--

LOCK TABLES `VirtualPage_versions` WRITE;
/*!40000 ALTER TABLE `VirtualPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obsolete_AcademicBusinessPage`
--

DROP TABLE IF EXISTS `_obsolete_AcademicBusinessPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_obsolete_AcademicBusinessPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Subtitle` varchar(255) DEFAULT NULL,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obsolete_AcademicBusinessPage`
--

LOCK TABLES `_obsolete_AcademicBusinessPage` WRITE;
/*!40000 ALTER TABLE `_obsolete_AcademicBusinessPage` DISABLE KEYS */;
INSERT INTO `_obsolete_AcademicBusinessPage` VALUES (19,'CONSTANTLY EVOLVING TO REFLECT CHANGES ON AN ALMOST-DAILY BASIS',16);
/*!40000 ALTER TABLE `_obsolete_AcademicBusinessPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obsolete_AcademicBusinessPage_Live`
--

DROP TABLE IF EXISTS `_obsolete_AcademicBusinessPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_obsolete_AcademicBusinessPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Subtitle` varchar(255) DEFAULT NULL,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obsolete_AcademicBusinessPage_Live`
--

LOCK TABLES `_obsolete_AcademicBusinessPage_Live` WRITE;
/*!40000 ALTER TABLE `_obsolete_AcademicBusinessPage_Live` DISABLE KEYS */;
INSERT INTO `_obsolete_AcademicBusinessPage_Live` VALUES (19,'CONSTANTLY EVOLVING TO REFLECT CHANGES ON AN ALMOST-DAILY BASIS',16);
/*!40000 ALTER TABLE `_obsolete_AcademicBusinessPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obsolete_AcademicBusinessPage_versions`
--

DROP TABLE IF EXISTS `_obsolete_AcademicBusinessPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_obsolete_AcademicBusinessPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Subtitle` varchar(255) DEFAULT NULL,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obsolete_AcademicBusinessPage_versions`
--

LOCK TABLES `_obsolete_AcademicBusinessPage_versions` WRITE;
/*!40000 ALTER TABLE `_obsolete_AcademicBusinessPage_versions` DISABLE KEYS */;
INSERT INTO `_obsolete_AcademicBusinessPage_versions` VALUES (1,19,3,'CONSTANTLY EVOLVING TO  REFLECT CHANGES ON AN ALMOST-DAILY BASIS',14),(2,19,4,'CONSTANTLY EVOLVING TO REFLECT CHANGES ON AN ALMOST-DAILY BASIS',16),(3,19,5,'CONSTANTLY EVOLVING TO REFLECT CHANGES ON AN ALMOST-DAILY BASIS',16);
/*!40000 ALTER TABLE `_obsolete_AcademicBusinessPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obsolete_LifeEnigmaPage`
--

DROP TABLE IF EXISTS `_obsolete_LifeEnigmaPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_obsolete_LifeEnigmaPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obsolete_LifeEnigmaPage`
--

LOCK TABLES `_obsolete_LifeEnigmaPage` WRITE;
/*!40000 ALTER TABLE `_obsolete_LifeEnigmaPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `_obsolete_LifeEnigmaPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obsolete_LifeEnigmaPage_Live`
--

DROP TABLE IF EXISTS `_obsolete_LifeEnigmaPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_obsolete_LifeEnigmaPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obsolete_LifeEnigmaPage_Live`
--

LOCK TABLES `_obsolete_LifeEnigmaPage_Live` WRITE;
/*!40000 ALTER TABLE `_obsolete_LifeEnigmaPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `_obsolete_LifeEnigmaPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obsolete_LifeEnigmaPage_versions`
--

DROP TABLE IF EXISTS `_obsolete_LifeEnigmaPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_obsolete_LifeEnigmaPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeroSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroSectionID` (`HeroSectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obsolete_LifeEnigmaPage_versions`
--

LOCK TABLES `_obsolete_LifeEnigmaPage_versions` WRITE;
/*!40000 ALTER TABLE `_obsolete_LifeEnigmaPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_obsolete_LifeEnigmaPage_versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-04 18:35:54
