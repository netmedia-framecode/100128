<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$jamuan_tamu = "SELECT * FROM jamuan_tamu ORDER BY id_jamuan_tamu DESC";
$views_jamuan_tamu = mysqli_query($conn, $jamuan_tamu);
if (isset($_POST["add_jamuan_tamu"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (jamuan_tamu($conn, $validated_post, $action = 'insert', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Data jamuan tamu baru berhasil ditambahkan.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: jamuan-tamu");
    exit();
  }
}
if (isset($_POST["edit_jamuan_tamu"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (jamuan_tamu($conn, $validated_post, $action = 'update', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Data jamuan tamu " . $_POST['judul_jamuanOld'] . " berhasil diubah.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: jamuan-tamu");
    exit();
  }
}
if (isset($_POST["delete_jamuan_tamu"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (jamuan_tamu($conn, $validated_post, $action = 'delete', $deskripsi = null) > 0) {
    $message = "Data jamuan tamu " . $_POST['judul_jamuan'] . " berhasil dihapus.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: jamuan-tamu");
    exit();
  }
}
