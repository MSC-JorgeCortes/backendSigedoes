CREATE DATABASE  IF NOT EXISTS `sigedoes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE  */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sigedoes`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: sigedoes
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `acreditadoglobales`
--

DROP TABLE IF EXISTS `acreditadoglobales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acreditadoglobales` (
  `idacreditadoGlobal` int NOT NULL AUTO_INCREMENT,
  `idglobales` int NOT NULL,
  `fecha` date NOT NULL,
  `idSolicitud` int NOT NULL,
  `acreditado` tinyint NOT NULL,
  PRIMARY KEY (`idacreditadoGlobal`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acreditadoglobales`
--

LOCK TABLES `acreditadoglobales` WRITE;
/*!40000 ALTER TABLE `acreditadoglobales` DISABLE KEYS */;
/*!40000 ALTER TABLE `acreditadoglobales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acreditadorecursa`
--

DROP TABLE IF EXISTS `acreditadorecursa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acreditadorecursa` (
  `idacreditadoRecursa` int NOT NULL,
  `idrecursa` int NOT NULL,
  `numControl` varchar(14) NOT NULL,
  `idperiodoEscolar` varchar(30) NOT NULL,
  PRIMARY KEY (`idacreditadoRecursa`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acreditadorecursa`
--

LOCK TABLES `acreditadorecursa` WRITE;
/*!40000 ALTER TABLE `acreditadorecursa` DISABLE KEYS */;
/*!40000 ALTER TABLE `acreditadorecursa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrativo`
--

DROP TABLE IF EXISTS `administrativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrativo` (
  `numControl` varchar(44) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `departamento` varchar(45) NOT NULL,
  `turno` varchar(45) NOT NULL,
  `CURP` varchar(20) NOT NULL,
  `nivelOperativo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`numControl`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrativo`
--

LOCK TABLES `administrativo` WRITE;
/*!40000 ALTER TABLE `administrativo` DISABLE KEYS */;
INSERT INTO `administrativo` VALUES ('admin','CBTIS 66','2747431019','Control Escolar','Matutino','X',NULL),('admin@cbtis66.edu.mx','calle 16 de Septiembre  # 1605','2741145286','Control Escolar','Matutino','CODJ721205HVZRMR05','9');
/*!40000 ALTER TABLE `administrativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `numControl` varchar(44) NOT NULL,
  `fechaNac` varchar(45) DEFAULT NULL,
  `direccion` varchar(150) NOT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `especialidad` varchar(45) NOT NULL,
  `area` varchar(45) NOT NULL,
  `grado` varchar(45) NOT NULL,
  `grupo` varchar(45) NOT NULL,
  `turno` varchar(45) NOT NULL,
  `CTO` varchar(100) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `CURP` varchar(20) NOT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `twitter` varchar(45) DEFAULT NULL,
  `instagram` varchar(45) DEFAULT NULL,
  `horario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`numControl`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES ('1400025G87',NULL,'SSSSSSSSSSSSSSSSSSSSSS',NULL,'ELECTRICIDAD','FISICO-MATEMATICO','Quinto','E','MATUTINO','30DCT0236O','jorge@cbtis66.edu.mx','CODJ721205HVZRMR05',NULL,NULL,NULL,NULL),('721205',NULL,'16 de Septiembre 1605',NULL,'Programacion','a','5','G','Matutino','30DCT0236O','jorge@cbtis66.edu.mx','CODJ721205HVZRMR05',NULL,NULL,NULL,NULL),('admin',NULL,'16 DE SEPTIEMPRE 1605',NULL,'PROGRAMACION','FISICO-MATEMATICO','Tercer','G','MATUTINO','30DCT0236O','jorge@cbtis66.edu.mx','CODJ721205HVZRMR05',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asiglobalum`
--

DROP TABLE IF EXISTS `asiglobalum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asiglobalum` (
  `idasigloba` int NOT NULL,
  `numControl` varchar(14) NOT NULL,
  `materia` varchar(30) NOT NULL,
  `idperiodoEscolar` varchar(30) NOT NULL,
  PRIMARY KEY (`idasigloba`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiglobalum`
--

LOCK TABLES `asiglobalum` WRITE;
/*!40000 ALTER TABLE `asiglobalum` DISABLE KEYS */;
/*!40000 ALTER TABLE `asiglobalum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asiglobd`
--

DROP TABLE IF EXISTS `asiglobd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asiglobd` (
  `idasiglobd` int NOT NULL,
  `materia` varchar(45) NOT NULL,
  `idperiodoEscolar` varchar(30) NOT NULL,
  `lugar` varchar(10) NOT NULL,
  `hora` date NOT NULL,
  `docente` varchar(30) NOT NULL,
  PRIMARY KEY (`idasiglobd`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiglobd`
--

LOCK TABLES `asiglobd` WRITE;
/*!40000 ALTER TABLE `asiglobd` DISABLE KEYS */;
/*!40000 ALTER TABLE `asiglobd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asigrecuralumno`
--

DROP TABLE IF EXISTS `asigrecuralumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asigrecuralumno` (
  `idasigrecuralumno` int NOT NULL,
  `numControl` varchar(14) NOT NULL,
  `materia` varchar(30) NOT NULL,
  `idperiodoEscolar` varchar(30) NOT NULL,
  PRIMARY KEY (`idasigrecuralumno`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asigrecuralumno`
--

LOCK TABLES `asigrecuralumno` WRITE;
/*!40000 ALTER TABLE `asigrecuralumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `asigrecuralumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asigrecurdoc`
--

DROP TABLE IF EXISTS `asigrecurdoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asigrecurdoc` (
  `idasigrecurdoc` int NOT NULL,
  `materiadoc` varchar(45) NOT NULL,
  `idperiodoEscolar` varchar(30) NOT NULL,
  `Lugar` varchar(10) NOT NULL,
  `Hora` date NOT NULL,
  `Docente` varchar(30) NOT NULL,
  PRIMARY KEY (`idasigrecurdoc`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asigrecurdoc`
--

LOCK TABLES `asigrecurdoc` WRITE;
/*!40000 ALTER TABLE `asigrecurdoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `asigrecurdoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `numControl` varchar(45) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `gradoAcademico` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `RFC` varchar(45) NOT NULL,
  `CURP` varchar(45) NOT NULL,
  `CEDULA` varchar(45) NOT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `instagram` varchar(45) DEFAULT NULL,
  `twitter` varchar(45) DEFAULT NULL,
  `fechaNac` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`numControl`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES ('721205',NULL,'MSC SISTEMAS COMPUTACIONALES','2741145286','CODJ721205FC3','X','X',NULL,NULL,NULL,NULL),('jorge@cbtis66.edu.mx','calle 16 de Septiembre  # 1605','MSC SISTEMAS COMPUTACIONALES','2741145286','CODJ721205FC3','CODJ721205HVZRMR05','23131231232','','','','1972-12-05'),('jorgecd@cbtis66.edu.mx','calle 16 de Septiembre  # 1605','MSC SISTEMAS COMPUTACIONALES','+522741145286','CODJ721205FC3','CODJ721205HVZRMR05','23131231232','','','','2023-10-02');
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escuela`
--

DROP TABLE IF EXISTS `escuela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escuela` (
  `CTO` varchar(15) NOT NULL,
  `Esc_nombre` varchar(150) NOT NULL,
  `Esc_direccion` varchar(150) NOT NULL,
  `Esc_correo` varchar(45) NOT NULL,
  `Esc_telefono` varchar(12) NOT NULL,
  `Esc_Director` varchar(45) NOT NULL,
  `Esc_Periodo` varchar(45) NOT NULL,
  PRIMARY KEY (`CTO`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escuela`
--

LOCK TABLES `escuela` WRITE;
/*!40000 ALTER TABLE `escuela` DISABLE KEYS */;
INSERT INTO `escuela` VALUES ('30DCT0236O','Centro de Bachillerato Tecnológico Industrial y de Servicios No. 066 “Agustín de Iturbide”','XXXX','XXXXX','XXXXX','MC DANIEL SERRA BERNAL','29 de Agosto al 13 de Diciembre del 2022');
/*!40000 ALTER TABLE `escuela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `forgotpassword`
--

DROP TABLE IF EXISTS `forgotpassword`;
/*!50001 DROP VIEW IF EXISTS `forgotpassword`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `forgotpassword` AS SELECT 
 1 AS `nombre`,
 1 AS `apellidoP`,
 1 AS `apellidoM`,
 1 AS `numControl`,
 1 AS `password`,
 1 AS `correo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `globales`
--

DROP TABLE IF EXISTS `globales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `globales` (
  `idglobales` int NOT NULL AUTO_INCREMENT,
  `numControl` varchar(14) NOT NULL,
  `materia` varchar(45) NOT NULL,
  `idperiodoEscolar` varchar(430) NOT NULL,
  PRIMARY KEY (`idglobales`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globales`
--

LOCK TABLES `globales` WRITE;
/*!40000 ALTER TABLE `globales` DISABLE KEYS */;
/*!40000 ALTER TABLE `globales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `listausernoreg`
--

DROP TABLE IF EXISTS `listausernoreg`;
/*!50001 DROP VIEW IF EXISTS `listausernoreg`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listausernoreg` AS SELECT 
 1 AS `password`,
 1 AS `nombre`,
 1 AS `apellidoP`,
 1 AS `numControl`,
 1 AS `apellidoM`,
 1 AS `correo`,
 1 AS `grado`,
 1 AS `grupo`,
 1 AS `turno`,
 1 AS `especialidad`,
 1 AS `rol`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mantenimiento`
--

DROP TABLE IF EXISTS `mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimiento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_ini` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `idUser` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento`
--

LOCK TABLES `mantenimiento` WRITE;
/*!40000 ALTER TABLE `mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pdf`
--

DROP TABLE IF EXISTS `pdf`;
/*!50001 DROP VIEW IF EXISTS `pdf`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pdf` AS SELECT 
 1 AS `numControl`,
 1 AS `nombre`,
 1 AS `apellidoP`,
 1 AS `apellidoM`,
 1 AS `direccion`,
 1 AS `especialidad`,
 1 AS `area`,
 1 AS `grado`,
 1 AS `grupo`,
 1 AS `turno`,
 1 AS `horario`,
 1 AS `CTO`,
 1 AS `Esc_nombre`,
 1 AS `Esc_direccion`,
 1 AS `Esc_correo`,
 1 AS `Esc_Director`,
 1 AS `Esc_telefono`,
 1 AS `CURP`,
 1 AS `correo`,
 1 AS `foto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `querydocente`
--

DROP TABLE IF EXISTS `querydocente`;
/*!50001 DROP VIEW IF EXISTS `querydocente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `querydocente` AS SELECT 
 1 AS `nombre`,
 1 AS `apellidoP`,
 1 AS `apellidoM`,
 1 AS `numControl`,
 1 AS `gradoAcademico`,
 1 AS `telefono`,
 1 AS `RFC`,
 1 AS `CURP`,
 1 AS `CEDULA`,
 1 AS `correo`,
 1 AS `foto`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `recursa`
--

DROP TABLE IF EXISTS `recursa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recursa` (
  `idrecursa` int NOT NULL,
  `numControl` varchar(14) NOT NULL,
  `materia` varchar(100) NOT NULL,
  `idperiodoEscolar` varchar(30) NOT NULL,
  PRIMARY KEY (`idrecursa`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recursa`
--

LOCK TABLES `recursa` WRITE;
/*!40000 ALTER TABLE `recursa` DISABLE KEYS */;
/*!40000 ALTER TABLE `recursa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro`
--

DROP TABLE IF EXISTS `registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro` (
  `idregistro` int NOT NULL AUTO_INCREMENT,
  `numControl` varchar(14) NOT NULL,
  `admin` varchar(14) NOT NULL,
  `fecha_registro` date NOT NULL,
  PRIMARY KEY (`idregistro`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro`
--

LOCK TABLES `registro` WRITE;
/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud` (
  `idSolicitud` int NOT NULL AUTO_INCREMENT,
  `numControl` varchar(14) NOT NULL,
  `codigoPago` varchar(15) NOT NULL,
  `fechaSolicitud` date NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `aportacion` decimal(10,0) NOT NULL,
  `emitio` varchar(45) NOT NULL,
  `activo` int NOT NULL,
  PRIMARY KEY (`idSolicitud`),
  UNIQUE KEY `codigoPago_UNIQUE` (`codigoPago`)
)   AUTO_INCREMENT=20;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
INSERT INTO `solicitud` VALUES (15,'admin',' dinKek98vF28','2022-11-02','a',90,'JORGE CORTES DOMINGUEZ',0),(16,'1400025G87',' 3tYZfwHc&AVl','2022-11-02','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',90,'JORGE CORTES DOMINGUEZ',0),(17,'721205',' gFn1KNmbeJuB','2022-11-02','zsDSADASDASDASDASD',95,'JORGE CORTES DOMINGUEZ',0),(18,'1400025G87','xHFQKVJHt5IW','2022-11-03','mucho descripcion',60,'JORGE CORTES DOMINGUEZ',0),(19,'1400025G87','0Z43mY7roF@K','2022-11-03','cccccccccccccccccccccccccccccc',90,'JORGE CORTES DOMINGUEZ',1);
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUser` int DEFAULT NULL,
  `userName` varchar(45) NOT NULL,
  `numControl` varchar(45) NOT NULL,
  `password` varchar(14) NOT NULL,
  `rol` varchar(14) NOT NULL,
  `nombre` varchar(75) NOT NULL,
  `apellidoP` varchar(45) NOT NULL,
  `apellidoM` varchar(45) NOT NULL,
  `foto` blob,
  `alta` int DEFAULT '0',
  `correo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`numControl`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (2,'1400025G87','1400025G87','12345678','AL','LIZ','CASTRO','LUNA',NULL,1,NULL),(3,'721205','721205','1205','DO','JORGE','CORTES','DOMINGUEZ',NULL,1,NULL),(1,'admin','admin','1205','CE','JORGE','CORTES','DOMINGUEZ',_binary 'data:image/jpeg;base64,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',1,NULL),(NULL,'admin@cbtis66.edu.mx','admin@cbtis66.edu.mx','E1f2g3h4','CE','JORGE','cortes','DOMINGUEZ',_binary 'data:image/jpeg;base64,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',0,'admin@cbtis66.edu.mx'),(NULL,'jorge@cbtis66.edu.mx','jorge@cbtis66.edu.mx','E1f2g3h4','DO','JORGE','CORTES','DOMINGUEZ',_binary 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gHYSUNDX1BST0ZJTEUAAQEAAAHIAAAAAAQwAABtbnRyUkdCIFhZWiAH4AABAAEAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAACRyWFlaAAABFAAAABRnWFlaAAABKAAAABRiWFlaAAABPAAAABR3dHB0AAABUAAAABRyVFJDAAABZAAAAChnVFJDAAABZAAAAChiVFJDAAABZAAAAChjcHJ0AAABjAAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAAgAAAAcAHMAUgBHAEJYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9YWVogAAAAAAAA9tYAAQAAAADTLXBhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABtbHVjAAAAAAAAAAEAAAAMZW5VUwAAACAAAAAcAEcAbwBvAGcAbABlACAASQBuAGMALgAgADIAMAAxADb/2wBDAAMCAgICAgMCAgIDAwMDBAYEBAQEBAgGBgUGCQgKCgkICQkKDA8MCgsOCwkJDRENDg8QEBEQCgwSExIQEw8QEBD/2wBDAQMDAwQDBAgEBAgQCwkLEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBD/wAARCACWAJYDASIAAhEBAxEB/8QAHQABAAEFAQEBAAAAAAAAAAAAAAgEBQYHCQIDAf/EAEUQAAEDAwMBBgIEDAMHBQAAAAECAwQABREGBxIhCBMiMUFRFGEJMkJxFSM1N1J0doGRobGyFkO0MzhTYmOSwXWz4fDx/8QAHAEBAAIDAQEBAAAAAAAAAAAAAAQFAgMGAQcI/8QAMxEAAQMCBAQEBAYDAQAAAAAAAQACEQMEBRIhQQYTMVEiYXGBBxUy8BRikaGx0TNCcsH/2gAMAwEAAhEDEQA/AOqdKUoiUpSiJSlKIlKUoiUqx6yvd5sFhduFg069e5/JLbMRpXHJUcclHrhI8z/Dp5jGtJa+1Y7qhGjNfaWYtdwlRlTIbsSSl1pxtOOSVDJKVA5656+2ME7W0XPYXjbz1/RU11j1nZXjLGtmDnwAcjiyXEhoLwMoLiCACesdxOwaUpWpXKUpSiJSlKIlKUoiUpSiJSlKIlKUoiUr8UpKUlSlAADJJPQCtUa93EVdOWntNLWppw927IbzyeOccEY68T06/azjy89Nas2i2XKww7Da2JVeXSGm52A+9lUa43st2mUzVxVwG4lvBXIuM1/hHQhI8ZJJSAkdfEVY6Z6jrUNtTfSzCyasRE0xt9F1Pp9lsh6S6+5bn33cqwWspcwgDj9dsKPUYHQ1ZO3FpTcvUevdDbAaYnMtDUNpcvsyOtzu21utrd4JdXx5cUJayE+RWoZzxSRqjaPsg29ltu771xbvGdTdXojNqYbJamNISprJcQoLb5PlPBZ4oUlKcFXfII8ouFJvNuXano0KZe2/4t4s8KpeBpg1TuRE69ANR6zoO/SDZHtT6C7QO1tz15owy4txtDa27lZS2mROgv8AElB7pJHeNrwShfhSrioEpKFhOW7ZaCh2eM1rG6TbhddQXeMhx+bckcH20L8QaDZUrusApSUhR6p9BgCOnZjt+k7V2gocXRduNniN6FuduftyAtpOIs63FkqRyLbykKlSh36SrKnHUFRUhYrdl8l7p23cGxwf8Uqedvd5ecZtcOG18BHsTCkd8p9xaO978pW3ghXEOLKR4TU2hU5tMhmk/wADb/3suG4iw+lh2JU7m7aaxpQ1uUaNc8t8cFwGbUNHhLhrEAlbPucq6Rktm22tM0qzzCpAa4+3mDnNftmujN6tjFzYQpCH0k8VeaSCQR/EGqS46fRepqjdil6ChCe5ZQtxB5fa54Vg+QIOP6dblEiRoEZuHDZS0yykJQgeg/8AP31icuWB1U2iLt1057tKUEAGJnTUQ0QOvVzpkaNX2pSsb17uNojbCxOaj13qOHaISMhBfc8bygM8GkDxOLwPqpBNYAEmAp5IaJKySlc4u0D9IxqG+mXprZxh6wW1QU0q6OhJuD6SjCuA6pjDJVhQKnOiVAtnKa2J9GbrrV+srRuA1qfUdxubcKVblRkS5S3gyXEv8ynmSRy4Jz74FbnUHMZmcorLxlSpy2a+amzSlK0KWlKUoiUpSiJSlKIqC+2sXqzy7UX1M/EtFAWn7J9PvHuPbNaGl2+96Iv7C5LDaJEVzvWitAcadAyAoZHUevoQceRFSIq3XzT9q1FDMK6Rg4nB4LHRbZ90n0P8j65qLc23OhzTDgr7BcZ+Wk0qrc1N3Ub9vsLmZ9IfctwrruVojd7RFrukL8DWtNvM6EeZYl988vjhOVcVIVjxJ4kEpOc4O4bPqXUts2QseqLtab7d7wmw26RMi2+NzuL0hTTXehLRT1XyKiRgevQYrbGo7S3pbVh0yu4NSJSI7U1KU+FRYcWtCVFPplTbg8z9X516ciNOOB05SoHOUnGa9p29XEaYDh4mETtI9VExXifD+CL2WOJo3FNzmkeLI8GBLdDB79dCDOsaT7JO78/dPth3WIdPXewW6waAnMMW26xUx5Lby7jBLri0DJSVBLSeJJA7vpgk5nJN0/abheLbf5cZS51oDwhuB5aQ33qQlzKAQlWQkDxA464xk1pHTirNpvW8XXb9sbXMahPWpyQAe8TEecaWtI9/Gy0rr+iQMZNb8ZeakMtyGHAtt1IWhQ8lJIyCKlupi2dyRpA/bv7qhtsSbxJbDE3+IPdrI+l7YOXtLfCWntlOh0Huqa43K3WiC9c7tPjwocZBcekSHUttNJHmpSlEBI+ZNVNcd+1N2i9yNzNztXaVvt5eFm01qSfbrfbW1cYzSYzzjTbnAYC3eJVlasnxKAwkhIzpUuaYlZ3FfkNmJUtd+vpF9MaY76w7ORGr1L4rQq8S0KRGbVjA7logKdIJPiVxRlIxzByIG6w17urvRe3r5e5t71FNQjCneC3lNND7KUoHFtGTnikAZJ96x/R2mJ+utTxLDHeUlcpRLr5Tz7ptIypZGRnAHQZGTgetdB0bJ6Q222Ws2oIssw7hdX0KiwWkI4ONFPVSz9dS+KUqLnXzSgjqFVbW9uwRtJjzJXzLi/jCvhLXstqYq1GMNVwLg1rGAhoJnqXEw1okmD7821pWhakOJKVJJCgRgg/Ouhf0U35K3K/WLV/bJqFW9QiDc++iF3fd940Vd2QR3nco5+Xry5Z+eamr9FN+Styv1i1f2ya0XbcrXN7f2ur4evfmVvb3uXLzGNdHbM2Y9pU96UpVWuqSlKURKUpREpSlESlKURRp3h0FrpfadsW58Kzc9KNaLesUyf8AEMjhKVM75DfdlXeHISk8gkp9M1XcpCVKHdpUPsnlj9x6Vm+6msrSi+xNBC6RkXJUUXRURTqQ6tkqW2laU5yUgoWCQMZxWG1dWgPKEr4pxnUY/FnhuwAPr96K4W/TM7UcGeLcoF+KhLgaI/2oycgH0PTpV32b1uxJukvQ3x8Z92G18QWUOpLsbkQcLSOoCuWRn+eemsdxNVy7Xpx3SFqkyWJ+pXG2+cZwIcRGZWHHsk/5ahxaX5kpeIGM5Fy7NFoNk1JOedSEsCEoKU22e7SrmninIHQkFZ+eD7VVYjSptriq6pDtAG9x38h19SvoPAGK39TDPlNtY57YZ6lWuTDab9Q1oEeN7oYIBGVpBIIKkLqbUlj0fYJ+p9SXFmBbLayp+TIdVhKED+pJwAB1JIA6muFu4lzZv25mtNTRGnG4l+1FcLrFS7xDgZffU4gLAJAVhQBGT19SOtTG7cGtd/tw9fu7Z2vQGoRYILinrXCt8JyV+EUpJT8astBXLPXij7AI5AKzUIZseXCnSoFxYeYmRH1x5TDySl1l5BwtC0nqlQIIIPUHzqXb0wwTOpVleVzUdlA0C2r2X2hN3Qbs7KULm3WIqFBbUoJLshbrfFCScAEgK/nXR3efcjaTssbTSLPdn4Vz1FMtq2bfa3yXZFwdUMclJPLuo4WCo5wgcSE5WQDyVtVsvM90vWaHLecjKSvmwhRLas+HqPJRIwn1J6DJrdcfbTb3Sk1C9ba1e1rrGYy05BsFkhvTO+fcU80G3FK4qUsJMWQgEALSFIIUCknfVeXNaydAZ9VzltgFozFK+LPaHVKjGs8UQ0CZj/qRPp5labu0XUs9k6yu9vmqjXWW8BcVxlIYfkDCnEoWAEFQ5AlKfIEdAMVPf6Kb8lblfrFq/tk1FvfXardvb/S+l7tusi22p+4tN2+HZWnUKlNR4Udtpt57iVdFAqwCo4UV9E541KT6Kb8lblfrFq/tk1pruzUyVf2VJtCq2m0QAIA6QI7bKe9KUquV4lKUoiUpXxlpkKiPphrCHy2oNKPkF46E/vxReEwJX2rw462ygrdWEpHqagnpHejcrbS8TG7reLpLuEKWpNxtd2kLfbkoB4rAKsqaeSevNJwoeeQjC5d2fUEPVNph6gt0ovxZ7KX2V5+yoZwR6EeRHoQR6VKubV9tBOoO65DhXjKz4qD2UmllVn1Md1AmJ9jodAQfIgnIn7y2nKWGys/pHoKonblMd/zeA9k9KpqVFXYLmR21pr0vtH6nbdwfhmoDST6kGGyvJ+eVmtXSt4tzYKWWxuJqxanVd2003eH8k4J6ZcAAAB9a2f204rkftHaodcxxktwHUfcIbKP6oNaKdt8iQ8xcPhHVRoaiFPgeBt1aSEJJ91JDpA/5D7Vc0jFNvoFyd1SZVruztB1PVSa7D0ZW4e7l7b10H7i67ZF3Bxb0txbynW32G08nchSvC6rPX0T6Dr0Kt9st1pj/AAtsgsRWs8ihpASCcAZOPM4A6nr0rnH2F5smLv8AwWGHClEy2zWXh+kgI5gf9yEn91dJqgXkmoJ7K3wehSoUnupNDS8+KN4AAnvAAA7JXErdf88u5H7Y3j/VrrtrXErdf88u5H7Y3j/Vrpa/UVuxD6At39mTard6+aTuGqLXuJA2v0PJuTTsvV0yYIzyZEZiQyERj3iCQUznQSVITkEBfJBSbzP7Se02w8F/S3ZB0etd2lNqizNcX+OHp0hCjnjHbUAEjklpWFISglHVknC6jrYJGo9XPWXbx/U09NpVNAjRHZDjkaKtxXjcQyVcQo5UemM56nrmttrue1GyLa2LUyL/AKkbHduL5AqQsE5yrqlkZyOKQVdADnzqey25sueYb9/quIx3ir5O9ljZ0H1rl4lrG9piXOPhY2d9StJ6k1NqHWN7lak1Xept3us1SVSJkx5TrrhSkJTlSjnASlKQPIAADoBU+fopvyVuV+sWr+2TUPtnezturvlMLeiNPkW9takP3eaVMwWVAAlJdweS/EnwIClAKBIx1rpt2Z+zzZezVYblbrPf5d5n3p1p24S32g0hfdhQQlDQJ4JHNZ6qUSVHrjAEW4e0My7rr7Ok81BUI0UgqVqHdDtI6W24fNlZtz14vobDq4TTyW22U/W/GOkHieGVBISSfD0AUDWZ7Y7iWvdDSEXVlrjOxg6VMyI7vUsPJxzRy8lDqCFDGQRkA5SIrqFRrBUI0KxocQYZdX78Lo1g6swSWidIMHWIkbiZG4WV0pStSuUrR/aeTDNltF0Ny7uRbJh4RVLUEyeYHIAJ68khOeWRgFXXJFbqmP8Aw0dbvqOifvqPHaE0xcZLUXWiXW5UG1oSy/CeUoJHNzHeDiQepUhJwQeifY1MsI/ENkx99PdcH8TOaeFrsUqWc5RP5QCCXmNTkjNGvTUEStD6xkLvF3iahkpfDrTIS48VpDs2OCofjF8SFucCWlLKSFBACkkhWZBdmSWte3Ui0l5t9Fmu8qC280sqQ6nwuc05HQEunH8fWtBzloudtXIRao8ZmO8GT3JdIw4kkIJWtWAC2tQwM5WvJwEgb47MjbidGXp1aTiRf5DyTxwDyZYzj3AOR94NW+JsAt9BGq+I/B/EK9xxMRVfmLmOMx1Gk6wD9QGpEkj1nb9KUrnF+qlzf7eFqkW7fp6W+pBRdLRDls8T1CBzZOfnyZV+7FWSyaBdvnZB1BrSI7GbcsOtGHpHJslx2P8ADNsltJH/AFJbS+vQBtfvVD2tNaq1tv1qeQhUj4azyPwLHbePVsRvxbgSMkBJeDyxjHReSASa3Lfbs1ob6Pmx29qIkyNWTPhFPNAJwpct6QVryPF+Kj9379U+gq0ktpsHoufhr61V20Fa27D3+8LaP1Kd/wCwqultc5+wNaGrlvo7MccUlVqsUuWgDyUoraZwflh4n9wroxUW7/yKwwwRQ90riVuv+eXcj9sbx/q1121qECPo6JWot5tWaw11rmP/AIUvN7mXeNFtaVCe6JC1Od04pxHdtcFKAKk95zCT0QVZTjbvawkuWy8pOqtAaFCTQ2htca/vrVj0Dp643a5KIwiG2T3YPTktfRLafdSiAPU1OnY76O2xWF+PqPeu5t3uay53iLPBcV8CRw6B9ZSlbhCjnininKRkrSSDKzQW2+hdsLKmwaC0xBs0LwlaY7eFvKSkJC3VnKnFYH1lEn51kte1LlztG6BY0bFjDmfqVS2u12yyW+PaLLbosCDEbDUeLFZS00ygeSUISAEgewGK+Oob1F05YbjqCalamLbFdlOJRjkpKElRSnJAycYHXzNXCsO3i/Nbqj/017+laabc7wDuUxO4daWNavT6sY4j1AJChlImXfUU9a5kpkXDU8gyZMpcsdGeZ8Cwk+BPJJWULGSEMlIAwVTN2W1zoFqDb9sdLtXFoW+KtUV6SwEpmpC1FbqcHIKlcl4UE+fl6VE/TNj+OuD1xixRcQHkW63IaaIE0oSEJVw5cgClHJeM4JSPCF5Eq9qNt4u3iBdJTgk3mU2ESnR9RCM5LbY/R6Dr6lI8h0q8xDlClD+uw++y/OfwvOM18adUsmNNIaVajtTlknK0jd7pO50BJgDNt6lfgIUAoHIPUUqgX6aVuvThDTbeOilFWfu//a1lvDpa8au0W7bbG6v4lp9uR3CVcRJSnILZJIA+sFDOeqB942heG+UYOAdUK8/YH/6Ks1Z0qhpPD29Qq7F8MoY1YVsPuZyVGlpgwYO4PcecjuCNFHjb3Yi73VPxWslyLdbysL+CSrDr6k8gCr9ADJ9MkE4xnNb6s9mtVgt7VqssBmHEYGENNJ4gZ6kn3JPUk9SSScmq2lbrm7qXTpedOyouFOCsJ4PocqwZLyPE92rne+w/KIG+p1SlKoJN2ZZJQ0O8UPUHoKjLrlyb3u/PRr79qLr/AKtyp57/AG3AHZHe0fGty5krTNnty4xUyHHW1Re6Djg4jorukugkeilemaxfVXZt2w1FvAvV0u2ykuSZ6ZsuCl7lElPKV3ji3ELCleJSiSkKCT7eeZBy5MqTFejuOqUl1tSFJ9wRjFbnXjascv8A1/la/ktWy1uSIqgERr4Tvt3/AGUOPo79Lylaw1NrF6LKQw1a029h0tEMulx5K1gK8ipPco6Dy5dfSp2VrTQElyK7NdaxnDYII6H61Z1Gu7bhCX08D+kPKtDbg3Q5pESpt5hjcHrGza7NljWImQD01791caV+AgjIOQa/a9UZKUpREqxa6sEnVWjbzpyG+2zIuMJ1hpbueAWU+HljJAzjJAOPY+VX2letcWkOGy03NBl1RfQqfS4EH0IgrVO1W08nR91Vcby00t1DDrjQwlaGn3ZDoUWz5ghlpj0/zVDPmK2tSlbK1Z1d2Z6rMCwKz4dtPwdkIbJJnUkncn9B6ALIIDhchtKIx4eP8On/AIpXuK33UdtvGCEjI+frStSuV7cbS62ptfkoYNY6+yuO6ppY6j19x71klU8yGiW3gnisfVVRFj9K9vMuMOFt1OCP5/OvFEVBd5CmmA0noXcgn5DzqzVfLnFVJYCkDK2+oHuPUVY6IsSZmNSddvstpUFRHAy4T6qMdK8j9yxV91A1cX7DcmLOUie5EeRFKllADxQQjKh1T4sdR5VG/UO7b8HtBubLXOxXhrUV31Jbbha5UVjEWVakBh1bpWVBWEtxpDS8BSSptXXHIJlBWmjTdTzZh1JP8KzxO5pXIoct05abWnyIJkKIO2vaZ1PtddY+gO09pqTpO+kNx0Xd5A/B11J8nQ62C02QFI5FKi2DzyW8cUyd0fuDobcGK9M0Rq6z31qKpKJBt05qR3ClDISvgo8ScHGfPBxX01nobR+4lhf0xrjTkG9WyQDyjy2gsJUUqTzQfrNuAKVhaSFJzkEGrNtfsxtjsxb5ts200mxZmbi8l+WpLzr7rykp4pCnHlLWUpGcJ5cQVLIAKlE7G02MnLp5be39KJcXdW7g1oLhpm3I2nYkd9D3lbLsz61BbCjkJHJPy+VXOrfaoi2UKecGFL6Aewq4Vko6UpSiJSlKIlVlsil98OKHgbOT8z6CvnDhOS19PCgeasfy++r6y0hhsNNjAFEXulKURKUpRF832GpCODqAR6H1H3VaZNpeaytg94n2+1/81eqURYuUlJKVAgjzBqmkwI8klSk8Vn7SfOstdjsvjDraVfeOtUbtmZV1ZcUg+x6iiLDHdOpU+mSkMrdbBShxaPElJxkA9cA4H8BX7+B5fLGW8e+en9KyhyzyUnwKQsffg18FwJjeOUdRz+j4v6URWBFleJ8byAPlk1Wx7bGjnngrUPVXp+6q8x5A6Fhwfek1+dw//wAFf/aaIvFK+gjST5R3D9yDX1RbZqwCGSAfcgfyoipqVcG7M+rq46hP3dTVWzaYreCvk4R7npn7qIrM2046ri0hSj8hVyjWfGFylfPgk/1NXJDaG08G0BKR6AYr1RF+JSlCQlCQkDyAr9pSiJSlKIlKUoiUpSiJSlKIlKUoiUpSiJSlKIlKUoiUpSiJSlKIlKUoi//Z',1,'jorge@cbtis66.edu.mx'),(NULL,'jorgecd@cbtis66.edu.mx','jorgecd@cbtis66.edu.mx','123','DO','JORGE','XXXXXX','CORTES DOMINGUEZ',_binary 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gHYSUNDX1BST0ZJTEUAAQEAAAHIAAAAAAQwAABtbnRyUkdCIFhZWiAH4AABAAEAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAACRyWFlaAAABFAAAABRnWFlaAAABKAAAABRiWFlaAAABPAAAABR3dHB0AAABUAAAABRyVFJDAAABZAAAAChnVFJDAAABZAAAAChiVFJDAAABZAAAAChjcHJ0AAABjAAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAAgAAAAcAHMAUgBHAEJYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9YWVogAAAAAAAA9tYAAQAAAADTLXBhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABtbHVjAAAAAAAAAAEAAAAMZW5VUwAAACAAAAAcAEcAbwBvAGcAbABlACAASQBuAGMALgAgADIAMAAxADb/2wBDAAMCAgICAgMCAgIDAwMDBAYEBAQEBAgGBgUGCQgKCgkICQkKDA8MCgsOCwkJDRENDg8QEBEQCgwSExIQEw8QEBD/2wBDAQMDAwQDBAgEBAgQCwkLEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBD/wAARCACWAJYDASIAAhEBAxEB/8QAHQABAAIBBQEAAAAAAAAAAAAAAAYHBQIDBAgJAf/EAEUQAAEDAwMCAwYDAwkFCQAAAAECAwQABREGEiEHMRNBUQgUIjJhcUKBkRUjoQkWJFJicrHB8Beis9HxJzRDc4KDkqTh/8QAHAEBAAICAwEAAAAAAAAAAAAAAAQGBQcBAgMI/8QAOBEAAQMCBAMFBgQGAwAAAAAAAQIDEQAEBRIhMQZBUQcTImGBFDJxkaHRYrHB8BUjJEJSckRT4f/aAAwDAQACEQMRAD8A8qqUpSlKUpSlKVmNNaSvurJgh2WCt3BAcdPDbQ9VK7D7dz5VYd26CvQNPOzot6Mi4x2i6tnwsNuYGSlJzkHvgnv6CoFzidpaOJaeWAo8vv09atmC8DcQ8Q2bt/h1qpbTYJKtADG4TJGYjomTVb2jTGob8N1ns0uWgK2FbbZKAr0Kuw7jz86mVs6FazmBKp6oVvBPKXHfEWB9kZH8a09P+qrGhtPSLUbO5MfdlKfQfGDaAChKcHgn8Oe3n5VamutT3WD09/nTYHRGeW3HeClISvahwpHYgj8Q8qwuJYjibFwlhpCUpWrKlR1n7fKtmcE8GcEYpgzuK39w687btF11pAy5QJ0BIGYwJ0WPOqYh9On3uoC9By7mGFoKv6SlneCA14iTt3DuMefnXC19o8aIvibMLiZoVHQ/4pZ8LuVDGNyv6vfNZ/pZdLheuqES53WUuTKeQ8VuLxk4ZUB2+gArJ9ZJEaB1KtM6Yx4zDMaM863/AF0JeWVJ/MDFSxd3KMSRarMju5IAGqpI051gHOHcEuuCrjHrVspX7YW0KUoylopSoBQBKSROpgnzrG27odrGfAanLchRVPJCwy84oLSD23YScH6eVQ7UGnLxpe4Ktl6iFh4DcnkFK0+SkkcEf9DzXZPUVuumo4luu2lNSKiqjrEhtKFfuJaDg7Vkc444OD3IxzkVL1n1Om9SIdqm2OZbrhbVubw6pKkLQsJ5SofMMp4PaoWD4vd3z4SvKQZkDQojbfcHy25xVk7Rezrh7hfClvWpdQ4nu+7WohbdwFRmgpEIUnUwoiQPCFAyK0pSvoQtQUpKSQnuQO33q11oKvlKUpSlKUpSlKUpSlKUpSlKz2idIzNZ31q0xlFpoDxJD2Mhpsdz9TyAB6mp/wBSunOitH6VVNhGX7+p1thgre3BajyrcMY+UKPlzise/idvb3KLRRJWrkOXxq4YVwPi2L4NcY+0lKbZmZUoxmIEkIHM7dBJiZqZ9Jrmzd+n7Me3eFElRAuK4UIHwugfC4R5kgpJz3OayOjrJqmBp+VE1TfPep81bi0Lzv8AA3IwAM4zggnA49KqbobqP9laoXZn1kMXZvYntgPIyUnn1G4fcirOumgpNz19F1bJvbyIUBCHGo+8nDo4IHklBAST68iqTiluLS8eZWoJSvxgkSSR/aPX6Cvp/gTGF8Q8N4diNqyp5+3JtloDndoSlQALqhsSGwCDvmUY1AIpHqBoWXoW6tw3JBkxZKC5Hf2bd2DhSSP6w4zg9iD54q2oLq9QdC1F1GVN2p1AHfPgFQT/AMMVButmr7XqO6wrbaXUPtWwOb30HKVuL25Sn1ACBz5kn0qP2zqVqmzadGmbdIYaigODcWgte1ZJUAVZAHJ8vM1YV213idjbuOQHUqCjOmgny3OhitO22OcO8DcUYxaWpU5YusuMpyeLxKCdJKhKUnOkKkyNdZrndGD/ANodu+qH/wDhKqd64gWa59Y7Fbr8025Dk2zw1IcUUhSip/YMgg5KsAfXFUvbJs63zmpVtmuRJAO1LyFlJTng8jsME1y79Ou8i4tyLneHp0httIbeU6pSkAEkAE8jBJP51kbjB3rm5VfIVCQjJI3BMwf30qtYJxzbYTw2nA3bbvSLpNwc0FCkpCAUKBBkKykHlBq8WtOao0jrKDG0bFKdMStokx1vlxDByd6hvJUk45GDgng1FvaGXCNwsyG/D98DLxdwPi8MqTsyfTIcx+dR229atdW6KmIqXGmBAwlySzuWB9wRn7nJqI3m9XPUFwdul3lqkSXfmWrjA8gAOAB6CsZY4TdovEXNyU+AESJlXKVTVq4r7QeH7rht/BcDQ6BcOJXkcy5GACFFLWUmASNANACdtjyNK6elapv0SyRTtMhfxrxnw0DlSvyAP54Fdgb3eLJ0uskO3wdPvyIqyG3AyjCUo4Spx1eMFRz2PzHzFQH2e4sVy8XaYsj3hmM222P7KlEqP6pT+tTDQ2r73rLUeobdc4TJtEbcyhCmsFPxlIQrPzEpBJB9KhY66t+5UlYlpkAqExJVt/561Z+yqxtcKwRl23cyYhiK3G2nO7DgbS0JVIJAAJnMddCkxAkV71q0hbdOXeHcrQyhiPdEOKLKPlS4jbuKR5AhaTj1zVc1ndTNzjf5OmYr8qXGt01+LAYKi4UJ37QlI+u1Pb0rhXLT19szbbt2s8yIh3GxTzKkBX0yR347VZrAFi3badXmVG50JHLT4b1pDixaMTxi7vrG17lrNqlOqUKgBQCgAIK5KdBoRpWPpSlTqqtKUpSlKUpSlXR7PCI3g3twbfeNzAPqEYXj+Of0FVhq6Bd7ZqafH1AVuy/HUtxxWQHgTwsH0I7VytB6xlaKvqLk2gux3B4UpkfjbJycf2h3H6diavd65dMtbRYtyuEq1SfCIW2JLiW3Gz32qBIOPUHg/WqrdPPYRiDl0psrbcA1G4IER+/0rfuA4bh3aLwfa4E1dot7yyU4crhhDiXFZirzI2kAkQQQAoGoh1Sg2mzaJ03edPQEwVxJjK4uE4W2Ftqc+LPc5QgknnIqD6y6qaj1egxCoQIJGFR2FH4/76u6vtwPpWT6w6+jannM2WzvBy3QFFRcT8rz3bI/spGQD55Pliq8aZefVsYaW4rGcJSScVOwbDyphtdyiXJJE6kZjMfH61WO0Xiofxi6scAfy2qktoX3cJQ4WkZZATpl3AA0IA3AFaKVlWdNz1hsvqaj+KragOL5Uc4OAPQ44ODyK3JEOz2l4Nyi/LXtCwANiFgjI5B7dxkE/SrYMMuAnvHhkT1Vp9PePoDWqaxMckPtkdwsf41kdRuLcnpU4QT4QHbHmayrUiPsWwxDbYWYheVt7pClJCQSMZOxXPHOa3y62l0svNocS+pLSQ5naFlK9vb6gD8/zqzWmENKwl0d5upOsHQgHSJB5xqAR0pUPpWXaFruUhEdUB2PIWraQyfhJ9cH5fsBwBWp7TTviBuFNYfUoBSEFQSpQPbHJHqck4wM1Wv4Y8tOdghY20Os9MphXyFK+aT1TcdH3lu823apSUltxtfyutnuk/oD9wKtO4ddLOm0uJ05Y3mbpKJJC0ICEOK43kj5z+Qz51TT8KXGGX47iBnG4p4z9+1blpm/s26Q7iWw57rIbf2HsraoHH8Kr+IYOxcOhdy3408tRPQEferrw1x7jvDNsuww+4yNOHXQKKCdCpBIlJjeN4HMA12O0DoK26KgtyZqm3rvKx7xJcIJC1f+GgnyycZ7q7+gBU97Wdwvuhb9plyHHZjhQkKdDgWFEhtYAGAeCocnlJBwRWL1xoa59Qb1Zrtbr00iyIYQslK1BfKiouNjGMlJSAT2wKw3VjWsrSusrdIsbzZmMQXG5CFDKShZ+BKvXBG4D7etUZhlV++FZ8z6wTzHdlJ0G/pEaaev09imJMcI4Wpk2xYwu3cQ3AyK9rbdSQswUzI0XmCvGJnUeGl5DKo77kdZBU0tSCR6g4rRX1a1OLUtaipSiSSfM18rZA86+LVQScu1KUpSuKUpSlKVuRWfeJLUfJHiLCcgZxk1t1zrU4YpeuIU3mOgBKXE5S4VkJKPzQVn/wBJrsgpSoFQkdOtKz8ewRIranhDMlxKNyUuOp+YKGBjIHOD3BGD2zitb7N0jsuJgMMfGpHhtp2DYkc5UT3VyE8HGAeOaisyP7rKdjhQUEKISodlJ8lD6EYP51s1YRjjDaSlhoo/1UAem+ST6kwdaVKHLPNS69c2m9zzrWG21OpJbWoFKud34QOPuO2K2otilPx2mrgylv3ZwlOFpJW2cko4P9YcZ/rnkVHK1tMvPr8NhpbisE4Skk4HJNRRfWilj+So+WcQSTP+HWPkBSpDHhXNMifPuDISXmVc+IFclSTgck9h/CtVyhy5ram4aNziXG1/ME4ACuckj1FYc2ufFDUl9jYguhHzAkHPmAcj7kVyrxFkSrhtjtFZS0CQP7xH+dWK3dKMIeZUyvVSdCfEcwVqPB+hpXOdtE1Lb05plKpclASUb0fuyc+IrnjnAxg/iPpW21YJsyNHbmIDSoyigq8RByyecDnuDn/5D0rAOsvML8N9pbasZwoYOPWtFV1V7aZ/GyqOYzjUzJJ8G8/balS9lq8ueIgttxwFJDe9aVhTXAKFYJPYZyME/FzzWp2zxpycv25LCgV/Gl1AVgAlPAODuJ8+RgDtUOpUpOONFIQ62pY/EpJHoC3p00jTpSpq3rLWGi4bVss19dbir3FDTrTTvh8jOCQcA57Djn1qHy5cqfJcmTZDj77yipxxxRUpR9STXPlNb4CY7aku+5NNPFSOAEu8qz6kKW2msXVddRbF9b1u0EZum/qYE9an3OK394w3a3L61tt6ISpSilI/CCYT6RSlKVxUClKUpSlKUpSlZN9Koun4zZwlU+QuQQe5bbGxtQ+m5Tw/KsZWZ1W0YV0TZlMLYVamG4TrSzlSH0jL4P8A7ynft2pSuNc2y7EgXEI+F5nwFqHbxGvhx9w2Wif71Y+svBYVP05cmm46nHLatqdv34DbClBlzjzJWuP9gk1xbPDbmzNj3LbaStSc43AEDH6kflmve1tnLx5Fu17yiAPiaVsGFKTFEwsnwVHaFZHf7d8fWs7p7Ity8cBT5zx3wlOPv3P6n1rPzrLeLfDiTrjZ5caJcGyqI69GUhqQgcEtkjapI7cZFTP2e9Cp171k0npJuAy7HlXRt6S0pH7otIPiObwPwkJIx9QPStmW3DrfDDhxlbwU0yhal9ZCTMco33MiIrgSrQVXjzKH21MuZAVjkdwQQR/hWoIQlSlgfEvAJ+gzgfxP+hVw+010F1v0H1mP55XJy/Rb/IefjXmO3uXJWVKJLyFKy24ohZIJPKV4KgM1geimj5Otb1fIMX3dColqU54kg4SStQASk4I34C1AHHCVHOAay6OK8Bu7E41bupWgZdRIEmcupA11VuJHMA1w8FMSFjUb1CNR6buEGwi4utNyGDGTIJAyGA4QkZz2UeO3p9KgCULWFFCFK2jcrAzgeprubqHpFa75ZP2cXUQWYcdMhzx8rQhlLYSpxahnGEkuBPOCUg9iKqKfoePadOTnXobIkMIbSh1KEZ/GpQUtHwupKAClf4kkH766XiDHGd4Hm1hMQk6ayVGPJW4kg6DqYmO1cAp8XWqOrl2iEm5XSLBcfQw2+6lDjq/lbRn4ln6AZJ+grdvNvEJ8OMjDLvKRnO0+Y/5f/hrkWBJjxLtdtqf6NDUw2VjKS4+Q1t+/hqdUP7mfKsHeWjtg+q2fEKSYP76HcVKr7BkvX3UT3ix21PXpx1oNIIbQHnSfDx5BKXCg47YTWGIIODQEpIUkkEHII8qy2qWENXp6QywlliclE5ltByltDyA4EA+e3dt+6TUalYmlKUpSlKUpSlKUpW7EebjymX3Y6X0NuJWppZIS4AclJI5we3Fem3SLTXsjdQdHQ79pXWPT63Pyk+LOt+pgyzcIz5+dLqnlKU6c5/eAkK7ivMSldVJzUrvl7W8f2WdA6FmQLBddI6k1zcGjFgx9NtpLURKuFPyH2VBJCUqJS2QSXNhxhJI6OQItwYnskRX0qBCzlBH7snaT27eWa27Syl+4sIWQAFb+RkHaM4/PGPzqVVcuFeGFYwhVz3pQEKEQJkjU8xEada4Jrut7APT/AE11F0vrLTeuojd3tc91oxIT+VoiuMD968AfhQpQlNJB4J2KweKnXTn2UZPQ72pY2q9PTC/pREIBtElQC4pddCSUq7rAIQAVfFhahlQRk9YvY/69/wCxnql+z7gpCbNfWUomOKVwysKIbUfRPxKCs+Sknsnn04k6gs2ojDlxQFqS06hYI+MIUU5H17ZB9R5dq0p2q41i+C8U31vmUqzuhEa5MwQESBsFIOhPM6nesoybdVpnMBxsz/sJ+v75VQv8o/Ajr6HftZppoybbOjrbcU2lWAp1DR7g+T6wPTdkV546J6nL6cyn3vd0SGZMiIiS0c71RsuFwo5ACxtTgk/iI7E16Je2NKRcOk99tN4UlYVapDsfByVLZBcyfqFBBz54ryo1B/35P/lj/E1ley1br3A11aPqJSHU6SYggmPmPmKjYi+1e3K3Ee6Y/IV3N1Rqy4XG99UNI2Cay/a5mnbbcoS0tgkxnkQ0vFCgAT4iHRgklIKCOMkpjl0slqa6Rx5ce7R3YEhl6PbdqNnvbjfiKWEZJJwAsbzwrIOBkJqHpvt1b0a7e4TbXjL6d2jTnhBJK5Hi3EhIT/b2MpH2rDdW767ZtS2zplBmNuQ9GWdFuaUy4C2Za9ypqk44JLi1Izn5WU1aOHLL2l+3tLdfdpS4kqAG6kthKVE9VqgK6SSN9I91h/cpQRtv+YH5VT1/kuOTPds/AyBgDzJAJP8Al+VXX7IN66IM6zkaZ63qiQIN0Uy5b7tNjmREiSm94SH29wSEKDigHCCEnvhJJFaKaYWdzkZhah5raSo9sdyKi91YbjT3Wmvk4UBjGMgHH5E4q38W4DeWbq7+4WFJcWYiZG5AMjTQRoTtXQGvWGVoP2VWbUmdP6t9IRZ2xvSsKhrKQfMNBWcn6V5w+0VqPphqLqVIHR63GPpW2sJgw3iwWPfCla1rkBo8tpUtatqTg7QnIBJArGlUxKctc0pSldqUpSlKUpSlKUqxmemStX9MH+o+iGFvPaaKI+prajKlx0EHwpyByS0sAhY/AtKjwg/DXNWj7NvVi5dIOqtsv0a3vXS33A/sy62xtvxTOiPEJW2EYO9QOFJT5lIHYmsfiZuW7cu2mq06gHZUbp8pGx5GDtIMqz7pTobf91Wk9Oh9DuOYnnVb2+b7hI8fwUu8FOCcEZ8wfI/86ltvVHuMcyWngkAgbVEA55yOfPzwM5q+/bF9kF7pVe2eo+iI7jWgtSEPNJW2oLtklZBMZSTyEkEqRnHCVJOCBuoS3R2YbQZYSo7SDs5Pic8kkDv+g8qvvZxjNxiuFqxHD1/0qvhIXIBEakKA0Vy+hrpd2q7N0su7isPMdUhi6SEpAS64iOk5z8SAAr9Qf4/Su4Xsxe1Be5um16cmzwb5p20yXGQ8ncmcw03lJJx8ydqQrzIGcnJx06mJIg3CMEEeBK8cnPdC8BP+vrU99mc46gzh66euo/8Arqqr8XWDOJhPtaQrLmUJE694ud9wdjXrhjLdxfMNOCUlaQR5EgGu0Wrut9w19BVbtVaVts2O7FXEI8Z9shpSSCnKFjuCee9VpJ0v0fkr8WT0htilBOM/te4jgfZ+tSlBIya2yVPfAAQnzNUC2vX7Jk29srIgmSlIABI2JAEaa19bDs84YH/DT81fevvWi76U6d6a0+7aIkdiY/CjzbXbRudEdxLRbacKlqKi20FvKTu3FTikn8KjXW9iW9Jat8t5zctEhbS1KUSpZczlX14/yqfe01ga2swA4GmrcP8AdVVeQUkRbekgha5YcQccbEn4j+v+dbG4abLJUtJ1ISfXOgj618q484DfusoEJQpSQPIEj9KzziQ38xwAkLKjwnGM9/p51Gb1IjTZbRh7lkNhCsJxuVuV28zwRUmvbBmwhFaWUObUgkrylRCU4H04+nf9a7f/AMnz7JQvkR72hdZwI09q1PON6ctSnUKDstvu+73CQlWAgHz+LsEk5ntQ4yXgeDi4v0fypOU81rzKCUg6AabyNpOwqDY2a754Mo0nc9B1rrhrrpmnoR09tyNWsJ/n9rSN46ILifistqPBUtJ7SHjlHPyIDg4UcimKn/XzVGtdX9X9U3jqCG275+0HY8iO0+h5uL4atiWELR8JSgAJyO5BJ5JqAVScKQ+LVLlyoKcX4lEe7J5J/CBoOu51Jrm9U2XihoQlOgnfTmfMnU9NuVKUpWRqJSlKUpSlKUpSubY73dtN3iHf7FPdhXG3vIkRpDRwtpxJyFD864VK4UkLBSoSDXIJSZG9evXU5vWfXf2AXdS6kfgRb4LU1fHkW6W2/HkpjqS6oFWCAooQVBKTkKwncQSD5fxVJDu1YBCgRyM8+XmPPFXJ7JXtMw9FQbn0I6sS33um2sWnITrqXCF2d54bfHbV3SjJyoDsfiHmDVvUvp5qnpN1RuOgb1cHpjMIl6JKCypmZDWnLEhHkUqSU9uxyPKofZNcr4QXe8K3DeZD7pcayiBlWEpMAzJQQmUk6aGYIrMYo4L1tF2jl4VeR3+upnb4bVHJTSG7mthZIZuDXhk5zhxIwMefAIH3NZzoZpnqXfOpMe3dMZTEK/xmH3fGk7SyhoJ2ubwpKkqSQoJwUkHcKx82L+0Yfg8oUk5aVn5VDt9uT+e4+dZrpr1S1f01vkm+aRdhRr65FMKQmVGQ4h5rcFcHy5Sk5B8h5YxsXiLClqfUhPvSSnznVSemafEkc8xAMiKwySRqK7cdNOlntBwNUounVK56cudqZSpXuUCHESZDh4AWrwEFKRnPwnJIHlmtzqZ0x9oGbqVdy6UXLTlqtT6ElUCfBhq8BYAB2L8BalBWCo7jwSQOMY6+P+2919iq2SFWRsntm29/t8XNfGPbf6+SFbGFWRwjk7bbnH+9VH9n8fd5PFtEa/KpPttz/wBivmagPXnTHU/T/UQ2/qlMjzb5KisOtuRSnwVMHKGwgJSlKUgoUMBIGQfvUeiMpVcG46Fks21kpzwB4ih8X6gE/QipV1L6r6y6mXaFeNYuQZN5jxjFitxIqG0tNk7juPJPcnJOO+OCScFboqIEVSVOLLpO5xQO0rUSM89/+nlnm64BhTyVwlMrBBI6QfCk+ZVClD+0JE6mKjKJJk1vSl71pO0A7QVYIIJPPGAAO/avRbTVwi9I/wCTdZuJ1q1pK7XaDKfYnNM+K9IeffdU002MpO8tqSncD8JyfI10U6K6PjdSNczGdVTWbRo/TzTlx1FdzuCo8RCsYSSdviuKwhCccknAOK0+0t7RFz67alixrdEVZ9F6bZEDTllSr4Y8ZA2pcWOxcUkDPoMJBOCTTO027Y4yRZcPWRUG7Z1LrqiBByAhCIMglZUSQR4QASNUg5awcFg0q6VuoQkdep+A0167a6im1KUpRUpRJJySTyTSlK61iaUpSlKUpSlKUpSlKUpSlKVPT1JvGqNO2PSWo3hKXp5Dka1y1geKmKohXuy143KQhQJbBPw71jsRiBUBIOQeak2Fz7BeNXqUgqbMifgQfmCR612StSQUg6Hf86nLDpZcDgAwnkkjt5Z/jW3PgQp37xRI2EFtxJwpI+/Pnk8/f1qKy7pMmtoaec+FA5AGNx9T6n/XmakFpW4bazvUo5SUnPmMkAfbFbOYxO34su12zLeUZJlWoVBAhQ8p0IIIj0HTatUeJqBpaWWpTUhC/lDqFgqHodvJz96+Pxr69lDsyPGZSAT4YVhKfoV8gd/OuUu5otrfvDhCUpVwAO6iQTx9cf40LzUhAcbSgtr+JOM4I9MH/Pzr2TgxXcrtEuqzATl70kQTzEZo9aUh2mPCZdeRkuZG91axuOcnB8z2B49cnNbkh8vr3kAHHkMZ+tYu/wAiSiElxtxaSHUp3JJGBhRxx25GfyrGo1BJTELSk7nuyXT5D7ev1roMYsOG7pVncI1QJBSNASJygbyf8iSSZmBTesvfNXXJuwuaKgvoYt78oTp6WhhUp5KQlsOq/EltIO1PZJcWe5NRShJUSpRJJ5JPnStWXbybm5cuEoCc6iogdTXcqUqJO1KUpXhXWlKUpSlKUpSlKUpSlKUpSlKUpSlc6JeZsRIb3JdbAwErGcfY9/y7UpXvbXT9m4HbdZSocwYpXy5XNVx8IeF4YbByN2cqPc9vpW/AvYhxBHVGLikk7Dv2gA89sHPOfSlKmN4zfNXSr1Dh7xWhOnw6RypXHnXWTPQGnAhDYO7akefrk8+dcOlKh3Fy9duF59RUo8zqaUpSleFKUpSlKUpSlKUpSlK//9k=',1,'jorgecd@cbtis66.edu.mx');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sigedoes'
--

--
-- Dumping routines for database 'sigedoes'
--
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  =  */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `login`(IN `dato1` varchar(44), IN `dato2` varchar(44))
BEGIN
select usuario.nombre as nombre,usuario.apellidoP as apellidoP, usuario.apellidoM as apellidoM, usuario.rol as rol, usuario.numControl as numControl 
from usuario  
where usuario.numControl = dato1 and usuario.password = dato2 and usuario.alta = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `forgotpassword`
--

/*!50001 DROP VIEW IF EXISTS `forgotpassword`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      =  */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `forgotpassword` AS select `usuario`.`nombre` AS `nombre`,`usuario`.`apellidoP` AS `apellidoP`,`usuario`.`apellidoM` AS `apellidoM`,`usuario`.`numControl` AS `numControl`,`usuario`.`password` AS `password`,`usuario`.`correo` AS `correo` from `usuario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listausernoreg`
--

/*!50001 DROP VIEW IF EXISTS `listausernoreg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      =  */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `listausernoreg` AS select `usuario`.`password` AS `password`,`usuario`.`nombre` AS `nombre`,`usuario`.`apellidoP` AS `apellidoP`,`usuario`.`numControl` AS `numControl`,`usuario`.`apellidoM` AS `apellidoM`,`usuario`.`correo` AS `correo`,`alumno`.`grado` AS `grado`,`alumno`.`grupo` AS `grupo`,`alumno`.`turno` AS `turno`,`alumno`.`especialidad` AS `especialidad`,`usuario`.`rol` AS `rol` from (`usuario` join `alumno` on((`alumno`.`numControl` = `usuario`.`numControl`))) where (`usuario`.`alta` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pdf`
--

/*!50001 DROP VIEW IF EXISTS `pdf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      =  */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pdf` AS select `alumno`.`numControl` AS `numControl`,`usuario`.`nombre` AS `nombre`,`usuario`.`apellidoP` AS `apellidoP`,`usuario`.`apellidoM` AS `apellidoM`,`alumno`.`direccion` AS `direccion`,`alumno`.`especialidad` AS `especialidad`,`alumno`.`area` AS `area`,`alumno`.`grado` AS `grado`,`alumno`.`grupo` AS `grupo`,`alumno`.`turno` AS `turno`,`alumno`.`horario` AS `horario`,`alumno`.`CTO` AS `CTO`,`escuela`.`Esc_nombre` AS `Esc_nombre`,`escuela`.`Esc_direccion` AS `Esc_direccion`,`escuela`.`Esc_correo` AS `Esc_correo`,`escuela`.`Esc_Director` AS `Esc_Director`,`escuela`.`Esc_telefono` AS `Esc_telefono`,`alumno`.`CURP` AS `CURP`,`usuario`.`correo` AS `correo`,`usuario`.`foto` AS `foto` from ((`alumno` join `escuela` on((`escuela`.`CTO` = `alumno`.`CTO`))) join `usuario` on((`usuario`.`numControl` = `alumno`.`numControl`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `querydocente`
--

/*!50001 DROP VIEW IF EXISTS `querydocente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      =  */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `querydocente` AS select `usuario`.`nombre` AS `nombre`,`usuario`.`apellidoP` AS `apellidoP`,`usuario`.`apellidoM` AS `apellidoM`,`docente`.`numControl` AS `numControl`,`docente`.`gradoAcademico` AS `gradoAcademico`,`docente`.`telefono` AS `telefono`,`docente`.`RFC` AS `RFC`,`docente`.`CURP` AS `CURP`,`docente`.`CEDULA` AS `CEDULA`,`usuario`.`correo` AS `correo`,`usuario`.`foto` AS `foto` from (`usuario` join `docente` on((`usuario`.`numControl` = `docente`.`numControl`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-22 21:06:54
