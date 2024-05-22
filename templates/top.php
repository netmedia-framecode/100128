<!DOCTYPE html>

<html lang="en">

<head>
  <?php require_once("sections/head.php"); ?>
</head>

<body id="body" class="tt-transition tt-boxed tt-smooth-scroll tt-magic-cursor">

  <main id="body-inner">

    <div id="page-transition">
      <div class="ptr-overlay"></div>
      <div class="ptr-preloader">
        <div class="ptr-prel-content">
          <img src="<?= $baseURL ?>assets/img/logo-light.png" class="ptr-prel-image tt-logo-light" alt="Logo">
        </div>
      </div>
    </div>
    <div id="magic-cursor">
      <div id="ball"></div>
    </div>
    <div id="scroll-container">
      <?php require_once("sections/nav.php"); ?>
      <div id="content-wrap">