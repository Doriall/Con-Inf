-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 13 2020 г., 03:31
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(300) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `height` float DEFAULT NULL,
  `heightUnit` varchar(10) DEFAULT NULL,
  `width` float DEFAULT NULL,
  `widthUnit` varchar(10) DEFAULT NULL,
  `depth` float DEFAULT NULL,
  `depthUnit` varchar(10) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `weightUnit` varchar(10) DEFAULT NULL,
  `scan_flag` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `link`, `name`, `category`, `price`, `date`, `description`, `height`, `heightUnit`, `width`, `widthUnit`, `depth`, `depthUnit`, `weight`, `weightUnit`, `scan_flag`) VALUES
(37, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/kitfort/vinnyy_shkaf_kitfort_kt_2408-1960044.html', 'Kitfort KT-2408', 'Винные шкафы', 12490, '07.11.2019', '<p>Винный шкаф Kitfort KT-2408 — это специальная холодильная камера для вина. В камере винного шкафа можно установить необходимую температуру в пределах от 10 °С до 18 °С с шагом 1 °С. Полки винного шкафа выполнены из нержавеющей стали со специальными выемками под бутылки. Бутылки хранятся на полках горизонтально. Всего винный шкаф вмещает 12 бутылок на 750 мл типа «Бордо». От ультрафиолета бутылки защищает дверца из темного стекла, а внутри камеры установлена синяя лампа подсветки, чтобы можно было выбрать вино, не открывая дверцу. Охлаждение камеры с помощью термоэлемента Пельтье позволяет избежать вибраций и шума компрессорных систем охлаждения.    </p>\r\n<p>Известно, что вино портится от светового излучения и излучения в ультрафиолетовом диапазоне (прямые солнечные лучи, некоторые виды светильников), поэтому винные бутылки изготавливают из темного стекла. В прозрачных бутылках допустимо выпускать только молодое белое вино; подразумевается, что его быстро выпьют, и оно не будет долго храниться. Дверца винного шкафа также выполнена из темного стекла, оно поглощает видимый свет и ультрафиолетовое излучение. Лампа подсветки светит неярким синим светом, чтобы исключить его воздействие на бутылки с вином. Так что в винном шкафу вы можете хранить вино даже в прозрачных бутылках — там оно будет не только храниться при нужной температуре, но и будет защищено от света.    </p>\r\n<p>Полки винного шкафа рассчитаны на стандартные бутылки типа «бордо» длиной не более 30 см и диаметром 7 см, ёмкостью 750 мл. Бутылки некоторых производителей могут не соответствовать этим размерам. Для хранения таких бутылок вам, возможно, потребуется вынуть часть полок, или установить их через одну. Разумеется, в винном шкафу можно хранить не только вино, но также пиво и другие напитки, в том числе безалкогольные.</p>', 51, 'см ', 46.8, 'см ', 34, 'см ', 12, 'кг ', 1),
(38, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/bbk/vinnyy_shkaf_bbk_bwr_081_chernyy-1780601.html', 'BBK BWR-081 черный', 'Винные шкафы', 7590, '18.04.2019', '<p>Холодильник для вина BWR-081 с термоэлектрическим охлаждением предназначен для длительного хранения вина в оптимальных условиях.</p>\r\n<p>Компактные размеры устройства позволяют разместить его даже на небольшой кухне. Вместимость винного шкафа - 8 стандартных бутылок, которые располагаются на 2 хромированных полках. Тонированное закаленное стекло дверцы, защищающее вино от солнечных лучей, и внутренняя светодиодная подсветка создают прекрасный обзор содержимого шкафа. Электронная панель управления позволяет установить температуру в диапазоне от +8°C до +18°C, для контроля параметров работы предусмотрен LED-дисплей.</p>', 28.5, 'см ', 42, 'см ', 53, 'см ', 9.3, 'кг ', 1),
(39, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/gemlux/vinnyy_shkaf_gemlux_gl_wc_8w-1451297.html', 'Gemlux GL-WC-8W', 'Винные шкафы', 9290, '06.06.2018', '<p>Холодильный шкаф Gemlux GL-WC-8W предназначен для хранения вина в стандартных бутылках емкостью 0,75 л в горизонтальном положении. Для этой цели он укомплектован тремя деревянными полками. Вместимость винного шкафа Gemlux GL-WC-8W – 8 бутылок. Он работает по термоэлектрическому (бескомпрессорному) принципу, не создает губительной для вина вибрации и практически бесшумен. Рабочая температура шкафа регулируется в широких пределах (от +7 до +18оС), что позволяет использовать его для хранения различных сортов вин, а стеклянная дверца и подсветка дают возможность демонстрировать винную коллекцию гостям.</p>\r\n<p>Благодаря компактности, строгому минималистичному дизайну и классическому черному цвету корпуса винный шкаф идеально подойдет для обустройства домашнего бара в городской квартире или загородном доме.</p>\r\n<ul>\r\n<li>Материал корпуса: окраш.сталь/пластмасса</li>\r\n<li>Напряжение: 220/50/1</li>\r\n<li>Вместимость: 8 бутылок</li>\r\n<li>Наличие замка: нет</li>\r\n<li>Способ охлаждения: термоэлектрический</li>\r\n<li>Тип дверей: стеклянная распашная</li>\r\n<li>Тип охлаждения: динамический</li>\r\n</ul>', 46, 'см ', 25.4, 'см ', 52, 'см ', 8.93, 'кг ', 1),
(40, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/kitfort/vinnyy_shkaf_kitfort_kt_2403-1565890.html', 'Kitfort КТ-2403', 'Винные шкафы', 10790, '05.10.2018', '<p>Винный шкаф Kitfort KT-2403 — это холодильник для хранения вина в бутылках. В винном шкафу имеются восемь лотков для укладки бутылок, расположенных на двух полках. Дверца шкафа прозрачная, в ее верхней части расположена сенсорная панель управления со светодиодным дисплеем. Охлаждение производится при помощи термоэлементов Пельтье, поэтому в винном шкафу не используется никаких вредных хладагентов, а уровень шума меньше, чем у компрессорных холодильников, и отсутствуют вибрации. Рабочий температурный диапазон винного шкафа выставляется в пределах от 8 °С до 18 °С с шагом в 1 °С. </p>\r\n<p> Возможности и функции: </p>\r\n<ul>\r\n<li>помещается 8 бутылок типа Бордо</li>\r\n<li>2 полки </li>\r\n<li>температурный режим 8-18 ° С</li>\r\n<li>сенсорная панель управления</li>\r\n<li>голубая LED подсветка</li>\r\n<li>бесшумная работа 30 дБ</li>\r\n<li>очень низкое энергопотребление </li>\r\n<li>безопасная технология охлаждения, основанная на термоэлементах, работающих на эффекте Пелетье </li>\r\n<li>солидный и элегантный внешний вид</li>\r\n</ul>', NULL, NULL, 50, 'см ', 41, '', 9, 'кг ', 1),
(41, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/kitfort/vinnyy_shkaf_kitfort_kt_2409-1960043.html', 'Kitfort KT-2409', 'Винные шкафы', 17490, '07.11.2019', '<p>Винный шкаф Kitfort KT-2409 — это специальная холодильная камера для вина. В камере винного шкафа можно установить необходимую температуру в пределах от 10 °С до 18 °С с шагом 1 °С. Полки винного шкафа выполнены из дерева со специальными выемками под бутылки. Бутылки хранятся на полках горизонтально. Всего винный шкаф вмещает 18 бутылок на 750 мл типа «Бордо». От ультрафиолета бутылки защищает дверца из темного стекла, а внутри камеры установлена синяя лампа подсветки, чтобы можно было выбрать вино, не открывая дверцу. Охлаждение камеры с помощью термоэлемента Пельтье позволяет избежать вибраций и шума компрессорных систем охлаждения.    </p>\r\n<p>Известно, что вино портится от светового излучения и излучения в ультрафиолетовом диапазоне (прямые солнечные лучи, некоторые виды светильников), поэтому винные бутылки изготавливают из темного стекла. В прозрачных бутылках допустимо выпускать только молодое белое вино; подразумевается, что его быстро выпьют, и оно не будет долго храниться. Дверца винного шкафа также выполнена из темного стекла, оно поглощает видимый свет и ультрафиолетовое излучение. Лампа подсветки светит неярким синим светом, чтобы исключить его воздействие на бутылки с вином. Так что в винном шкафу вы можете хранить вино даже в прозрачных бутылках — там оно будет не только храниться при нужной температуре, но и будет защищено от света.    </p>\r\n<p>Полки винного шкафа рассчитаны на стандартные бутылки типа «бордо» длиной не более 30 см и диаметром 7 см, емкостью 750 мл. Бутылки некоторых производителей могут не соответствовать этим размерам. Для хранения таких бутылок вам, возможно, потребуется вынуть часть полок, или установить их через одну. Разумеется, в винном шкафу можно хранить не только вино, но также пиво и другие напитки, в том числе безалкогольные.</p>', 64.2, 'см ', 34, '', 51, 'см ', 14.2, 'кг ', 1),
(42, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/kitfort/vinnyy_shkaf_kitfort_kt_2410-1960036.html', 'Kitfort KT-2410', 'Винные шкафы', 19990, '07.11.2019', '<p>Винный шкаф Kitfort KT-2410 — это специальная холодильная камера для вина. В камере винного шкафа можно установить необходимую температуру в пределах от 12 °С до 18 °С с шагом 1 °С. Полки винного шкафа выполнены из дерева со специальными выемками под бутылки. Бутылки хранятся на полках горизонтально. Всего винный шкаф вмещает 28 бутылок на 750 мл типа «Бордо». От ультрафиолета бутылки защищает дверца из темного стекла, а внутри камеры установлена синяя лампа подсветки, чтобы можно было выбрать вино, не открывая дверцу. Охлаждение камеры с помощью термоэлемента Пельтье позволяет избежать вибраций и шума компрессорных систем охлаждения.    </p>\r\n<p>Известно, что вино портится от светового излучения и излучения в ультрафиолетовом диапазоне (прямые солнечные лучи, некоторые виды светильников), поэтому винные бутылки изготавливают из темного стекла. В прозрачных бутылках допустимо выпускать только молодое белое вино; подразумевается, что его быстро выпьют, и оно не будет долго храниться. Дверца винного шкафа также выполнена из темного стекла, оно поглощает видимый свет и ультрафиолетовое излучение. Лампа подсветки светит неярким синим светом, чтобы исключить его воздействие на бутылки с вином. Так что в винном шкафу вы можете хранить вино даже в прозрачных бутылках — там оно будет не только храниться при нужной температуре, но и будет защищено от света.    </p>\r\n<p>Полки винного шкафа рассчитаны на стандартные бутылки типа «бордо» длиной не более 30 см и диаметром 7 см, емкостью 750 мл. Бутылки некоторых производителей могут не соответствовать этим размерам. Для хранения таких бутылок вам, возможно, потребуется вынуть часть полок, или установить их через одну. Разумеется, в винном шкафу можно хранить не только вино, но также пиво и другие напитки, в том числе безалкогольные.</p>', 72.6, 'см ', 51, '', 43, 'см ', 21, 'кг ', 1),
(43, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c12_tsf2_na_12_butylok-1183376.html', 'Cold Vine C12-TSF2 на 12 бутылок', 'Винные шкафы', 20000, '18.10.2017', '<ul>\r\n<li>Внутреннее пространство шкафа разделено на две отдельные температурные зоны, что позволяют хранить одновременно как и белые, так и красные вина. Полки шкафа деревянные, предназначенные для хранения 12 бутылок типа Бордо. А также на полках легко помещаются бутылки шампанского. При необходимости можно вытащить одну из полок,и расположить более объемные бутылки.</li>\r\n<li>Корпус винного шкафа выполнен из стали, окрашенной в чёрный цвет.Особый стиль шкафу придаёт прочная стальная рама по периметру стеклянной дверцы, и такого же цвета разделительная панель внутри шкафа. На этой панели расположено управление с жк дисплеем. На ней можно установить желаемую температуру в каждой из зон и включить приятную светодиодную подсветку. Винный шкаф открывается с помощью удобной стальной ручки на двери. В линейке термоэлектрических шкафов Cold Vine есть аналогичная по вместительности и габаритам модель  C12-TBF2, отличающаяся внешним дизайном и панелью управления.</li>\r\n<li>Также есть возможность перенавесить дверцу шкафа на открывание справа налево.</li>\r\n<li>В каждой из зон можно установить температуру в диапазоне от +7 до +18 ˚С, поэтому в шкафе можно хранить несколько видов вина одновременно. Вместимость винного холодильника составляет 12 бутылок типа Бордо емкостью 0,75 л.</li>\r\n</ul>', 53.4, 'см ', 34, '', 51, 'см ', 14.8, 'кг ', 1),
(44, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/minibar_cold_vine_ac_60bg_na_53_litra_absorbtsionnyy-1604848.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(45, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/hansa/vinnyy_shkaf_hansa_fwc30201b-1716706.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(46, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c34_kbf2-723930.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(47, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_wineduett_21-217765.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(48, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winesafe_18_eb-276423.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(49, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_uwkes_1752_uwkes_1752_001-1176627.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(50, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_ewtgb_1683_ewtgb_1683_001-1176617.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(51, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_ewtgb_3583_ewtgb_3583_001-1176623.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(52, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/gastrorag/vinnyy_shkaf_gastrorag_jc_16c-1322355.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(53, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c8_tbf1_na_8_butylok_termoelektricheskiy-1879562.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(54, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c6_tbsf1_na_6_butylok_termoelektricheskiy-1879561.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(55, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c12_tbsf1_na_12_butylok-1604815.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(56, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dat_6.16c-585628.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(57, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/gastrorag/vinnyy_shkaf_gastrorag_bcwh_68-1322354.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(58, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/minibar_cold_vine_ac_30b_na_29_litrov_absorbtsionnyy-1604843.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(59, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/minibar_cold_vine_ac_30bg_na_29_litrov_absorbtsionnyy-1604844.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(60, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/minibar_cold_vine_ac_40b_na_36_litrov_absorbtsionnyy-1604845.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(61, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c16_tbf1_na_16_butylok-1183377.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(62, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/minibar_cold_vine_ac_40bg_na_36_litrov_absorbtsionnyy-1604846.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(63, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winecase_8-217754.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(64, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c12_tbf2_na_12_butylok-1183375.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(65, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/gastrorag/vinnyy_shkaf_gastrorag_jc_68dfw-1322359.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(66, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/minibar_cold_vine_ac_60b_na_51_litrov_absorbtsionnyy-1604849.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(67, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/hansa/vinnyy_shkaf_hansa_fwc15071b-1716702.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(68, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dat_12.33c-585630.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(69, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c21_tbf2_na_12_butylok_s_dvumya_temperaturnymi_zonami_termoelektricheskiy-1879563.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(70, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dat_12.33dc-585629.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(71, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/gastrorag/vinnyy_shkaf_gastrorag_jc_128-1322361.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(72, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/kitfort/vinnyy_shkaf_kitfort_kt_2412-1960040.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(73, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winecase_red_12-1220605.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(74, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c12_kbf1_na_12_butylok-1604816.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(75, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_16.46k-270780.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(76, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c12_ksf1_na_12_butylok-1604817.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(77, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_wineduett_12-217758.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(78, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/kitfort/vinnyy_shkaf_kitfort_kt_2413-1960039.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(79, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_wineduett_touch_12-217766.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(80, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/gastrorag/vinnyy_shkaf_gastrorag_jc_180a-1322360.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(81, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/midea/vinnyy_shkaf_midea_mwsi19x-1951021.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(82, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/atlant/vinnyy_shkaf_atlant_kht_1007_belyy_odnokamernyy-1148428.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(83, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/haier/vinnyy_shkaf_haier_fwc30ga-2055647.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(84, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavokh_dx_24.68dsc-270832.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(85, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_20.62kf_na_20_butylok-1183378.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(86, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_vstraivaemyy_cold_vine_c18_kbb1_na_18_butylok-1604839.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(87, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_vstraivaemyy_cold_vine_c23_kbt2_na_23_butylki-1604818.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(88, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/hansa/vinnyy_shkaf_hansa_bwc60241b-1716816.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(89, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_28.88kf-1183379.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(90, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c34_ksf2-738516.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(91, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c24_ksf2_na_24_butylki_s_dvumya_temperaturnymi_zonami-1604819.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(92, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_vstraivaemyy_cold_vine_c18_ksb1_na_18_butylok-1604840.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(93, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_wineduett_touch_21-297108.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(94, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_7.20bk_dp-738523.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(95, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_7.20ssk_dp-738524.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(96, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_7.20wk_dp_na_7_butylok-1604854.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(97, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winesafe_12_classic-276422.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(98, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winesafe_12_black-297278.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(99, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c38_kbf2_na_38_butylok_s_dvumya_temperaturnymi_zonami-1604821.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(100, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c38_ksf2_na_38_butylok_s_dvumya_temperaturnymi_zonami-1604822.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(101, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/electrolux/vinnyy_shkaf_electrolux_erw0273aoa-1150625.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(102, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c40_kbt2_na_40_butylok_c_dvumya_temperaturnymi_zonami-1604826.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(103, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_30.80dk-572177.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(104, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/haier/vinnyy_shkaf_haier_fwc53gda-2055646.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(105, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winesafe_18_eb_inox-1666603.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(106, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_48.130kf_na_48_butylok-1604863.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(107, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wkb_1812_wkb_1812_001-118734.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(108, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c40_kst2_na_40_butylok_c_dvumya_temperaturnymi_zonami-1604827.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(109, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c30_kst2_na_30_butylok_c_dvumya_temperaturnymi_zonami-1604825.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(110, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dau_19.58b_na_19_butylok-1604856.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(111, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dau_19.58ss_na_19_butylok-1604857.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(112, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dau_19.58w_na_19_butylok-2105325.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(113, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c66_kbf2_na_66_butylok_s_dvumya_temperaturnymi_zonami-1604823.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(114, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wkees_553_wkees_553_001-1176628.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(115, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c66_ksf2_na_66_butylok_s_dvumya_temperaturnymi_zonami-1604824.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(116, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winecomfort_24-276420.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(117, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winecomfort_touch_38_2d_utsenka_u1_winemaster_touch_38_2d_1-2287229.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(118, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wkb_3212_wkb_3212_001-118735.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(119, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dau_17.57db-299784.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(120, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dau_17.57dss-299788.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(121, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dau_17.57dw_na_17_butylok_c_dvumya_temperaturnymi_zonami-1604855.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(122, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_54.150dk-738526.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(123, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c121_kbt1_na_121_butylku-1604829.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(124, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wkb_4212_wkb_4212_001-118736.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(125, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_vstraivaemyy_cold_vine_c165_kbt1_na_165_butylok_s_dvumya_temperaturnymi_zonami-1604832.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(126, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dau_32.81ss_na_32_butylki-1604879.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(127, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_28.65b-738519.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(128, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_28.65ss-738520.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(129, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_28.65w_na_28_butylok_kompressornyy-1604866.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(130, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_107.229k_na_107_butylkok-2105317.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(131, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c110_kbt2_na_110_butylok_s_dvumya_temperaturnymi_zonami-1604828.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(132, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/kitfort/vinnyy_shkaf_kitfort_kt_2418-1960034.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(133, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_vstraivaemyy_cold_vine_c154_kbt2-738518.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(134, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dau_32.83b_na_32_butyloki-2105314.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(135, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dau_32.83ss_na_32_butyloki-2105315.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(136, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winecomfort_38_black-2309972.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(137, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c126_kbf2_na_126_butylok_s_dvumya_temperaturnymi_zonami-1604833.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(138, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c126_ksf2_na_126_butylok_s_dvumya_temperaturnymi_zonami-1604834.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(139, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dau_32.78db_na_32_butylki_c_dvumya_temperaturnymi_zonami-1604858.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(140, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dau_32.78dss_na_32_butylki_c_dvumya_temperaturnymi_zonami-1604859.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(141, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dau_32.78dw_na_32_butylki_c_dvumya_temperaturnymi_zonami-1604860.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(142, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_vstraivaemyy_cold_vine_c154_kst2_na_154_butylki_s_dvumya_temperaturnymi_zonami-1604831.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(143, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winecomfort_touch_38_2d_winemaster_touch_38_2d-582156.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(144, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wtb_4212_vinothek_wtb_4212_001-118760.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(145, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_vstraivaemyy_cold_vine_c142_kbt2_na_142_butylki_s_dvumya_temperaturnymi_zonami-1604830.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(146, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_147.280k_na_147_butylkok-2105318.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(147, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winecomfort_66_black-2309850.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(148, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wkegw_582_wkegw_582_001-1176630.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(149, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_uwtes_1672_uwtes_1672_001-1176614.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(150, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wkegb_582_wkegb_582_001-1176629.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(151, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winecomfort_660_smart-1397082.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(152, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_vstraivaemyy_cold_vine_c192_ksf1_na_192_butylki-1604883.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(153, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c180_kbf2_na_180_butylok_s_dvumya_temperaturnymi_zonami-1604835.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(154, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_vstraivaemyy_cold_vine_c242_kst1_na_242_butylki-1604837.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(155, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_53.130dbk_dp_na_53_butylki_c_dvumya_temperaturnymi_zonami-1604851.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(156, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_53.130sdsk_dp_na_53_butylki_c_dvumya_temperaturnymi_zonami-1604852.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(157, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_53.130dwk_dp_na_53_butylki_c_dvumya_temperaturnymi_zonami-1604853.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(158, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wkes_653_wkes_653_001-1171574.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(159, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_cold_vine_c180_ksf2_na_180_butylok_s_dvumya_temperaturnymi_zonami-1604836.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(160, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_26.60ss.to_na_26_butylok_kompressornyy-1604865.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(161, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dau_52.146b-299792.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(162, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dau_52.146ss-299825.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(163, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dau_52.146w_na_52_butylki-1879558.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(164, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dau_46.146_db-585636.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(165, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dau_46.146_dss-585637.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(166, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dau_46.146dw_na_46_butylok_s_dvumya_temperaturnymi_zonami-1879557.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(167, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dau_40.138b_na_40_butylok-1604872.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(168, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dau_40.138ss_na_40_butylok-1604873.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(169, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_48.125b_na_48_butylok_kompressornyy-1604870.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(170, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_48.125ss_na_48_butylok_kompressornyy-1604871.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(171, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wkt_4552_wkt_4552_001-1176626.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(172, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_57.146dbk-738521.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(173, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_57.146dsk-738522.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(174, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_57.146dwk_na_57_butylok_s_dvumya_temperaturnymi_zonami-1604876.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(175, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wtes_1672_wtes_1672_001-154899.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(176, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_36.80db-299775.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(177, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_36.80dss-299781.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(178, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_36.80dw_na_36_butylok_s_dvumya_temperaturnymi_zonami-1604867.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(179, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_42.117db_na_42_butylki_s_dvumya_temperaturnymi_zonami-1604868.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(180, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_42.117dss_na_42_butylki_s_dvumya_temperaturnymi_zonami-1604869.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(181, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_ewtdf_1653_ewtdf_1653_001-1176616.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(182, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_198.450k_na_198_butylkok-2105319.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(183, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/electrolux/vinnyy_shkaf_electrolux_kbw5x-1918612.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(184, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_94.270dbk-275803.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(185, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_94.270sdsk-275804.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(186, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wkt_5552_wkt_5552_001-477712.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(187, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_vstraivaemyy_cold_vine_c89_ksb3_na_89_butylok_trekhzonnyy-1604841.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(188, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cold_vine/vinnyy_shkaf_vstraivaemyy_cold_vine_c89_kbb3_na_89_butylok_s_tremya_temperaturnymi_zonami-2105316.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(189, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/electrolux/vinnyy_shkaf_electrolux_kbw5t-1934447.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(190, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_ewtdf_2353_ewtdf_2353_001-1176619.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(191, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_uwtgb_1682_uwtgb_1682_001-1470933.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(192, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wkt_6451_wkt_6451_001-118749.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(193, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_ewtgw_1683_ewtgw_1683_001-1176618.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(194, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dau_45.125db.to_na_45_butylok_s_dvumya_temperaturnymi_zonami-1604874.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(195, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dau_45.125dss.to_na_45_butylok_s_dvumya_temperaturnymi_zonami-1604875.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(196, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wkes_4552_wkes_4552_001-477710.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(197, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winecomfort_1260_smart-1397079.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(198, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winechef_pro_126-1397075.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(199, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winesafe_192-582162.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(200, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winechef_pro_126_2d-1397076.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(201, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_ewtgb_2383_ewtgb_2383_001-1176620.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(202, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_ewtdf_3553_ewtdf_3553_001-1176622.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(203, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_166.428dbk-275805.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(204, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_166.428sdsk_dx_166.428_sdsk-275806.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(205, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dab_89.215db-585631.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(206, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dab_89.215dss-585632.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(207, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_89.215dw_na_89_butylok_s_dvumya_temperaturnymi_zonami-1604877.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(208, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winemaster_180-582153.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(209, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winecomfort_1800_smart-1397080.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(210, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_194.490bk-275813.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(211, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_194.490ssk-275814.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(212, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winechef_pro_180-1397077.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(213, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_181.490dbk-275811.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(214, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_181.490sdsk-275812.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(215, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/smeg/vinnyy_shkaf_smeg_cvi618rwnx2-1551561.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(216, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_170.490tbk-275808.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(217, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_170.490stsk-275809.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(218, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_89.246tb_na_89_butylok_s_tremya_temperaturnymi_zonami-1879555.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(219, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dx_89.246tss_na_89_butylok_s_tremya_temperaturnymi_zonami-1879556.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `products` (`id`, `link`, `name`, `category`, `price`, `date`, `description`, `height`, `heightUnit`, `width`, `widthUnit`, `depth`, `depthUnit`, `weight`, `weightUnit`, `scan_flag`) VALUES
(220, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wtpes_5972_wtpes_5972_001-118784.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(221, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wtes_5972_wtes_5972_001-477714.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(222, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_65.178tb.to_na_65_butylok_s_tremya_temperaturnymi_zonami-2105321.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(223, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vstraivaemyy_dunavox_dab_65.178tss.to_na_65_butylok_s_tremya_temperaturnymi_zonami-2105322.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(224, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vitrina_dunavox_dx_143.468ss_na_143_butylki-1604862.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(225, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_vitrina_dunavox_dx_143.468b_na_143_butylki-1604861.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(226, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_119.386db_na_119_butylkok-1879559.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(227, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/dunavox/vinnyy_shkaf_dunavox_dx_119.386dss_na_119_butylkok-1879560.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(228, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/liebherr/vinnyy_shkaf_liebherr_wtes_5872_wtes_5872_001-477713.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(229, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/smeg/vinnyy_shkaf_smeg_cvi638lwn2-2101028.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(230, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/caso/vinnyy_shkaf_caso_winecase_6-1002017.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(231, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cavanova/vinnyy_shkaf_cavanova_ow002_belyy-1997462.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(232, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/kitfort/vinnyy_shkaf_kitfort_kt_2411-1960041.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(233, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/kitfort/vinnyy_shkaf_kitfort_kt_2414-1960038.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(234, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/kitfort/vinnyy_shkaf_kitfort_kt_2416-1960037.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(235, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cellar_private/vinnyy_shkaf_cellar_private_cp008f-1914974.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(236, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cavanova/vinnyy_shkaf_cavanova_cv004-1915023.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(237, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cellar_private/vinnyy_shkaf_cellar_private_cp012-1986960.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(238, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cavanova/vinnyy_shkaf_cavanova_cv008ns-1915003.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(239, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cavanova/vinnyy_shkaf_cavanova_cv004p-1915002.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(240, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cavanova/vinnyy_shkaf_cavanova_ow002-1914966.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(241, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cavanova/vinnyy_shkaf_cavanova_cv012_2t-1915005.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(242, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cavanova/vinnyy_shkaf_cavanova_cv018m-1915008.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(243, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cavanova/vinnyy_shkaf_cavanova_ow004-1914967.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(244, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cavanova/vinnyy_shkaf_cavanova_cv028ns-1915011.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(245, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cavanova/vinnyy_shkaf_cavanova_cv022t-1915010.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(246, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cellar_private/vinnyy_shkaf_cellar_private_cp062s-1986961.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(247, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cavanova/vinnyy_shkaf_cavanova_cv030t-1915014.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(248, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cellar_private/vinnyy_shkaf_cellar_private_cp042_2t-1914979.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(249, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cavanova/vinnyy_shkaf_cavanova_cv048-1915015.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(250, 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/cavanova/vinnyy_shkaf_cavanova_cv100t-1915019.html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `name`, `value`) VALUES
(1, 'category_link', 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/'),
(2, 'next_page', 'https://www.onlinetrade.ru/catalogue/vinnye_shkafy-c1083/?per_page=36&page=5'),
(3, 'status_parsing', '1'),
(4, 'status_parsing_category', '0'),
(5, 'status_parsing_product', '1'),
(6, 'category_name', 'Винные шкафы');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
