<?php require_once("controller/visitor.php");
$_SESSION["project_dokumen_digital"]["name_page"] = "Jamuan Tamu Detail";

if (!isset($_GET['post_id'])) {
  header("Location: jamuan-tamu");
  exit();
} else {
  $post_id = valid($conn, $_GET['post_id']);
  $jamuan_tamu = "SELECT * FROM jamuan_tamu WHERE id_jamuan_tamu='$post_id'";
  $view_jamuan_tamu_detail = mysqli_query($conn, $jamuan_tamu);
  if (mysqli_num_rows($view_jamuan_tamu_detail) == 0) {
    header("Location: jamuan-tamu");
    exit();
  } else if (mysqli_num_rows($view_jamuan_tamu_detail) > 0) {
    $data = mysqli_fetch_assoc($view_jamuan_tamu_detail);
    $num_char = 97;
    $text = trim($data['deskripsi']);
    $text = preg_replace('#</?strong.*?>#is', '', $text);
$lentext = strlen($text);
if ($lentext > $num_char) {
$deskripsi = substr($text, 0, $num_char) . '...';
} else if ($lentext <= $num_char) { $deskripsi=substr($text, 0, $num_char); } require_once("templates/top.php"); ?>

  <section class="section normalhead lb">
    <div class="container">
      <div class="row">
        <div class="col-md-10 col-md-offset-1 col-sm-12 text-center">
          <h2>Jamuan Tamu</h2>
          <p class="lead"><?= $data['judul_jamuan']?></p>
        </div><!-- end col -->
      </div><!-- end row -->
    </div><!-- end container -->
  </section><!-- end section -->

  <section class="section">
    <div class="container">
      <div class="row">

        <div class="content col-md-12 blog-alt">
          <div class="blog-box clearfix">
            <div class="media-box">
              <img src="assets/img/jamuan-tamu/<?= $data['image']?>" alt="" class="img-responsive img-thumbnail">
            </div><!-- end media-box -->
            <div class="blog-single">
              <div class="blog-meta">
                <ul class="list-inline">
                  <li><a href="#"><i class="fa fa-calendar-o"></i> <?= $data['created_at']?></a></li>
                  <li><a href="#"><i class="fa fa-folder-open-o"></i> <?= $data['daerah']?></a></li>
                </ul>
              </div><!-- end meta -->
              <h3 class="post-title"><?= $data['judul_jamuan']?></h3>
              <?= $data['deskripsi']?>
            </div><!-- end blog-desc -->
          </div><!-- end blogbox -->
        </div><!-- end content -->
      </div><!-- end row -->
    </div><!-- end container -->
  </section><!-- end section -->


  <?php
        }
      }
      require_once("templates/bottom.php"); ?>