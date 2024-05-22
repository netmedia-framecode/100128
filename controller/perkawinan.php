<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$perkawinan = "SELECT * FROM perkawinan ORDER BY id_perkawinan DESC";
$views_perkawinan = mysqli_query($conn, $perkawinan);
if (isset($_POST["add_perkawinan"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (perkawinan($conn, $validated_post, $action = 'insert', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Data perkawinan baru berhasil ditambahkan.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: perkawinan");
    exit();
  }
}
if (isset($_POST["edit_perkawinan"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (perkawinan($conn, $validated_post, $action = 'update', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Data perkawinan " . $_POST['judul_perkawinanOld'] . " berhasil diubah.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: perkawinan");
    exit();
  }
}
if (isset($_POST["delete_perkawinan"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (perkawinan($conn, $validated_post, $action = 'delete', $deskripsi = null) > 0) {
    $message = "Data perkawinan " . $_POST['judul_perkawinan'] . " berhasil dihapus.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: perkawinan");
    exit();
  }
}
