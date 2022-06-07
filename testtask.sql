-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 04 2022 г., 20:31
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testtask`
--

-- --------------------------------------------------------

--
-- Структура таблицы `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `phone` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `people`
--

INSERT INTO `people` (`id`, `name`, `surname`, `phone`) VALUES
(1, 'eeeef', 'fffffg', '1111'),
(2, 'eeeef', 'fffffg', '0000000'),
(3, 'EFWFE', 'fffffg', '0000000'),
(4, 'EFWFE', 'no surname', '0000000'),
(5, 'no name', 'no surname', '0000000'),
(6, 'no name', 'no surname', '0000000'),
(7, 'qwpok', 'hiuvuihqf', '1111'),
(8, 'no name', 'no surname', '0000000'),
(9, 'salca', 'asKsa', '62692201'),
(10, 'salca', 'asKsa', '62692201'),
(11, 'salca', 'asKsa', '62692201'),
(12, 'no name', 'no surname', '44444'),
(13, 'no name', 'no surname', '44444'),
(14, 'no name', 'no surname', '44444'),
(15, 'no name', 'no surname', '44444'),
(16, 'no name', 'no surname', '44444'),
(17, 'no name', 'no surname', '44444'),
(18, 'no name', 'no surname', '44444'),
(19, 'no name', 'no surname', '44444'),
(20, 'no name', 'no surname', '44444'),
(21, 'no name', 'no surname', '44444'),
(22, 'no name', 'no surname', '44444'),
(23, 'no name', 'no surname', '44444'),
(24, 'auwww', 'opoie', '44444'),
(25, 'auwww', 'opoie', '44444'),
(26, 'auwww', 'opoie', '44444'),
(27, 'auwww', 'opoie', '44444'),
(28, 'auwww', 'opoie', '44444'),
(29, 'auwww', 'opoie', '44444'),
(30, 'auwww', 'opoie', '44444'),
(31, 'auwww', 'opoie', '44444'),
(32, 'auwww', 'opoie', '44444'),
(33, 'auwww', 'opoie', '44444'),
(34, 'auwww', 'opoie', '44444'),
(35, 'auwww', 'opoie', '44444'),
(36, 'auwww', 'opoie', '44444'),
(37, 'auwww', 'opoie', '44444'),
(38, 'auwww', 'opoie', '44444'),
(39, 'auwww', 'opoie', '44444'),
(40, 'auwww', 'opoie', '44444'),
(41, 'salca', 'asKsa', '62692201'),
(42, 'salca', 'asKsa', '62692201'),
(43, 'salca', 'asKsa', '62692201'),
(44, 'salca', 'asKsa', '62692201'),
(45, 'salca', 'asKsa', '62692201'),
(46, 'salca', 'asKsa', '62692201'),
(47, 'salca', 'asKsa', '62692201'),
(48, 'salca', 'asKsa', '62692201'),
(49, 'salca', 'asKsa', '62692201'),
(50, 'salca', 'asKsa', '62692201'),
(51, 'salca', 'asKsa', '62692201'),
(52, 'salca', 'asKsa', '62692201'),
(53, 'salca', 'asKsa', '62692201'),
(54, 'salca', 'asKsa', '62692201'),
(55, 'salca', 'asKsa', '62692201'),
(56, 'salca', 'asKsa', '62692201'),
(57, 'salca', 'asKsa', '62692201'),
(58, 'salca', 'asKsa', '62692201'),
(59, 'salca', 'asKsa', '62692201'),
(60, 'salca', 'asKsa', '62692201'),
(61, 'salca', 'asKsa', '62692201'),
(62, 'salca', 'asKsa', '62692201'),
(63, 'salca', 'asKsa', '62692201'),
(64, 'salca', 'asKsa', '62692201'),
(65, 'no name', 'no surname', '62692201'),
(66, 'salca', 'asKsa', '62692201'),
(67, 'salca', 'asKsa', '62692201'),
(68, 'salca', 'asKsa', '62692201'),
(69, 'no name', 'no surname', '0000000'),
(70, 'no name', 'no surname', '0000000');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
