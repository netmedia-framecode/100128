-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 27 Jul 2024 pada 17.03
-- Versi server: 10.6.18-MariaDB-cll-lve
-- Versi PHP: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zjxtorpv_100128`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `bg` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id`, `image`, `bg`) VALUES
(1, '126281837.jpg', '#131830');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jamuan_tamu`
--

CREATE TABLE `jamuan_tamu` (
  `id_jamuan_tamu` int(11) NOT NULL,
  `image` varchar(75) NOT NULL,
  `judul_jamuan` varchar(75) DEFAULT NULL,
  `daerah` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jamuan_tamu`
--

INSERT INTO `jamuan_tamu` (`id_jamuan_tamu`, `image`, `judul_jamuan`, `daerah`, `deskripsi`, `created_at`, `updated_at`) VALUES
(3, '3984488444.jpg', 'Pemberian Oko Mama', 'TTS', '<p>Ketika orang berkunjung ke satu keluarga, suguhan pertama yang diterima adalah oko&rsquo;mama&rsquo; berisi tiga hal: sirih, pinang, dan kapur. Ketiga hal ini menjadi semacam pembuka pintu untuk basa-basi sebelum sampai pada pokok percakapan/pembahasan. Orang yang bertamu pun akan memberi balasan paling kurang sirih dan pinang. Tamu memamah dari yang diberikan tuan/nyonya rumah, sedang tuan/nyonya rumah memamah dari yang diberikan oleh tamu. Ini bentuk dari keramahan dan kesederhanaan orang Timor.</p>\r\n', '2024-05-22 11:06:21', '2024-05-22 11:06:21'),
(4, '3230685198.jpg', 'Makna Bentuk Fisik Oko Mama', 'TTS', '<p>Oko&rsquo;mama&rsquo; terdiri dari dua bagian. Bagian pertama yaitu alas yang lebih besar berongga di dalamnya. Fungsinya sebagai gudang, tempat persediaan. Bagian persediaan ini tidak diperkenankan untuk dilihat oleh tamu. Hanya tuan/nyonya rumah saja yang boleh membuka, melihat persediaan, mengambil dari dalamnya dan menyuguhkan. Bagian kedua yaitu tutupan sekaligus sebagai penampang persembahan/suguhan. Pada bagian kedua ini orang menempatkan dan menyuguhkan sirih, pinang dan kapur.</p>\r\n\r\n<p>Bentuk fisik oko mama :</p>\r\n\r\n<p>1.&nbsp;Oko Mama berbentuk segi empat yang berarti hubungan komunikasi social</p>\r\n\r\n<p>2. Oko Mama dianyam dari daun lontar menunjukan kemampuan mengelola dan memanfaatkan kekayaan alam oleh sang pencipta</p>\r\n\r\n<p>3. Isi Oko Mama berupa sirih, pinang, kapur, dan tembakau, berarti symbol pribadi yang berbeda</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2024-05-22 11:14:57', '2024-05-22 11:14:57'),
(6, '2856951591.jpg', 'Fungsi Oko Mama', 'TTS', '<p>Oko&rsquo;mama&rsquo; berfungsi pula sebagai sarana untuk menyampaikan maksud yang lebih luas. Istilah yang umum digunakan adalah&nbsp;<em>nateek oko&rsquo;mama&rsquo;</em>&nbsp;(Artinya:&nbsp;<em>kasi dudu tampa siri</em>).&nbsp;<em>Nateek oko&rsquo;mama&rsquo;</em> bukan hanya sekedar menempatkan sirih, pinang dan kapur. Bila orang menggunakan istilah&nbsp;<em>nateek oko&rsquo;mama&rsquo;&nbsp;</em>dengan tambahan uang dalam jumlah tertentu biasanya uang perak, seiring dengan ini mulai diganti dengan uang lima ribuan ke atas maka ada maksud yang akan disampaikan menggunakan bahasa pengantar percakapan sebagai berikut.<br />\r\nTuan rumah:&nbsp;<em>Meiki &lsquo;reno&rsquo; te m&rsquo;iis je he tnaben tiit ee, mainoin aa, oo, ai&rsquo; mai&rsquo;ninu&rsquo;</em><br />\r\n&quot;Jika membawa jeruk, kupaslah (dan suguhkan) biarlah kita bersama menikmati manisnya atau asamnya&quot;.<br />\r\n&nbsp;Tamu : mengambil oko&rsquo;mama&rsquo;, menempakan sirih,pinang dan uang sambil berkata<br />\r\n<em>&quot;<strong>Hai mbaiseun, tua. Oko&rsquo; re&rsquo; ia hai misaeb ee neit natuin hai</strong>&quot;</em><br />\r\n&nbsp;Kami memberi rasa hormat. Oko&rsquo;mama&rsquo; yang kami hunjukkan (di depan kita) oleh karena kami ( &hellip; )<br />\r\n&nbsp;Di bagian yang kosong (titik-titik) itulah orang menyampaikan maksud hati. Bila maksud yang disampaikan itu diterima, maka isi oko&rsquo;mama&rsquo; pun diambil. Sebaliknya, bila ditolak maka isi oko&rsquo;mama&rsquo; cukup disentuh saja.</p>\r\n', '2024-05-22 11:21:34', '2024-07-18 04:06:44'),
(7, '3895504885.jpg', 'Pemberian  Oko Mama', 'TTU', '<p>Makan sirih pinang jamuan tamu TTU tidak jauh berbeda juga dengan daerah TTS atau orang Soe karena setiap tamu yang datang bertamu atau berkunjung kerumah kita hukum wajibnya harus menerimanya denga menyuguhkan sirih pinang terlebih dahulu jadi bahwa tuan rumah menerima dengan resmi tamu yang datang bertamu ke rumah.. Artinya kita mengiklaskan orang yang bertamu boleh masuk ke dalam rumah dan boleh menyampaikan apa yang menjadi maksud kedatangannya tidak berbeda dengan orag TTS.</p>\r\n', '2024-05-24 06:32:07', '2024-05-27 07:42:30'),
(12, '2536093335.jpg', 'Arti Isi Dalam Oko Mama', 'TTS', '<p>arti isi dalam oko mama</p>\r\n\r\n<p>1. manus</p>\r\n\r\n<p><em><strong>Manus</strong> </em>: sirih yang melambangkan laki-laki</p>\r\n\r\n<p>2. Pinang</p>\r\n\r\n<p><em><strong>Puah</strong> </em>: pinang sebagai simbol dari perempuan</p>\r\n\r\n<p>3. Kapur</p>\r\n\r\n<p><em><strong>Ao</strong> </em>: kapur sebagai simbol kehangatan hubungan keluarga</p>\r\n\r\n<p>4. Tembako</p>\r\n\r\n<p><strong><em>Asbot</em></strong> : Tembakau Sebagai simbol pembawa hidup bagi keluarga dalam berinteraksi.</p>\r\n\r\n<p>5.&nbsp; Uang</p>\r\n\r\n<p><em><strong>Loit</strong></em> :Uang dalam bahasa Timor adalah <strong>Loit</strong> (jika ada maksud hati yang di sampaikan kepada tuan rumah maka <em>Oko Mama</em> berisikan uang berapapun jumblahnya itu mengungkapkan isi hati dari tamu tersebut kepada tuan rumah maka makna uang adalah symbol mohon permisi atau minta ijin.).</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2024-07-04 16:48:55', '2024-07-26 16:26:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakaian_adat`
--

CREATE TABLE `pakaian_adat` (
  `id_pakaian_adat` int(11) NOT NULL,
  `image` varchar(75) NOT NULL,
  `judul_pakaian_adat` varchar(75) DEFAULT NULL,
  `daerah` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pakaian_adat`
--

INSERT INTO `pakaian_adat` (`id_pakaian_adat`, `image`, `judul_pakaian_adat`, `daerah`, `deskripsi`, `created_at`, `updated_at`) VALUES
(4, '2117146703.jpg', 'Pilu (sebagai mahkota)', 'TTS', '<p><strong>Pilu (sebagai mahkota)</strong></p>\r\n\r\n<p>Pada bagian kepala ada pilu sebagai mahkota. Ciri khasnya mahkota laki-laki ini yaitu memiliki satu tanduk di depan dan ada juga yang memiliki tiga tanduk. Ada beberapa jenis pilu yaitu rancangan pilu dari kain selimut kecil bermotif, seperti alas meja buatan pabrikan, pilu dengan motif dari manik-manik aneka warna dan pilu dari selendang tenunan berukuran kecil. Merakit pilu dari kain pabrikan dengan cara melipat dan menjahit kain sedemikian rupa sehingga melingkar sesuai ukuran kepala dan memiliki tiga tanduk menonjol. Ada juga pilu yang hanya satu tanduk berbentuk segitiga di bagian depan. Pilu dengan manik-manik biasanya para pengrajin yang membuatnya sesuai ukuran kepala manusia dan memiliki tiga tanduk juga. Lebarnya di kisaran 5 centimeter dan berhiaskan rangkaian manik-manik yang membentuk suatu motif.</p>\r\n', '2024-05-22 11:53:56', '2024-05-27 06:26:41'),
(5, '3540987425.jpg', 'Alu (saku/tas)', 'TTS', '<p>Salah satu perlengkapan wajib lainnya yaitu alu (saku/tas). Alu seperti tas salempang dengan ukuran 20x20 centimeter. Tali alu cukup panjang sehingga saat memakainya bagian tas tergantung dekat pinggang. Ada dua jenis alu yaitu aul inuh dan aul noni. Aul inuh artinya tas manik-manik. Tali dan bagian tas berhiaskan manik-manik yang membentuk sebuah motif. Aul noni artinya tas uang. Bagian tali hingga tas berhiaskan rangkaian uang logam perak atau uang kuningan. Di sisi tas biasanya tergantung dua wadah anyaman berbentuk tabung pendek yaitu ok tuke sebagai tempat menaruh sirih dan pinang. Bagian luar ok tuke berhiaskan manik-manik bermotif atau potongan kain tenunan.</p>\r\n', '2024-05-22 12:11:51', '2024-05-24 06:45:08'),
(6, '188410881.jpg', 'Mau (selimut tenunan)', 'TTS', '<p>Mau&#39; merupakan selimut tenunan berupa lembaran kain dengan kedua ujungnya berjuntai benang-benang beberapa centimeter. Mau&#39; yang besar memiliki panjang 2 meter dan lebar 1 meter. Ada mau&#39; yang ukurannya sedikit lebih kecil dari 2x1 meter. Mau&#39; merupakan selimut untuk pakaian laki-laki pada bagian bawah.</p>\r\n', '2024-05-24 06:10:10', '2024-05-24 06:11:29'),
(7, '2308614135.jpg', 'Piul saluf (ikat pinggang/sabuk)', 'TTS', '<p>Piul saluf yakni ikat pinggang tenunan atau sabuk yang panjangnya mencapai 180 cm hingga 200 cm. Lebar piul saluf di kisaran 10-15 centimeter. Ikat pinggang tenunan ini kebanyakan memiliki warna merah, kuning hijau, dan biru .Selain itu hanya memiliki motif tenunan di bagian ujungnya. Piul saluf juga memiliki juntaian rumbai-rumbai benang di ujungnya. Ujung-ujung benang berhiaskan manik-manik aneka warna. Piul saluf berfungsi sebagai ikat pinggang untuk menguatkan mau&#39; atau selimut.</p>\r\n', '2024-05-24 06:12:38', '2024-05-24 06:12:38'),
(8, '3774085771.jpg', 'Fut muti (ikat pinggang putih)', 'TTS', '<p>Fut muti artinya ikat pinggang putih. Fut muti hanya berwarna putih dan tidak ada warna lain. Tidak memiliki motif dan hanya polos. Kedua ujung fut muti berupa pilinan-pilinan benang yang menjadi rumbai. Panjang fut muti mencapai 2 meter dan lebar 1 meter. Fungsinya sebagai ikat pinggang selain piul saluf.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2024-05-24 06:13:25', '2024-05-24 06:13:25'),
(10, '2086302250.jpg', 'Aksesoris Wanita Amanatun', 'TTS', '<p><strong>AKSESORIS WANITA</strong></p>\r\n\r\n<p><strong>Swapraja Amanatun<em> Atoni van </em>Timor</strong><br />\r\n1. Sarung (<em><strong>Tais</strong>)</em>;&nbsp;<br />\r\n<strong><em>Tais</em></strong> yang dipilih adalah &quot;Tais Mabuna&quot;, yakni sarung tenun songket (motif timbul) yang memiliki tingkat kerumitan dalam pembuatan motif dengan corak yang indah dan dikerjakan dalam rentang waktu yang cukup lama. Tais paling kiri dan paling kanan berasal dari Ayotupas dan Kokbaun di Amanatun Utara. Pola pada tais ini adalah &quot;Atoni Naek&quot; dan &quot;Tekke&quot; - Atoni Naek adalah simbol leluhur yang memberkati, Tekke dipandang sebagai &quot;Besimnasi&quot; atau buaya yaitu totem penyembahan kepercayaan orang asli TTS (Halaika - Atoni Pah Metto). Tais yang di tengah berasla dari Nunkolo - Amanatun Selatan, dengan motif &quot;buna makaif&quot;, yaitu pola hias simetris yang saling berkait, simbol keeratan dalam filosofi kekerabatan &quot;nekaf mese ansaof mese&quot; : satu hati satu jiwa.<br />\r\n2. <strong><em>Pet No&#39; </em></strong>(mahkota kepala wanita);<br />\r\n&nbsp;simbol keagungan seorang &quot;<strong><em>Fetnai</em></strong>&quot; atau putri bangsawan. <strong><em>Pet No&#39;</em></strong> adalah mahkota bertingkat yang melambangkan status sosial, sehingga sejatinya tidak dipakai oleh sembarang orang (umumnya bulan sabit dan sisir perak).<br />\r\n3.<strong><em> Pous Noni </em></strong>(Tusuk Konde Perak);<br />\r\n&nbsp;terbuat dari perak, ujung yang lain tajam untuk menguatkan rambut, ujung lainnya ditempelkan koin perak; semakin banyak koin perak, semakin tinggi status sosial.<br />\r\n4. <strong><em>Inuh Manna </em></strong>(kalung manik-manik dan kalung perak);<br />\r\n&nbsp;simbol kemakmuran. Orang Timor menempatkan kalung manik-manik sebagai sesuatu bernilai ekonomis tinggi (biasanya dibandinhkan dengan nilai setara hewan sedang), sehingga semakin banyak kalung maka semakin menunjukkan stastus seseorang secara materi. Kalung perak dengan mata uang atau kepingan perak dengan simbol tertentu sebagai penunjuk kekuatan diri, semakin besar dan menutupi dada semakin disegani.<br />\r\n5. <strong><em>Faol Noni</em></strong>, anting-anting perak.<br />\r\n6.<strong><em> </em></strong><strong><em>Fut Noni / Passu Bi Fe</em></strong>, ikat pinggang dari perak.<br />\r\n7. <strong><em>Nit Noni / Nit Sao </em></strong>(Gelang perak);<br />\r\n&nbsp;secara umum gelang dipakai di pergelangan tangan, dan secara khusus untuk kalangan Fetnai ada juga yang dipakai di lengan atas. Gelang bagi wanita Timor biasanya berbentuk ular melilit (sao), yakni filosofi bahwa seorang wanita harus lincah dalam menanggapi kehidupan.<br />\r\n8. <strong><em>Kabi / Oko Mama </em></strong>(Tempat Sirih)<br />\r\nAda tiga jenis berdasarkan bahan : 1) Kaib Noni, terbuat dari perak untuk menyuguh tamu agung 2) Kaib inuh, terbuat dari anyaman daun lontar yang dihiasi penuh manik-manik berwarna untuk menyuguh tamu umum 3) Kaib Tenu, terbuat dari anyaman daun lontar yang dihiasi dengan potongan kain tenun (umumnya jenis buna) untuk menyambut tamu umum.</p>\r\n', '2024-05-24 07:40:56', '2024-07-27 01:04:27'),
(16, '4007377637.jpg', 'Busana Adat Soe', 'TTS', '<p>Busana Adat Soe dengan Motif Nunkolo</p>\r\n\r\n<p>agian atas Baju Adat Soe biasanya terdiri dari kebaya yang indah dengan hiasan bordir yang rumit. Bordiran ini tidak hanya memperindah baju, tetapi juga mencerminkan kerajinan tangan dan rasa cinta terhadap warisan budaya. Setiap benang yang dijahitkan dengan hati-hati pada baju ini menceritakan kisah tentang keindahan alam, mitos, atau simbolisme yang khas bagi masyarakat Timor Tengah Selatan.</p>\r\n\r\n<p>Tidak ketinggalan, aksesori juga menjadi bagian tak terpisahkan dari Baju Adat Soe. Seringkali, baju adat ini dilengkapi dengan selendang, kalung, gelang, dan hiasan kepala yang memberikan sentuhan akhir yang sempurna pada penampilan keseluruhan. Aksesori tersebut terbuat dari bahan-bahan alami dan juga sering kali dihias dengan sentuhan seni dan budaya lokal.</p>\r\n\r\n<p>Baju Adat Soe tidak hanya pakaian seremonial, tetapi juga memiliki makna mendalam dalam kehidupan masyarakat Timor Tengah Selatan. Pemakaian baju adat ini sering terkait dengan momen-momen penting seperti upacara adat, pernikahan, pertemuan masyarakat, dan peristiwa budaya lainnya. Ini adalah simbol penghargaan terhadap leluhur, rasa bangga terhadap identitas etnis, dan kebanggaan terhadap warisan budaya yang tak ternilai.</p>\r\n', '2024-07-27 00:48:36', '2024-07-27 01:03:05'),
(17, '91400585.jpg', 'Busana Adat Amarasi', 'TTS', '<p>Busana Adat Dari Amarasi</p>\r\n\r\n<p>Baju amarasi untuk pria berupa kain tenun yang dibentuk selimut ikat, baju budo, kalung habas berbandung gong, muti salak, gelang timot, dan hiasan ikat kepala.</p>\r\n\r\n<p>Untuk wanitanya menggunakan sarung tenun untuk bawahan, kebaya, selendang penutup dada, muti salak, hiasan kepala tusuk konde, kalung kepala 3 sisir emas, dan gelang nalar.<br />\r\n&nbsp;</p>\r\n', '2024-07-27 00:52:43', '2024-07-27 01:02:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perkawinan`
--

CREATE TABLE `perkawinan` (
  `id_perkawinan` int(11) NOT NULL,
  `image` varchar(75) NOT NULL,
  `judul_perkawinan` varchar(75) DEFAULT NULL,
  `daerah` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `perkawinan`
--

INSERT INTO `perkawinan` (`id_perkawinan`, `image`, `judul_perkawinan`, `daerah`, `deskripsi`, `created_at`, `updated_at`) VALUES
(3, '3946024288.jpg', 'Tahap pembicaraan', 'TTS', '<p>1. Utusan</p>\r\n\r\n<p>Merupakan orang yang di tunjuk sebagai juru bicara yang pandai berbicara dengan uturan adat di daerah tersebut.</p>\r\n\r\n<p>2. Perantara atau penghubung</p>\r\n\r\n<p>Menyampaikan maksud dan tujuan dari pihak yang meminang gadis tersebut kepada orang tua gadis dengan membawa tempat sirih pinang ke rumah si gadis tujuannya untuk meminta keterangan langsung ke pihak orang tua gadis.</p>\r\n', '2024-05-22 11:57:40', '2024-05-24 06:51:59'),
(4, '3939961817.jpg', 'Tahap kesaksian', 'TTS', '<p>Tahap ini merupakan peneguhan dan pembicaraan yang akan dilakukan oleh beberapa pihak melalu acara-acara sebagai berikut:</p>\r\n\r\n<p>1. Meminang</p>\r\n\r\n<p>Melanjutkan pembicaraan yang telah dibicarakan sebelumnya orang tua dari pihak laki-laki secara terbuka bahwa mereka berniat menikahkan anak laki-laki mereka dengan anak perempuan tersebut.</p>\r\n\r\n<p>2. Tanda atau ikatan</p>\r\n\r\n<p>Yaitu laki-laki memberikan tanda berupa barang seperti kain, cincin, kalung dan sebaliknya perempuan juga memberikan suatu tanda untuk laki-laki berupa kain atau selendang dengan maksud bahwa keduannya telah bertunangan.</p>\r\n\r\n<p>3. Penghargaan</p>\r\n\r\n<p>Orang tua dari kedua belah pihak juga saling memberikan penghargaan berupa kain selendang atau semacamnnya ini merupakan pengikat hubungan keluarga dari mempelai laki-laki dan perempuan.</p>\r\n\r\n<p>4. Perencanaan pernikahan</p>\r\n\r\n<p>Kedua rumpun keluarga melakukan musyawara berama untuk menentukan jadwal pernikahan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2024-05-24 07:02:34', '2024-05-24 07:02:34'),
(5, '4012719721.jpg', 'Tahapan dalam acara pernikahan', 'TTU', '<p>Dalam tradisi dan budaya timor tengah utara ketika seseorang anak laki-laki dan seorang anak perempuan sudah memasuki masa pacaran dan waktunya mereka harus memasui masa pertunangan maka mereka menyampaikan kepada kedua orang tua belah pihak baik itu orang tua dari perempuan ataupun orang tua laki-lakidan ketika mereka menyampaikan maksud itu maka tahao pertama adalah orang tua laki-laki bersama-sama bertemu ke rumah mempelai perepuan atau keluaraga perempuan dan disanalah mereka boleh duduk dan makan sirih pinang bersama artinya bahwa hubungan jalinan cinta antara anak muda baik itu laki-laki dan perempuan itu tidak hanya diketahui oleh mereka berdua atau secara sembunyi-sembunyi seperti orang bilang tetapi sudah diketahui oleh umum.teristimewa kedua belah pihak orang tua baik itu orang tua laki-laki mau pun orang tua&nbsp; perempuan simbol ini dinyatakan dalam tataran budaya timor tengah utara yaitu makan sirih pinang bersama diantara&nbsp; kedua keluarga setelah itu tahapan selanjutnya mereka menentukan waktu untuk ada dalam peminangan. baik itu budaya timor engah selatan maupun budaya timor tengah utara.</p>\r\n\r\n<p>Tahapan yang selanjutnya yaitu masuk dalam tahap peminangan.&nbsp;</p>\r\n\r\n<p>setelah kesepakan yang di buat bersama itu mereka duduk bersama dengan makan sirih pinang dan menentukan tanggal untuk peminangan. orang tua laki-laki bersama dengan mempelai laki-laki menyerahkan sejumblah permintaan yang diminta oleh keluaraga perempuan dan setelah itu mereka melanjutkan lagi dengan tahapan selanjutnya yaitu pernikaan. mereka juga sepakat bahwa setelah nikah gereja kit menyerahkan adat dan adat itu adalah barang-barang bawaan yang haus diserahkan oleh keluarga laki-lakiterhadap keluarga perempuan sebagai bukti bahwa anak mereka itu sudah resmi tidak hanya resmi secara gereja dan pemerintah teteapi juga secara adat.&nbsp;&nbsp;</p>\r\n\r\n<p>Setelah mereka percakapkan mereka sepakat untuk melanjutkannya dan jugasetelah menerima bingkisan adat itu tentunya ditandai dengan makan sirih pinang. setiap kegiatan yang dilaksanakan dalam semua episode itu harus ditandai dengan suguhan sirih pinang karena pada prinsipnya suguhan sirih pianang itu merupakan media pemersatu, penghubung, dan juga meerupakan tanda untuk dimulainya sebuah percakapan dan diakhiri dengan sebuah percakapan.</p>\r\n', '2024-07-18 04:02:33', '2024-07-18 04:03:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_active` int(11) DEFAULT 2,
  `en_user` varchar(75) DEFAULT NULL,
  `token` char(6) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT 'default.svg',
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `id_role`, `id_active`, `en_user`, `token`, `name`, `image`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, 'develoepr', 'default.svg', 'developer@gmail.com', '$2y$10$//KMATh3ibPoI3nHFp7x/u7vnAbo2WyUgmI4x0CVVrH8ajFhMvbjG', '2024-05-19 13:24:52', '2024-05-19 13:24:52'),
(2, 2, 1, NULL, NULL, 'admin', '3709527301.jpg', 'admin@gmail.com', '$2y$10$//KMATh3ibPoI3nHFp7x/u7vnAbo2WyUgmI4x0CVVrH8ajFhMvbjG', '2024-05-19 13:24:52', '2024-05-19 13:24:52');

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
  `id_access_menu` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id_access_menu`, `id_role`, `id_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_sub_menu`
--

CREATE TABLE `user_access_sub_menu` (
  `id_access_sub_menu` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_sub_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(10, 2, 7),
(11, 2, 8),
(12, 2, 9),
(13, 1, 10),
(14, 2, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id_menu` int(11) NOT NULL,
  `menu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `id_role` int(11) NOT NULL,
  `role` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `id_status` int(11) NOT NULL,
  `status` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `id_sub_menu` int(11) NOT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `id_active` int(11) DEFAULT 2,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `id_video` int(11) NOT NULL,
  `id_tipe_fitur` int(11) NOT NULL DEFAULT 0,
  `thumbnail` varchar(50) DEFAULT NULL,
  `link_video` varchar(100) DEFAULT NULL,
  `nama_video` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `penonton` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `id_tipe_fitur`, `thumbnail`, `link_video`, `nama_video`, `deskripsi`, `author`, `penonton`, `created_at`, `updated_at`) VALUES
(1, 1, '2361855540.jpg', 'https://www.youtube.com/embed/M16Tylmf5dE', 'Penjelasan Tradisi Makan sirih pinang Suku Dawan Dalam Acara Jamuan Tamu dan Perkawina', '', 'develoepr', 9, '2024-05-31 12:56:36', '2024-07-26 19:24:35'),
(2, 1, '1746626668.jpg', 'https://www.youtube.com/embed/UXmd8nJT1RI', 'Penyambutan legio maria di daerah kapan pulau timor dengan natoni adat', '<p>penyambutan tamu</p>\r\n', 'develoepr', 8, '2024-05-31 12:59:42', '2024-07-26 18:48:11'),
(3, 1, '2718837144.jpg', 'https://www.youtube.com/embed/XXPn_CjNFw8', 'Penjelasan Singkat Jamuan Tamu Di Pulau Timor', '', 'admin', 5, '2024-06-12 11:53:55', '2024-07-26 16:07:26'),
(4, 3, '4012719721.jpg', 'https://www.youtube.com/embed/WS3SeqflVIc', 'Perkawinan Suku Timor Tengah Selatan dan Timur Tengah Utara', '', 'admin', 2, '2024-07-18 03:25:57', '2024-07-27 13:42:57');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jamuan_tamu`
--
ALTER TABLE `jamuan_tamu`
  MODIFY `id_jamuan_tamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pakaian_adat`
--
ALTER TABLE `pakaian_adat`
  MODIFY `id_pakaian_adat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `perkawinan`
--
ALTER TABLE `perkawinan`
  MODIFY `id_perkawinan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id_access_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  MODIFY `id_access_sub_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id_sub_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
