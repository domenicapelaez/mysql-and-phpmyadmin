-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-03-2021 a las 23:48:44
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.4.1

CREATE DATABASE makeup;
USE makeup;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `makeup`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `articulo_id` int(11) NOT NULL,
  `nombre_articulo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci,
  `categoriaid` int(11) NOT NULL,
  `marcaid` int(11) NOT NULL,
  `precio` double(5,2) NOT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nombremarca` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`articulo_id`, `nombre_articulo`, `descripcion`, `categoriaid`, `marcaid`, `precio`, `logo`, `created_at`, `updated_at`, `nombremarca`) VALUES
(1, 'DIPBROW POMADE EBONY', 'Esta crema gel impermeable de secado rápido no gotea ni se corre durante todo el día. Su fórmula altamente pigmentada se mezcla fácilmente para crear la ilusión de unas cejas espesas, y lo mejor es que solo tienes que usar una pequeña cantidad de producto para conseguirlo.', 1, 5, 26.99, 'abh1.png', NULL, NULL, 'Anastasia Beverly Hills'),
(2, 'AGUA MICELAR MILKY 400ML', 'Agua Micelar Milky es la combinación eficaz del Agua Micelar limpiadora desmaquillante con Micelas y un toque de Leche hidratante para hidratar y aliviar tu piel. Limpia, desmaquilla e hidrata en un solo gesto.Su fórmula, enriquecida con leche hidratante y micelas, reduce la tirantez de la piel. Su fórmula se adapta incluso a las pieles más secas y sensibles y se puede usar tanto en rostro, ojos y labios.', 2, 4, 4.99, 'garnier1.png', NULL, NULL, 'Garnier'),
(3, 'HD FINISHING POWDER', 'Un polvo de acabado ligero y transparente que le ayuda a suavizar la apariencia de pequeñas arrugas y poros. Este polvo compacto sedoso tiene un acabado mate.', 1, 2, 9.99, 'nyx1.png', NULL, NULL, 'Nyx'),
(4, 'KIT DE ALISADO BRASILEÑO', 'Tratamiento intensivo a base de keratina hidrolizada y aceite de Argán rico en omega 3, omega 6, omega 9, y vitamina E antioxidante, sin formol. Hidrata, reestructura y protege la cutícula capilar. El uso continuo de este tratamiento ayuda a recuperar las propiedades y el brillo natural. El Kit de Alisado Brasileño de Kativa es una exclusiva fórmula sin formol que alisa e hidrata en profundidad de forma inmediata y prolongada.', 3, 3, 14.99, 'kativa1.png', NULL, NULL, 'Kativa'),
(5, 'COCO MADEMOISELLE 35ML', 'Es un perfume oriental, una fragancia viva y voluptuosa. Las notas de naranja, vivas y frescas, despiertan los sentidos. El corazón, claro y sensual, desvela acordes transparentes de jazmín y rosa. La estela desvela los acentos depurados de pachulí y de vetiver que realzan la silueta elegante de la composición.', 4, 1, 56.99, 'chanel1.png', NULL, NULL, 'Chanel'),
(6, 'PURE ACTIVE INTENSIVE', 'Pure Active Carbón Anti Puntos Negros es un limpiador 3 en 1, testado dermatológicamente, para tratar las pieles grasas con tendencia al acné. Puede usarse como purificador con el que eliminar en un 96% las impurezas de la piel; como exfoliante, ya que gracias a sus partículas exfoliantes naturales se desincrustan los puntos negros; y como mascarilla, ya que con su carbón y extracto de arándano la piel queda suave y brillante.', 2, 4, 4.99, 'garnier2.png', NULL, NULL, 'Garnier'),
(7, 'MATTE PRIMER', 'Matifica instantáneamente la piel sin dejar brillos y crea un lienzo sedoso para el maquillaje, lo que lo convierte en la base perfecta para la piel grasa. Úsalo solo o debajo de la base para matificar tu cutis, dejando la piel hidratada, fresca y cómoda todo el día. Además, la fórmula ligera es transpirable por lo que no obstruirá los poros.', 1, 6, 7.99, 'rimmel1.png', NULL, NULL, 'Rimmel London'),
(8, 'AWAY WE GLOW HOOKED ON GLOW', '10 tonos de sombras de ojos de textura exquisita en acabado mate, satinado y metalizado. Irresistibles tonos bronce y melocotón que tu neceser de belleza veraniego tanto necesita para que disfrutes esta temporada.', 1, 2, 20.99, 'nyx2.png', NULL, NULL, 'Nyx'),
(9, 'BROW DEFINER EBONY', 'Gracias a su punta triangular lisa de gran precisión y a su fórmula fácil de mezclar, este lápiz mecánico realza, define y rellena las cejas ralas con un simple y fluido movimiento. La otra punta de cerdas suaves está específicamente concebida para repartir adecuadamente la fórmula y conseguir unas cejas magníficas.', 1, 5, 31.99, 'abh2.png', NULL, NULL, 'Anastasia Beverly Hills'),
(10, 'SCANDALEYES RELOADED', 'Scandaleyes Reloaded Máscara es un una máscara de pestañas que te permitirá conseguir un volumen infinito de tus pestañas. Con tecnología, con 3 veces más colágeno y 3 veces más queratina. Con el nuevo cepillo que ofrece este modelo obtendrás un volumen extremo, con una manera rápida una mirada de impacto para todo el día, porque además es resistente al agua.', 1, 6, 8.99, 'rimmel2.png', NULL, NULL, 'Rimmel London'),
(11, 'AGUA MICELAR FORMATO VIAJE 100ML', 'El Agua Micelar Clásica de Garnier es un limpiador suave que extrae la suciedad y las impurezas sin secar la piel. Desmaquilla, limpia y tonifica. Indicada para todo tipo de pieles, incluyendo las sensibles.', 2, 4, 3.99, 'garnier3.png', NULL, NULL, 'Garnier'),
(12, 'SPRAY FIJADOR DE MAQUILLAJE ACABADO MATTE 18ML', 'Aporta duración extrema a tu maquillaje con nuestro spray fijador con acabado mate. Vaporiza nuestro Setting Spray Matte y consigue una duración extrema y un acabado mate impecable en tu piel que no necesita retoques.', 1, 2, 3.99, 'nyx3.png', NULL, NULL, 'Nyx'),
(13, 'CHANEL Nº5', 'Un bouquet floral empolvado sublimado por un frasco icónico de líneas minimalistas. Un perfume mítico y atemporal. El Eau de Parfum se inspira en el perfume con el que comparte su firma floral aldehída. Este bouquet floral se compone en torno a la Rosa de Mayo y el Jazmín y las notas de cabeza quedan animadas por los acordes hesperidados. Los Aldehídos le otorgan una presencia única, y el suave toque de Vainilla ofrece una estela infinitamente sensual.', 4, 1, 69.99, 'chanel2.png', NULL, NULL, 'Chanel'),
(14, 'PALETA DE CONTOURING', 'Esta popular paleta de fácil uso contiene tres tonos de iluminador y tres tonos de contorno que deberás combinar para esculpir, definir y realzar tus facciones naturales. Crea la ilusión de unos pómulos más elevados, una frente más pequeña, una barbilla menos prominente o una nariz más delgada con estas fórmulas suaves y sedosas que pueden aplicarse tan discreta o espectacularmente como quieras.', 1, 5, 51.99, 'abh3.png', NULL, NULL, 'Anastasia Beverly Hills'),
(15, 'MASCARILLA HIDRATANTE REVITALIZANTE', 'Garnier Mask Tissu Hydra Bomb Revitalizante es una mascara de tejido super hidratante impregnada con una fórmula que te aporta el equivalente de una semana de sérum. Tecnología inspirada en tendencias provenientes de Asia, continente líder por excelencia en belleza facial, con un tejido envolvente que se adapta a la forma del rostro de una manera suave.', 2, 4, 2.99, 'garnier4.png', NULL, NULL, 'Garnier'),
(16, 'LID LINGERIE SHADOW PALETTE', 'Con sus seis tonos neutros, mates y cremosos tendrás en una sola paleta una amplia gama de matices e intensidades. Cada sombra mate y aterciopelada se difumina con total facilidad, ofreciendo un resultado impecable.', 1, 2, 9.99, 'nyx4.png', NULL, NULL, 'Nyx'),
(17, 'ARGAN OIL ACONDICIONADOR 250ML', 'Acondicionador con aceite de argán, desenreda con mayor facilidad recuperando la suavidad y el brillo del cabello. Este acondicionador de Kativa no contiene sal ni sulfatos. Su fórmula elaborada con aceite de Argán contiene vitamina E, antioxidantes y omega 3 y 9. Nutre y recupera la hidratación natural del cabello. Aporta brillo, suavidad y reduce el frizz.', 3, 3, 8.99, 'kativa2.png', NULL, NULL, 'Kativa'),
(18, 'CEPILLO BISELADO RÍGIDO DE DOS PUNTAS #12', 'Este cepillo plano biselado de mango fino dispone de unas cerdas sintéticas densas que lo convierten en el instrumento perfecto para la aplicación del bálsamo DIPBROW. Aplica el producto con suavidad y sin esfuerzo. Un instrumento de dos puntas con un pincel-cepillo de tamaño perfecto para peinar y difuminar.', 1, 5, 25.99, 'abh4.png', NULL, NULL, 'Anastasia Beverly Hills'),
(19, 'STAY MATTE POWDER CASHMERE', 'Polvo compacto matificante con minerales naturales. Ayuda a minimizar la apariencia de los poros.', 1, 6, 6.99, 'rimmel3.png', NULL, NULL, 'Rimmel London'),
(20, 'LASH BRAG VOLUMIZING MASCARA', 'Consigue el máximo volumen y densidad de pestañas con la máscara Lash Brag de Anastasia Beverly Hills en formato viaje, estarás orgulloso de tu mirada gracias a la máscara de pestañas negra ultra voluminizadora y podrás llevártela a todas partes. Mini Lash Brag aporta al instante una mirada profunda y extremadamente voluminosa. El cepillo en forma de reloj de arena está especialmente diseñado para separar cada pestaña, cubriéndola con una textura rica en pigmentos y sin dejar grumos, para una apariencia voluptuosa durante todo el día.', 1, 5, 14.99, 'abh5.png', NULL, NULL, 'Anastasia Beverly Hills');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `categoriaid` int(11) NOT NULL,
  `nombre_categoria` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`categoriaid`, `nombre_categoria`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Maquillaje', 'maquillaje.png', NULL, NULL),
(2, 'Cosmética', 'cosmetica.png', NULL, NULL),
(3, 'Cabello', 'cabello.png', NULL, NULL),
(4, 'Perfumes', 'perfumes.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `compraid` smallint(6) NOT NULL,
  `articuloid` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descuento` decimal(15,2) NOT NULL,
  `importe` smallint(6) NOT NULL,
  `estado` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `id` smallint(6) NOT NULL,
  `rol` enum('invitado','usuario','administrador') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`id`, `rol`, `nombre`, `apellidos`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'usuario', 'olek', 'pinto', 'olek@gmail.com', '$2y$10$JyvTlZmjxrPJYA1vlgQEK.ORUw33psyfpu1oqm51aM4mZqN9Bzb6.', '2021-03-16 11:37:21', '2021-03-16 11:37:21'),
(2, 'administrador', 'luna', 'nueva', 'luna@gmail.com', '$2y$10$5tW6SK5qx6UZo6JnpGAZ0O5c.qcxCN.AE4oJWwOBglLjNE37BghWO', '2021-03-16 11:37:48', '2021-03-16 11:37:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` smallint(6) NOT NULL,
  `cuentaid` smallint(6) NOT NULL,
  `articuloid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `marcaid` int(11) NOT NULL,
  `nombre_marca` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`marcaid`, `nombre_marca`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Chanel', 'chanel.png', NULL, NULL),
(2, 'Nyx', 'nyx.png', NULL, NULL),
(3, 'Kativa', 'kativa.png', NULL, NULL),
(4, 'Garnier', 'garnier.png', NULL, NULL),
(5, 'Anastasia Beverly Hills', 'abh.png', NULL, NULL),
(6, 'Rimmel London', 'rimmel.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(37, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(38, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(39, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(40, '2016_06_01_000004_create_oauth_clients_table', 1),
(41, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(42, '2020_12_05_110258_create_categorias_table', 1),
(43, '2020_12_05_110308_create_marcas_table', 1),
(44, '2020_12_05_110321_create_articulos_table', 1),
(45, '2020_12_05_110331_create_usuarios_table', 1),
(46, '2021_01_11_220046_create_cuentas_table', 1),
(47, '2021_01_11_220054_create_compras_table', 1),
(48, '2021_01_11_221310_add_fk_marca_fk_categoria_to_articulos', 1),
(49, '2021_01_11_221443_add_fk_cuenta_fk_compra_to_usuarios', 1),
(50, '2021_01_11_222136_add_fk_articulo_to_compras', 1),
(51, '2021_02_16_234419_add_logo_marcas_categorias_articulos', 1),
(52, '2021_03_09_215139_create_favoritos_table', 2),
(53, '2021_03_09_220102_add_fk_cuenta_fk_articulo_to_favoritos', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('005a23970e46f1a38a0b77a4e4e784a9354c935f96cd2b0a5645d4bde885031cdaaf772076cdb44e', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:24:44', '2021-03-21 17:24:44', '2021-03-28 18:24:44'),
('007b223173f585cc9b935254864c8335485b41de41e564780ac8f235b2edc6aa4fc9c4cd22e14984', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 19:03:56', '2021-03-21 19:03:56', '2021-03-28 20:03:56'),
('00cc19aafddc0ce8b992719fc99bab68fb2370064731147ee56a50ed5ad998debd84b98e0ba24499', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-19 10:49:48', '2021-03-19 10:49:48', '2021-03-26 11:49:48'),
('023586b5d088e261def618c45f82aa3d1d8108d7bd57f7f68665bd678a05db3c429c659433487be9', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:02:13', '2021-03-21 18:02:13', '2021-03-28 19:02:13'),
('051cc519f3dd6f0ad1d889e356651725c539250e823d2cfffae7e9c4dd14fc8c483afcbc78124a72', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 16:59:01', '2021-03-21 16:59:01', '2021-03-28 17:59:01'),
('073dfcb55908513516cda39b7d1a2d844cbcf0c7583a2b2f640cf956b4479e01e80d6a0dc9973558', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 15:26:16', '2021-03-21 15:26:16', '2021-03-28 16:26:16'),
('075089015c10cf278b4f2190d8d256d323b0c5df751e878d8ceeb517ff8b737e593e02c146d193af', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 10:09:09', '2021-03-18 10:09:09', '2021-03-25 11:09:09'),
('0bd1c58b15380771ea62a54c4cda4337927c950d06a2f3ff9e1ad39d45dba3697e07c55984cdae2d', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-16 12:55:50', '2021-03-16 12:55:50', '2021-03-23 13:55:50'),
('0c8025179fbf8b97db156d52cc14537e3bbbdd4b115ef6ffb2f1213df852dd66abc28309b3b53726', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-20 10:53:21', '2021-03-20 10:53:21', '2021-03-27 11:53:21'),
('0d191beb458821f83bfc47721177b0407bf67bd8b0355a6a448abe2bea96da616c72fe81c1512c7b', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:49:49', '2021-03-21 17:49:49', '2021-03-28 18:49:49'),
('1', 1, 5, 'task api', '[]', 0, '2021-03-16 11:37:21', '2021-03-16 11:37:21', '2022-03-16 12:37:21'),
('10074c0a322f5de2484c54f5b755f17d101b89dcedcb2a1f78a5978065f8d1eb9d03ffc1f3b0ca57', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 07:57:07', '2021-03-18 07:57:07', '2021-03-25 08:57:07'),
('10757f31026afc6ef70b1cf9ce7aba9911fc4594018d782caaaab6628bd1aec7153af238ed0d1128', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:58:46', '2021-03-21 18:58:46', '2021-03-28 19:58:46'),
('10c841835ca738cc73237ab6f752ae063f6a7c0a8de2aef15dcd2538403e63b0e808e76db89ae0ac', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:58:53', '2021-03-21 18:58:53', '2021-03-28 19:58:53'),
('11b5ea6e8b40da1d6c088b2d98cee6cb95a9ef288259cf741c551877c25eaa91dd6e6de94908b296', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:12:00', '2021-03-21 18:12:00', '2021-03-28 19:12:00'),
('12d8b6156fb432760cf436001a5b6cb7ddd9b3fa5134bb6318da4a0a1ca4af98f8b958f982233fa5', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 19:06:06', '2021-03-21 19:06:06', '2021-03-28 20:06:06'),
('15d7e7e2b7e5f1bb83eb2873cca99a45f855c2473395da3607724f5799ce012c84afe2169327348e', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:37:07', '2021-03-21 17:37:07', '2021-03-28 18:37:07'),
('15ea74cf3a78887e8d19f691b06d98f6978fdff1e12ba2e6a094913a195d4871a868d963368b1884', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:02:50', '2021-03-21 17:02:50', '2021-03-28 18:02:50'),
('18111ef2e4b52b41a17dcad466917dbfa7b8634b372b99e1226d8fb14a2b102b3509a7e560f87390', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 19:08:09', '2021-03-21 19:08:09', '2021-03-28 20:08:09'),
('1b185071d3913c68461eb800a7a793b3f05262e5dcb2e0ef851f904fc298334187ad08f31e1215d1', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-16 12:53:47', '2021-03-16 12:53:47', '2021-03-23 13:53:47'),
('1c073e48f523c11f65ac83fdd13aa842d7d2c0a265666d5935703a244927e0dd72377dc12fe1798c', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 19:07:36', '2021-03-21 19:07:36', '2021-03-28 20:07:36'),
('1e7460f5720886c6401dc338d2749f3251af98703c678bd2c0a52b6bcf4bdfabd013d1abe3f1993c', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 07:55:39', '2021-03-18 07:55:39', '2021-03-25 08:55:39'),
('2', 2, 5, 'task api', '[]', 0, '2021-03-16 11:37:48', '2021-03-16 11:37:48', '2022-03-16 12:37:48'),
('20b209aadb1a7369979758c68565e070550d470e1db1306b1de6c3f0bd6fea28d635c40ed3d8e4f9', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 19:04:18', '2021-03-21 19:04:18', '2021-03-28 20:04:18'),
('245c0dec968810168b5b67658019053d7fc41692eb8618a1a9d890d6c740b2ac52d6654b78819003', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 15:23:33', '2021-03-18 15:23:33', '2021-03-25 16:23:33'),
('248774a68effd8dbb686f31a5b89b4cd57a188b065cf060d9b8e0b3a0ff9da589d0f165f6d67debd', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 13:45:48', '2021-03-21 13:45:48', '2021-03-28 14:45:48'),
('24c4f9161e494405e48bfcd8f75fc7600e8fdd95c829a830e71d1f1e18cd34480de40c1302e83475', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 15:06:35', '2021-03-21 15:06:35', '2021-03-28 16:06:35'),
('27a0e942dffbec7e7282928300a5a4ccfd0be99ae73aebeecbe71f68e087540110982190b61b4a50', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 19:05:03', '2021-03-21 19:05:03', '2021-03-28 20:05:03'),
('27d211b0638aaa5dedb6bc9e5a4201c1c468226d787c1a9677b59edda3870891f309c64329b60454', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:57:48', '2021-03-21 18:57:48', '2021-03-28 19:57:48'),
('29ad486ab06cc1e789c5960be9ff0e6472d4561e8d6a377f3836872b02a15b3ac8981d39cb31c095', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:57:00', '2021-03-21 18:57:00', '2021-03-28 19:57:00'),
('2a08f266d5f11c23ce99d32897a4dce383988bf5724f894b597bbc5b6a3047a0cd591ddafdddf6ae', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:03:44', '2021-03-21 17:03:44', '2021-03-28 18:03:44'),
('2ce4e7e2d08d1a6a1bfab8828d15f868157abc08e38de343f8ffc82e536231dcbd87ba47e0fe28d5', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 14:32:03', '2021-03-21 14:32:03', '2021-03-28 15:32:03'),
('2f7b3166e9bb2108b8d66dc66ef73f95488fe1a35b287c95ab1e0a94f3dfc2e11880641b998993fe', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-19 10:52:11', '2021-03-19 10:52:11', '2021-03-26 11:52:11'),
('33d5eba9a78386037bed5b9f776f17ef4f58f299645eb577b6f6a8c471d45cae4ccc007a03a10e49', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:56:44', '2021-03-21 18:56:44', '2021-03-28 19:56:44'),
('373b2ec4316fcffbfa73ff18716f424042ec2cf74e0d7408ee1072a86f8b971de5d6397f8950fe64', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 13:43:39', '2021-03-21 13:43:39', '2021-03-28 14:43:39'),
('3c1860bfbb00527f34136589b0532691ab7b9a87ced9933edae490a44132f5e89d7f9554c868543c', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 07:34:26', '2021-03-18 07:34:26', '2021-03-25 08:34:26'),
('3d07e3c3c415b415a5c50848c0aef26256c52a78495c0ca21a427d0f0b0413035f9bcfa74b498752', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-19 11:03:39', '2021-03-19 11:03:39', '2021-03-26 12:03:39'),
('434707ed1352773270e061c78c7a197d5634b2ed18b927ae4a3af05a0696302e160394c307de8f80', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-19 18:18:11', '2021-03-19 18:18:11', '2021-03-26 19:18:11'),
('43bab4a779280ae264ab750cf042f8583dd60edad703fa9873dfdb14427f364d60e292a716fcce2b', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-20 11:02:43', '2021-03-20 11:02:43', '2021-03-27 12:02:43'),
('44073117bacb5d81f85aa164061e7bfd876cca9c471dc041610e8e46feda619cb684eb8c88ddcf12', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-19 12:02:46', '2021-03-19 12:02:46', '2021-03-26 13:02:46'),
('44e6daf9162711c3deaa4ccece3155f9007698a848472cee83f528989da9f2ab0d5edf4d06bbedfc', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:43:20', '2021-03-21 17:43:20', '2021-03-28 18:43:20'),
('47460a96da9cef616f86e280b353686c316a6f77fcc97e9330e6e0739dbe5b4c379a6764eb74b7c0', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 19:09:38', '2021-03-21 19:09:38', '2021-03-28 20:09:38'),
('491a9c7c803800b603e137241759e55a1bc0de26016eafc47a0e2a392a17e4a3b860d77b5820faca', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:48:31', '2021-03-21 17:48:31', '2021-03-28 18:48:31'),
('4ab5ded38449f8bc966cb889bdaece0d65a1f5e8c1a4453f4560a7b97307787b6c97e5d50eb1c055', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 15:09:54', '2021-03-21 15:09:54', '2021-03-28 16:09:54'),
('4c68d3b95d404c3334110750ca1f07734fc93b051f7a9d36a28d61a75c3a40f9dde50662b02cc427', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:05:55', '2021-03-21 18:05:55', '2021-03-28 19:05:55'),
('4ef2b0c3e594fab65916c9aad8a9a0aea2861b49fc3b10cbba02e11bd109b338041bcad1c21b3544', 1, 5, 'Personal Access Token', '[]', 0, '2021-03-18 07:59:20', '2021-03-18 07:59:20', '2021-03-25 08:59:20'),
('4fc373642f731b840008b60984ffe6816c63ee28cae116664b0236065a971cc9ae6477d36c7a7bcc', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 10:49:50', '2021-03-18 10:49:50', '2021-03-25 11:49:50'),
('51b5715a294ec96c5a45f8e2a3280d97113ca1eb85ae2c99d1f70edde20c39d134f584d190214d68', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 15:21:10', '2021-03-18 15:21:10', '2021-03-25 16:21:10'),
('51cd560dbdb68557d1ff3980dbd49bb87ff2545a2f9c4c0e0db06cae2e4b6f7887b181ef189fc828', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-16 11:37:55', '2021-03-16 11:37:55', '2021-03-23 12:37:55'),
('53ee7240edf46f433b5cece8cdc1a26977daacc96d235f921d4d4a44a5798fe1bfcb51bc04496801', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 06:16:31', '2021-03-18 06:16:31', '2021-03-25 07:16:32'),
('540d824ddad30a07b8568fc37d07e1861947ecddcc64cfd59cdcb99290309e5bc9f659aaf500eb9a', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-16 12:58:47', '2021-03-16 12:58:47', '2021-03-23 13:58:47'),
('54ea38a917e91ce86532c3f290af025d44f72806493b783f8df9599000abfd208c444ef32144ef7a', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 15:25:52', '2021-03-21 15:25:52', '2021-03-28 16:25:52'),
('576e03287acba52a624ead0c8aa19bfa8e2f942b834116f29960dca46a70f9e2fa4abe3622718860', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:37:42', '2021-03-21 17:37:42', '2021-03-28 18:37:42'),
('59636942deb7758312c9377cf09ba7a3af39098ff0df18c6925ea99c894511a4bc8bb9d8ef499ff3', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-20 10:54:47', '2021-03-20 10:54:47', '2021-03-27 11:54:47'),
('5a4181a239560367b9764c54b82f096f65f2107d759a129110a2a3d7874129392e7bf63e00699d8d', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 14:19:01', '2021-03-21 14:19:01', '2021-03-28 15:19:01'),
('5c3e998c20f04bc3e80a56d8b63f9f7ebfbcd10555579d5ab0cc688eca7eecf727093cc5e8952f99', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:00:31', '2021-03-21 17:00:31', '2021-03-28 18:00:31'),
('5de24203f1a69410e8138964e1104cf5f8b82e7edb12760595a9e2a00737a2a27b54e5803cbf43b6', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-20 10:45:46', '2021-03-20 10:45:46', '2021-03-27 11:45:46'),
('6054ac8e72ff76382219db17753880fe47972632fadd1977c03a90cabffbfd948f86331c6398c073', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:04:59', '2021-03-21 18:04:59', '2021-03-28 19:04:59'),
('627422d5a9d5025e9cfd202c97fbd444f5fdbf6377a7fa3b8ad453189d7c1af971d8a242591d3d4a', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 15:32:56', '2021-03-21 15:32:56', '2021-03-28 16:32:56'),
('62767d0f7b0b439422dfccae2b6f95ea0a43d6eed4fc2bf5193bc11e9e0c48c58bdcaf464b22a2ec', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 14:30:39', '2021-03-21 14:30:39', '2021-03-28 15:30:39'),
('64944cf95d174ea400717a03c8c21ab64cf5b9b93cb0ce7ed4b6a4596f2030e30a55b6728fbd4aaa', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:20:04', '2021-03-21 17:20:04', '2021-03-28 18:20:04'),
('6abcfb6c2ed5f1ded57710f0c1c78b515b9546faea06ee95c7893c9fb7535ddb3e4d455d4dbd9568', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-16 12:48:04', '2021-03-16 12:48:04', '2021-03-23 13:48:05'),
('6d3ffdddd0e07265b8f9a6a6dcfafcb8cb900b62ab7f2c3f2194448c6d672e19e4e4a2e2570c08f1', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 14:18:24', '2021-03-21 14:18:24', '2021-03-28 15:18:24'),
('6ecca92f8e4290ea57d944d4334f620f9e2e66a86f85e5c0c624ad662cdb055390b22dee593d0bac', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:59:05', '2021-03-21 18:59:05', '2021-03-28 19:59:05'),
('6fd40f1ddde90df6916409130a6755fc2d3c1abd29dd808f38e03c55e50ad8af82fa3dd6ccdaa21c', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:04:54', '2021-03-21 18:04:54', '2021-03-28 19:04:54'),
('700b8fef841394e3d996590f1d3af0060c9aff0b12dc1256e136f22729100b57b26468599a4c07b1', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:19:26', '2021-03-21 17:19:26', '2021-03-28 18:19:26'),
('70b4ab486950f68281fe9e5b04baf8b77e2fb619fc0531c3f9824bd11734866f9e0350334898b529', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-19 18:18:27', '2021-03-19 18:18:27', '2021-03-26 19:18:27'),
('712ffefb4bd829847bca457ba0cb8010a1d8ec873b6895c812308ec1fed00bda13a565147ec104da', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 14:34:21', '2021-03-21 14:34:21', '2021-03-28 15:34:21'),
('71fe35291862d6d7b95e62556f548f20608d4a25a202b586845a0cf026961887018aa9febd115bde', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:58:56', '2021-03-21 18:58:56', '2021-03-28 19:58:56'),
('752867fcb7b8984efd519b0eb6f9b2f501aa475ffe0a063e7237275b4c9bcd5eb0f62718bbf79598', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-19 10:45:36', '2021-03-19 10:45:36', '2021-03-26 11:45:36'),
('767e58b916c2116dd6b766bf7af04c39bc7cec7affc564e863f0dd26d076067714de0da292c6f9d0', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:02:40', '2021-03-21 18:02:40', '2021-03-28 19:02:40'),
('78d248d75e9d2bf78065704704be43e6487ceb0ee8497e3773e498a84bc284bf06a139be218d2f22', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 14:32:31', '2021-03-21 14:32:31', '2021-03-28 15:32:32'),
('7afc16187b7d0fe863f9c6e9f18a2f096a8e9dc7accdcbaef150de2d75ace2e7e946973ca6ad56ca', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 14:08:04', '2021-03-21 14:08:04', '2021-03-28 15:08:04'),
('7f545405b6567b062c8b1b9f00364a50e3d6afb391dbecd054ea85ff46dcd0cb97df9179e623a63b', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:25:15', '2021-03-21 17:25:15', '2021-03-28 18:25:15'),
('809e1d9a6629bbdf21bec4d588932d20605e0d4f504d6052cc40fd2a92aab9d079e71fb613b17388', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 15:34:44', '2021-03-21 15:34:44', '2021-03-28 16:34:44'),
('822da848ea9f8328b6b4758560eaa30ee35a2d1930a24ceab6ad46048194af66acf925e5c19f6ffd', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:46:48', '2021-03-21 18:46:48', '2021-03-28 19:46:48'),
('83107eed276e75e983699a6a6025d2a1ce59f26095d34e70773ee07651c704d922a4e16d9a9b62a9', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:05:22', '2021-03-21 18:05:22', '2021-03-28 19:05:22'),
('8485325f387d14222cf760f1a2fb4c305c50e5b5d1aa2abd19ed2a218b46549c85ee66eacfe9b98f', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 16:12:43', '2021-03-18 16:12:43', '2021-03-25 17:12:43'),
('84f68769d45f2ad1e49bbdcdf81f16abd1cdc6651fe360ba88c4b2ba6b19cee647bf41d2e6c526a4', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 16:12:44', '2021-03-18 16:12:44', '2021-03-25 17:12:44'),
('85bd0ecc3d5b8e84b0ee60f47f93411652d2f0f03712d03fb085b57715be9346efc35653c32549c4', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:37:07', '2021-03-21 17:37:07', '2021-03-28 18:37:07'),
('860e79ac3cf4fe65dc1c0cc521cf003c889db86203673557fcfbc82e30b2858a4cf8b59fa74bbe4a', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:21:26', '2021-03-21 17:21:26', '2021-03-28 18:21:26'),
('866833c49df3cd4237158ed7f706c301728e6fa069a9c06e308376d6b293fa89e64c7bb11fc7f136', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 14:18:45', '2021-03-21 14:18:45', '2021-03-28 15:18:45'),
('8892a01220fcba2d0da3660b040f6ab2c2c781ca4d111ce29d26133b44ce0442ccc4bf1421e8a0fc', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-20 10:45:57', '2021-03-20 10:45:57', '2021-03-27 11:45:58'),
('892fd6f89c021ff4664e20027a5606de311f9f3a5a334f8f2aabc2ef78a2822b0372211f8ae2a17b', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-19 18:17:48', '2021-03-19 18:17:48', '2021-03-26 19:17:48'),
('8a5f9605e425ac65a86898bb20af5d3243197824744e5a41163690fc40bfefc78a0760f5f3da4c15', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:16:29', '2021-03-21 17:16:29', '2021-03-28 18:16:29'),
('8b5e41fde8a29158e384a279218827c038cfee76d0943a3468270e65add948076c608426bf789faa', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-20 10:51:01', '2021-03-20 10:51:01', '2021-03-27 11:51:01'),
('8be9d031c60f62d419ecf34007af6d2820afa8ac402e2ddaaee9db7008aa95e81dc9532c654c4b3a', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:34:08', '2021-03-21 17:34:08', '2021-03-28 18:34:08'),
('8c859ab0fae1c89ccc803adc413b6f20f9b825a3255f7adfdaca72b4008cdc91b74ba21d4f149f5b', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:55:15', '2021-03-21 18:55:15', '2021-03-28 19:55:15'),
('8e1e8110a16259ce608b96184576ad6e17d2e68da19293a53042539908f68881ccd3861f61a7c28d', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:59:24', '2021-03-21 18:59:24', '2021-03-28 19:59:24'),
('9209f4b42b7ce7e458e28be7bf66240440aea1b29067e524ce60ca8ee093f08938847741fbfcf923', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 14:30:39', '2021-03-21 14:30:39', '2021-03-28 15:30:39'),
('9423e0ea21ad1834a54b40e414ae55832e74fa9cbd9b8c750ea60ffee4452a96d29c5230b6efea72', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 19:04:32', '2021-03-21 19:04:32', '2021-03-28 20:04:32'),
('948a46f750536ecfd2565925b5b80356ca15756f7c975db3a4c618c2ee17408ad04e9427666a04d2', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:27:31', '2021-03-21 17:27:31', '2021-03-28 18:27:31'),
('950ad277d5f27c3f104ab666a5eb6ddcd2fb4fdab2acb4080e18bc6113e44053dd7020dc28403ee1', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 15:22:43', '2021-03-18 15:22:43', '2021-03-25 16:22:44'),
('95c19e5f35ea994783bcfb9d92d4fe67b238ad3c7575262214e4b828318a47fde8d99e2daa477612', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:20:53', '2021-03-21 17:20:53', '2021-03-28 18:20:53'),
('9ad0ed8ff16e74f2bf7c08677f6b15d75f02111e96e41d6701dc2767fe4ce2a4e6b0c5c01d8271ca', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 15:09:28', '2021-03-21 15:09:28', '2021-03-28 16:09:28'),
('9d6ab13a55fb9187ebd3e1374e15121f1ce74cde797ddaed6fcfcfe91899105f6d18e4eaffd28f61', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:53:58', '2021-03-21 17:53:58', '2021-03-28 18:53:58'),
('9e00bd1458e440d430654ae4c577710780b3bb7fad9e094fcbd9d7232b240fc77ee11d7bd947fc17', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 13:47:50', '2021-03-21 13:47:50', '2021-03-28 14:47:50'),
('9fa1d5cf59707c4d54959b98df531aa5408c198fe69107005708f0431384fb95b2a9dfa3ef2340c4', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 13:33:45', '2021-03-21 13:33:45', '2021-03-28 14:33:45'),
('9fa2ae22747c642e8bde98cd8314fb56720a83889f5dcddfa8973ac96ea1df279e590da2b61e5a30', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 15:31:22', '2021-03-21 15:31:22', '2021-03-28 16:31:22'),
('a05b3b8d640e53f6e2975f61416a5b28aead5575dcb2372481feb25d073e5c40cdf8738233196ab7', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 15:32:05', '2021-03-21 15:32:05', '2021-03-28 16:32:05'),
('a25c8fc32b95542dfcae554f9913bb81b9b879375a2eedf35a2029546acfd90f09e495d823e18862', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 15:09:45', '2021-03-21 15:09:45', '2021-03-28 16:09:45'),
('a7b3f0f75da1c9393cafe370b19860c3d2a8109f6ccb0e5056d80f10fcd2343222cd470d8585d476', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:48:21', '2021-03-21 17:48:21', '2021-03-28 18:48:22'),
('a82a7ebb61f2adfb38be2b407a8a56130bf9ac6ea0ff6525f78db7685e408c9387b28234ceb2b983', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:59:17', '2021-03-21 18:59:17', '2021-03-28 19:59:17'),
('ac2b877b596e7e5ff4f9d1ab41eb7a03c3c2531b8a3640b19e76ffada56e2d47ae2c453282b87313', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 15:59:47', '2021-03-21 15:59:47', '2021-03-28 16:59:47'),
('af1965e039eeb08b1ae9f775c1d1014eb58d7b830b938282531476be45a4dc69e8eb07ad58569838', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:38:05', '2021-03-21 17:38:05', '2021-03-28 18:38:05'),
('af7b3057cf594d2d47c74fed024d0c2350ceea7f419870edbec5997b2bb1e77b180d40fdf4f4bb6e', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 11:35:04', '2021-03-18 11:35:04', '2021-03-25 12:35:04'),
('b0c04067edb0906d53d4b34621f26f3aa87f979935fae718f4c201882a3fb3fbd92290324ca07215', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 09:16:33', '2021-03-18 09:16:33', '2021-03-25 10:16:34'),
('c3e65c32aa3e9beb704119dfb1ccb0dab1c04bbe6de0ca70fa8c688d2c4f8e1131989c0b6d0deb3e', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:24:12', '2021-03-21 17:24:12', '2021-03-28 18:24:12'),
('c45551e19bcff103929c11782ff82aa3f393e47bac266a5059fd0ec3b27e624ebb8fe3fb9720f549', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 11:38:19', '2021-03-18 11:38:19', '2021-03-25 12:38:19'),
('c9da98b4ca924ba75fbf29c50a5d76eabb14084a4265f69a674ee57f2ffb7921518d586d606762b5', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 10:39:30', '2021-03-18 10:39:30', '2021-03-25 11:39:30'),
('ca218c80c2fe29b57fab62afa6a1763ed03ddb0b4731bc26c60bb7e649f7620ab4ae6f129a974fd0', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 13:55:17', '2021-03-21 13:55:17', '2021-03-28 14:55:17'),
('cb463e5d8a02dba201e9ccc997545668e9e4a039007ab63005f70e96176788f5f0c6a3566442fcff', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 14:10:32', '2021-03-21 14:10:32', '2021-03-28 15:10:32'),
('cd192d9aacb268a229e8af053f96601074e6b75a4a909718bc75d0bc0a09bab8f74102f27a6c9d76', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 19:03:17', '2021-03-21 19:03:17', '2021-03-28 20:03:17'),
('ce184ab42f9201594056c286278cef9a6323e71f673127f0b6194c3745c3e5d9070d59675b44e959', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 14:36:41', '2021-03-21 14:36:41', '2021-03-28 15:36:41'),
('d9dcac73cd099f83b6ea29e19fc5dd234aeba96b977c0558cdf63dc5d0a33a8d9ce5f79c80598821', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 15:34:03', '2021-03-21 15:34:03', '2021-03-28 16:34:03'),
('ddeef68449ec1ef12789416463dbccfde23ad3471f8244b1d8386d27b6d9d653e086584d3d6d0c53', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:26:57', '2021-03-21 17:26:57', '2021-03-28 18:26:57'),
('e11d3cf95a2724de4655fe11ac12bb092379fe50a7cb947aee7d10d6321ac4b8881c4091956d16ff', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 16:05:42', '2021-03-21 16:05:42', '2021-03-28 17:05:42'),
('e2c98e688259bb4823ff5dceca5a10ce9591ff9ae308e819dc85fa729a4f0cf75e613ba9ad38eae7', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-19 18:17:45', '2021-03-19 18:17:45', '2021-03-26 19:17:45'),
('eb10c4ac07f7647a8326b45c74e47944485899ef852aa16828f6e970c1e8488a916e85c47c38be6f', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 19:06:55', '2021-03-21 19:06:55', '2021-03-28 20:06:55'),
('eb8374bef33c3055d4e275af3e6d2a372e87a9e6314fbe7b3c08fac687311b70cbfc731059afa261', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 13:37:23', '2021-03-21 13:37:23', '2021-03-28 14:37:23'),
('ee0fbc225089291ed3f33487f8fec14a046c292cfaa3a8d9f7a23204723a06b999b148fc0476349d', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 06:32:49', '2021-03-18 06:32:49', '2021-03-25 07:32:49'),
('ee357e24bed33c8288ce804c44f83c8214ca849ca1a6acb6122ad20729d2079d1df120b5f8e5ef69', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-20 10:45:21', '2021-03-20 10:45:21', '2021-03-27 11:45:21'),
('eeb882246c1e53effab6f396312114c6ecfb2c65bbc0f5ee2843cb6586dd3e709aff677bbbdd19c4', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 15:41:41', '2021-03-21 15:41:41', '2021-03-28 16:41:41'),
('f03ab7a12c8710b2c4edfb74575444fb810533200c5a2a71f1fdb82ed3e7fd122c386f93da0e3dd1', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:45:18', '2021-03-21 17:45:18', '2021-03-28 18:45:18'),
('f2b8b89286783ea813b89080157b549b16fee877ad89d4db967a86f08748e632372f44b4cc910b2b', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 19:06:44', '2021-03-21 19:06:44', '2021-03-28 20:06:44'),
('f302941cf5ded9833157eed9581cca63d07214aa11dd34d7701de12b28a3a21f93d5ae89e8a32b2f', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 17:22:08', '2021-03-21 17:22:08', '2021-03-28 18:22:08'),
('f7bca652627ce5990b63c0f24347d7c6b107a0fbb5a0a70ef8180ffa47ff27cb8307b2020d9bd08f', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 19:09:00', '2021-03-21 19:09:00', '2021-03-28 20:09:00'),
('f98c0ea0f57701e8c8cf8aa3118381f20d1c3b5f34953072f0b2c026e2a2977c3605bd7575981ce6', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 18:05:43', '2021-03-21 18:05:43', '2021-03-28 19:05:43'),
('fa2f126d2c5c188a84ba43b0840f66e9c803f895fd9f10664b94e3b699df5d19a549069997a297e3', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-18 15:56:59', '2021-03-18 15:56:59', '2021-03-25 16:56:59'),
('fe74b23e5e121f07bfb7b81618ed31ee783e68ea8e012f0e08e7f6b519276df536cef8652c3ec8b0', 2, 5, 'Personal Access Token', '[]', 0, '2021-03-21 14:00:31', '2021-03-21 14:00:31', '2021-03-28 15:00:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(5, NULL, 'Laravel Personal Access Client', 'vnNKLEjXenVWOwdWPWWDdB3Eu2xU835dnOEc1oNa', NULL, 'http://localhost', 1, 0, 0, '2021-02-18 20:46:25', '2021-02-18 20:46:25'),
(6, NULL, 'Laravel Password Grant Client', 'rPrL4ojdyeF05ySIvKitRRGBVwXOYgh3u6CPpPd1', 'users', 'http://localhost', 0, 1, 0, '2021-02-18 20:46:25', '2021-02-18 20:46:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-02-18 20:15:52', '2021-02-18 20:15:52'),
(2, 3, '2021-02-18 20:44:08', '2021-02-18 20:44:08'),
(3, 5, '2021-02-18 20:46:25', '2021-02-18 20:46:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `userid` smallint(6) NOT NULL,
  `nombre` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigopostal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuentaid` smallint(6) NOT NULL,
  `compraid` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`articulo_id`),
  ADD KEY `articulos_categoriaid_index` (`categoriaid`),
  ADD KEY `articulos_marcaid_index` (`marcaid`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`categoriaid`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`compraid`),
  ADD KEY `compras_articuloid_foreign` (`articuloid`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favoritos_cuentaid_foreign` (`cuentaid`),
  ADD KEY `favoritos_articuloid_foreign` (`articuloid`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`marcaid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `usuarios_cuentaid_foreign` (`cuentaid`),
  ADD KEY `usuarios_compraid_foreign` (`compraid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `categoriaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `marcaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_categoriaid_foreign` FOREIGN KEY (`categoriaid`) REFERENCES `categorias` (`categoriaid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articulos_marcaid_foreign` FOREIGN KEY (`marcaid`) REFERENCES `marcas` (`marcaid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_articuloid_foreign` FOREIGN KEY (`articuloid`) REFERENCES `articulos` (`articulo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_articuloid_foreign` FOREIGN KEY (`articuloid`) REFERENCES `articulos` (`articulo_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favoritos_cuentaid_foreign` FOREIGN KEY (`cuentaid`) REFERENCES `cuentas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_compraid_foreign` FOREIGN KEY (`compraid`) REFERENCES `compras` (`compraid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_cuentaid_foreign` FOREIGN KEY (`cuentaid`) REFERENCES `cuentas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
