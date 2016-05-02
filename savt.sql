-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 May 2016, 22:08:49
-- Sunucu sürümü: 5.7.11
-- PHP Sürümü: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `savt`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `communication`
--

CREATE TABLE `communication` (
  `id` int(11) NOT NULL,
  `value` varchar(32) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `communication`
--

INSERT INTO `communication` (`id`, `value`) VALUES
(1, 'mobil'),
(2, 'mail');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dil`
--

CREATE TABLE `dil` (
  `id` int(11) NOT NULL,
  `value` varchar(32) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `dil`
--

INSERT INTO `dil` (`id`, `value`) VALUES
(1, 'ingilizce'),
(2, 'fransızca'),
(3, 'almanca'),
(4, 'çince');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `fname` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `lname` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `bdate` date NOT NULL,
  `sex` varchar(5) COLLATE utf8_turkish_ci NOT NULL,
  `tc` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `medeni_hal` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `point` double NOT NULL,
  `maas` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `employee`
--

INSERT INTO `employee` (`id`, `fname`, `lname`, `bdate`, `sex`, `tc`, `medeni_hal`, `point`, `maas`) VALUES
(1, 'Selim Sirac', 'Güler', '1995-05-05', 'Bay', '12345678910', 'Bekar', 5000, 5000),
(2, 'Cemal', 'Taşkıran', '1996-02-01', 'Bay', '10987654321', 'Bekar', 4500, 4000);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employee_com`
--

CREATE TABLE `employee_com` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `com_id` int(11) NOT NULL,
  `value` varchar(32) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `employee_com`
--

INSERT INTO `employee_com` (`id`, `e_id`, `com_id`, `value`) VALUES
(1, 1, 1, '5057341293'),
(5, 2, 2, 'cemaltaskiran@gmail.com'),
(3, 1, 2, 'selimsirac@gmail.com'),
(4, 2, 1, '5327414185');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employee_dil`
--

CREATE TABLE `employee_dil` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `dil_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `employee_dil`
--

INSERT INTO `employee_dil` (`id`, `e_id`, `dil_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employee_pool`
--

CREATE TABLE `employee_pool` (
  `id` int(11) NOT NULL,
  `fname` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `lname` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `bdate` date NOT NULL,
  `sex` varchar(5) COLLATE utf8_turkish_ci NOT NULL,
  `tc` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `medeni_hal` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `point` double NOT NULL,
  `maas` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `employee_pool`
--

INSERT INTO `employee_pool` (`id`, `fname`, `lname`, `bdate`, `sex`, `tc`, `medeni_hal`, `point`, `maas`) VALUES
(1, 'Burak', 'idi', '1995-08-25', 'Bay', '48796544478', 'Evli', 3500, 4000),
(2, 'ferhat fikri', 'minder', '1995-03-19', 'Bay', '12457894561', 'Bekar', 3000, 3200),
(4, 'Burak', 'Öztürk', '1996-04-03', 'Bay', '12345678900', 'Bekar', 3000, 3500);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employee_pool_com`
--

CREATE TABLE `employee_pool_com` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `com_id` int(11) NOT NULL,
  `value` varchar(32) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `employee_pool_com`
--

INSERT INTO `employee_pool_com` (`id`, `e_id`, `com_id`, `value`) VALUES
(1, 1, 1, '5057341293'),
(2, 2, 2, 'cemaltaskiran@gmail.com'),
(3, 1, 2, 'selimsirac@gmail.com'),
(4, 2, 1, '5327414185'),
(5, 4, 1, '1234567890'),
(6, 4, 2, 'burakozturk@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employee_pool_dil`
--

CREATE TABLE `employee_pool_dil` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `dil_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `employee_pool_dil`
--

INSERT INTO `employee_pool_dil` (`id`, `e_id`, `dil_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 3),
(4, 4, 1),
(5, 4, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employee_pool_yetenek`
--

CREATE TABLE `employee_pool_yetenek` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `y_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `employee_pool_yetenek`
--

INSERT INTO `employee_pool_yetenek` (`id`, `e_id`, `y_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 4, 1),
(5, 4, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employee_yetenek`
--

CREATE TABLE `employee_yetenek` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `y_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `employee_yetenek`
--

INSERT INTO `employee_yetenek` (`id`, `e_id`, `y_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `proje`
--

CREATE TABLE `proje` (
  `id` int(11) NOT NULL,
  `isim` varchar(64) COLLATE utf8_turkish_ci NOT NULL,
  `start_date` date NOT NULL,
  `finish_date` date NOT NULL,
  `puan` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `proje`
--

INSERT INTO `proje` (`id`, `isim`, `start_date`, `finish_date`, `puan`) VALUES
(1, 'sistem analizi projesi', '2016-03-03', '2016-05-25', 4500),
(2, 'java projesi', '2016-02-08', '2016-08-16', 2000);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `proje_pool`
--

CREATE TABLE `proje_pool` (
  `id` int(11) NOT NULL,
  `isim` varchar(64) COLLATE utf8_turkish_ci NOT NULL,
  `start_date` date NOT NULL,
  `finish_date` date NOT NULL,
  `puan` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `proje_pool`
--

INSERT INTO `proje_pool` (`id`, `isim`, `start_date`, `finish_date`, `puan`) VALUES
(1, 'sistem programlama', '2016-04-18', '2016-04-28', 6000);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `proje_to_employee`
--

CREATE TABLE `proje_to_employee` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `proje_to_employee`
--

INSERT INTO `proje_to_employee` (`id`, `p_id`, `e_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yetenek`
--

CREATE TABLE `yetenek` (
  `id` int(11) NOT NULL,
  `value` varchar(32) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yetenek`
--

INSERT INTO `yetenek` (`id`, `value`) VALUES
(1, 'java'),
(2, 'c#'),
(3, 'ios'),
(4, 'android');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `communication`
--
ALTER TABLE `communication`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `dil`
--
ALTER TABLE `dil`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `employee_com`
--
ALTER TABLE `employee_com`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `employee_dil`
--
ALTER TABLE `employee_dil`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `employee_pool`
--
ALTER TABLE `employee_pool`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `employee_pool_com`
--
ALTER TABLE `employee_pool_com`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `employee_pool_dil`
--
ALTER TABLE `employee_pool_dil`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `employee_pool_yetenek`
--
ALTER TABLE `employee_pool_yetenek`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `employee_yetenek`
--
ALTER TABLE `employee_yetenek`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `proje`
--
ALTER TABLE `proje`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `proje_pool`
--
ALTER TABLE `proje_pool`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `proje_to_employee`
--
ALTER TABLE `proje_to_employee`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yetenek`
--
ALTER TABLE `yetenek`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `communication`
--
ALTER TABLE `communication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `dil`
--
ALTER TABLE `dil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `employee_com`
--
ALTER TABLE `employee_com`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `employee_dil`
--
ALTER TABLE `employee_dil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `employee_pool`
--
ALTER TABLE `employee_pool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `employee_pool_com`
--
ALTER TABLE `employee_pool_com`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `employee_pool_dil`
--
ALTER TABLE `employee_pool_dil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `employee_pool_yetenek`
--
ALTER TABLE `employee_pool_yetenek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `employee_yetenek`
--
ALTER TABLE `employee_yetenek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `proje`
--
ALTER TABLE `proje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `proje_pool`
--
ALTER TABLE `proje_pool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `proje_to_employee`
--
ALTER TABLE `proje_to_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `yetenek`
--
ALTER TABLE `yetenek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
