-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 04 2019 г., 21:10
-- Версия сервера: 5.7.17
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tblbase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL COMMENT 'Номер записи',
  `date` date NOT NULL COMMENT 'Дата заполнения',
  `name_shop` text NOT NULL COMMENT 'Магазин',
  `visitors_number` int(11) NOT NULL COMMENT 'Количество посетителей',
  `sales_number` int(11) NOT NULL COMMENT 'Количество продаж',
  `proceeds` int(11) NOT NULL COMMENT 'Выручка'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `report`
--

INSERT INTO `report` (`id`, `date`, `name_shop`, `visitors_number`, `sales_number`, `proceeds`) VALUES
(1, '2019-10-02', 'Sun', 34, 20, 35000),
(2, '2019-10-02', 'Adidas', 50, 23, 44000),
(3, '2019-10-01', 'Nike', 74, 54, 87500),
(4, '2019-09-30', 'Mvideo', 45, 31, 87250),
(5, '2019-10-01', 'Lenta', 209, 200, 120000),
(6, '2019-09-19', 'Sun', 54, 40, 75000),
(7, '2019-09-11', 'Adidas', 49, 30, 65000),
(8, '2019-09-20', 'Nike', 33, 28, 48000),
(9, '2019-09-12', 'Mvideo', 56, 43, 90345),
(10, '2019-09-09', 'Lenta', 228, 215, 145230),
(11, '2019-10-01', 'Zolla', 56, 40, 65000);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Номер записи', AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
