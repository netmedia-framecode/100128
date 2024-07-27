<?php

$id_user = valid($conn, $_SESSION["project_dokumen_digital"]["users"]["id"]);
$id_role = valid($conn, $_SESSION["project_dokumen_digital"]["users"]["id_role"]);
$role = valid($conn, $_SESSION["project_dokumen_digital"]["users"]["role"]);
$email = valid($conn, $_SESSION["project_dokumen_digital"]["users"]["email"]);
$name = valid($conn, $_SESSION["project_dokumen_digital"]["users"]["name"]);
$image = valid($conn, $_SESSION["project_dokumen_digital"]["users"]["image"]);
