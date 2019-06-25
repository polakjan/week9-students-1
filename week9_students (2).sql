-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 04. bře 2019, 08:31
-- Verze serveru: 10.1.30-MariaDB
-- Verze PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `week9_v2`
--

--
-- Vypisuji data pro tabulku `images`
--

INSERT INTO `images` (`id`, `path`, `description`, `created_at`, `updated_at`) VALUES
(1, 'media/harry-happy.jpg', 'Harry Potter being happy', NULL, NULL),
(2, 'media/harry-halfblood.jpg', 'Harry Potter & party', NULL, NULL),
(3, 'media/harry-f.jpg', 'Harry Potter pronouncing the F word.', NULL, NULL);

--
-- Vypisuji data pro tabulku `students`
--

INSERT INTO `students` (`id`, `slug`, `name`, `history`, `lessons_from`, `lessons_until`, `created_at`, `updated_at`) VALUES
(1, 'harry', 'Harry Potter', 'Harry Potter, born on the 31st of July[4] in the year 1980, is a wizard and a student of Hogwarts School of Witchcraft and Wizardry; he was sorted into Gryffindor House.', '20:00:00', '06:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(2, 'hermione', 'Hermione Granger', 'Hermione Granger (September 1979) is a muggle-born witch and the daughter of Mr. and Mrs. Granger. She attended Hogwarts School of Witchcraft and Wizardry from 1992 until 1998, at which point she began hunting horcruxes with her friends.', '10:00:00', '16:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(3, 'ron', 'Ron Weasley', 'Ron Weasley (born 1 March 1980) is a pure-blood wizard and the son of Arthur and Molly Weasley. He is the best friend of Harry Potter and Hermione Granger.', '09:00:00', '17:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(4, 'tom', 'Tom Raddle', 'Tom Marvolo Riddle[1] (better known as Voldemort, and also known as He Who Must Not Be Named, You-Know-Who and Chief Death Eater, and as the Dark Lord to his followers) is a wizard and one of the most evil of his kind. Head of an organisation he formed called the Death Eaters, he is highly efficient in the unforgivable curses, especially in the Avada Kedavra curse. Voldemort is an enemy of Harry Potter, whose parents James and Lily Potter he murdered on Hallowe\'en.', '17:00:00', '23:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(5, 'luna', 'Luna Lovegood', 'Luna Lovegood is a Ravenclaw student, introduced in Harry Potter and the Order of the Phoenix. She is one year below Harry, and is often known at Hogwarts as her nickname, Loony Lovegood.', '03:00:00', '23:59:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36');

--
-- Vypisuji data pro tabulku `student_image`
--

INSERT INTO `student_image` (`student_id`, `image_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 2),
(3, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
