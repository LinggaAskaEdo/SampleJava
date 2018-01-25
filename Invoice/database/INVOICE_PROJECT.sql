-- MySQL dump 10.15  Distrib 10.0.33-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: INVOICE_PROJECT
-- ------------------------------------------------------
-- Server version	10.0.33-MariaDB-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `COST_OPERASIONAL`
--

DROP TABLE IF EXISTS `COST_OPERASIONAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COST_OPERASIONAL` (
  `COST_OPERASIONAL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MASTER_DANA_ID` int(11) NOT NULL,
  `PIC` varchar(45) NOT NULL,
  `KEPERLUAN` varchar(150) NOT NULL,
  `TANGGAL_PEMBELIAN` date NOT NULL,
  PRIMARY KEY (`COST_OPERASIONAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COST_OPERASIONAL`
--

LOCK TABLES `COST_OPERASIONAL` WRITE;
/*!40000 ALTER TABLE `COST_OPERASIONAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `COST_OPERASIONAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DETAIL_EVENT`
--

DROP TABLE IF EXISTS `DETAIL_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DETAIL_EVENT` (
  `DETAIL_EVENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_EVENT_ID` int(11) NOT NULL,
  `URAIAN` varchar(45) NOT NULL,
  `DETAIL` varchar(45) NOT NULL,
  `VOL_1` int(11) NOT NULL,
  `VOL_2` int(11) NOT NULL,
  `HARGA_SATUAN` decimal(17,4) NOT NULL,
  `TOTAL` decimal(17,4) NOT NULL,
  PRIMARY KEY (`DETAIL_EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DETAIL_EVENT`
--

LOCK TABLES `DETAIL_EVENT` WRITE;
/*!40000 ALTER TABLE `DETAIL_EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `DETAIL_EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DETAIL_PRODUKSI`
--

DROP TABLE IF EXISTS `DETAIL_PRODUKSI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DETAIL_PRODUKSI` (
  `DETAIL_PRODUKSI_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_PRODUKSI_ID` int(11) NOT NULL,
  `MEDIA` varchar(45) NOT NULL,
  `DURASI` varchar(45) NOT NULL,
  `HARI` varchar(45) NOT NULL,
  `LOKASI` varchar(150) NOT NULL,
  `PRE_PRODUKSI_URAIAN` varchar(150) NOT NULL,
  `PRE_PRODUKSI_JENIS` varchar(45) NOT NULL,
  `PRODUKSI_JENIS` varchar(45) NOT NULL,
  `PRODUKSI_JUMLAH` varchar(45) NOT NULL,
  `PRODUKSI_BARANG` varchar(45) NOT NULL,
  `PRODUKSI_HARGA_SATUAN` decimal(17,4) NOT NULL,
  `PRODUKSI_TOTAL_HARGA` decimal(17,4) NOT NULL,
  `POST_PRODUKSI_BARANG` varchar(45) NOT NULL,
  `POST_PRODUKSI_TOTAL_HARGA` decimal(17,4) NOT NULL,
  PRIMARY KEY (`DETAIL_PRODUKSI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DETAIL_PRODUKSI`
--

LOCK TABLES `DETAIL_PRODUKSI` WRITE;
/*!40000 ALTER TABLE `DETAIL_PRODUKSI` DISABLE KEYS */;
/*!40000 ALTER TABLE `DETAIL_PRODUKSI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DETAIL_REIMBURSE`
--

DROP TABLE IF EXISTS `DETAIL_REIMBURSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DETAIL_REIMBURSE` (
  `DETAIL_REIMBURSE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_EVENT_ID` int(11) NOT NULL,
  `URAIAN` varchar(45) NOT NULL,
  `DETAIL` varchar(45) NOT NULL,
  `HARGA` decimal(17,4) NOT NULL,
  PRIMARY KEY (`DETAIL_REIMBURSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DETAIL_REIMBURSE`
--

LOCK TABLES `DETAIL_REIMBURSE` WRITE;
/*!40000 ALTER TABLE `DETAIL_REIMBURSE` DISABLE KEYS */;
/*!40000 ALTER TABLE `DETAIL_REIMBURSE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FUNDING`
--

DROP TABLE IF EXISTS `FUNDING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FUNDING` (
  `FUNDING_ID` int(11) NOT NULL AUTO_INCREMENT,
  `KONTRAK_ID` int(11) NOT NULL,
  `TANGGAL` date NOT NULL,
  `NILAI` decimal(17,4) NOT NULL,
  `KETERANGAN` varchar(150) NOT NULL,
  PRIMARY KEY (`FUNDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FUNDING`
--

LOCK TABLES `FUNDING` WRITE;
/*!40000 ALTER TABLE `FUNDING` DISABLE KEYS */;
/*!40000 ALTER TABLE `FUNDING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KONTRAK`
--

DROP TABLE IF EXISTS `KONTRAK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KONTRAK` (
  `KONTRAK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MASTER_PERUSAHAAN_ID` int(11) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `ADDRESS` varchar(150) NOT NULL,
  `NO_NPWP` varchar(45) NOT NULL,
  `PROJECT` varchar(45) NOT NULL,
  `DATE` date NOT NULL,
  `NILAI_KONTRAK` decimal(17,4) NOT NULL,
  `DPP` decimal(17,4) NOT NULL,
  `PPN` decimal(17,4) NOT NULL,
  `PPH_23` decimal(17,4) NOT NULL,
  `SP_2D` decimal(17,4) NOT NULL,
  PRIMARY KEY (`KONTRAK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KONTRAK`
--

LOCK TABLES `KONTRAK` WRITE;
/*!40000 ALTER TABLE `KONTRAK` DISABLE KEYS */;
/*!40000 ALTER TABLE `KONTRAK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_CLIENT`
--

DROP TABLE IF EXISTS `MASTER_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MASTER_CLIENT` (
  `MASTER_CLIENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `ADDRESS` varchar(150) NOT NULL,
  `NO_NPWP` varchar(45) NOT NULL,
  `SATKER_PPK` varchar(45) NOT NULL,
  `INFORMATION` varchar(150) NOT NULL,
  PRIMARY KEY (`MASTER_CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_CLIENT`
--

LOCK TABLES `MASTER_CLIENT` WRITE;
/*!40000 ALTER TABLE `MASTER_CLIENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `MASTER_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_DANA`
--

DROP TABLE IF EXISTS `MASTER_DANA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MASTER_DANA` (
  `MASTER_DANA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NO_BANK_ACCOUNT` varchar(45) NOT NULL,
  `NAME_BANK_ACCOUNT` varchar(45) NOT NULL,
  `TOTAL_CASH` decimal(17,4) NOT NULL,
  PRIMARY KEY (`MASTER_DANA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_DANA`
--

LOCK TABLES `MASTER_DANA` WRITE;
/*!40000 ALTER TABLE `MASTER_DANA` DISABLE KEYS */;
/*!40000 ALTER TABLE `MASTER_DANA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_EVENT`
--

DROP TABLE IF EXISTS `MASTER_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MASTER_EVENT` (
  `MASTER_EVENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `ADDRESS` varchar(150) NOT NULL,
  `NO_NPWP` varchar(45) NOT NULL,
  `INFORMATION` varchar(150) NOT NULL,
  PRIMARY KEY (`MASTER_EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_EVENT`
--

LOCK TABLES `MASTER_EVENT` WRITE;
/*!40000 ALTER TABLE `MASTER_EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `MASTER_EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_MEDIA`
--

DROP TABLE IF EXISTS `MASTER_MEDIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MASTER_MEDIA` (
  `MASTER_MEDIA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANY_NAME` varchar(45) NOT NULL,
  `MEDIA_NAME` varchar(45) NOT NULL,
  `ADDRESS` varchar(150) NOT NULL,
  `NO_NPWP` varchar(45) NOT NULL,
  `BILL_COMMITMENT` varchar(45) NOT NULL,
  `INFORMATION` varchar(45) NOT NULL,
  `PPN_IMAGE` blob NOT NULL,
  PRIMARY KEY (`MASTER_MEDIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_MEDIA`
--

LOCK TABLES `MASTER_MEDIA` WRITE;
/*!40000 ALTER TABLE `MASTER_MEDIA` DISABLE KEYS */;
/*!40000 ALTER TABLE `MASTER_MEDIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_PERUSAHAAN`
--

DROP TABLE IF EXISTS `MASTER_PERUSAHAAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MASTER_PERUSAHAAN` (
  `MASTER_PERUSAHAAN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(45) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `ADDRESS` varchar(150) NOT NULL,
  `NO_NPWP` varchar(45) NOT NULL,
  `CONTACT_NUMBER` varchar(45) NOT NULL,
  `NO_BANK_ACCOUNT` varchar(45) NOT NULL,
  `FEE_AGENCY` varchar(45) NOT NULL,
  PRIMARY KEY (`MASTER_PERUSAHAAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_PERUSAHAAN`
--

LOCK TABLES `MASTER_PERUSAHAAN` WRITE;
/*!40000 ALTER TABLE `MASTER_PERUSAHAAN` DISABLE KEYS */;
/*!40000 ALTER TABLE `MASTER_PERUSAHAAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_PRODUKSI`
--

DROP TABLE IF EXISTS `MASTER_PRODUKSI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MASTER_PRODUKSI` (
  `MASTER_PRODUKSI_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `ADDRESS` varchar(150) NOT NULL,
  `NO_NPWP` varchar(45) NOT NULL,
  `INFORMATION` varchar(150) NOT NULL,
  PRIMARY KEY (`MASTER_PRODUKSI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_PRODUKSI`
--

LOCK TABLES `MASTER_PRODUKSI` WRITE;
/*!40000 ALTER TABLE `MASTER_PRODUKSI` DISABLE KEYS */;
/*!40000 ALTER TABLE `MASTER_PRODUKSI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PO_EVENT`
--

DROP TABLE IF EXISTS `PO_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PO_EVENT` (
  `PO_EVENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_EVENT_NO` varchar(45) NOT NULL,
  `KONTRAK_ID` int(11) NOT NULL,
  `KEGIATAN` varchar(45) NOT NULL,
  `TANGGAL` date NOT NULL,
  `JUMLAH` decimal(17,4) NOT NULL,
  `KETERANGAN` varchar(150) NOT NULL,
  `BUKTI` blob NOT NULL,
  PRIMARY KEY (`PO_EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PO_EVENT`
--

LOCK TABLES `PO_EVENT` WRITE;
/*!40000 ALTER TABLE `PO_EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PO_EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PO_MEDIA`
--

DROP TABLE IF EXISTS `PO_MEDIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PO_MEDIA` (
  `PO_MEDIA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_MEDIA_NO` varchar(45) NOT NULL,
  `KONTRAK_ID` int(11) NOT NULL,
  `PEKERJAAN_KEMENTERIAN` varchar(45) NOT NULL,
  `MASTER_MEDIA_ID` int(11) NOT NULL,
  `TANGGAL_TAYANG` date NOT NULL,
  `UKURAN` varchar(45) NOT NULL,
  `HARGA` decimal(17,4) NOT NULL,
  `PPN` decimal(17,4) NOT NULL,
  `KETERANGAN` varchar(150) NOT NULL,
  `BUKTI_POTONG_PPH` blob NOT NULL,
  PRIMARY KEY (`PO_MEDIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PO_MEDIA`
--

LOCK TABLES `PO_MEDIA` WRITE;
/*!40000 ALTER TABLE `PO_MEDIA` DISABLE KEYS */;
/*!40000 ALTER TABLE `PO_MEDIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PO_PRODUKSI`
--

DROP TABLE IF EXISTS `PO_PRODUKSI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PO_PRODUKSI` (
  `PO_PRODUKSI_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_PRODUKSI_NO` varchar(45) NOT NULL,
  `KONTRAK_ID` int(11) NOT NULL,
  `PRODUKSI` varchar(45) NOT NULL,
  `TANGGAL` date NOT NULL,
  `NILAI_PRODUKSI` decimal(17,4) NOT NULL,
  `KETERANGAN` varchar(150) NOT NULL,
  PRIMARY KEY (`PO_PRODUKSI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PO_PRODUKSI`
--

LOCK TABLES `PO_PRODUKSI` WRITE;
/*!40000 ALTER TABLE `PO_PRODUKSI` DISABLE KEYS */;
/*!40000 ALTER TABLE `PO_PRODUKSI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAGIHAN_MEDIA`
--

DROP TABLE IF EXISTS `TAGIHAN_MEDIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAGIHAN_MEDIA` (
  `TAGIHAN_MEDIA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_MEDIA_ID` int(11) NOT NULL,
  `INVOICE_MEDIA` blob NOT NULL,
  `TANGGAL` date NOT NULL,
  `NILAI_TAGIHAN` decimal(17,4) NOT NULL,
  `FUNDING_ID` int(11) NOT NULL,
  PRIMARY KEY (`TAGIHAN_MEDIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAGIHAN_MEDIA`
--

LOCK TABLES `TAGIHAN_MEDIA` WRITE;
/*!40000 ALTER TABLE `TAGIHAN_MEDIA` DISABLE KEYS */;
/*!40000 ALTER TABLE `TAGIHAN_MEDIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAGIHAN_REIMBURSE`
--

DROP TABLE IF EXISTS `TAGIHAN_REIMBURSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAGIHAN_REIMBURSE` (
  `TAGIHAN_REIMBURSE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATATAN` varchar(150) NOT NULL,
  `TANGGAL` date NOT NULL,
  `FUNDING_ID` int(11) NOT NULL,
  `KETERANGAN` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`TAGIHAN_REIMBURSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAGIHAN_REIMBURSE`
--

LOCK TABLES `TAGIHAN_REIMBURSE` WRITE;
/*!40000 ALTER TABLE `TAGIHAN_REIMBURSE` DISABLE KEYS */;
/*!40000 ALTER TABLE `TAGIHAN_REIMBURSE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(45) NOT NULL,
  `USER_PASSWORD` varchar(45) NOT NULL,
  `IS_ADMIN` tinyint(1) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-25 17:51:57