<?php require_once("controller/visitor.php");
$_SESSION["project_dokumen_digital"]["name_page"] = "Jamuan Tamu";
require_once("templates/top.php");
if (!isset($_GET['post'])) {
  header("Location: video");
  exit();
} else {
  $id_video = valid($conn, $_GET['post']);
  $video = "SELECT * FROM video WHERE id_video='$id_video'";
  $view_video = mysqli_query($conn, $video);
  $data = mysqli_fetch_assoc($view_video);
  $sql = "UPDATE video SET penonton=penonton+1 WHERE id_video='$id_video'";
  mysqli_query($conn, $sql);
?>

  <div id="page-header" class="ph-full ph-bg-image ph-image-cover-3 ph-content-parallax">
    <div class="page-header-inner tt-wrap">
      <?php
      $link_video = $data['link_video'];
      $autoplay_url = (strpos($link_video, '?') !== false) ? $link_video . '&autoplay=1' : $link_video . '?autoplay=1';
      ?>
      <iframe id="videoIframe" class="ph-video" style="width: 100%;" height="450" src="<?= $autoplay_url ?>" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
      <script src="https://www.youtube.com/iframe_api"></script>
    </div>
    <div class="tt-scroll-down">
      <a href="#page-content" class="tt-sd-inner ph-appear" data-offset="0">
        <div class="tt-sd-arrow">
          <div class="tt-sd-arrow-inner"></div>
        </div>
        <div class="tt-sd-text">Scroll</div>
      </a>
    </div>
  </div>

  <div id="page-content">
    <div class="tt-section padding-top-xlg-180 padding-left-sm-3-p padding-right-sm-3-p">
      <div class="tt-section-inner tt-wrap">
        <div class="tt-row">
          <div class="tt-col-lg-4 padding-right-md-5-p">
            <div class="tt-heading tt-heading-xsmm margin-bottom-30 anim-fadeinup">
              <h2 class="tt-heading-title"><?= $data['nama_video'] ?></h2>
            </div>
          </div>
          <div class="tt-col-lg-8">
            <div class="anim-fadeinup">
              <?= $data['deskripsi'] ?>
            </div>
            <div class="project-info-list anim-fadeinup margin-top-40">
              <ul>
                <li>
                  <div class="pi-list-heading">Kategori</div>
                  <div class="pi-list-cont">
                    <?php if ($data['id_tipe_fitur'] == 1) {
                      echo "Jamuan Tamu";
                    } else if ($data['id_tipe_fitur'] == 2) {
                      echo "Pakaian Adat";
                    } else if ($data['id_tipe_fitur'] == 3) {
                      echo "Perkawinan";
                    }  ?>
                  </div>
                </li>
                <li>
                  <div class="pi-list-heading">Diupload oleh</div>
                  <div class="pi-list-cont"><?= $data['author'] ?></div>
                </li>
                <li>
                  <div class="pi-list-heading">Tgl Upload</div>
                  <div class="pi-list-cont">
                    <?php $created_at = date_create($data["created_at"]);
                    echo date_format($created_at, "d M Y - h:i a"); ?>
                  </div>
                </li>
                <li>
                  <div class="pi-list-heading">Ditonton</div>
                  <div class="pi-list-cont"><?= $data['penonton'] ?> x</div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>

  <?php }
require_once("templates/bottom.php"); ?>