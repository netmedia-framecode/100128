<?php
if (isset($_SESSION["project_dokumen_digital"]["users"])) {
  header("Location: ../views/");
  exit;
}
