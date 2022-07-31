-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 17 2022 г., 17:06
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `betting`
--

-- --------------------------------------------------------

--
-- Структура таблицы `betting_user`
--

CREATE TABLE `betting_user` (
  `id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` char(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `betting_user`
--

INSERT INTO `betting_user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Павлов Никита', 'in20light201@gmail.com', '1234566'),
(2, 'Павлов Никита Константинович', 'in20light201@gmail.com', '1234566'),
(3, '4', 'nikitik20020802@gmail.com', '$2a$15$qTteiDuIKJYzVFMeTaUxveO3YLJAWKD4MjdMPD2ITp/ryzjU4J9S.'),
(4, 'undefined', '123', '$2a$15$DGG58lM7DO5VL4yqYMZ0e.MMK7o190o9exJvA9IDyiggz/LSNi2lS'),
(5, 'Nikita', 'Nikita01', '$2a$15$nrqVXXVb4nnOPn7IT1q5d.dC/TmxPXpK3TifQCxaCwoJdJpNjvKFS'),
(6, 'Nikita', 'Nikita010', '$2a$15$tAj/uaT/DcLhVawGbjAVO.neZcX73GgKpd/bSssSLyvF5KquU0zQ.');

-- --------------------------------------------------------

--
-- Структура таблицы `subscribe`
--

CREATE TABLE `subscribe` (
  `id_user` int DEFAULT NULL,
  `date_payment` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `betting_user`
--
ALTER TABLE `betting_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subscribe`
--
ALTER TABLE `subscribe`
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `betting_user`
--
ALTER TABLE `betting_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `subscribe`
--
ALTER TABLE `subscribe`
  ADD CONSTRAINT `subscribe_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `betting_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
