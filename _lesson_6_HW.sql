-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Авг 13 2024 г., 14:04
-- Версия сервера: 8.0.39-0ubuntu0.24.04.1
-- Версия PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: ` lesson_6_HW`
--

DELIMITER $$
--
-- Процедуры
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_add` (OUT `tran_result` VARCHAR(100), IN `u_firstname` VARCHAR(45), IN `u_lastname` VARCHAR(45), IN `u_e_mail` VARCHAR(45))   BEGIN
	
	DECLARE `_rollback` BIT DEFAULT 0$$

CREATE DEFINER=`hacoc`@`localhost` PROCEDURE `user_copy` (IN `u_id` INT, OUT `tran_result` VARCHAR(100))   BEGIN
	
	DECLARE `_rollback` BIT DEFAULT 0$$

CREATE DEFINER=`hacoc`@`localhost` PROCEDURE `user_copy_with_error` (IN `u_id` INT, OUT `tran_result` VARCHAR(100))   BEGIN
	
	DECLARE `_rollback` BIT DEFAULT 0$$

CREATE DEFINER=`hacoc`@`localhost` PROCEDURE `user_transfer` (IN `u_id` INT, OUT `tran_result` VARCHAR(100))   BEGIN
	
	DECLARE `_rollback` BIT DEFAULT 0$$

--
-- Функции
--
CREATE DEFINER=`hacoc`@`localhost` FUNCTION `hello` () RETURNS TEXT CHARSET utf8mb4 NO SQL BEGIN
	DECLARE time_now INT$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `logs_`
--

CREATE TABLE `logs_` (
  `id` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name_table` varchar(45) NOT NULL,
  `record_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `logs_`
--

INSERT INTO `logs_` (`id`, `date`, `name_table`, `record_ID`) VALUES
(1, '2024-08-13 15:12:33', 'old_user', 0),
(2, '2024-08-13 15:13:27', 'old_user', 0),
(3, '2024-08-13 15:17:23', 'old_user', 0),
(4, '2024-08-13 15:19:42', 'old_user', 0),
(5, '2024-08-13 15:21:43', 'old_user', 25),
(6, '2024-08-13 15:58:08', 'old_user', 48),
(7, '2024-08-13 16:00:03', 'old_user : INSERT', 49),
(8, '2024-08-13 16:02:00', 'old_user : DELETE', 20),
(9, '2024-08-13 16:02:30', 'old_user : DELETE', 22),
(10, '2024-08-13 16:03:56', 'old_user : UPDATE', 23),
(11, '2024-08-13 16:19:35', 'old_user : INSERT', 50),
(17, '2024-08-13 16:38:10', 'old_user : INSERT', 21),
(18, '2024-08-13 16:38:10', 'old_user : DELETE', 21),
(19, '2024-08-13 16:42:13', 'new_user : INSERT', 23),
(20, '2024-08-13 16:42:49', 'old_user : DELETE', 23),
(21, '2024-08-13 16:42:49', 'old_user : DELETE', 25),
(22, '2024-08-13 16:42:49', 'old_user : DELETE', 48),
(23, '2024-08-13 16:42:49', 'old_user : DELETE', 49),
(24, '2024-08-13 16:42:49', 'old_user : DELETE', 50),
(25, '2024-08-13 16:43:46', 'old_user : INSERT', 51),
(26, '2024-08-13 16:47:31', 'old_user : INSERT', 53),
(27, '2024-08-13 16:48:02', 'old_user : INSERT', 54),
(28, '2024-08-13 16:49:43', 'old_user : INSERT', 55),
(29, '2024-08-13 16:50:11', 'new_user : INSERT', 55),
(30, '2024-08-13 16:50:11', 'old_user : DELETE', 55),
(31, '2024-08-13 16:50:26', 'new_user : DELETE', 23),
(32, '2024-08-13 16:50:28', 'new_user : DELETE', 21),
(33, '2024-08-13 16:52:04', 'new_user : DELETE', 55),
(34, '2024-08-13 16:52:43', 'old_user : INSERT', 56),
(35, '2024-08-13 16:53:30', 'new_user : INSERT', 56),
(36, '2024-08-13 16:53:30', 'old_user : DELETE', 56);

-- --------------------------------------------------------

--
-- Структура таблицы `log_err`
--

CREATE TABLE `log_err` (
  `id` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `errors_` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `log_err`
--

INSERT INTO `log_err` (`id`, `date`, `errors_`) VALUES
(5, '2024-08-13 16:36:10', 'УПС. Ошибка: 42S22 Текст ошибки: Неизвестный столбец \'email\' в \'field list\''),
(6, '2024-08-13 16:46:17', 'Ошибка: 42S22 Текст ошибки: Неизвестный столбец \'email\' в \'field list\'');

-- --------------------------------------------------------

--
-- Структура таблицы `new_user`
--

CREATE TABLE `new_user` (
  `id` int NOT NULL,
  `firstname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `e_mail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `new_user`
--

INSERT INTO `new_user` (`id`, `firstname`, `lastname`, `e_mail`) VALUES
(56, 'Charli', 'Chaplin', 'charli@mail.ru');

--
-- Триггеры `new_user`
--
DELIMITER $$
CREATE TRIGGER `add_user_from_new_user` AFTER INSERT ON `new_user` FOR EACH ROW INSERT INTO logs_ SET record_ID = new.id, name_table = 'new_user : INSERT'
$$
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `del_user_from_new_user` BEFORE DELETE ON `new_user` FOR EACH ROW INSERT INTO logs_ SET record_ID = old.id, name_table = 'new_user : DELETE'
$$
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_user_from_new_user` AFTER UPDATE ON `new_user` FOR EACH ROW INSERT INTO logs_ SET record_ID = new.id, name_table = 'new_user : UPDATE'
$$
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `old_user`
--

CREATE TABLE `old_user` (
  `id` int NOT NULL,
  `firstname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `e_mail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `old_user`
--

INSERT INTO `old_user` (`id`, `firstname`, `lastname`, `e_mail`) VALUES
(51, 'Ivan', 'Ivanov', 'ivan@mail.ru'),
(53, 'Vasia', 'Tarkov', 'vasia@mail.ru'),
(54, 'Petia', 'Petrov', 'petia@mail.ru');

--
-- Триггеры `old_user`
--
DELIMITER $$
CREATE TRIGGER `add_user` AFTER INSERT ON `old_user` FOR EACH ROW INSERT INTO logs_ SET record_ID = new.id, name_table = 'old_user : INSERT'
$$
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `del_user` BEFORE DELETE ON `old_user` FOR EACH ROW INSERT INTO logs_ SET record_ID = old.id, name_table = 'old_user : DELETE'
$$
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_user` AFTER UPDATE ON `old_user` FOR EACH ROW INSERT INTO logs_ SET record_ID = new.id, name_table = 'old_user : UPDATE'
$$
$$
DELIMITER ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `logs_`
--
ALTER TABLE `logs_`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `log_err`
--
ALTER TABLE `log_err`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `new_user`
--
ALTER TABLE `new_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e_mail` (`e_mail`);

--
-- Индексы таблицы `old_user`
--
ALTER TABLE `old_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e_mail` (`e_mail`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `logs_`
--
ALTER TABLE `logs_`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `log_err`
--
ALTER TABLE `log_err`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `new_user`
--
ALTER TABLE `new_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `old_user`
--
ALTER TABLE `old_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
