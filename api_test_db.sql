-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Kas 2021, 20:23:09
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `api_test_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(55) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(55) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(55) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cities`
--

INSERT INTO `cities` (`id`, `city_name`) VALUES
(1, 'alanya'),
(2, 'gazipaşa'),
(3, 'kaş'),
(4, 'Kemer'),
(5, 'Manavgat');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(55) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `places_to_visit`
--

CREATE TABLE `places_to_visit` (
  `id` int(11) NOT NULL,
  `place_name` varchar(55) COLLATE utf8_turkish_ci NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `places_to_visit`
--

INSERT INTO `places_to_visit` (`id`, `place_name`, `city_id`) VALUES
(1, 'Alanya Kalesi', 1),
(2, 'Damlataş Mağarası', 1),
(3, 'Dim çay', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `places_to_visit_info`
--

CREATE TABLE `places_to_visit_info` (
  `id` int(11) NOT NULL,
  `places_description_tr` longtext COLLATE utf8_turkish_ci NOT NULL,
  `places_description_en` longtext COLLATE utf8_turkish_ci NOT NULL,
  `place_id` int(11) NOT NULL,
  `main_background_image` varchar(55) COLLATE utf8_turkish_ci NOT NULL,
  `images` varchar(55) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `places_to_visit_info`
--

INSERT INTO `places_to_visit_info` (`id`, `places_description_tr`, `places_description_en`, `place_id`, `main_background_image`, `images`) VALUES
(1, 'Romalı korsan Tryhos\'un savaşçıları tarafından MÖ 2. yüzyılda Korakesion adıyla kuruldu. Doğu Akdeniz\'deki korsan faaliyetlerinden rahatsız olan Romalılar, kaleyi MÖ 64-65 yıllarında ele geçirdiler. Kale ve etrafındaki yerleşim, 1220-1221 yıllarında I. Alaeddin Keykubad tarafından Selçuklu ülkesine katıldı Sonra sırasıyla Karamanoğulları, Memlükler idaresine geçmiş, son olarak da Kanuni Sultan Süleyman tarafından fethedilmiştir.\r\n\r\nYarımadanın zirvesinde günümüzde müze olarak düzenlenen İçkale bulunmaktadır. Selçuklu Sultanı Alaeddin Keykubad sarayını burada inşa ettirmiştir. Günümüzde de kalede yerleşim vardır. Kale motorlu taşıt trafiğine açık olmakla beraber yürüyerek ise takribi 1 saatte İçkale\'ye varılmaktadır.', 'English info\r\n', 1, '', '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `places_to_visit`
--
ALTER TABLE `places_to_visit`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `places_to_visit_info`
--
ALTER TABLE `places_to_visit_info`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `places_to_visit`
--
ALTER TABLE `places_to_visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `places_to_visit_info`
--
ALTER TABLE `places_to_visit_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
