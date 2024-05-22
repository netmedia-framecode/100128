<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$pakaian_adat = "SELECT * FROM pakaian_adat ORDER BY id_pakaian_adat DESC";
$views_pakaian_adat = mysqli_query($conn, $pakaian_adat);
if (isset($_POST["add_pakaian_adat"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (pakaian_adat($conn, $validated_post, $action = 'insert', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Data pakaian adat baru berhasil ditambahkan.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: pakaian-adat");
    exit();
  }
}
if (isset($_POST["edit_pakaian_adat"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (pakaian_adat($conn, $validated_post, $action = 'update', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Data pakaian adat " . $_POST['judul_pakaian_adatOld'] . " berhasil diubah.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: pakaian-adat");
    exit();
  }
}
if (isset($_POST["delete_pakaian_adat"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (pakaian_adat($conn, $validated_post, $action = 'delete', $deskripsi = null) > 0) {
    $message = "Data pakaian adat " . $_POST['judul_pakaian_adat'] . " berhasil dihapus.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: pakaian-adat");
    exit();
  }
}
