<?php

$messageTypes = ["success", "info", "warning", "danger", "dark"];

if (!isset($_SESSION["project_dokumen_digital"]["users"])) {
  if (isset($_SESSION["project_dokumen_digital"]["time_message"]) && (time() - $_SESSION["project_dokumen_digital"]["time_message"]) > 2) {
    foreach ($messageTypes as $type) {
      if (isset($_SESSION["project_dokumen_digital"]["message_$type"])) {
        unset($_SESSION["project_dokumen_digital"]["message_$type"]);
      }
    }
    unset($_SESSION["project_dokumen_digital"]["time_message"]);
  }
} else if (isset($_SESSION["project_dokumen_digital"]["users"])) {
  if (isset($_SESSION["project_dokumen_digital"]["users"]["time_message"]) && (time() - $_SESSION["project_dokumen_digital"]["users"]["time_message"]) > 2) {
    foreach ($messageTypes as $type) {
      if (isset($_SESSION["project_dokumen_digital"]["users"]["message_$type"])) {
        unset($_SESSION["project_dokumen_digital"]["users"]["message_$type"]);
      }
    }
    unset($_SESSION["project_dokumen_digital"]["users"]["time_message"]);
  }
}
