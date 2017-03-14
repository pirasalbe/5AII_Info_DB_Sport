-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Mar 11, 2017 alle 10:33
-- Versione del server: 10.1.16-MariaDB
-- Versione PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sport`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `games`
--

CREATE TABLE `games` (
  `TEAMNO` smallint(6) NOT NULL,
  `PLAYERNO` smallint(6) NOT NULL,
  `WON` smallint(6) NOT NULL,
  `LOST` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `games`
--

INSERT INTO `games` (`TEAMNO`, `PLAYERNO`, `WON`, `LOST`) VALUES
(1, 2, 4, 8),
(1, 6, 9, 1),
(1, 8, 0, 1),
(1, 44, 7, 5),
(1, 57, 5, 0),
(1, 83, 3, 3),
(2, 8, 4, 4),
(2, 27, 11, 2),
(2, 104, 8, 4),
(2, 112, 4, 8);

-- --------------------------------------------------------

--
-- Struttura della tabella `penalties`
--

CREATE TABLE `penalties` (
  `PAYMENTNO` int(11) NOT NULL,
  `PLAYERNO` smallint(6) NOT NULL,
  `CDATE` date NOT NULL,
  `AMOUNT` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `penalties`
--

INSERT INTO `penalties` (`PAYMENTNO`, `PLAYERNO`, `CDATE`, `AMOUNT`) VALUES
(1, 6, '1980-12-08', '100.00'),
(2, 44, '1981-05-05', '75.00'),
(3, 27, '1983-10-09', '100.00'),
(4, 104, '1984-08-12', '50.00'),
(5, 44, '1980-12-08', '25.00'),
(6, 8, '1980-08-12', '25.00'),
(7, 44, '0000-00-00', '30.00'),
(8, 27, '1984-12-11', '75.00');

-- --------------------------------------------------------

--
-- Struttura della tabella `players`
--

CREATE TABLE `players` (
  `PLAYERNO` smallint(6) NOT NULL,
  `NAME` char(15) NOT NULL,
  `INITIALS` char(3) DEFAULT NULL,
  `YEAR_OF_BIRTH` smallint(6) DEFAULT NULL,
  `SEX` char(1) DEFAULT NULL,
  `YEAR_JOINED` smallint(6) NOT NULL,
  `STREET` char(15) NOT NULL,
  `HOUSENO` char(4) DEFAULT NULL,
  `POSTCODE` char(6) DEFAULT NULL,
  `TOWN` char(10) NOT NULL,
  `PHONENO` char(10) DEFAULT NULL,
  `LEAGUENO` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `players`
--

INSERT INTO `players` (`PLAYERNO`, `NAME`, `INITIALS`, `YEAR_OF_BIRTH`, `SEX`, `YEAR_JOINED`, `STREET`, `HOUSENO`, `POSTCODE`, `TOWN`, `PHONENO`, `LEAGUENO`) VALUES
(2, 'Everett', 'R', 1948, 'M', 1975, 'Stoney Road', '43', '3575NH', 'Stratford', '070-237893', '2411'),
(6, 'Parmenter', 'R', 1964, 'M', 1977, 'Haseltine Lane', '80', '1234KK', 'Stratford', '070-476537', '8467'),
(7, 'Wise', 'GWS', 1963, 'M', 1981, 'Edgecombe Way', '39', '9758VB', 'Stratford', '070-347689', NULL),
(8, 'Newcastle', 'B', 1962, 'F', 1980, 'Station Road', '4', '6584WO', 'Inglewood', '070-476573', '2983'),
(27, 'Collins', 'DD', 1964, 'F', 1983, 'Long Drive', '804', '8457DK', 'Eltham', '079-234857', '2513'),
(28, 'Collins', 'C', 1963, 'F', 1983, 'Old Main Road', '10', '1294QK', 'Midhurst', '010-659599', NULL),
(39, 'Bishop', 'D', 1956, 'M', 1980, 'Eaton Square', '78', '9629CD', 'Stratford', '070-393435', NULL),
(44, 'Baker', 'E', 1963, 'M', 1980, 'Lewis Street', '23', '4444LJ', 'Inglewood', '070-368753', '1124'),
(57, 'Brown', 'M', 1971, 'M', 1985, 'Edgecombe Way', '16', '4377CB', 'Stratford', '070-473458', '6409'),
(83, 'Hope', 'PK', 1956, 'M', 1982, 'Magdalene Road', '16a', '1812UP', 'Stratford', '070-353548', '1608'),
(95, 'Miller', 'P', 1934, 'M', 1972, 'High Street', '33a', '5746OP', 'Douglas', '070-867564', NULL),
(100, 'Parmenter', 'P', 1963, 'M', 1979, 'Haseltine Lane', '80', '1234KK', 'Stratford', '070-476537', '6524'),
(104, 'Moorman', 'D', 1970, 'F', 1984, 'Stout Street', '65', '9437AO', 'Eltham', '079-987571', '7060'),
(112, 'Bailey', 'IP', 1963, 'F', 1984, 'Vixen Road', '8', '6392LK', 'Plymouth', '010-54874', '1319');

-- --------------------------------------------------------

--
-- Struttura della tabella `teams`
--

CREATE TABLE `teams` (
  `TEAMNO` smallint(6) NOT NULL,
  `PLAYERNO` smallint(6) NOT NULL,
  `DIVISION` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `teams`
--

INSERT INTO `teams` (`TEAMNO`, `PLAYERNO`, `DIVISION`) VALUES
(1, 6, 'first'),
(2, 27, 'second');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`TEAMNO`,`PLAYERNO`),
  ADD KEY `PLAYERNO` (`PLAYERNO`);

--
-- Indici per le tabelle `penalties`
--
ALTER TABLE `penalties`
  ADD PRIMARY KEY (`PAYMENTNO`),
  ADD KEY `PLAYERNO` (`PLAYERNO`);

--
-- Indici per le tabelle `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`PLAYERNO`);

--
-- Indici per le tabelle `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`TEAMNO`),
  ADD KEY `PLAYERNO` (`PLAYERNO`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`PLAYERNO`) REFERENCES `players` (`PLAYERNO`),
  ADD CONSTRAINT `games_ibfk_2` FOREIGN KEY (`TEAMNO`) REFERENCES `teams` (`TEAMNO`);

--
-- Limiti per la tabella `penalties`
--
ALTER TABLE `penalties`
  ADD CONSTRAINT `penalties_ibfk_1` FOREIGN KEY (`PLAYERNO`) REFERENCES `players` (`PLAYERNO`);

--
-- Limiti per la tabella `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`PLAYERNO`) REFERENCES `players` (`PLAYERNO`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
