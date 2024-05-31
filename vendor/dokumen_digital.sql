-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 31 Bulan Mei 2024 pada 20.13
-- Versi server: 8.3.0
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dokumen_digital`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id` int NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `bg` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id`, `image`, `bg`) VALUES
(1, 'auth.jpg', '#4e73de');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jamuan_tamu`
--

CREATE TABLE `jamuan_tamu` (
  `id_jamuan_tamu` int NOT NULL,
  `image` varchar(75) NOT NULL,
  `judul_jamuan` varchar(75) DEFAULT NULL,
  `daerah` varchar(50) DEFAULT NULL,
  `deskripsi` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jamuan_tamu`
--

INSERT INTO `jamuan_tamu` (`id_jamuan_tamu`, `image`, `judul_jamuan`, `daerah`, `deskripsi`, `created_at`, `updated_at`) VALUES
(2, '556180812.jpg', 'Oko Mama', 'TTU', '<p><strong>Lorem ipsum</strong> dolor sit amet consectetur adipisicing elit. Animi magni sint tempore sunt? Adipisci, expedita. Quisquam eius accusantium accusamus odio adipisci ad eum hic rem ea, delectus consequatur ipsum autem voluptates, ex doloremque cumque minus aliquam a officiis. Odit doloribus veniam deserunt impedit perferendis, ipsam sunt! Placeat sapiente fugiat, obcaecati unde laboriosam recusandae nobis cumque nam, totam iusto quidem? At non iste cum aperiam culpa.</p>\r\n\r\n<p>Excepturi iure quam ullam minima officiis numquam quia qui harum rem, provident nihil ab dicta eaque exercitationem fuga voluptates maxime ipsum! Sint dolorum expedita unde, non asperiores natus odio suscipit laborum quia pariatur consectetur quo repudiandae obcaecati. Rerum ipsa qui repudiandae saepe itaque voluptate labore placeat nobis dolorem.</p>\r\n\r\n<p>Ea corrupti in quaerat accusantium vitae laborum nisi? Quisquam quas ex quidem minus, porro obcaecati. Accusamus quos explicabo culpa illo et autem cumque saepe quod iure est ut atque, obcaecati sed ipsam molestiae ullam quisquam tenetur labore? Aliquid, assumenda omnis expedita quidem earum atque aliquam nesciunt doloribus! Esse porro ducimus error earum amet nulla est. Optio exercitationem porro nemo aspernatur fuga nostrum doloremque neque. Omnis reprehenderit architecto dignissimos, eius laborum, aliquam modi autem consequatur fugiat dolorem id quaerat rem cupiditate. Sit obcaecati ipsa reprehenderit ullam! Atque, in saepe nesciunt eaque facere ea commodi sed necessitatibus perferendis fugiat consequuntur qui aperiam quibusdam optio tempore architecto ratione error, ut deserunt blanditiis.</p>\r\n\r\n<p>Rerum itaque impedit optio accusamus, in repudiandae porro ab fugit alias autem minima, fugiat ratione temporibus dolorum illo quis consectetur inventore voluptates earum dolor debitis hic at labore blanditiis. Voluptas, omnis temporibus sunt veritatis sapiente ex sed delectus fuga saepe corrupti maiores odit ipsum beatae dolor ullam iste maxime! Fuga blanditiis rerum mollitia ex, omnis deleniti pariatur nemo optio dolores voluptates vel sequi quae! Natus debitis harum voluptatum ipsum possimus dolor quod maxime dignissimos beatae ut eius placeat atque, aliquam consequatur ea obcaecati! Id nam exercitationem numquam assumenda eligendi velit fuga nemo inventore, autem, atque nisi quisquam delectus fugiat quam dignissimos ducimus commodi explicabo, non enim ex dolorem vitae architecto.</p>\r\n\r\n<p>Repellendus molestias est eveniet illo consequatur, dolorum quos rerum quasi incidunt? Rerum modi quia at consectetur, quos, officia consequuntur numquam molestias doloremque eveniet nulla perspiciatis repellat deserunt ad a quod eos velit, distinctio accusamus fuga iste incidunt animi. Incidunt minima quam a sed fugit earum dolores esse? Quos maiores saepe modi blanditiis molestias voluptas ipsam officiis ex fugit atque cupiditate quae tenetur, nam esse nostrum est, iste quidem quas voluptatem voluptatibus nemo. Debitis ab veritatis aspernatur suscipit maiores esse reiciendis porro assumenda deserunt numquam rerum reprehenderit cupiditate, explicabo repellendus, quaerat perferendis nisi libero perspiciatis vitae quasi optio, odit non? Molestiae iste dolorum rerum! Fugiat facilis cum voluptate non at, doloribus aliquam rem atque in voluptates, pariatur omnis laborum aut ullam error! Doloribus eligendi blanditiis debitis culpa in ipsa inventore, sunt corrupti vel beatae adipisci fuga quasi, aperiam obcaecati deserunt, ratione maxime nesciunt ab quis veniam. Repudiandae itaque quia culpa cupiditate magnam sunt dicta quae dignissimos, consectetur provident ipsa esse est impedit illo.</p>\r\n\r\n<p>Architecto, eaque ea expedita quos accusantium magni! Alias, quae est. Quod incidunt corporis ratione ut recusandae sint magni aspernatur ea tempore cumque nulla, repudiandae blanditiis explicabo harum eum provident voluptates voluptatem, illum minus tenetur nisi, facilis vero dicta? Laudantium delectus quo itaque aliquam expedita doloremque, consequuntur quos doloribus reprehenderit est enim asperiores recusandae, provident consectetur quis dolorum totam dolore! Corporis quas ipsum nam beatae labore, modi, saepe, repellendus eius sunt accusamus aperiam. Incidunt repudiandae ratione ipsum quos veniam esse aliquid autem ea, provident temporibus minima impedit optio repellat a! Voluptas id, minima a voluptatem veritatis consectetur ipsam, aut dignissimos, quaerat sunt repudiandae? Perspiciatis reiciendis eos inventore beatae necessitatibus fugiat ea vitae nostrum repellendus voluptate libero vel odio ipsum, eius nihil, quod aperiam perferendis officia odit, mollitia labore magni modi nobis.</p>\r\n\r\n<p>Quisquam repellendus suscipit aliquam voluptate illum iste reprehenderit asperiores eius, vitae fugit porro inventore odit harum aspernatur modi beatae totam delectus illo sit velit. Sunt voluptas culpa architecto inventore incidunt cum, voluptatem iusto, eius ipsam similique harum nostrum esse ipsum quibusdam earum quaerat placeat! Placeat cumque consectetur earum animi nobis iure blanditiis temporibus minima dolores, eius corporis ratione. Modi illo natus officia distinctio corrupti magni possimus, voluptatem similique odio accusamus, delectus animi commodi! Debitis quae expedita quasi inventore optio molestiae similique et tenetur ad aliquid. Numquam, eveniet! Recusandae nostrum harum corporis quidem. Soluta reiciendis quas explicabo est exercitationem sunt modi nostrum, iste hic officia architecto dolores molestias possimus, a sequi officiis ex aspernatur enim non adipisci delectus quo ullam necessitatibus et. Quos quam blanditiis qui vitae recusandae! Repellat enim nesciunt quaerat, aliquid accusantium hic expedita totam iste ut delectus officia quod, sunt sequi mollitia ipsum vero consequuntur non voluptas! Similique repudiandae facere ad dicta iure porro odit culpa deserunt rem nam nihil voluptates, cupiditate blanditiis reiciendis voluptatibus esse aliquid, non hic mollitia laboriosam enim accusamus aperiam aut incidunt. Veniam tempora dolorum ullam rerum eum at, placeat eaque unde quo nihil eveniet vel aliquid voluptas libero totam eligendi culpa?</p>\r\n\r\n<p>Dolores repellendus praesentium nobis minima magnam tempore, repudiandae voluptate illo ipsa minus voluptatem voluptas, pariatur veniam neque sit velit harum veritatis! Ullam quasi optio voluptas voluptatibus ipsam est at, omnis maxime perspiciatis obcaecati quisquam praesentium nostrum illo tempore voluptates blanditiis, dignissimos enim ex aspernatur iste natus exercitationem asperiores, nobis impedit? Numquam dicta consequatur earum repudiandae, similique vitae molestias magnam? Facilis nam maiores ipsa quos commodi recusandae, nemo unde consequuntur ad illo reprehenderit adipisci quasi deserunt rem ducimus dolore aliquid deleniti cum eius esse, quas itaque aut. Fugit aliquid necessitatibus, tempore asperiores sapiente rem maiores ducimus iusto harum dolor commodi mollitia nulla sed totam eos iste enim quas soluta aliquam ut debitis quaerat. Ullam quisquam totam esse! Dignissimos mollitia error repellendus minus accusantium? Voluptates, perferendis temporibus repellendus repellat corporis rerum iste tempore minima delectus vel cum quibusdam veritatis expedita pariatur ea unde nemo cumque itaque quidem quas sed ullam accusantium obcaecati officia! Recusandae fugiat quibusdam maxime, facilis reiciendis cupiditate debitis! Ut omnis, officiis, voluptatem nesciunt eveniet dolores architecto recusandae enim eos odio sed dicta, <em>cupiditate praesentium quos ex distinctio?</em></p>\r\n', '2024-05-21 12:17:04', '2024-05-22 11:46:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakaian_adat`
--

CREATE TABLE `pakaian_adat` (
  `id_pakaian_adat` int NOT NULL,
  `image` varchar(75) NOT NULL,
  `judul_pakaian_adat` varchar(75) DEFAULT NULL,
  `daerah` varchar(50) DEFAULT NULL,
  `deskripsi` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `pakaian_adat`
--

INSERT INTO `pakaian_adat` (`id_pakaian_adat`, `image`, `judul_pakaian_adat`, `daerah`, `deskripsi`, `created_at`, `updated_at`) VALUES
(2, '1158277545.jpg', 'tes', 'TTU', '<p><strong>Lorem ipsum</strong> dolor sit amet consectetur adipisicing elit. Animi magni sint tempore sunt? Adipisci, expedita. Quisquam eius accusantium accusamus odio adipisci ad eum hic rem ea, delectus consequatur ipsum autem voluptates, ex doloremque cumque minus aliquam a officiis. Odit doloribus veniam deserunt impedit perferendis, ipsam sunt! Placeat sapiente fugiat, obcaecati unde laboriosam recusandae nobis cumque nam, totam iusto quidem? At non iste cum aperiam culpa.</p>\r\n\r\n<p>Excepturi iure quam ullam minima officiis numquam quia qui harum rem, provident nihil ab dicta eaque exercitationem fuga voluptates maxime ipsum! Sint dolorum expedita unde, non asperiores natus odio suscipit laborum quia pariatur consectetur quo repudiandae obcaecati. Rerum ipsa qui repudiandae saepe itaque voluptate labore placeat nobis dolorem.</p>\r\n\r\n<p>Ea corrupti in quaerat accusantium vitae laborum nisi? Quisquam quas ex quidem minus, porro obcaecati. Accusamus quos explicabo culpa illo et autem cumque saepe quod iure est ut atque, obcaecati sed ipsam molestiae ullam quisquam tenetur labore? Aliquid, assumenda omnis expedita quidem earum atque aliquam nesciunt doloribus! Esse porro ducimus error earum amet nulla est. Optio exercitationem porro nemo aspernatur fuga nostrum doloremque neque. Omnis reprehenderit architecto dignissimos, eius laborum, aliquam modi autem consequatur fugiat dolorem id quaerat rem cupiditate. Sit obcaecati ipsa reprehenderit ullam! Atque, in saepe nesciunt eaque facere ea commodi sed necessitatibus perferendis fugiat consequuntur qui aperiam quibusdam optio tempore architecto ratione error, ut deserunt blanditiis.</p>\r\n\r\n<p>Rerum itaque impedit optio accusamus, in repudiandae porro ab fugit alias autem minima, fugiat ratione temporibus dolorum illo quis consectetur inventore voluptates earum dolor debitis hic at labore blanditiis. Voluptas, omnis temporibus sunt veritatis sapiente ex sed delectus fuga saepe corrupti maiores odit ipsum beatae dolor ullam iste maxime! Fuga blanditiis rerum mollitia ex, omnis deleniti pariatur nemo optio dolores voluptates vel sequi quae! Natus debitis harum voluptatum ipsum possimus dolor quod maxime dignissimos beatae ut eius placeat atque, aliquam consequatur ea obcaecati! Id nam exercitationem numquam assumenda eligendi velit fuga nemo inventore, autem, atque nisi quisquam delectus fugiat quam dignissimos ducimus commodi explicabo, non enim ex dolorem vitae architecto.</p>\r\n\r\n<p>Repellendus molestias est eveniet illo consequatur, dolorum quos rerum quasi incidunt? Rerum modi quia at consectetur, quos, officia consequuntur numquam molestias doloremque eveniet nulla perspiciatis repellat deserunt ad a quod eos velit, distinctio accusamus fuga iste incidunt animi. Incidunt minima quam a sed fugit earum dolores esse? Quos maiores saepe modi blanditiis molestias voluptas ipsam officiis ex fugit atque cupiditate quae tenetur, nam esse nostrum est, iste quidem quas voluptatem voluptatibus nemo. Debitis ab veritatis aspernatur suscipit maiores esse reiciendis porro assumenda deserunt numquam rerum reprehenderit cupiditate, explicabo repellendus, quaerat perferendis nisi libero perspiciatis vitae quasi optio, odit non? Molestiae iste dolorum rerum! Fugiat facilis cum voluptate non at, doloribus aliquam rem atque in voluptates, pariatur omnis laborum aut ullam error! Doloribus eligendi blanditiis debitis culpa in ipsa inventore, sunt corrupti vel beatae adipisci fuga quasi, aperiam obcaecati deserunt, ratione maxime nesciunt ab quis veniam. Repudiandae itaque quia culpa cupiditate magnam sunt dicta quae dignissimos, consectetur provident ipsa esse est impedit illo.</p>\r\n\r\n<p>Architecto, eaque ea expedita quos accusantium magni! Alias, quae est. Quod incidunt corporis ratione ut recusandae sint magni aspernatur ea tempore cumque nulla, repudiandae blanditiis explicabo harum eum provident voluptates voluptatem, illum minus tenetur nisi, facilis vero dicta? Laudantium delectus quo itaque aliquam expedita doloremque, consequuntur quos doloribus reprehenderit est enim asperiores recusandae, provident consectetur quis dolorum totam dolore! Corporis quas ipsum nam beatae labore, modi, saepe, repellendus eius sunt accusamus aperiam. Incidunt repudiandae ratione ipsum quos veniam esse aliquid autem ea, provident temporibus minima impedit optio repellat a! Voluptas id, minima a voluptatem veritatis consectetur ipsam, aut dignissimos, quaerat sunt repudiandae? Perspiciatis reiciendis eos inventore beatae necessitatibus fugiat ea vitae nostrum repellendus voluptate libero vel odio ipsum, eius nihil, quod aperiam perferendis officia odit, mollitia labore magni modi nobis.</p>\r\n\r\n<p>Quisquam repellendus suscipit aliquam voluptate illum iste reprehenderit asperiores eius, vitae fugit porro inventore odit harum aspernatur modi beatae totam delectus illo sit velit. Sunt voluptas culpa architecto inventore incidunt cum, voluptatem iusto, eius ipsam similique harum nostrum esse ipsum quibusdam earum quaerat placeat! Placeat cumque consectetur earum animi nobis iure blanditiis temporibus minima dolores, eius corporis ratione. Modi illo natus officia distinctio corrupti magni possimus, voluptatem similique odio accusamus, delectus animi commodi! Debitis quae expedita quasi inventore optio molestiae similique et tenetur ad aliquid. Numquam, eveniet! Recusandae nostrum harum corporis quidem. Soluta reiciendis quas explicabo est exercitationem sunt modi nostrum, iste hic officia architecto dolores molestias possimus, a sequi officiis ex aspernatur enim non adipisci delectus quo ullam necessitatibus et. Quos quam blanditiis qui vitae recusandae! Repellat enim nesciunt quaerat, aliquid accusantium hic expedita totam iste ut delectus officia quod, sunt sequi mollitia ipsum vero consequuntur non voluptas! Similique repudiandae facere ad dicta iure porro odit culpa deserunt rem nam nihil voluptates, cupiditate blanditiis reiciendis voluptatibus esse aliquid, non hic mollitia laboriosam enim accusamus aperiam aut incidunt. Veniam tempora dolorum ullam rerum eum at, placeat eaque unde quo nihil eveniet vel aliquid voluptas libero totam eligendi culpa?</p>\r\n\r\n<p>Dolores repellendus praesentium nobis minima magnam tempore, repudiandae voluptate illo ipsa minus voluptatem voluptas, pariatur veniam neque sit velit harum veritatis! Ullam quasi optio voluptas voluptatibus ipsam est at, omnis maxime perspiciatis obcaecati quisquam praesentium nostrum illo tempore voluptates blanditiis, dignissimos enim ex aspernatur iste natus exercitationem asperiores, nobis impedit? Numquam dicta consequatur earum repudiandae, similique vitae molestias magnam? Facilis nam maiores ipsa quos commodi recusandae, nemo unde consequuntur ad illo reprehenderit adipisci quasi deserunt rem ducimus dolore aliquid deleniti cum eius esse, quas itaque aut. Fugit aliquid necessitatibus, tempore asperiores sapiente rem maiores ducimus iusto harum dolor commodi mollitia nulla sed totam eos iste enim quas soluta aliquam ut debitis quaerat. Ullam quisquam totam esse! Dignissimos mollitia error repellendus minus accusantium? Voluptates, perferendis temporibus repellendus repellat corporis rerum iste tempore minima delectus vel cum quibusdam veritatis expedita pariatur ea unde nemo cumque itaque quidem quas sed ullam accusantium obcaecati officia! Recusandae fugiat quibusdam maxime, facilis reiciendis cupiditate debitis! Ut omnis, officiis, voluptatem nesciunt eveniet dolores architecto recusandae enim eos odio sed dicta, <em>cupiditate praesentium quos ex distinctio?</em></p>\r\n', '2024-05-21 12:44:55', '2024-05-21 21:42:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perkawinan`
--

CREATE TABLE `perkawinan` (
  `id_perkawinan` int NOT NULL,
  `image` varchar(75) NOT NULL,
  `judul_perkawinan` varchar(75) DEFAULT NULL,
  `daerah` varchar(50) DEFAULT NULL,
  `deskripsi` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `perkawinan`
--

INSERT INTO `perkawinan` (`id_perkawinan`, `image`, `judul_perkawinan`, `daerah`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '1544244623.jpg', 'tes', 'TTU', '<p><strong>Lorem ipsum</strong> dolor sit amet consectetur adipisicing elit. Animi magni sint tempore sunt? Adipisci, expedita. Quisquam eius accusantium accusamus odio adipisci ad eum hic rem ea, delectus consequatur ipsum autem voluptates, ex doloremque cumque minus aliquam a officiis. Odit doloribus veniam deserunt impedit perferendis, ipsam sunt! Placeat sapiente fugiat, obcaecati unde laboriosam recusandae nobis cumque nam, totam iusto quidem? At non iste cum aperiam culpa.</p>\r\n\r\n<p>Excepturi iure quam ullam minima officiis numquam quia qui harum rem, provident nihil ab dicta eaque exercitationem fuga voluptates maxime ipsum! Sint dolorum expedita unde, non asperiores natus odio suscipit laborum quia pariatur consectetur quo repudiandae obcaecati. Rerum ipsa qui repudiandae saepe itaque voluptate labore placeat nobis dolorem.</p>\r\n\r\n<p>Ea corrupti in quaerat accusantium vitae laborum nisi? Quisquam quas ex quidem minus, porro obcaecati. Accusamus quos explicabo culpa illo et autem cumque saepe quod iure est ut atque, obcaecati sed ipsam molestiae ullam quisquam tenetur labore? Aliquid, assumenda omnis expedita quidem earum atque aliquam nesciunt doloribus! Esse porro ducimus error earum amet nulla est. Optio exercitationem porro nemo aspernatur fuga nostrum doloremque neque. Omnis reprehenderit architecto dignissimos, eius laborum, aliquam modi autem consequatur fugiat dolorem id quaerat rem cupiditate. Sit obcaecati ipsa reprehenderit ullam! Atque, in saepe nesciunt eaque facere ea commodi sed necessitatibus perferendis fugiat consequuntur qui aperiam quibusdam optio tempore architecto ratione error, ut deserunt blanditiis.</p>\r\n\r\n<p>Rerum itaque impedit optio accusamus, in repudiandae porro ab fugit alias autem minima, fugiat ratione temporibus dolorum illo quis consectetur inventore voluptates earum dolor debitis hic at labore blanditiis. Voluptas, omnis temporibus sunt veritatis sapiente ex sed delectus fuga saepe corrupti maiores odit ipsum beatae dolor ullam iste maxime! Fuga blanditiis rerum mollitia ex, omnis deleniti pariatur nemo optio dolores voluptates vel sequi quae! Natus debitis harum voluptatum ipsum possimus dolor quod maxime dignissimos beatae ut eius placeat atque, aliquam consequatur ea obcaecati! Id nam exercitationem numquam assumenda eligendi velit fuga nemo inventore, autem, atque nisi quisquam delectus fugiat quam dignissimos ducimus commodi explicabo, non enim ex dolorem vitae architecto.</p>\r\n\r\n<p>Repellendus molestias est eveniet illo consequatur, dolorum quos rerum quasi incidunt? Rerum modi quia at consectetur, quos, officia consequuntur numquam molestias doloremque eveniet nulla perspiciatis repellat deserunt ad a quod eos velit, distinctio accusamus fuga iste incidunt animi. Incidunt minima quam a sed fugit earum dolores esse? Quos maiores saepe modi blanditiis molestias voluptas ipsam officiis ex fugit atque cupiditate quae tenetur, nam esse nostrum est, iste quidem quas voluptatem voluptatibus nemo. Debitis ab veritatis aspernatur suscipit maiores esse reiciendis porro assumenda deserunt numquam rerum reprehenderit cupiditate, explicabo repellendus, quaerat perferendis nisi libero perspiciatis vitae quasi optio, odit non? Molestiae iste dolorum rerum! Fugiat facilis cum voluptate non at, doloribus aliquam rem atque in voluptates, pariatur omnis laborum aut ullam error! Doloribus eligendi blanditiis debitis culpa in ipsa inventore, sunt corrupti vel beatae adipisci fuga quasi, aperiam obcaecati deserunt, ratione maxime nesciunt ab quis veniam. Repudiandae itaque quia culpa cupiditate magnam sunt dicta quae dignissimos, consectetur provident ipsa esse est impedit illo.</p>\r\n\r\n<p>Architecto, eaque ea expedita quos accusantium magni! Alias, quae est. Quod incidunt corporis ratione ut recusandae sint magni aspernatur ea tempore cumque nulla, repudiandae blanditiis explicabo harum eum provident voluptates voluptatem, illum minus tenetur nisi, facilis vero dicta? Laudantium delectus quo itaque aliquam expedita doloremque, consequuntur quos doloribus reprehenderit est enim asperiores recusandae, provident consectetur quis dolorum totam dolore! Corporis quas ipsum nam beatae labore, modi, saepe, repellendus eius sunt accusamus aperiam. Incidunt repudiandae ratione ipsum quos veniam esse aliquid autem ea, provident temporibus minima impedit optio repellat a! Voluptas id, minima a voluptatem veritatis consectetur ipsam, aut dignissimos, quaerat sunt repudiandae? Perspiciatis reiciendis eos inventore beatae necessitatibus fugiat ea vitae nostrum repellendus voluptate libero vel odio ipsum, eius nihil, quod aperiam perferendis officia odit, mollitia labore magni modi nobis.</p>\r\n\r\n<p>Quisquam repellendus suscipit aliquam voluptate illum iste reprehenderit asperiores eius, vitae fugit porro inventore odit harum aspernatur modi beatae totam delectus illo sit velit. Sunt voluptas culpa architecto inventore incidunt cum, voluptatem iusto, eius ipsam similique harum nostrum esse ipsum quibusdam earum quaerat placeat! Placeat cumque consectetur earum animi nobis iure blanditiis temporibus minima dolores, eius corporis ratione. Modi illo natus officia distinctio corrupti magni possimus, voluptatem similique odio accusamus, delectus animi commodi! Debitis quae expedita quasi inventore optio molestiae similique et tenetur ad aliquid. Numquam, eveniet! Recusandae nostrum harum corporis quidem. Soluta reiciendis quas explicabo est exercitationem sunt modi nostrum, iste hic officia architecto dolores molestias possimus, a sequi officiis ex aspernatur enim non adipisci delectus quo ullam necessitatibus et. Quos quam blanditiis qui vitae recusandae! Repellat enim nesciunt quaerat, aliquid accusantium hic expedita totam iste ut delectus officia quod, sunt sequi mollitia ipsum vero consequuntur non voluptas! Similique repudiandae facere ad dicta iure porro odit culpa deserunt rem nam nihil voluptates, cupiditate blanditiis reiciendis voluptatibus esse aliquid, non hic mollitia laboriosam enim accusamus aperiam aut incidunt. Veniam tempora dolorum ullam rerum eum at, placeat eaque unde quo nihil eveniet vel aliquid voluptas libero totam eligendi culpa?</p>\r\n\r\n<p>Dolores repellendus praesentium nobis minima magnam tempore, repudiandae voluptate illo ipsa minus voluptatem voluptas, pariatur veniam neque sit velit harum veritatis! Ullam quasi optio voluptas voluptatibus ipsam est at, omnis maxime perspiciatis obcaecati quisquam praesentium nostrum illo tempore voluptates blanditiis, dignissimos enim ex aspernatur iste natus exercitationem asperiores, nobis impedit? Numquam dicta consequatur earum repudiandae, similique vitae molestias magnam? Facilis nam maiores ipsa quos commodi recusandae, nemo unde consequuntur ad illo reprehenderit adipisci quasi deserunt rem ducimus dolore aliquid deleniti cum eius esse, quas itaque aut. Fugit aliquid necessitatibus, tempore asperiores sapiente rem maiores ducimus iusto harum dolor commodi mollitia nulla sed totam eos iste enim quas soluta aliquam ut debitis quaerat. Ullam quisquam totam esse! Dignissimos mollitia error repellendus minus accusantium? Voluptates, perferendis temporibus repellendus repellat corporis rerum iste tempore minima delectus vel cum quibusdam veritatis expedita pariatur ea unde nemo cumque itaque quidem quas sed ullam accusantium obcaecati officia! Recusandae fugiat quibusdam maxime, facilis reiciendis cupiditate debitis! Ut omnis, officiis, voluptatem nesciunt eveniet dolores architecto recusandae enim eos odio sed dicta, <em>cupiditate praesentium quos ex distinctio?</em></p>\r\n', '2024-05-21 12:40:49', '2024-05-21 21:41:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `id_role` int DEFAULT NULL,
  `id_active` int DEFAULT '2',
  `en_user` varchar(75) DEFAULT NULL,
  `token` char(6) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT 'default.svg',
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `id_role`, `id_active`, `en_user`, `token`, `name`, `image`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, 'develoepr', 'default.svg', 'developer@gmail.com', '$2y$10$//KMATh3ibPoI3nHFp7x/u7vnAbo2WyUgmI4x0CVVrH8ajFhMvbjG', '2024-05-19 13:24:52', '2024-05-19 13:24:52'),
(2, 2, 1, NULL, NULL, 'admin', 'default.svg', 'admin@gmail.com', '$2y$10$//KMATh3ibPoI3nHFp7x/u7vnAbo2WyUgmI4x0CVVrH8ajFhMvbjG', '2024-05-19 13:24:52', '2024-05-19 13:24:52');

--
-- Trigger `users`
--
DELIMITER $$
CREATE TRIGGER `insert_users` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
    SET NEW.id_role = (
        SELECT id_role
        FROM `user_role`
        ORDER BY id_role DESC
        LIMIT 1
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id_access_menu` int NOT NULL,
  `id_role` int DEFAULT NULL,
  `id_menu` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id_access_menu`, `id_role`, `id_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_sub_menu`
--

CREATE TABLE `user_access_sub_menu` (
  `id_access_sub_menu` int NOT NULL,
  `id_role` int DEFAULT NULL,
  `id_sub_menu` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user_access_sub_menu`
--

INSERT INTO `user_access_sub_menu` (`id_access_sub_menu`, `id_role`, `id_sub_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id_menu` int NOT NULL,
  `menu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id_menu`, `menu`) VALUES
(1, 'User Management'),
(2, 'Menu Management'),
(3, 'Data Dokumen Digital');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id_role` int NOT NULL,
  `role` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id_role`, `role`) VALUES
(1, 'Developer'),
(2, 'Administrator'),
(3, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_status`
--

CREATE TABLE `user_status` (
  `id_status` int NOT NULL,
  `status` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user_status`
--

INSERT INTO `user_status` (`id_status`, `status`) VALUES
(1, 'Active'),
(2, 'No Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id_sub_menu` int NOT NULL,
  `id_menu` int DEFAULT NULL,
  `id_active` int DEFAULT '2',
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id_sub_menu`, `id_menu`, `id_active`, `title`, `url`, `icon`) VALUES
(1, 1, 1, 'Users', 'users', 'fas fa-users'),
(2, 1, 1, 'Role', 'role', 'fas fa-user-cog'),
(3, 2, 1, 'Menu', 'menu', 'fas fa-fw fa-folder'),
(4, 2, 1, 'Sub Menu', 'sub-menu', 'fas fa-fw fa-folder-open'),
(5, 2, 1, 'Menu Access', 'menu-access', 'fas fa-user-lock'),
(6, 2, 1, 'Sub Menu Access', 'sub-menu-access', 'fas fa-user-lock'),
(7, 3, 1, 'Jamuan Tamu', 'jamuan-tamu', 'fas fa-list-ul'),
(8, 3, 1, 'Perkawinan', 'perkawinan', 'fas fa-list-ul'),
(9, 3, 1, 'Pakaian Adat', 'pakaian-adat', 'fas fa-list-ul'),
(10, 3, 1, 'Video', 'video', 'fas fa-video');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int NOT NULL,
  `id_tipe_fitur` int NOT NULL DEFAULT '0',
  `thumbnail` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link_video` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_video` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `author` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `penonton` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `id_tipe_fitur`, `thumbnail`, `link_video`, `nama_video`, `deskripsi`, `author`, `penonton`, `created_at`, `updated_at`) VALUES
(1, 1, '887135739.jpg', 'https://www.youtube.com/embed/rP8zfoMC-WE', 'mending lu pada jagain kopi gw dah', '<p>Social Media: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbTduMlFZRmd6VmlhSFgyV25qbFFRbXptRE01QXxBQ3Jtc0tuZHN6TmpXWmx0OEdaRjVaUDcyMDY1RzNRZHpvNmFUaExYWEU0QzdxRVhJbE15V3FDZmtxOFhkb3ZSZmd4NlN2c1dYbmVhVTdGbXFBSkZOdE9nSXgyWDN1VjBWakRuZk5qcElHTXRHUmotQjZ0bWZScw&amp;q=https%3A%2F%2Fwww.tiktok.com%2F%40rizalmuk&amp;v=rP8zfoMC-WE\" target=\"_blank\">&nbsp;<img alt=\"\" src=\"https://www.gstatic.com/youtube/img/watch/social_media/tiktok_1x.png\" />&nbsp;/&nbsp;rizalmuk&nbsp;&nbsp;</a> <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbURld0FVWm9rSEloT0ZqOG5PNXFpX3JKelFRZ3xBQ3Jtc0tsV0Y5NGNDdHpoMjkzZGQ1ckVNMldYcGFsc2MxeFE0ejVfSk1melFsSUlLU3hPY0FnR1R6Yl9kTmtmMl85QlNtRFpsdS1HMDljZ0NGcW1TTmVKX0Rjc2NjWUhwbUJDUm4wcVZqWWdHOEExV180NEZtUQ&amp;q=https%3A%2F%2Finstagram.com%2Frizalmuk&amp;v=rP8zfoMC-WE\" target=\"_blank\">&nbsp;<img alt=\"\" src=\"https://www.gstatic.com/youtube/img/watch/social_media/instagram_1x.png\" />&nbsp;/&nbsp;rizalmuk&nbsp;&nbsp;</a> <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbTVtX2Ftc3ZkbXlxX2dkWklSVEU2NENjc3c0UXxBQ3Jtc0tuaDAyYTBvNEFqS1dzNzkzV0pVYURrclFQTGFsV2VSb2RzR0tNeXBWTW54ME5DdjNweFVZMFRxX0FrcTVseE1Dd1NmMW1ORkhVSmttREFNRFRZajN4U1lUTmNQc0ZvSDJOTFhaTUhMaGpGenotTHprRQ&amp;q=https%3A%2F%2Ffacebook.com%2Frizalmukhafidin&amp;v=rP8zfoMC-WE\" target=\"_blank\">&nbsp;<img alt=\"\" src=\"https://www.gstatic.com/youtube/img/watch/social_media/facebook_1x.png\" />&nbsp;/&nbsp;rizalmukhafidin&nbsp;&nbsp;</a></p>\r\n\r\n<p>▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬</p>\r\n\r\n<p>For Business or Any Other Inquiries: oncomsquads@gmail.com</p>\r\n', 'develoepr', 0, '2024-05-31 12:56:36', '2024-06-01 03:47:37'),
(2, 3, '887135739.jpg', 'https://www.youtube.com/embed/srIzWKtZbj0', 'demi hobi dan istri', '<p>Social Media: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbTduMlFZRmd6VmlhSFgyV25qbFFRbXptRE01QXxBQ3Jtc0tuZHN6TmpXWmx0OEdaRjVaUDcyMDY1RzNRZHpvNmFUaExYWEU0QzdxRVhJbE15V3FDZmtxOFhkb3ZSZmd4NlN2c1dYbmVhVTdGbXFBSkZOdE9nSXgyWDN1VjBWakRuZk5qcElHTXRHUmotQjZ0bWZScw&amp;q=https%3A%2F%2Fwww.tiktok.com%2F%40rizalmuk&amp;v=rP8zfoMC-WE\" target=\"_blank\">&nbsp;<img alt=\"\" src=\"https://www.gstatic.com/youtube/img/watch/social_media/tiktok_1x.png\" />&nbsp;/&nbsp;rizalmuk&nbsp;&nbsp;</a> <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbURld0FVWm9rSEloT0ZqOG5PNXFpX3JKelFRZ3xBQ3Jtc0tsV0Y5NGNDdHpoMjkzZGQ1ckVNMldYcGFsc2MxeFE0ejVfSk1melFsSUlLU3hPY0FnR1R6Yl9kTmtmMl85QlNtRFpsdS1HMDljZ0NGcW1TTmVKX0Rjc2NjWUhwbUJDUm4wcVZqWWdHOEExV180NEZtUQ&amp;q=https%3A%2F%2Finstagram.com%2Frizalmuk&amp;v=rP8zfoMC-WE\" target=\"_blank\">&nbsp;<img alt=\"\" src=\"https://www.gstatic.com/youtube/img/watch/social_media/instagram_1x.png\" />&nbsp;/&nbsp;rizalmuk&nbsp;&nbsp;</a> <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbTVtX2Ftc3ZkbXlxX2dkWklSVEU2NENjc3c0UXxBQ3Jtc0tuaDAyYTBvNEFqS1dzNzkzV0pVYURrclFQTGFsV2VSb2RzR0tNeXBWTW54ME5DdjNweFVZMFRxX0FrcTVseE1Dd1NmMW1ORkhVSmttREFNRFRZajN4U1lUTmNQc0ZvSDJOTFhaTUhMaGpGenotTHprRQ&amp;q=https%3A%2F%2Ffacebook.com%2Frizalmukhafidin&amp;v=rP8zfoMC-WE\" target=\"_blank\">&nbsp;<img alt=\"\" src=\"https://www.gstatic.com/youtube/img/watch/social_media/facebook_1x.png\" />&nbsp;/&nbsp;rizalmukhafidin&nbsp;&nbsp;</a></p>\r\n\r\n<p>▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬</p>\r\n\r\n<p>For Business or Any Other Inquiries: oncomsquads@gmail.com</p>\r\n', 'develoepr', 3, '2024-05-31 12:59:42', '2024-06-01 03:50:07');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jamuan_tamu`
--
ALTER TABLE `jamuan_tamu`
  ADD PRIMARY KEY (`id_jamuan_tamu`);

--
-- Indeks untuk tabel `pakaian_adat`
--
ALTER TABLE `pakaian_adat`
  ADD PRIMARY KEY (`id_pakaian_adat`);

--
-- Indeks untuk tabel `perkawinan`
--
ALTER TABLE `perkawinan`
  ADD PRIMARY KEY (`id_perkawinan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_active` (`id_active`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id_access_menu`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indeks untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  ADD PRIMARY KEY (`id_access_sub_menu`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_sub_menu` (`id_sub_menu`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id_sub_menu`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_active` (`id_active`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jamuan_tamu`
--
ALTER TABLE `jamuan_tamu`
  MODIFY `id_jamuan_tamu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pakaian_adat`
--
ALTER TABLE `pakaian_adat`
  MODIFY `id_pakaian_adat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `perkawinan`
--
ALTER TABLE `perkawinan`
  MODIFY `id_perkawinan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id_access_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  MODIFY `id_access_sub_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_role` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id_status` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id_sub_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_active`) REFERENCES `user_status` (`id_status`);

--
-- Ketidakleluasaan untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD CONSTRAINT `user_access_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `user_access_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `user_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  ADD CONSTRAINT `user_access_sub_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `user_access_sub_menu_ibfk_2` FOREIGN KEY (`id_sub_menu`) REFERENCES `user_sub_menu` (`id_sub_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD CONSTRAINT `user_sub_menu_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `user_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_sub_menu_ibfk_2` FOREIGN KEY (`id_active`) REFERENCES `user_status` (`id_status`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
