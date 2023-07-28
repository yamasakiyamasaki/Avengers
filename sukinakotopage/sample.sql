-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-07-28 03:38:33
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `avengers`
--
CREATE DATABASE IF NOT EXISTS `avengers` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `avengers`;

-- --------------------------------------------------------

--
-- テーブルの構造 `お問い合わせ`
--

CREATE TABLE `お問い合わせ` (
  `ID` int(6) UNSIGNED NOT NULL,
  `名前` varchar(50) NOT NULL,
  `メールアドレス` varchar(50) NOT NULL,
  `メッセージ` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `お問い合わせ`
--

INSERT INTO `お問い合わせ` (`ID`, `名前`, `メールアドレス`, `メッセージ`) VALUES
(9, 'ヤマサキ', 'exactly.@docomo.ne.jp', '私がアイアンマンだ'),
(10, 'ザキヤマ', 'exactly.@docomo.ne.jp', '僕はアイアンマンだ');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `お問い合わせ`
--
ALTER TABLE `お問い合わせ`
  ADD PRIMARY KEY (`ID`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `お問い合わせ`
--
ALTER TABLE `お問い合わせ`
  MODIFY `ID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
