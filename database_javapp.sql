-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 29 Μάη 2020 στις 19:54:17
-- Έκδοση διακομιστή: 10.4.11-MariaDB
-- Έκδοση PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `database_javapp`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', '1234', 'admin@email.com');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `aitisi_member_card`
--

CREATE TABLE `aitisi_member_card` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `idnumber` int(11) NOT NULL,
  `usernameuser` varchar(100) NOT NULL,
  `aitisistate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `aitisi_member_card`
--

INSERT INTO `aitisi_member_card` (`id`, `firstname`, `lastname`, `birthdate`, `idnumber`, `usernameuser`, `aitisistate`) VALUES
(5, 'tom', 'wild', '2020-05-01', 1523, 'tom', 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `cardmember`
--

CREATE TABLE `cardmember` (
  `onoma` varchar(100) NOT NULL,
  `epwnimo` varchar(100) NOT NULL,
  `datebirth` date NOT NULL,
  `idnumberref` int(11) NOT NULL,
  `xristis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `gate`
--

CREATE TABLE `gate` (
  `id` int(11) NOT NULL,
  `numberseats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `gate`
--

INSERT INTO `gate` (`id`, `numberseats`) VALUES
(3, 2000),
(7, 1000);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `kratisi`
--

CREATE TABLE `kratisi` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `usernamexristi` varchar(100) NOT NULL,
  `kwdikosticket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `lottery`
--

CREATE TABLE `lottery` (
  `id` int(11) NOT NULL,
  `datestart` date NOT NULL,
  `timestart` time NOT NULL,
  `idgame` int(11) NOT NULL,
  `winner` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `match`
--

CREATE TABLE `match` (
  `id` int(11) NOT NULL,
  `titlos` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `match`
--

INSERT INTO `match` (`id`, `titlos`, `date`, `time`) VALUES
(2, 'aek-panathinaikos', '2020-05-08', '20:30:01');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `idkratisis` int(11) NOT NULL,
  `posopayment` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `seat`
--

CREATE TABLE `seat` (
  `name` varchar(100) NOT NULL,
  `kwdikosgate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `seat`
--

INSERT INTO `seat` (`name`, `kwdikosgate`) VALUES
('back', 7),
('frontrow', 3);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `usernamexristi` varchar(100) NOT NULL,
  `kwdikosmatch` int(11) NOT NULL,
  `priceticket` int(11) NOT NULL,
  `katoxos` varchar(100) NOT NULL,
  `idgate` int(11) NOT NULL,
  `onomathesis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `ticket`
--

INSERT INTO `ticket` (`id`, `usernamexristi`, `kwdikosmatch`, `priceticket`, `katoxos`, `idgate`, `onomathesis`) VALUES
(4, 'john', 2, 15, '', 7, 'frontrow');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `iban` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `birthdate`, `iban`) VALUES
(1, 'tom', '1234', 'tom@email.com', '2020-05-01', 123456789),
(5, 'love', '1234', NULL, NULL, NULL);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Ευρετήρια για πίνακα `aitisi_member_card`
--
ALTER TABLE `aitisi_member_card`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usernameuser` (`usernameuser`) USING BTREE,
  ADD UNIQUE KEY `birthdate` (`birthdate`) USING BTREE,
  ADD UNIQUE KEY `idnumber` (`idnumber`);

--
-- Ευρετήρια για πίνακα `cardmember`
--
ALTER TABLE `cardmember`
  ADD UNIQUE KEY `xristis` (`xristis`) USING BTREE,
  ADD UNIQUE KEY `idnumberref` (`idnumberref`);

--
-- Ευρετήρια για πίνακα `gate`
--
ALTER TABLE `gate`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `kratisi`
--
ALTER TABLE `kratisi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kwdikosticket` (`kwdikosticket`),
  ADD KEY `usernamexristi` (`usernamexristi`) USING BTREE;

--
-- Ευρετήρια για πίνακα `lottery`
--
ALTER TABLE `lottery`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `match`
--
ALTER TABLE `match`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idkratisis` (`idkratisis`) USING BTREE;

--
-- Ευρετήρια για πίνακα `seat`
--
ALTER TABLE `seat`
  ADD UNIQUE KEY `kwdikosgate` (`kwdikosgate`) USING BTREE,
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- Ευρετήρια για πίνακα `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idgate` (`idgate`) USING BTREE,
  ADD KEY `onomathesis` (`onomathesis`) USING BTREE,
  ADD KEY `kwdikosmatch` (`kwdikosmatch`) USING BTREE;

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE,
  ADD KEY `birthdate` (`birthdate`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT για πίνακα `aitisi_member_card`
--
ALTER TABLE `aitisi_member_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT για πίνακα `kratisi`
--
ALTER TABLE `kratisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT για πίνακα `lottery`
--
ALTER TABLE `lottery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `match`
--
ALTER TABLE `match`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT για πίνακα `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `aitisi_member_card`
--
ALTER TABLE `aitisi_member_card`
  ADD CONSTRAINT `aitisi_member_card_ibfk_1` FOREIGN KEY (`usernameuser`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aitisi_member_card_ibfk_2` FOREIGN KEY (`birthdate`) REFERENCES `users` (`birthdate`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `cardmember`
--
ALTER TABLE `cardmember`
  ADD CONSTRAINT `cardmember_ibfk_1` FOREIGN KEY (`xristis`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cardmember_ibfk_2` FOREIGN KEY (`idnumberref`) REFERENCES `aitisi_member_card` (`idnumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `kratisi`
--
ALTER TABLE `kratisi`
  ADD CONSTRAINT `kratisi_ibfk_1` FOREIGN KEY (`kwdikosticket`) REFERENCES `ticket` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kratisi_ibfk_2` FOREIGN KEY (`usernamexristi`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`idkratisis`) REFERENCES `kratisi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`kwdikosgate`) REFERENCES `gate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`idgate`) REFERENCES `gate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`onomathesis`) REFERENCES `seat` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`kwdikosmatch`) REFERENCES `match` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
