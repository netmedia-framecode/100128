<?php if (!isset($_SESSION)) {
  session_start();
}
require_once("../controller/auth.php");
if (isset($_SESSION["project_dokumen_digital"])) {
  unset($_SESSION["project_dokumen_digital"]);
  header("Location: ./");
  exit();
}
