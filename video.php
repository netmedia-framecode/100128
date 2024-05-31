<?php require_once("controller/visitor.php");
$_SESSION["project_dokumen_digital"]["name_page"] = "Jamuan Tamu";
require_once("templates/top.php");
?>

<div id="page-content">

  <div class="tt-section no-padding">
    <div class="tt-section-inner tt-wrap max-width-1400">
      <div class="portfolio-interactive pi-full pi-inline">
        <div class="pi-inner">
          <div class="portfolio-interactive-ghost">Video </div>
          <div class="portfolio-interactive-list">
            <?php foreach ($view_video as $data) {
              $num_char = 15;
              $text = trim($data['nama_video']);
              $text = preg_replace('#</?strong.*?>#is', '', $text);
              $lentext = strlen($text);
              if ($lentext > $num_char) {
                $nama_video = substr($text, 0, $num_char) . '...';
              } else if ($lentext <= $num_char) {
                $nama_video = substr($text, 0, $num_char);
              } ?>
              <div class="portfolio-interactive-item">
                <figure class="pi-item-image">
                  <div class="pi-item-image-inner">
                    <img src="assets/img/thumbnail/<?= $data['thumbnail'] ?>" alt="image">
                  </div>
                </figure>
                <a href="video-detail?post=<?= $data['id_video'] ?>" class="pi-item-title-link skew-on-scroll">
                  <div class="pi-item-title-link-inner">
                    <h2 class="pi-item-title"><?= $nama_video ?></h2>
                    <div class="pi-item-hover-title"><?= $nama_video ?></div>
                  </div>
                  <div class="pi-item-category-wrap">
                    <div class="pi-item-category">
                      <?php if ($data['id_tipe_fitur'] == 1) {
                        echo "Jamuan Tamu";
                      } else if ($data['id_tipe_fitur'] == 2) {
                        echo "Pakaian Adat";
                      } else if ($data['id_tipe_fitur'] == 3) {
                        echo "Perkawinan";
                      }  ?></div>
                  </div>
                </a>
              </div>
            <?php } ?>
          </div>
        </div>
      </div>
    </div>
  </div>

  <?php require_once("templates/bottom.php"); ?>