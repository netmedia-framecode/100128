<?php require_once("controller/visitor.php");
$_SESSION["project_dokumen_digital"]["name_page"] = "Perkawinan Detail";

if (!isset($_GET['post_id'])) {
  header("Location: perkawinan");
  exit();
} else {
  $post_id = valid($conn, $_GET['post_id']);
  $perkawinan = "SELECT * FROM perkawinan WHERE id_perkawinan='$post_id'";
  $view_perkawinan_detail = mysqli_query($conn, $perkawinan);
  if (mysqli_num_rows($view_perkawinan_detail) == 0) {
    header("Location: perkawinan");
    exit();
  } else if (mysqli_num_rows($view_perkawinan_detail) > 0) {
    $data = mysqli_fetch_assoc($view_perkawinan_detail);
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
          <h2>Perkawinan</h2>
          <p class="lead"><?= $data['judul_perkawinan']?></p>
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
              <img src="assets/img/perkawinan/<?= $data['image']?>" alt="" class="img-responsive img-thumbnail">
            </div><!-- end media-box -->
            <div class="blog-single">
              <div class="blog-meta">
                <ul class="list-inline">
                  <li><a href="#"><i class="fa fa-calendar-o"></i> <?= $data['created_at']?></a></li>
                  <li><a href="#"><i class="fa fa-folder-open-o"></i> <?= $data['daerah']?></a></li>
                </ul>
              </div><!-- end meta -->
              <h3 class="post-title"><?= $data['judul_perkawinan']?></h3>
              <div class="text-dark" style="color: #000;font-weight: 500;">
                <?= $data['deskripsi']?>
              </div>
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