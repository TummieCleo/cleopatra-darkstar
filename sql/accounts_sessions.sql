-- phpMyAdmin SQL Dump
-- version 3.3.8
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- G�n�r� le : Sam 20 Ao�t 2011 � 11:41
-- Version du serveur: 6.0.0
-- Version de PHP: 5.2.9-2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de donn�es: `dspdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts_sessions`
--

DROP TABLE IF EXISTS `accounts_sessions`;
CREATE TABLE IF NOT EXISTS `accounts_sessions` (
  `charid` int(10) unsigned NOT NULL DEFAULT '0',
  `targid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `partyid` int(10) unsigned NOT NULL DEFAULT '0',
  `session_key` binary(20) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `server_addr` int(10) unsigned NOT NULL DEFAULT '0',
  `accid` int(10) unsigned NOT NULL DEFAULT '0',
  `client_addr` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  `client_port` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charid`),
  UNIQUE KEY `UK_sessions_accid` (`accid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;