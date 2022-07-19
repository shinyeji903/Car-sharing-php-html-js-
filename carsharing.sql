-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: carsharing
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business` (
  `BusinessName` char(15) NOT NULL,
  `BusinessCode` int DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Phone` char(20) DEFAULT NULL,
  `CeoName` char(20) DEFAULT NULL,
  PRIMARY KEY (`BusinessName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES ('그린카',220891595,'서울특별시 강남구 테헤란로 70길 16(대치동)','080-2000-3000','김상원'),('쏘카',616819052,'제주특별자치도 제주시 연미길 42(오라삼동)','080-1661-3315','박재욱'),('피플카',314865394,'서울특별시 서초구 반포대로 27길 16 파크빌딩','080-1600-6038','안종형');
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `CarNum` char(10) NOT NULL,
  `CarName` varchar(20) DEFAULT NULL,
  `CarColor` char(10) DEFAULT NULL,
  `CarPrice` int DEFAULT NULL,
  `CarCompany` char(10) DEFAULT NULL,
  `CarOil` char(10) DEFAULT NULL,
  `CarBusinessName` char(15) DEFAULT NULL,
  `CarParkinglotID` char(10) DEFAULT NULL,
  PRIMARY KEY (`CarNum`),
  KEY `CarBusinessName` (`CarBusinessName`),
  KEY `CarParkinglotID` (`CarParkinglotID`),
  CONSTRAINT `car_ibfk_1` FOREIGN KEY (`CarBusinessName`) REFERENCES `business` (`BusinessName`),
  CONSTRAINT `car_ibfk_2` FOREIGN KEY (`CarParkinglotID`) REFERENCES `parkinglot` (`ParkinglotID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES ('04하 9512','코나','흰색',6942,'현대','전기','쏘카','지혜003'),('04호 7626','쏘울','흰색',6650,'기아','전기','그린카','승리006'),('101하 4147','올뉴아반떼하이브리드','흰색',6250,'현대','휘발유','그린카','목양001'),('124호 4268','올뉴아반떼하이브리드','검은색',6420,'현대','휘발유','피플카','목양001'),('128하 4012','셀토스1.6','흰색',7175,'기아','디젤','쏘카','진리002'),('128호 9540','올뉴카니발','흰색',8840,'기아','디젤','피플카','목양001'),('14허 8227','티볼리 아머','흰색',6250,'쌍용','디젤','쏘카','본부005'),('29호 1693','코나','검은색',6071,'현대','전기','피플카','지혜003'),('44호 5462','그렌저 IG','검은색',8163,'현대','휘발유','피플카','창조004'),('64허 0886','베뉴','흰색',6071,'현대','휘발유','그린카','진리002');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` varchar(45) NOT NULL,
  `CustomerName` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Licence` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Phone` int NOT NULL,
  `BirthDate` int NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('777888','wonjun Lee','M','서울시 동작구 사당3동','1종보통','ddddd',25346715,988888),('lwj980406','이원준','M','서울시 동작구 사당3동','1s','7894',25346715,988888),('lwj980406aa','wonjun Lee','F','서울시 동작구 사당3동','1종대형','12313123',25346715,1122),('wj6715','wonjun Lee','M','서울시 동작구 사당3동','1s','1234',25346715,980406),('wj67151','wonjun Lee','M','서울시 동작구 사당3동','1종특수','11',25346715,9804006),('wwwww','wonjun Lee','M','서울시 동작구 사당3동','1종특수','1211',25346715,7878787);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fix`
--

DROP TABLE IF EXISTS `fix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fix` (
  `FixID` char(10) NOT NULL,
  `FixPart` char(20) DEFAULT NULL,
  `FixCarNum` char(10) DEFAULT NULL,
  PRIMARY KEY (`FixID`),
  KEY `FixCarNum` (`FixCarNum`),
  CONSTRAINT `fix_ibfk_1` FOREIGN KEY (`FixCarNum`) REFERENCES `car` (`CarNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fix`
--

LOCK TABLES `fix` WRITE;
/*!40000 ALTER TABLE `fix` DISABLE KEYS */;
INSERT INTO `fix` VALUES ('F001','타이어','101하 4147'),('F002','냉각수','64허 0886'),('F003','브레이크 패드','29호 1693'),('F004','휠','128하 4012'),('F005','에어컨','128호 9540'),('F006','타이어','44호 5462'),('F007','와이퍼','14허 8227');
/*!40000 ALTER TABLE `fix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `InsNum` char(10) NOT NULL,
  `InsCoName` char(10) DEFAULT NULL,
  `InsName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`InsNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES ('DB001','DB','DB 손해보험 다이렉트'),('HD001','현대','현대해상 다이렉트'),('KB001','국민','KB 손해보험 다이렉트'),('SS001','삼성','삼성화재 다이렉트');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintain`
--

DROP TABLE IF EXISTS `maintain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintain` (
  `MaintainCarNum` char(10) NOT NULL,
  `MaintainFixID` char(10) NOT NULL,
  `MaintainStart` char(20) DEFAULT NULL,
  `MaintainEnd` char(20) DEFAULT NULL,
  `MaintainPrice` int DEFAULT NULL,
  PRIMARY KEY (`MaintainCarNum`,`MaintainFixID`),
  KEY `MaintainFixID` (`MaintainFixID`),
  CONSTRAINT `maintain_ibfk_1` FOREIGN KEY (`MaintainCarNum`) REFERENCES `car` (`CarNum`),
  CONSTRAINT `maintain_ibfk_2` FOREIGN KEY (`MaintainFixID`) REFERENCES `fix` (`FixID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintain`
--

LOCK TABLES `maintain` WRITE;
/*!40000 ALTER TABLE `maintain` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parkinglot`
--

DROP TABLE IF EXISTS `parkinglot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parkinglot` (
  `ParkinglotID` char(10) NOT NULL,
  `ParkinglotName` char(30) DEFAULT NULL,
  PRIMARY KEY (`ParkinglotID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parkinglot`
--

LOCK TABLES `parkinglot` WRITE;
/*!40000 ALTER TABLE `parkinglot` DISABLE KEYS */;
INSERT INTO `parkinglot` VALUES ('목양001','목양관 앞 주차장'),('본부005','본부동 앞 주차장'),('승리006','승리관 앞 주차장'),('지혜003','지혜관 앞 주차장'),('진리002','진리관 앞 주차장'),('창조004','창조관 앞 주차장');
/*!40000 ALTER TABLE `parkinglot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `ResCarNum` char(10) NOT NULL,
  `ResCustomerID` varchar(45) NOT NULL,
  `ResStart` char(20) DEFAULT NULL,
  `ResEnd` char(20) DEFAULT NULL,
  `ResTime` char(10) DEFAULT NULL,
  `ResPrice` int DEFAULT NULL,
  PRIMARY KEY (`ResCarNum`,`ResCustomerID`),
  KEY `ResCustomerID` (`ResCustomerID`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`ResCarNum`) REFERENCES `car` (`CarNum`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`ResCustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-10 18:10:37
