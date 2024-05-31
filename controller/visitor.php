<?php

require_once("config/Base.php");
require_once("config/Alert.php");

$jamuan_tamu_beranda = "SELECT * FROM jamuan_tamu ORDER BY id_jamuan_tamu DESC LIMIT 1";
$view_jamuan_tamu_beranda = mysqli_query($conn, $jamuan_tamu_beranda);

$perkawinan_beranda = "SELECT * FROM perkawinan ORDER BY id_perkawinan DESC LIMIT 1";
$view_perkawinan_beranda = mysqli_query($conn, $perkawinan_beranda);

$pakaian_adat_beranda = "SELECT * FROM pakaian_adat ORDER BY id_pakaian_adat DESC LIMIT 1";
$view_pakaian_adat_beranda = mysqli_query($conn, $pakaian_adat_beranda);

$semua_dokumen = "(SELECT 'jamuan-tamu' as source, 'Jamuan Tamu' as title, id_jamuan_tamu as id, image, judul_jamuan as judul, daerah, deskripsi
FROM jamuan_tamu
ORDER BY id_jamuan_tamu DESC
LIMIT 3)

UNION ALL

(SELECT 'perkawinan' as source, 'Perkawinan' as title, id_perkawinan as id, image, judul_perkawinan as judul, daerah, deskripsi
FROM perkawinan
ORDER BY id_perkawinan DESC
LIMIT 3)

UNION ALL

(SELECT 'pakaian-adat' as source, 'Pakaian Adat' as title, id_pakaian_adat as id, image, judul_pakaian_adat as judul, daerah, deskripsi
FROM pakaian_adat
ORDER BY id_pakaian_adat DESC
LIMIT 3);";
$view_semua_dokumen = mysqli_query($conn, $semua_dokumen);

$limit_1 = 50;
$page_1 = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset_1 = ($page_1 - 1) * $limit_1;
$total_data_query_1 = "SELECT COUNT(*) FROM jamuan_tamu";
$total_data_result_1 = mysqli_query($conn, $total_data_query_1);
$total_data_1 = mysqli_fetch_array($total_data_result_1)[0];
$total_pages_1 = ceil($total_data_1 / $limit_1);
$jamuan_tamu = "SELECT * FROM jamuan_tamu ORDER BY id_jamuan_tamu DESC LIMIT $limit_1 OFFSET $offset_1";
$view_jamuan_tamu = mysqli_query($conn, $jamuan_tamu);

$jamuan_tamu_ttu = "SELECT * FROM jamuan_tamu WHERE daerah='TTU'";
$view_jamuan_tamu_ttu = mysqli_query($conn, $jamuan_tamu_ttu);

$jamuan_tamu_tts = "SELECT * FROM jamuan_tamu WHERE daerah='TTS'";
$view_jamuan_tamu_tts = mysqli_query($conn, $jamuan_tamu_tts);

$limit_2 = 50;
$page_2 = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset_2 = ($page_2 - 1) * $limit_2;
$total_data_query_2 = "SELECT COUNT(*) FROM perkawinan";
$total_data_result_2 = mysqli_query($conn, $total_data_query_2);
$total_data_2 = mysqli_fetch_array($total_data_result_2)[0];
$total_pages_2 = ceil($total_data_2 / $limit_2);
$perkawinan = "SELECT * FROM perkawinan ORDER BY id_perkawinan DESC LIMIT $limit_2 OFFSET $offset_2";
$view_perkawinan = mysqli_query($conn, $perkawinan);

$perkawinan_ttu = "SELECT * FROM perkawinan WHERE daerah='TTU'";
$view_perkawinan_ttu = mysqli_query($conn, $perkawinan_ttu);

$perkawinan_tts = "SELECT * FROM perkawinan WHERE daerah='TTS'";
$view_perkawinan_tts = mysqli_query($conn, $perkawinan_tts);

$limit_3 = 50;
$page_3 = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset_3 = ($page_3 - 1) * $limit_3;
$total_data_query_3 = "SELECT COUNT(*) FROM pakaian_adat";
$total_data_result_3 = mysqli_query($conn, $total_data_query_3);
$total_data_3 = mysqli_fetch_array($total_data_result_3)[0];
$total_pages_3 = ceil($total_data_3 / $limit_3);
$pakaian_adat = "SELECT * FROM pakaian_adat ORDER BY id_pakaian_adat DESC LIMIT $limit_3 OFFSET $offset_3";
$view_pakaian_adat = mysqli_query($conn, $pakaian_adat);

$pakaian_adat_ttu = "SELECT * FROM pakaian_adat WHERE daerah='TTU'";
$view_pakaian_adat_ttu = mysqli_query($conn, $pakaian_adat_ttu);

$pakaian_adat_tts = "SELECT * FROM pakaian_adat WHERE daerah='TTS'";
$view_pakaian_adat_tts = mysqli_query($conn, $pakaian_adat_tts);

$limit_all = 50;
$page_all = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset_all = ($page_all - 1) * $limit_all;
$total_data_query_all = "SELECT COUNT(*) AS total FROM (
        (SELECT id_jamuan_tamu as id FROM jamuan_tamu)
        UNION ALL
        (SELECT id_perkawinan as id FROM perkawinan)
        UNION ALL
        (SELECT id_pakaian_adat as id FROM pakaian_adat)
    ) AS combined";
$total_data_result_all = mysqli_query($conn, $total_data_query_all);
$total_data_all = mysqli_fetch_array($total_data_result_all)['total'];
$total_pages_all = ceil($total_data_all / $limit_all);
$semua_dokumen = "(SELECT 'jamuan-tamu' as source, 'Jamuan Tamu' as title,'jamuantamu' as tag, id_jamuan_tamu as id, image, judul_jamuan as judul, daerah, deskripsi
    FROM jamuan_tamu
    ORDER BY id_jamuan_tamu DESC)
    UNION ALL
    (SELECT 'perkawinan' as source, 'Perkawinan' as title, 'perkawinan' as tag, id_perkawinan as id, image, judul_perkawinan as judul, daerah, deskripsi
    FROM perkawinan
    ORDER BY id_perkawinan DESC)
    UNION ALL
    (SELECT 'pakaian-adat' as source, 'Pakaian Adat' as title, 'pakaianadat' as tag, id_pakaian_adat as id, image, judul_pakaian_adat as judul, daerah, deskripsi
    FROM pakaian_adat
    ORDER BY id_pakaian_adat DESC)
    LIMIT $limit_all OFFSET $offset_all";
$view_semua_dokumen = mysqli_query($conn, $semua_dokumen);

$video = "SELECT * FROM video ORDER BY id_video DESC LIMIT 50";
$view_video = mysqli_query($conn, $video);
