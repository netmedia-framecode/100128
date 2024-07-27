<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$jamuan_tamu = "SELECT * FROM jamuan_tamu ORDER BY id_jamuan_tamu DESC";
$views_jamuan_tamu = mysqli_query($conn, $jamuan_tamu);
$perkawinan = "SELECT * FROM perkawinan ORDER BY id_perkawinan DESC";
$views_perkawinan = mysqli_query($conn, $perkawinan);
$pakaian_adat = "SELECT * FROM pakaian_adat ORDER BY id_pakaian_adat DESC";
$views_pakaian_adat = mysqli_query($conn, $pakaian_adat);