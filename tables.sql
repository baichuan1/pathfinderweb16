-- SQL Table structure

CREATE TABLE IF NOT EXISTS paMembrs (
  pmId INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  pmClub INT NULL,
  pmName VARCHAR(60) NULL, 
  pmMail VARCHAR(120) NOT NULL,
  pmActive bit DEFAULT 0,
  pmRole INT DEFAULT 14, 
  pmPwd VARCHAR(120) NOT NULL,
  pmFamily INT NULL,
  pmLastLogin TIMESTAMP NULL);
  
  CREATE TABLE IF NOT EXISTS paClubs (
	pcId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	pcName VARCHAR(60) NULL,
	pcAddress VARCHAR(60) NULL);
  
  CREATE TABLE IF NOT EXISTS paRoles (
	prId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	prName VARCHAR(20) NULL,
	prMultiClub BIT DEFAULT 0,
	prMultiUnit BIT DEFAULT 0,
	prMultiCampers BIT DEFAULT 0,
	prEditUsers BIT DEFAULT 0);
	
  CREATE TABLE IF NOT EXISTS paFamily (
	pfId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	pfName VARCHAR(60) NULL);